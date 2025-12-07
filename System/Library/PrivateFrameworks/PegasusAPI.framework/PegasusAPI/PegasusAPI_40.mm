void sub_1B90C6940(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_92_6();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90D9A64(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 72) = v3;

  free(v1);
}

float Apple_Parsec_Search_V2_SearchResponse.completionScore.getter()
{
  OUTLINED_FUNCTION_52_8();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 76, v3);
  return *(v2 + 76);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.completionScore.setter()
{
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_92_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90D9A64(v8);
    OUTLINED_FUNCTION_16_3(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 76, v6);
  *(v7 + 76) = v2;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.completionScore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0(v0 + 76);
  *(v1 + 80) = *(v0 + 76);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90C6AC0()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_134_1();
  v5 = *(v2 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_92_6();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90D9A64(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 76) = v3;

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.feedback.getter()
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 80, v2);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V2_SearchResponse.feedback.setter()
{
  OUTLINED_FUNCTION_193_0();
  v3 = OUTLINED_FUNCTION_11_13();
  v4 = *(type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_92_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90D9A64(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 80, v6);
  v10 = *(v7 + 80);
  v11 = *(v7 + 88);
  *(v7 + 80) = v2;
  *(v7 + 88) = v0;
  sub_1B8D538A0(v10, v11);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.feedback.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  *(v1 + 48) = v6;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90C6CA8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v6, v7);
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V2_SearchResponse.feedback.setter();
    v8 = v0[6];
    v9 = v0[7];
  }

  else
  {
    v10 = OUTLINED_FUNCTION_163_1();
    v11 = *(v4 + v1);
    if ((v10 & 1) == 0)
    {
      v12 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V2_SearchResponse._StorageClass(v12);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B90D9A64(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_59_3(v11 + 80);
    v8 = *(v11 + 80);
    v9 = *(v11 + 88);
    *(v11 + 80) = v3;
    *(v11 + 88) = v2;
  }

  sub_1B8D538A0(v8, v9);

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.maxAgeSeconds.getter()
{
  OUTLINED_FUNCTION_52_8();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 96, v3);
  return *(v2 + 96);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.maxAgeSeconds.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_92_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90D9A64(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 96, v6);
  *(v7 + 96) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.maxAgeSeconds.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  *(v1 + 80) = *(v0 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90C6E40()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_135_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_92_6();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90D9A64(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 96) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC4500, &qword_1B968AEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_69_5();
    OUTLINED_FUNCTION_182();
    return sub_1B90D4000();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.error.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4500, &qword_1B968AEA0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_92_6();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B90D9A64(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_236_1();
  v5 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Search_V2_SearchResponse.error.modify()
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
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v13 = 0;
    v13[1] = 0;
    *(v13 + 16) = -1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC4500, &qword_1B968AEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_69_5();
    OUTLINED_FUNCTION_237_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.hasError.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v5);
  OUTLINED_FUNCTION_77_0();
  v6 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__error;
  OUTLINED_FUNCTION_119_0(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__error);
  OUTLINED_FUNCTION_188(v0 + v6);
  v7 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Search_V2_SearchResponse.clearError()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4500, &qword_1B968AEA0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_92_6();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B90D9A64(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t sub_1B90C73C4()
{
  v2 = OUTLINED_FUNCTION_428_0();
  v3(v2);
  OUTLINED_FUNCTION_77_0();
  v4 = *v0;
  OUTLINED_FUNCTION_10_4(v1 + v4, v5);
  return *(v1 + v4);
}

void sub_1B90C7450()
{
  OUTLINED_FUNCTION_184_0();
  v6 = v5;
  OUTLINED_FUNCTION_134_2();
  v7 = OUTLINED_FUNCTION_313();
  v9 = v8(v7);
  v10 = OUTLINED_FUNCTION_216_1(v9);
  v11 = *(v1 + v4);
  if ((v10 & 1) == 0)
  {
    v3(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v2(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  v14 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v14, v15);
  *(v11 + v6) = v0;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.millisecondDuration.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_52_8();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__millisecondDuration;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 72) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90C7574()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  OUTLINED_FUNCTION_134_2();
  OUTLINED_FUNCTION_238();
  v6 = *(v5 + 72);
  v7 = *(v0 + 88);
  v8 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_529_0(v12);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v10 + v4) = v6;
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.partialClientAddress.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_10(v2);
  *(v0 + 72) = *(type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v3) + 20);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.queryFeatures.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  sub_1B8F1B8B8();
  Features = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
  OUTLINED_FUNCTION_178(v1, 1, Features);
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_234_2();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_178(v1, 1, Features);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC4508, &qword_1B968AEA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_68_8();
    return sub_1B90D4000();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.queryFeatures.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4508, &qword_1B968AEA8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_92_6();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B90D9A64(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_236_1();
  Features = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
  OUTLINED_FUNCTION_65_1(Features);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_15_7(a1);
  *(v1 + 32) = 0;
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  OUTLINED_FUNCTION_234_2();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Apple_Parsec_Search_V2_SearchResponse.queryFeatures.modify()
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
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    v13[32] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_234_2();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC4508, &qword_1B968AEA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_68_8();
    OUTLINED_FUNCTION_237_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.hasQueryFeatures.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v5);
  OUTLINED_FUNCTION_77_0();
  v6 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__queryFeatures;
  OUTLINED_FUNCTION_119_0(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__queryFeatures);
  OUTLINED_FUNCTION_188(v0 + v6);
  Features = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
  OUTLINED_FUNCTION_11(Features);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Search_V2_SearchResponse.clearQueryFeatures()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4508, &qword_1B968AEA8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_92_6();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B90D9A64(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t sub_1B90C7CFC()
{
  v2 = OUTLINED_FUNCTION_428_0();
  v3(v2);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v1 + *v0, v4);
}

void sub_1B90C7DB8()
{
  OUTLINED_FUNCTION_184_0();
  v6 = v5;
  OUTLINED_FUNCTION_134_2();
  v7 = OUTLINED_FUNCTION_313();
  v9 = v8(v7);
  v10 = OUTLINED_FUNCTION_216_1(v9);
  v11 = *(v1 + v4);
  if ((v10 & 1) == 0)
  {
    v3(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v2(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  v14 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v14, v15);
  *(v11 + v6) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.blenderFeaturesL3.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.corrections.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.results.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.sections.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B90C82EC()
{
  v0 = OUTLINED_FUNCTION_428_0();
  v2 = v1(v0);
  OUTLINED_FUNCTION_6_2(v2);
  v3 = OUTLINED_FUNCTION_288();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_288();
}

void sub_1B90C83CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_184_0();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v23;
  v34 = OUTLINED_FUNCTION_112();
  v36 = *(v35(v34) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v23 + v36);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v39 = OUTLINED_FUNCTION_40_0();
    isUniquelyReferenced_nonNull_native = v30(v39);
    v38 = isUniquelyReferenced_nonNull_native;
    *(v33 + v36) = isUniquelyReferenced_nonNull_native;
  }

  v40 = (v38 + *v28);
  OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, &a10);
  v41 = *v40;
  v42 = v40[1];
  *v40 = v24;
  v40[1] = v22;
  sub_1B8D538A0(v41, v42);
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.legacyJson.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  *(v1 + 72) = *(type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(v4) + 20);
  OUTLINED_FUNCTION_41();
  v5 = *v0;
  v6 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v6;
  sub_1B8D91FCC(v5, v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90C8528()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_58_0();
  if (v9)
  {
    v10 = v8;
    v11 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v11, v12);
    v13 = OUTLINED_FUNCTION_461();
    v10(v13);
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_742();
    v17 = *(v7 + v1);
    if ((v16 & 1) == 0)
    {
      v6(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v18 = OUTLINED_FUNCTION_40_0();
      v19 = v5(v18);
      v16 = OUTLINED_FUNCTION_529_0(v19);
    }

    v20 = (v17 + *v4);
    OUTLINED_FUNCTION_211_0(v16, v0 + 24);
    v14 = *v20;
    v15 = v20[1];
    *v20 = v3;
    v20[1] = v2;
  }

  sub_1B8D538A0(v14, v15);
  OUTLINED_FUNCTION_283();

  free(v21);
}

uint64_t sub_1B90C8614(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90F0540();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.feedback.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.feedback.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.entities.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.detailText.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.serverFeatures.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.unknownFields.getter()
{
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_15_7(a1);
  *(v1 + 32) = xmmword_1B9652FE0;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  *(v1 + 56) = MEMORY[0x1E69E7CC0];
  *(v1 + 64) = 0;
  *(v1 + 72) = v2;
  *(v1 + 80) = sub_1B964C7B0();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1B90387E4(v2, v3, v4);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.error.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B903880C(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.message.getter()
{
  OUTLINED_FUNCTION_65_6();
  if (!v1 && (v0 & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_432();
    sub_1B90387FC(v2, v3, 0);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.message.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B903880C(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v0;
  *(v1 + 16) = 0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.message.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_65_6();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v7, v8, 0);
  }

  *v1 = v5;
  v1[1] = v6;
  return OUTLINED_FUNCTION_542_0();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.encryptedMessage.getter()
{
  OUTLINED_FUNCTION_65_6();
  if (!v1 && (v0 & 1) != 0)
  {
    v2 = OUTLINED_FUNCTION_432();
    sub_1B90387FC(v2, v3, 1);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.encryptedMessage.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B903880C(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v0;
  *(v1 + 16) = 1;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.encryptedMessage.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_65_6();
  if (v4 || (v3 & 1) == 0)
  {
    v6 = 0;
    v5 = 0xC000000000000000;
  }

  else
  {
    v6 = *v2;
    v5 = v2[1];
    v7 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v7, v8, 1);
  }

  *v1 = v6;
  v1[1] = v5;
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B90C8CE4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_288();
    sub_1B8D91FCC(v5, v6);
    v7 = OUTLINED_FUNCTION_191_3();
    sub_1B903880C(v7, v8, v9);
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 1;
    v10 = OUTLINED_FUNCTION_288();

    return sub_1B8D538A0(v10, v11);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_191_3();
    result = sub_1B903880C(v13, v14, v15);
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 1;
  }

  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t static Apple_Parsec_Search_V2_SearchResponse.Error.OneOf_Error.== infix(_:_:)()
{
  OUTLINED_FUNCTION_270_1();
  if (v5)
  {
    if (v4)
    {
      v6 = OUTLINED_FUNCTION_461();
      sub_1B90387FC(v6, v7, 1);
      v8 = OUTLINED_FUNCTION_90_4();
      sub_1B90387FC(v8, v9, v10);
      v11 = OUTLINED_FUNCTION_288();
      v12 = MEMORY[0x1BFADC060](v11);
      v13 = OUTLINED_FUNCTION_90_4();
      sub_1B9038824(v13, v14, v15);
      v16 = OUTLINED_FUNCTION_461();
      v18 = 1;
LABEL_11:
      sub_1B9038824(v16, v17, v18);
      return v12 & 1;
    }

LABEL_5:
    v19 = OUTLINED_FUNCTION_42_0();
    sub_1B90387FC(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_288();
    sub_1B90387FC(v22, v23, v5);
    v24 = OUTLINED_FUNCTION_288();
    sub_1B9038824(v24, v25, v5);
    v26 = OUTLINED_FUNCTION_42_0();
    sub_1B9038824(v26, v27, v28);
    return 0;
  }

  if (v4)
  {
    goto LABEL_5;
  }

  if (v1 != v3 || v0 != v2)
  {
    v12 = OUTLINED_FUNCTION_261_0(v1);
    v31 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v31, v32, 0);
    v33 = OUTLINED_FUNCTION_85_4();
    sub_1B90387FC(v33, v34, v35);
    v36 = OUTLINED_FUNCTION_85_4();
    sub_1B9038824(v36, v37, v38);
    v16 = OUTLINED_FUNCTION_461();
    v18 = 0;
    goto LABEL_11;
  }

  sub_1B90387FC(v1, v0, 0);
  v39 = OUTLINED_FUNCTION_85_4();
  sub_1B90387FC(v39, v40, v41);
  v42 = OUTLINED_FUNCTION_85_4();
  sub_1B9038824(v42, v43, v44);
  v45 = OUTLINED_FUNCTION_85_4();
  sub_1B9038824(v45, v46, v47);
  return 1;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.stats.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(v7);
  OUTLINED_FUNCTION_165_3();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = v9;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC4510, &qword_1B968AEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_19();
    OUTLINED_FUNCTION_182();
    return sub_1B90D4000();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.stats.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  Features = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(v1);
  sub_1B8D9207C(v0 + *(Features + 32), &qword_1EBAC4510, &qword_1B968AEB0);
  OUTLINED_FUNCTION_16_19();
  OUTLINED_FUNCTION_122_0();
  sub_1B90D4000();
  OUTLINED_FUNCTION_234_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(0);
  return OUTLINED_FUNCTION_279();
}

void Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.stats.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4510, &qword_1B968AEB0);
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[1] = v4;
  v0[2] = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(0);
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 64);
  v0[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v0[4] = v7;
  Features = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
  OUTLINED_FUNCTION_68_4(*(Features + 32));
  OUTLINED_FUNCTION_75(v4);
  if (v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
    *v7 = MEMORY[0x1E69E7CC0];
    v7[1] = v10;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v4);
    if (!v9)
    {
      sub_1B8D9207C(v4, &qword_1EBAC4510, &qword_1B968AEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_19();
    OUTLINED_FUNCTION_461();
    sub_1B90D4000();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.hasStats.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  Features = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(v5);
  OUTLINED_FUNCTION_188(v0 + *(Features + 32));
  v7 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(0);
  OUTLINED_FUNCTION_11(v7);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.clearStats()()
{
  Features = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
  sub_1B8D9207C(v0 + *(Features + 32), &qword_1EBAC4510, &qword_1B968AEB0);
  OUTLINED_FUNCTION_234_2();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats.cep.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats.cepLong.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B90C9534()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B90C95B8()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Correction.prefix.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Correction.completion.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1B90C979C()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B90C9820()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Correction.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Correction.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_15_7(a1);
  *(v1 + 32) = 0;
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Section.more.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1B90DA298(v2, v3, v4);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Section.more.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B90DA2B8(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Section.moreURL.getter()
{
  OUTLINED_FUNCTION_266_1();
  if (!v1 && (v0 & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_432();
    sub_1B90DA2B0(v2, v3);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B90C99F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Search_V2_SearchResponse.Section.moreURL.setter(v1, v2);
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Section.moreURL.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_266_1();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v7 = OUTLINED_FUNCTION_461();
    sub_1B90DA2B0(v7, v8);
  }

  *v1 = v5;
  v1[1] = v6;
  return OUTLINED_FUNCTION_542_0();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Section.morePunchout.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_266_1();
  if (!v2 && (v1 & 1) != 0)
  {
    v3 = OUTLINED_FUNCTION_432();
    sub_1B90DA2B0(v3, v4);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B90C9AF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Search_V2_SearchResponse.Section.morePunchout.setter(v1, v2);
}

uint64_t sub_1B90C9B3C(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1B90DA2B8(*(v3 + 32), *(v3 + 40), *(v3 + 48));
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Section.morePunchout.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_266_1();
  if (v4 || (v3 & 1) == 0)
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v6 = *(v2 + 32);
    v5 = *(v2 + 40);
    v7 = OUTLINED_FUNCTION_461();
    sub_1B90DA2B0(v7, v8);
  }

  *v1 = v6;
  v1[1] = v5;
  return OUTLINED_FUNCTION_542_0();
}

void sub_1B90C9BF4()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2[1];
  v4 = v2[2];
  v5 = *v2;
  if (v6)
  {

    v7 = OUTLINED_FUNCTION_191_3();
    sub_1B90DA2B8(v7, v8, v9);
    *(v4 + 32) = v5;
    *(v4 + 40) = v3;
    *(v4 + 48) = v1;
    OUTLINED_FUNCTION_242();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_191_3();
    sub_1B90DA2B8(v11, v12, v13);
    *(v4 + 32) = v5;
    *(v4 + 40) = v3;
    *(v4 + 48) = v1;
    OUTLINED_FUNCTION_242();
  }
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Section.resultIdentifiers.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Section.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Section(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t static Apple_Parsec_Search_V2_SearchResponse.Section.OneOf_More.== infix(_:_:)()
{
  OUTLINED_FUNCTION_270_1();
  if ((v5 & 1) == 0)
  {
    if ((v4 & 1) == 0)
    {
      if (v1 != v3 || v0 != v2)
      {
        v8 = OUTLINED_FUNCTION_261_0(v1);
        v28 = OUTLINED_FUNCTION_461();
        sub_1B90DA2B0(v28, v29);
        v30 = OUTLINED_FUNCTION_85_4();
        sub_1B90DA2B0(v30, v31);
        v32 = OUTLINED_FUNCTION_85_4();
        sub_1B90DA2D0(v32, v33);
        v15 = OUTLINED_FUNCTION_461();
        goto LABEL_16;
      }

      sub_1B90DA2B0(v1, v0);
      v42 = OUTLINED_FUNCTION_85_4();
      sub_1B90DA2B0(v42, v43);
      v44 = OUTLINED_FUNCTION_85_4();
      sub_1B90DA2D0(v44, v45);
      v46 = OUTLINED_FUNCTION_85_4();
      sub_1B90DA2D0(v46, v47);
      return 1;
    }

LABEL_9:
    v17 = OUTLINED_FUNCTION_42_0();
    sub_1B90DA2B0(v17, v18);
    v19 = OUTLINED_FUNCTION_288();
    sub_1B90DA2B0(v19, v20);
    v21 = OUTLINED_FUNCTION_288();
    sub_1B90DA2D0(v21, v22);
    v23 = OUTLINED_FUNCTION_42_0();
    sub_1B90DA2D0(v23, v24);
    return 0;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v1 == v3 && v0 == v2)
  {
    v25 = 1;
    v34 = OUTLINED_FUNCTION_90_4();
    sub_1B90DA2B0(v34, v35);
    v36 = OUTLINED_FUNCTION_90_4();
    sub_1B90DA2B0(v36, v37);
    v38 = OUTLINED_FUNCTION_90_4();
    sub_1B90DA2D0(v38, v39);
    v40 = OUTLINED_FUNCTION_90_4();
    sub_1B90DA2D0(v40, v41);
    return v25;
  }

  v7 = OUTLINED_FUNCTION_288();
  v8 = OUTLINED_FUNCTION_261_0(v7);
  v9 = OUTLINED_FUNCTION_461();
  sub_1B90DA2B0(v9, v10);
  v11 = OUTLINED_FUNCTION_90_4();
  sub_1B90DA2B0(v11, v12);
  v13 = OUTLINED_FUNCTION_90_4();
  sub_1B90DA2D0(v13, v14);
  v15 = OUTLINED_FUNCTION_461();
LABEL_16:
  sub_1B90DA2D0(v15, v16);
  return v8 & 1;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Section.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_15_7(a1);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = -1;
  *(v1 + 52) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Section(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B90C9F6C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
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

uint64_t sub_1B90CA078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Search_V2_SearchResponse.StatusCode.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Entity.name.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Entity.category.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Entity.topics.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Entity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_Entity(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B90CA264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90EBC44();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Search_V2_Entity.Topic.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_Entity.Topic(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B90CA37C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  v2(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Search_V2_Entity.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Search_V2_Entity(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B90CA494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Search_V2_Entity.Category.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Rendering.style.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Rendering.cardData.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Search_V2_Rendering.cardData.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Rendering.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_Rendering(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_V2_Rendering.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1B9652FE0;
  type metadata accessor for Apple_Parsec_Search_V2_Rendering(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Search_V2_Result.type.getter()
{
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V2_Result.type.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_177_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90E2BF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 16, v6);
  *(v7 + 16) = v2;
  *(v7 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V2_Result.type.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 16);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90CA774()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V2_Result.type.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V2_Result._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B90E2BF0(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_Result.identifier.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 32);
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90CA94C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_191();
    v8 = OUTLINED_FUNCTION_461();
    v7(v8);
  }

  else
  {
    OUTLINED_FUNCTION_134_2();
    v9 = *(v0 + 72);
    v10 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = v3(v13);
      OUTLINED_FUNCTION_228_1(v14);
    }

    OUTLINED_FUNCTION_59_3(v12 + 32);
    *(v12 + 32) = v2;
    *(v12 + 40) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t Apple_Parsec_Search_V2_Result.canonicalID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 48);
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90CAB4C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_191();
    v8 = OUTLINED_FUNCTION_461();
    v7(v8);
  }

  else
  {
    OUTLINED_FUNCTION_134_2();
    v9 = *(v0 + 72);
    v10 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = v3(v13);
      OUTLINED_FUNCTION_228_1(v14);
    }

    OUTLINED_FUNCTION_59_3(v12 + 48);
    *(v12 + 48) = v2;
    *(v12 + 56) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t Apple_Parsec_Search_V2_Result.dataServiceID.getter()
{
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 64, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V2_Result.dataServiceID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_177_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90E2BF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 64, v6);
  *(v7 + 64) = v2;
  *(v7 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V2_Result.dataServiceID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 64);
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90CAD58()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V2_Result.dataServiceID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V2_Result._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B90E2BF0(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

float Apple_Parsec_Search_V2_Result.score.getter()
{
  OUTLINED_FUNCTION_36_5();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 80, v3);
  return *(v2 + 80);
}

uint64_t Apple_Parsec_Search_V2_Result.score.setter()
{
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Search_V2_Result(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90E2BF0(v8);
    OUTLINED_FUNCTION_16_3(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 80, v6);
  *(v7 + 80) = v2;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Result.score.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_22(v3);
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  *(v1 + 80) = *(v0 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90CAEEC()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_134_1();
  v5 = *(v2 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90E2BF0(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 80) = v3;

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_Result.feedback.getter()
{
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 88, v2);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V2_Result.feedback.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_177_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90E2BF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 88, v6);
  v10 = *(v7 + 88);
  v11 = *(v7 + 96);
  *(v7 + 88) = v2;
  *(v7 + 96) = v0;
  sub_1B8D538A0(v10, v11);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V2_Result.feedback.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 88);
  v6 = *(v5 + 88);
  v7 = *(v5 + 96);
  *(v1 + 48) = v6;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90CB0C4()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v6, v7);
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V2_Result.feedback.setter();
    v8 = v0[6];
    v9 = v0[7];
  }

  else
  {
    v10 = OUTLINED_FUNCTION_163_1();
    v11 = *(v4 + v1);
    if ((v10 & 1) == 0)
    {
      v12 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V2_Result._StorageClass(v12);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B90E2BF0(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_59_3(v11 + 88);
    v8 = *(v11 + 88);
    v9 = *(v11 + 96);
    *(v11 + 88) = v3;
    *(v11 + 96) = v2;
  }

  sub_1B8D538A0(v8, v9);

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_Result.url.getter()
{
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 104, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V2_Result.url.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_177_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90E2BF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 104, v6);
  *(v7 + 104) = v2;
  *(v7 + 112) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V2_Result.url.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 104);
  v6 = *(v5 + 112);
  *(v1 + 48) = *(v5 + 104);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90CB2B0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V2_Result.url.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V2_Result._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B90E2BF0(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 104);
    *(v7 + 104) = v3;
    *(v7 + 112) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_Result.maxAgeSeconds.getter()
{
  OUTLINED_FUNCTION_36_5();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 120, v3);
  return *(v2 + 120);
}

uint64_t Apple_Parsec_Search_V2_Result.maxAgeSeconds.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_205_2(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90E2BF0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 120, v5);
  *(v6 + 120) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Result.maxAgeSeconds.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_22(v3);
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 120);
  *(v1 + 80) = *(v0 + 120);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90CB438()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_135_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90E2BF0(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 120) = v2;

  free(v0);
}

float Apple_Parsec_Search_V2_Result.serverScore.getter()
{
  OUTLINED_FUNCTION_36_5();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 124, v3);
  return *(v2 + 124);
}

uint64_t Apple_Parsec_Search_V2_Result.serverScore.setter()
{
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Search_V2_Result(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90E2BF0(v8);
    OUTLINED_FUNCTION_16_3(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 124, v6);
  *(v7 + 124) = v2;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Result.serverScore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_22(v3);
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 124);
  *(v1 + 80) = *(v0 + 124);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90CB5B8()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_134_1();
  v5 = *(v2 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90E2BF0(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 124) = v3;

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_Result.entities.getter()
{
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 128, v2);
}

uint64_t Apple_Parsec_Search_V2_Result.entities.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = OUTLINED_FUNCTION_205_2(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90E2BF0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 128, v5);
  *(v6 + 128) = v0;
}

uint64_t Apple_Parsec_Search_V2_Result.entities.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V2_Result(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 128);
  *(v1 + 48) = *(v0 + 128);

  return OUTLINED_FUNCTION_514();
}

void sub_1B90CB77C()
{
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 48);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Search_V2_Result.entities.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_41_2();
    v7 = *(v2 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_59_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90E2BF0(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 128);
    *(v7 + 128) = v4;
  }

  free(v0);
}

void Apple_Parsec_Search_V2_Result.topHit.getter()
{
  OUTLINED_FUNCTION_36_5();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 136, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 136));
}

void Apple_Parsec_Search_V2_Result.topHit.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = OUTLINED_FUNCTION_177_5(v4);
  v7 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90E2BF0(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 136, v6);
  *(v7 + 136) = v1;
  *(v7 + 144) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V2_Result.topHit.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_37_3(v2);
  v4 = type metadata accessor for Apple_Parsec_Search_V2_Result(v3);
  OUTLINED_FUNCTION_21_8(v4);
  OUTLINED_FUNCTION_62_0(v0 + 136);
  OUTLINED_FUNCTION_71_2(*(v0 + 136));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90CB918()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90E2BF0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 136) = v1;
  *(v6 + 144) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Apple_Parsec_Search_V2_Result.engagementScore.getter()
{
  OUTLINED_FUNCTION_36_5();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 148, v3);
  return *(v2 + 148);
}

uint64_t Apple_Parsec_Search_V2_Result.engagementScore.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_205_2(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90E2BF0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 148, v5);
  *(v6 + 148) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Result.engagementScore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_22(v3);
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 148);
  *(v1 + 80) = *(v0 + 148);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90CBA8C()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_135_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90E2BF0(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 148) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_Result.queryIndependentEngagementScore.getter()
{
  OUTLINED_FUNCTION_36_5();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 152, v3);
  return *(v2 + 152);
}

uint64_t Apple_Parsec_Search_V2_Result.queryIndependentEngagementScore.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_205_2(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90E2BF0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 152, v5);
  *(v6 + 152) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Result.queryIndependentEngagementScore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_22(v3);
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 152);
  *(v1 + 80) = *(v0 + 152);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90CBC00()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_135_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90E2BF0(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 152) = v2;

  free(v0);
}

void Apple_Parsec_Search_V2_Result.placement.getter()
{
  OUTLINED_FUNCTION_36_5();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 160, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 160));
}

void Apple_Parsec_Search_V2_Result.placement.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = OUTLINED_FUNCTION_177_5(v4);
  v7 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90E2BF0(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 160, v6);
  *(v7 + 160) = v1;
  *(v7 + 168) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V2_Result.placement.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_37_3(v2);
  v4 = type metadata accessor for Apple_Parsec_Search_V2_Result(v3);
  OUTLINED_FUNCTION_21_8(v4);
  OUTLINED_FUNCTION_62_0(v0 + 160);
  OUTLINED_FUNCTION_71_2(*(v0 + 160));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90CBE10()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90E2BF0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 160) = v1;
  *(v6 + 168) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Apple_Parsec_Search_V2_Result.renderHorizontallyWithOtherResultsInCategory.getter()
{
  OUTLINED_FUNCTION_36_5();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 169, v3);
  return *(v2 + 169);
}

uint64_t Apple_Parsec_Search_V2_Result.renderHorizontallyWithOtherResultsInCategory.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_205_2(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90E2BF0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 169, v5);
  *(v6 + 169) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Result.renderHorizontallyWithOtherResultsInCategory.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_22(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 169);
  *(v1 + 84) = *(v0 + 169);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90CBF88(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90E2BF0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 169) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_V2_Result.isQuickGlance.getter()
{
  OUTLINED_FUNCTION_36_5();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 170, v3);
  return *(v2 + 170);
}

uint64_t Apple_Parsec_Search_V2_Result.isQuickGlance.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_205_2(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90E2BF0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 170, v5);
  *(v6 + 170) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Result.isQuickGlance.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_22(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 170);
  *(v1 + 84) = *(v0 + 170);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90CC0FC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90E2BF0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 170) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_V2_Result.minimumRankOfTopHitToSuppressResult.getter()
{
  OUTLINED_FUNCTION_36_5();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 172, v3);
  return *(v2 + 172);
}

uint64_t Apple_Parsec_Search_V2_Result.minimumRankOfTopHitToSuppressResult.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_205_2(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90E2BF0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 172, v5);
  *(v6 + 172) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Result.minimumRankOfTopHitToSuppressResult.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_22(v3);
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 172);
  *(v1 + 80) = *(v0 + 172);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90CC26C()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_135_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90E2BF0(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 172) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_Result.appleReferrer.getter()
{
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 176, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V2_Result.appleReferrer.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_177_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90E2BF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 176, v6);
  *(v7 + 176) = v2;
  *(v7 + 184) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V2_Result.appleReferrer.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 176);
  v6 = *(v5 + 184);
  *(v1 + 48) = *(v5 + 176);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90CC43C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V2_Result.appleReferrer.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V2_Result._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B90E2BF0(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 176);
    *(v7 + 176) = v3;
    *(v7 + 184) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_Result.sectionBundleID.getter()
{
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 192, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V2_Result.sectionBundleID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_177_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90E2BF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 192, v6);
  *(v7 + 192) = v2;
  *(v7 + 200) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V2_Result.sectionBundleID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 192);
  v6 = *(v5 + 200);
  *(v1 + 48) = *(v5 + 192);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90CC620()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V2_Result.sectionBundleID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V2_Result._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B90E2BF0(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 192);
    *(v7 + 192) = v3;
    *(v7 + 200) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_Result.bundleID.getter()
{
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 208, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V2_Result.bundleID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_177_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90E2BF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 208, v6);
  *(v7 + 208) = v2;
  *(v7 + 216) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V2_Result.bundleID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 208);
  v6 = *(v5 + 216);
  *(v1 + 48) = *(v5 + 208);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90CC804()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V2_Result.bundleID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V2_Result._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B90E2BF0(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 208);
    *(v7 + 208) = v3;
    *(v7 + 216) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_Result.adamID.getter()
{
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 224, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V2_Result.adamID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_177_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90E2BF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 224, v6);
  *(v7 + 224) = v2;
  *(v7 + 232) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V2_Result.adamID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_4_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 224);
  v6 = *(v5 + 232);
  *(v1 + 48) = *(v5 + 224);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90CC9E8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V2_Result.adamID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V2_Result._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B90E2BF0(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 224);
    *(v7 + 224) = v3;
    *(v7 + 232) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V2_Result.template.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Search_V2_Result(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Search_V2_Result.Template(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = xmmword_1B9652FE0;
    *(a1 + 48) = xmmword_1B9652FE0;
    *(a1 + 64) = xmmword_1B9652FE0;
    *(a1 + 80) = 0;
    *(a1 + 88) = v9;
    *(a1 + 96) = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC4518, &qword_1B968AEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_67_5();
    OUTLINED_FUNCTION_182();
    return sub_1B90D4000();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V2_Result.template.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4518, &qword_1B968AEB8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_177_5(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B90E2BF0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_67_5();
  OUTLINED_FUNCTION_236_1();
  v5 = type metadata accessor for Apple_Parsec_Search_V2_Result.Template(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Search_V2_Result.Template.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_15_7(a1);
  *(v1 + 32) = xmmword_1B9652FE0;
  *(v1 + 48) = xmmword_1B9652FE0;
  *(v1 + 64) = xmmword_1B9652FE0;
  *(v1 + 80) = 0;
  *(v1 + 88) = v2;
  *(v1 + 96) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Search_V2_Result.Template(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Search_V2_Result.template.modify()
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
  type metadata accessor for Apple_Parsec_Search_V2_Result.Template(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    v13[2] = xmmword_1B9652FE0;
    v13[3] = xmmword_1B9652FE0;
    v13[4] = xmmword_1B9652FE0;
    *(v13 + 10) = 0;
    *(v13 + 11) = v15;
    *(v13 + 12) = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC4518, &qword_1B968AEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_67_5();
    OUTLINED_FUNCTION_237_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V2_Result.hasTemplate.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Search_V2_Result(v5);
  OUTLINED_FUNCTION_77_0();
  v6 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__template;
  OUTLINED_FUNCTION_119_0(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__template);
  OUTLINED_FUNCTION_188(v0 + v6);
  v7 = type metadata accessor for Apple_Parsec_Search_V2_Result.Template(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Search_V2_Result.clearTemplate()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4518, &qword_1B968AEB8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_205_2(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_8();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B90E2BF0(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  type metadata accessor for Apple_Parsec_Search_V2_Result.Template(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Search_V2_Result.intendedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_4_29(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V2_Result.correctedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_4_29(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V2_Result.completedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_4_29(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B90CD39C()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_58_0();
  if (v9)
  {
    v10 = v8;
    OUTLINED_FUNCTION_191();
    v11 = OUTLINED_FUNCTION_461();
    v10(v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_742();
    v13 = *(v7 + v1);
    if ((v12 & 1) == 0)
    {
      v6(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v14 = OUTLINED_FUNCTION_40_0();
      v15 = v5(v14);
      v12 = OUTLINED_FUNCTION_529_0(v15);
    }

    v16 = (v13 + *v4);
    OUTLINED_FUNCTION_211_0(v12, v0 + 24);
    *v16 = v3;
    v16[1] = v2;
  }

  OUTLINED_FUNCTION_283();

  free(v17);
}

uint64_t Apple_Parsec_Search_V2_Result.shouldUseCompactDisplay.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_9_22(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V2_Result.noGoTakeover.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_9_22(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V2_Result.preferTopPlatter.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_9_22(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V2_Result.usesCompactDisplay.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_9_22(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V2_Result.alternativeUrls.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Search_V2_Result(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V2_Result.serverFeatures.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Search_V2_Result(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B90CDAD4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238();
  v6 = *(v5 + 48);
  if (v7)
  {
    v8 = v4;
    v9 = OUTLINED_FUNCTION_61_1();
    v8(v9);
  }

  else
  {
    v10 = v3;
    OUTLINED_FUNCTION_134_2();
    v11 = *(v0 + 64);
    v12 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_40_0();
      v16 = v1(v15);
      OUTLINED_FUNCTION_228_1(v16);
    }

    v17 = *v10;
    OUTLINED_FUNCTION_59_3(v14 + v17);
    *(v14 + v17) = v6;
  }

  OUTLINED_FUNCTION_242();

  free(v18);
}

uint64_t Apple_Parsec_Search_V2_Result.isInstantAnswer.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_9_22(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V2_Result.shouldAutoNavigate.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_9_22(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B90CDDC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90F04EC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B90CDE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90F0498();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Search_V2_Result.Template.thumbnail.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Search_V2_Result.Template.thumbnail.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Result.Template.cardData.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Search_V2_Result.Template.cardData.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Result.Template.legacyTemplateName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Result.Template.renderings.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Result.Template.unknownFields.getter()
{
  type metadata accessor for Apple_Parsec_Search_V2_Result.Template(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Apple_Parsec_Search_V2_Result.Template.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_Result.Template(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Search_V2_Result.Template.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_Result.Template(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B90CE25C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Search_V2_Result.TopHit.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B90CE30C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Search_V2_Result.Placement.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Silhouette.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_Silhouette(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B90CE424()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B90CE4A8()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Search_V2_Silhouette.Topic.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_Silhouette.Topic(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_V2_Silhouette.Topic.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  type metadata accessor for Apple_Parsec_Search_V2_Silhouette.Topic(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Search_V2_Suggestion.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Suggestion.topic.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t sub_1B90CE698()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B90CE71C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Search_V2_Suggestion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_Suggestion(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B90CE7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90EBCEC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Search_V2_Suggestion.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  type metadata accessor for Apple_Parsec_Search_V2_Suggestion(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B90CE90C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Search_V2_Suggestion.TypeEnum.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Search_V2_RevGeoResolution.locality.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_RevGeoResolution.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_V2_RevGeoResolution.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_15_7(a1);
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  v1[8] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Search_V2_Location.source.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Location.revGeoResolution.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Search_V2_Location(v7);
  OUTLINED_FUNCTION_165_3();
  type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_92_0();
    a1[4] = 0;
    a1[5] = v9;
    a1[6] = 0;
    a1[7] = v9;
    a1[8] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC4520, &unk_1B968AEC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_75_5();
    OUTLINED_FUNCTION_182();
    return sub_1B90D4000();
  }

  return result;
}

uint64_t sub_1B90CEC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B90D4054();
  return a7(v7);
}

uint64_t Apple_Parsec_Search_V2_Location.revGeoResolution.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Search_V2_Location(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBAC4520, &unk_1B968AEC0);
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_122_0();
  sub_1B90D4000();
  OUTLINED_FUNCTION_283_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Search_V2_Location.revGeoResolution.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4520, &unk_1B968AEC0);
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[1] = v4;
  v0[2] = type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution(0);
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 64);
  v0[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v0[4] = v7;
  v8 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  OUTLINED_FUNCTION_68_4(*(v8 + 44));
  OUTLINED_FUNCTION_75(v4);
  if (v9)
  {
    OUTLINED_FUNCTION_114_0();
    v7[4] = 0;
    v7[5] = v10;
    v7[6] = 0;
    v7[7] = v10;
    v7[8] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v4);
    if (!v9)
    {
      sub_1B8D9207C(v4, &qword_1EBAC4520, &unk_1B968AEC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_75_5();
    OUTLINED_FUNCTION_461();
    sub_1B90D4000();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B90CEEE4()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    sub_1B90D4054();
    sub_1B8D9207C(v10 + v5, v3, v2);
    sub_1B90D4000();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    OUTLINED_FUNCTION_177_1();
    sub_1B90D40A8();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v0, v1);
    sub_1B90D4000();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v18);
}

uint64_t Apple_Parsec_Search_V2_Location.hasRevGeoResolution.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Search_V2_Location(v5);
  OUTLINED_FUNCTION_188(v0 + *(v6 + 44));
  v7 = type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution(0);
  OUTLINED_FUNCTION_11(v7);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Search_V2_Location.clearRevGeoResolution()()
{
  v1 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  sub_1B8D9207C(v0 + *(v1 + 44), &qword_1EBAC4520, &unk_1B968AEC0);
  OUTLINED_FUNCTION_283_2();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Search_V2_Location.preciseStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Location.age.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Search_V2_Location(v7);
  OUTLINED_FUNCTION_165_3();
  v8 = sub_1B964C130();
  OUTLINED_FUNCTION_9_2();
  if (!v9)
  {
    return (*(*(v8 - 8) + 32))(a1, v1, v8);
  }

  sub_1B964C120();
  result = OUTLINED_FUNCTION_9_2();
  if (!v9)
  {
    return sub_1B8D9207C(v1, &qword_1EBAB9270, &unk_1B9660450);
  }

  return result;
}

uint64_t sub_1B90CF218(uint64_t a1)
{
  v2 = sub_1B964C130();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Apple_Parsec_Search_V2_Location.age.setter();
}

uint64_t Apple_Parsec_Search_V2_Location.age.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Search_V2_Location(v2) + 48);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB9270, &unk_1B9660450);
  v4 = sub_1B964C130();
  OUTLINED_FUNCTION_59_1();
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void Apple_Parsec_Search_V2_Location.age.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9270, &unk_1B9660450);
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v0 + 8) = v5;
  *(v0 + 16) = sub_1B964C130();
  OUTLINED_FUNCTION_30_1();
  *(v0 + 24) = v6;
  v8 = *(v7 + 64);
  *(v0 + 32) = __swift_coroFrameAllocStub(v8);
  *(v0 + 40) = __swift_coroFrameAllocStub(v8);
  *(v0 + 48) = *(type metadata accessor for Apple_Parsec_Search_V2_Location(0) + 48);
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_75(v5);
  if (v9)
  {
    sub_1B964C120();
    OUTLINED_FUNCTION_75(v5);
    if (!v9)
    {
      sub_1B8D9207C(v5, &qword_1EBAB9270, &unk_1B9660450);
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_461();
    v11(v10);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B90CF4F8()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 12);
  v2 = (*v0)[4];
  v3 = (*v0)[5];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v7 = **v0;
  v6 = (*v0)[1];
  if (v8)
  {
    (*(v5 + 16))((*v0)[4], v3, v4);
    sub_1B8D9207C(v7 + v1, &qword_1EBAB9270, &unk_1B9660450);
    (*(v5 + 32))(v7 + v1, v2, v4);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
    v12 = OUTLINED_FUNCTION_236();
    v13(v12);
  }

  else
  {
    sub_1B8D9207C(v7 + v1, &qword_1EBAB9270, &unk_1B9660450);
    (*(v5 + 32))(v7 + v1, v3, v4);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v4);
  }

  free(v3);
  free(v2);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v17);
}

uint64_t Apple_Parsec_Search_V2_Location.hasAge.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Search_V2_Location(v5);
  OUTLINED_FUNCTION_188(v0 + *(v6 + 48));
  v7 = sub_1B964C130();
  OUTLINED_FUNCTION_11(v7);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Search_V2_Location.clearAge()()
{
  v1 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  sub_1B8D9207C(v0 + *(v1 + 48), &qword_1EBAB9270, &unk_1B9660450);
  sub_1B964C130();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B90CF730()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B90CF7B4()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Search_V2_Location.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_Location(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B90CF888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90EBD40();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B90CF924()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_214_2(v2);
  *v0 = v1;
}

uint64_t sub_1B90CF9A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Search_V2_Location.Source.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Subscriptions.subscriptionJson.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Search_V2_Subscriptions.subscriptionJson.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Subscriptions.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B90CFB70()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B90CFBF4()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Search_V2_MapsSession.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_MapsSession(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_V2_MarketplaceInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_15_7(a1);
  type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t sub_1B90CFE54(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_EnumValueOptions.Apple_Parsec_Search_V2_transportationMode.setter(v1, v2, v3, v4, v5);
}

uint64_t Google_Protobuf_EnumValueOptions.Apple_Parsec_Search_V2_transportationMode.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  v3 = OUTLINED_FUNCTION_99(v2);
  *(v3 + 32) = v0;
  *v1 = Google_Protobuf_EnumValueOptions.Apple_Parsec_Search_V2_transportationMode.getter(v3, v4, v5);
  v1[1] = v6;
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B90CFFB8()
{
  OUTLINED_FUNCTION_192_3();
  if (!v0)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_24();
  sub_1B90E3800(v1, v2, MEMORY[0x1E69AAA10]);
  sub_1B964C2D0();
  if (v5)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B90D003C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_EnumValueOptions.Apple_Parsec_Search_V2_geoSrc.setter(v1, v2, v3, v4, v5);
}

uint64_t sub_1B90D00A4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_24();
  sub_1B90E3800(v5, v6, MEMORY[0x1E69AAA10]);
  sub_1B964C2F0();
}

uint64_t Google_Protobuf_EnumValueOptions.Apple_Parsec_Search_V2_geoSrc.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  v3 = OUTLINED_FUNCTION_99(v2);
  *(v3 + 32) = v0;
  *v1 = Google_Protobuf_EnumValueOptions.Apple_Parsec_Search_V2_geoSrc.getter(v3, v4, v5);
  v1[1] = v6;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90D01C0()
{
  OUTLINED_FUNCTION_243();
  v1 = *v0;
  v3 = **v0;
  v2 = (*v0)[1];
  v5 = *v4;
  if (v6)
  {

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_186();
      swift_once();
    }

    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_5_24();
    sub_1B90E3800(v7, v8, MEMORY[0x1E69AAA10]);
    sub_1B964C2F0();
  }

  else
  {
    if (v5 != -1)
    {
      OUTLINED_FUNCTION_186();
      swift_once();
    }

    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_5_24();
    sub_1B90E3800(v9, v10, MEMORY[0x1E69AAA10]);
    sub_1B964C2F0();
  }

  OUTLINED_FUNCTION_242();

  free(v11);
}

uint64_t sub_1B90D030C()
{
  OUTLINED_FUNCTION_192_3();
  if (!v1)
  {
    swift_once();
  }

  v2 = *v0;
  OUTLINED_FUNCTION_5_24();
  sub_1B90E3800(v3, v4, MEMORY[0x1E69AAA10]);

  return MEMORY[0x1EEE15650](v2);
}

uint64_t sub_1B90D03A4()
{
  OUTLINED_FUNCTION_192_3();
  if (!v1)
  {
    swift_once();
  }

  v2 = *v0;
  OUTLINED_FUNCTION_5_24();
  sub_1B90E3800(v3, v4, MEMORY[0x1E69AAA10]);

  return MEMORY[0x1EEE15660](v2);
}

uint64_t sub_1B90D0414()
{
  v0 = sub_1B964C320();
  __swift_allocate_value_buffer(v0, qword_1EBAC40D0);
  __swift_project_value_buffer(v0, qword_1EBAC40D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF780, &unk_1B968F160);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B964D060;
  if (qword_1EBAB71D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBAC40E8;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7B8, &qword_1B966F868);
  *(v1 + 56) = v3;
  v4 = sub_1B90F0738(&qword_1EBABF7C0, &qword_1EBABF7B8, &qword_1B966F868, MEMORY[0x1E69AAC18]);
  *(v1 + 64) = v4;
  *(v1 + 32) = v2;
  v5 = qword_1EBAB71D8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBAC40F0;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  *(v1 + 72) = v6;

  return sub_1B964C310();
}

uint64_t sub_1B90D05BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7B8, &qword_1B966F868);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAC40E8 = result;
  return result;
}

uint64_t sub_1B90D064C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7B8, &qword_1B966F868);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAC40F0 = result;
  return result;
}

uint64_t sub_1B90D06DC()
{
  OUTLINED_FUNCTION_192_3();
  if (!v0)
  {
    swift_once();
  }
}

uint64_t sub_1B90D0720()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC40F8);
  __swift_project_value_buffer(v0, qword_1EBAC40F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LookupSelectionTypeDefault";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LookupSelectionTypeExplicit";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LookupSelectionTypeHint";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90D0960()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4110);
  __swift_project_value_buffer(v0, qword_1EBAC4110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RenderStyleFull";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RenderStyleCompactTopHit";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90D0B64()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4128);
  __swift_project_value_buffer(v0, qword_1EBAC4128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1B96880C0;
  v4 = v88 + v3 + v1[14];
  *(v88 + v3) = 0;
  *v4 = "QueryTypeSearch";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v88 + v3 + v2 + v1[14];
  *(v88 + v3 + v2) = 1;
  *v8 = "QueryTypeZeroKeyword";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v88 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "QueryTypeSuggested";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v7();
  v11 = (v88 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "QueryTypeExplicit";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v7();
  v13 = (v88 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "QueryTypeSuggestWithResults";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v7();
  v15 = (v88 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "QueryTypeMessages";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v88 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "QueryTypeMessagesZKW";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  v19 = (v88 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "QueryTypeMessagesCategoryZKW";
  *(v20 + 1) = 28;
  v20[16] = 2;
  v7();
  v21 = (v88 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "QueryTypeMessagesSuggest";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v7();
  v23 = (v88 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "QueryTypeMessagesSuggestCategory";
  *(v24 + 1) = 32;
  v24[16] = 2;
  v7();
  v25 = (v88 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "QueryTypeMessagesSearchSuggested";
  *(v26 + 1) = 32;
  v26[16] = 2;
  v7();
  v27 = (v88 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "QueryTypeMessagesProactiveSuggested";
  *(v28 + 1) = 35;
  v28[16] = 2;
  v7();
  v29 = (v88 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "QueryTypeMessagesCategorySearch";
  *(v30 + 1) = 31;
  v30[16] = 2;
  v7();
  v31 = (v88 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "QueryTypeMessagesCategorySuggested";
  *(v32 + 1) = 34;
  v32[16] = 2;
  v7();
  v33 = (v88 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "QueryTypeSiriEntityCheck";
  *(v34 + 1) = 24;
  v34[16] = 2;
  v7();
  v35 = (v88 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "QueryTypeCard";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v7();
  v37 = (v88 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "QueryTypeWeb";
  *(v38 + 1) = 12;
  v38[16] = 2;
  v7();
  v39 = (v88 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "QueryTypeAnswerExtract";
  *(v40 + 1) = 22;
  v40[16] = 2;
  v7();
  v41 = (v88 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "QueryTypeWebWithGoogle";
  *(v42 + 1) = 22;
  v42[16] = 2;
  v7();
  v43 = (v88 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "QueryTypeNews";
  *(v44 + 1) = 13;
  v44[16] = 2;
  v7();
  v45 = (v88 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "QueryTypeVideos";
  *(v46 + 1) = 15;
  v46[16] = 2;
  v7();
  v47 = (v88 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "QueryTypeTV";
  *(v48 + 1) = 11;
  v48[16] = 2;
  v7();
  v49 = (v88 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "QueryTypeMovies";
  *(v50 + 1) = 15;
  v50[16] = 2;
  v7();
  v51 = (v88 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "QueryTypeTwitter";
  *(v52 + 1) = 16;
  v52[16] = 2;
  v7();
  v53 = (v88 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "QueryTypeQuakes";
  *(v54 + 1) = 15;
  v54[16] = 2;
  v7();
  v55 = (v88 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "QueryTypeWiki";
  *(v56 + 1) = 13;
  v56[16] = 2;
  v7();
  v57 = (v88 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "QueryTypeWeather";
  *(v58 + 1) = 16;
  v58[16] = 2;
  v7();
  v59 = (v88 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "QueryTypeSiriFlightsWithUI";
  *(v60 + 1) = 26;
  v60[16] = 2;
  v7();
  v61 = (v88 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "QueryTypeSiriKnowledgeGraphWithUI";
  *(v62 + 1) = 33;
  v62[16] = 2;
  v7();
  v63 = (v88 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "QueryTypeSiriKnowledgeGraphDBQ";
  *(v64 + 1) = 30;
  v64[16] = 2;
  v7();
  v65 = (v88 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "QueryTypeSiriMediaWithUI";
  *(v66 + 1) = 24;
  v66[16] = 2;
  v7();
  v67 = (v88 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "QueryTypeSiriWikipediaWithUI";
  *(v68 + 1) = 28;
  v68[16] = 2;
  v7();
  v69 = (v88 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "QueryTypeSiriNewsSearch";
  *(v70 + 1) = 23;
  v70[16] = 2;
  v7();
  v71 = (v88 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "QueryTypeSiriNewsZKW";
  *(v72 + 1) = 20;
  v72[16] = 2;
  v7();
  v73 = (v88 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "QueryTypeSiriKnowledgeSearch";
  *(v74 + 1) = 28;
  v74[16] = 2;
  v7();
  v75 = (v88 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "QueryTypeSiriWebsiteLaunch";
  *(v76 + 1) = 26;
  v76[16] = 2;
  v7();
  v77 = (v88 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "QueryTypeMediaEntity";
  *(v78 + 1) = 20;
  v78[16] = 2;
  v7();
  v79 = (v88 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "QueryTypeSiriSportsSearch";
  *(v80 + 1) = 25;
  v80[16] = 2;
  v7();
  v81 = (v88 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "QueryTypeVoiceSearch";
  *(v82 + 1) = 20;
  v82[16] = 2;
  v7();
  v83 = (v88 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "QueryTypeWebImages";
  *(v84 + 1) = 18;
  v84[16] = 2;
  v7();
  v85 = (v88 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "QueryTypeKG";
  *(v86 + 1) = 11;
  v86[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B90D1694()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4B68);
  __swift_project_value_buffer(v0, qword_1EBAB4B68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NotSet";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Precise";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NonPrecise";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90D18D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4140);
  __swift_project_value_buffer(v0, qword_1EBAC4140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RoutineModeUnset";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RoutineModeUnknown";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RoutineModeLocal";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RoutineModeTourist";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90D1B4C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4158);
  __swift_project_value_buffer(v0, qword_1EBAC4158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TransportationModeUnset";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TransportationModeUnknown";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TransportationModeStationary";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TransportationModeWalking";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "TransportationModeRunning";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "TransportationModeCycling";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "TransportationModeDriving";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90D1E8C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4170);
  __swift_project_value_buffer(v0, qword_1EBAC4170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1B968AE70;
  v4 = v96 + v3 + v1[14];
  *(v96 + v3) = 1;
  *v4 = "queryType";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v96 + v3 + v2 + v1[14];
  *(v96 + v3 + v2) = 2;
  *v8 = "query";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v96 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "secretKey";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v96 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "sendTopHit";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v96 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "countryCode";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v96 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "locale";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v96 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 44;
  *v18 = "cardLocale";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  v19 = (v96 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "effectiveSystemLanguage";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v7();
  v21 = (v96 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "preferredLanguages";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v7();
  v23 = (v96 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "inputMode";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v7();
  v25 = (v96 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "calendar";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v96 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "timeZone";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v7();
  v29 = (v96 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "tempUnit";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v7();
  v31 = (v96 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "measurementSystem";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v7();
  v33 = (v96 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "hourFormat";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v7();
  v35 = (v96 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "modelVersionL2";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v7();
  v37 = (v96 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "modelVersionL3";
  *(v38 + 1) = 14;
  v38[16] = 2;
  v7();
  v39 = (v96 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "localSuggestions";
  *(v40 + 1) = 16;
  v40[16] = 2;
  v7();
  v41 = (v96 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "dictionarySignature";
  *(v42 + 1) = 19;
  v42[16] = 2;
  v7();
  v43 = (v96 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "silhouette";
  *(v44 + 1) = 10;
  v44[16] = 2;
  v7();
  v45 = (v96 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "location";
  *(v46 + 1) = 8;
  v46[16] = 2;
  v7();
  v47 = (v96 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "routineMode";
  *(v48 + 1) = 11;
  v48[16] = 2;
  v7();
  v49 = (v96 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "transportationMode";
  *(v50 + 1) = 18;
  v50[16] = 2;
  v7();
  v51 = (v96 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "installedAppsSignature";
  *(v52 + 1) = 22;
  v52[16] = 2;
  v7();
  v53 = (v96 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "managedDevice";
  *(v54 + 1) = 13;
  v54[16] = 2;
  v7();
  v55 = (v96 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "storeFront";
  *(v56 + 1) = 10;
  v56[16] = 2;
  v7();
  v57 = (v96 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "subscriptions";
  *(v58 + 1) = 13;
  v58[16] = 2;
  v7();
  v59 = (v96 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "userGUID";
  *(v60 + 1) = 8;
  v60[16] = 2;
  v7();
  v61 = (v96 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "uiScale";
  *(v62 + 1) = 7;
  v62[16] = 2;
  v7();
  v63 = (v96 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "mapsSession";
  *(v64 + 1) = 11;
  v64[16] = 2;
  v7();
  v65 = (v96 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "suggest";
  *(v66 + 1) = 7;
  v66[16] = 2;
  v7();
  v67 = (v96 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "queryLanguage";
  *(v68 + 1) = 13;
  v68[16] = 2;
  v7();
  v69 = (v96 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "lookupAppBundleId";
  *(v70 + 1) = 17;
  v70[16] = 2;
  v7();
  v71 = (v96 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "lookupHintDomain";
  *(v72 + 1) = 16;
  v72[16] = 2;
  v7();
  v73 = (v96 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "lookupSelectionType";
  *(v74 + 1) = 19;
  v74[16] = 2;
  v7();
  v75 = (v96 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "siriLocale";
  *(v76 + 1) = 10;
  v76[16] = 2;
  v7();
  v77 = (v96 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "hsEnabled";
  *(v78 + 1) = 9;
  v78[16] = 2;
  v7();
  v79 = (v96 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "internalBuild";
  *(v80 + 1) = 13;
  v80[16] = 2;
  v7();
  v81 = (v96 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "seedBuild";
  *(v82 + 1) = 9;
  v82[16] = 2;
  v7();
  v83 = (v96 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "abTestSeed";
  *(v84 + 1) = 10;
  v84[16] = 2;
  v7();
  v85 = (v96 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "experimentNamespaceId";
  *(v86 + 1) = 21;
  v86[16] = 2;
  v7();
  v87 = (v96 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "isClientOnlyExperiment";
  *(v88 + 1) = 22;
  v88[16] = 2;
  v7();
  v89 = (v96 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "isInReservedAllocationForExperiment";
  *(v90 + 1) = 35;
  v90[16] = 2;
  v7();
  v91 = (v96 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "exp";
  *(v92 + 1) = 3;
  v92[16] = 2;
  v7();
  v93 = (v96 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 100;
  *v94 = "debug_levels";
  *(v94 + 1) = 12;
  v94[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B90D2AD8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = v1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xE000000000000000;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0xE000000000000000;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0xE000000000000000;
  *(v0 + 280) = v1;
  *(v0 + 288) = xmmword_1B9652FE0;
  v2 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__silhouette;
  v3 = type metadata accessor for Apple_Parsec_Search_V2_Silhouette(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__location;
  v5 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__routineMode;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__transportationMode;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__installedAppsSignature) = xmmword_1B9652FE0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__managedDevice) = 0;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__storeFront);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__subscriptions;
  v10 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__userGuid);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__uiScale) = 0;
  v12 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__mapsSession;
  v13 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  __swift_storeEnumTagSinglePayload(v0 + v12, 1, 1, v13);
  v14 = v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__suggest;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = (v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__queryLanguage);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupAppBundleID);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupHintDomain);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupSelectionType;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = (v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__siriLocale);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__hsEnabled) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__internalBuild) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__seedBuild) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__abTestSeed) = 0;
  v20 = (v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__experimentNamespaceID);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isClientOnlyExperiment) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isInReservedAllocationForExperiment) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__exp) = 0;
  v21 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__debugLevels;
  *(v0 + v21) = sub_1B964C7B0();
  return v0;
}

uint64_t sub_1B90D2D80(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A20, &qword_1B96880D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v183 = &v148 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A28, &qword_1B96880E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v177 = &v148 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A18, &qword_1B96880D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v168 = &v148 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC44F8, &unk_1B968AE90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v164 = &v148 - v10;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  v149 = (v1 + 80);
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v150 = (v1 + 96);
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = 0;
  v151 = (v1 + 112);
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = 0;
  v152 = (v1 + 128);
  *(v1 + 136) = 0xE000000000000000;
  v11 = MEMORY[0x1E69E7CC0];
  *(v1 + 144) = MEMORY[0x1E69E7CC0];
  v153 = (v1 + 144);
  *(v1 + 152) = 0;
  v154 = (v1 + 152);
  *(v1 + 168) = 0;
  v155 = (v1 + 168);
  *(v1 + 160) = 0xE000000000000000;
  *(v1 + 176) = 0xE000000000000000;
  *(v1 + 184) = 0;
  v156 = (v1 + 184);
  *(v1 + 192) = 0xE000000000000000;
  *(v1 + 200) = 0;
  v157 = (v1 + 200);
  *(v1 + 216) = 0;
  v158 = (v1 + 216);
  *(v1 + 208) = 1;
  *(v1 + 224) = 1;
  *(v1 + 232) = 0;
  v159 = (v1 + 232);
  *(v1 + 240) = 1;
  *(v1 + 248) = 0;
  v160 = (v1 + 248);
  *(v1 + 256) = 0xE000000000000000;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0xE000000000000000;
  *(v1 + 280) = v11;
  v190 = xmmword_1B9652FE0;
  *(v1 + 288) = xmmword_1B9652FE0;
  v12 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__silhouette;
  v161 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__silhouette;
  v13 = type metadata accessor for Apple_Parsec_Search_V2_Silhouette(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__location;
  v162 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__location;
  v15 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__routineMode;
  v163 = v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__routineMode;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__transportationMode;
  v165 = v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__transportationMode;
  *v17 = 0;
  *(v17 + 8) = 1;
  v166 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__installedAppsSignature);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__installedAppsSignature) = v190;
  v167 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__managedDevice;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__managedDevice) = 0;
  v18 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__storeFront);
  v169 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__storeFront);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__subscriptions;
  v170 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__subscriptions;
  v20 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__userGuid);
  v171 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__userGuid);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v172 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__uiScale);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__uiScale) = 0;
  v22 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__mapsSession;
  v173 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__mapsSession;
  v23 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v24 = v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__suggest;
  v174 = v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__suggest;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__queryLanguage);
  v175 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__queryLanguage);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupAppBundleID);
  v176 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupAppBundleID);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupHintDomain);
  v178 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupHintDomain);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupSelectionType;
  v179 = v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupSelectionType;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__siriLocale);
  v180 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__siriLocale);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v181 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__hsEnabled;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__hsEnabled) = 0;
  v182 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__internalBuild;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__internalBuild) = 0;
  v184 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__seedBuild;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__seedBuild) = 0;
  v185 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__abTestSeed;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__abTestSeed) = 0;
  v30 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__experimentNamespaceID);
  v186 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__experimentNamespaceID);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v187 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isClientOnlyExperiment;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isClientOnlyExperiment) = 0;
  v188 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isInReservedAllocationForExperiment;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isInReservedAllocationForExperiment) = 0;
  v189 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__exp;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__exp) = 0;
  v31 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__debugLevels;
  *&v190 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__debugLevels;
  *(v1 + v31) = sub_1B964C7B0();
  swift_beginAccess();
  v32 = *(a1 + 16);
  v33 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v32;
  *(v1 + 24) = v33;
  swift_beginAccess();
  v35 = *(a1 + 32);
  v34 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v35;
  *(v1 + 40) = v34;

  swift_beginAccess();
  v37 = *(a1 + 48);
  v36 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v37;
  *(v1 + 56) = v36;

  swift_beginAccess();
  v38 = *(a1 + 64);
  LOBYTE(v36) = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v38;
  *(v1 + 72) = v36;
  swift_beginAccess();
  v40 = *(a1 + 80);
  v39 = *(a1 + 88);
  v41 = v149;
  swift_beginAccess();
  *v41 = v40;
  *(v1 + 88) = v39;

  swift_beginAccess();
  v43 = *(a1 + 96);
  v42 = *(a1 + 104);
  v44 = v150;
  swift_beginAccess();
  *v44 = v43;
  *(v1 + 104) = v42;

  swift_beginAccess();
  v46 = *(a1 + 112);
  v45 = *(a1 + 120);
  v47 = v151;
  swift_beginAccess();
  *v47 = v46;
  *(v1 + 120) = v45;

  swift_beginAccess();
  v49 = *(a1 + 128);
  v48 = *(a1 + 136);
  v50 = v152;
  swift_beginAccess();
  *v50 = v49;
  *(v1 + 136) = v48;

  swift_beginAccess();
  v51 = *(a1 + 144);
  v52 = v153;
  swift_beginAccess();
  *v52 = v51;

  swift_beginAccess();
  v54 = *(a1 + 152);
  v53 = *(a1 + 160);
  v55 = v154;
  swift_beginAccess();
  *v55 = v54;
  *(v1 + 160) = v53;

  swift_beginAccess();
  v57 = *(a1 + 168);
  v56 = *(a1 + 176);
  v58 = v155;
  swift_beginAccess();
  *v58 = v57;
  *(v1 + 176) = v56;

  swift_beginAccess();
  v60 = *(a1 + 184);
  v59 = *(a1 + 192);
  v61 = v156;
  swift_beginAccess();
  *v61 = v60;
  *(v1 + 192) = v59;

  swift_beginAccess();
  v62 = *(a1 + 200);
  LOBYTE(v36) = *(a1 + 208);
  v63 = v157;
  swift_beginAccess();
  *v63 = v62;
  *(v1 + 208) = v36;
  swift_beginAccess();
  v64 = *(a1 + 216);
  LOBYTE(v36) = *(a1 + 224);
  v65 = v158;
  swift_beginAccess();
  *v65 = v64;
  *(v1 + 224) = v36;
  swift_beginAccess();
  v66 = *(a1 + 232);
  LOBYTE(v36) = *(a1 + 240);
  v67 = v159;
  swift_beginAccess();
  *v67 = v66;
  *(v1 + 240) = v36;
  swift_beginAccess();
  v69 = *(a1 + 248);
  v68 = *(a1 + 256);
  v70 = v160;
  swift_beginAccess();
  *v70 = v69;
  *(v1 + 256) = v68;

  swift_beginAccess();
  v72 = *(a1 + 264);
  v71 = *(a1 + 272);
  swift_beginAccess();
  *(v1 + 264) = v72;
  *(v1 + 272) = v71;

  swift_beginAccess();
  v73 = *(a1 + 280);
  swift_beginAccess();
  *(v1 + 280) = v73;

  swift_beginAccess();
  v74 = *(a1 + 288);
  v75 = *(a1 + 296);
  swift_beginAccess();
  v76 = *(v1 + 288);
  v77 = *(v1 + 296);
  *(v1 + 288) = v74;
  *(v1 + 296) = v75;
  sub_1B8D91FCC(v74, v75);
  sub_1B8D538A0(v76, v77);
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
  v78 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__routineMode);
  swift_beginAccess();
  v79 = *v78;
  LOBYTE(v78) = *(v78 + 8);
  v80 = v163;
  swift_beginAccess();
  *v80 = v79;
  *(v80 + 8) = v78;
  v81 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__transportationMode);
  swift_beginAccess();
  v82 = *v81;
  LOBYTE(v81) = *(v81 + 8);
  v83 = v165;
  swift_beginAccess();
  *v83 = v82;
  *(v83 + 8) = v81;
  v84 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__installedAppsSignature);
  swift_beginAccess();
  v86 = *v84;
  v85 = v84[1];
  v87 = v166;
  swift_beginAccess();
  v88 = *v87;
  v89 = v87[1];
  *v87 = v86;
  v87[1] = v85;
  sub_1B8D91FCC(v86, v85);
  sub_1B8D538A0(v88, v89);
  v90 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__managedDevice;
  swift_beginAccess();
  LOBYTE(v90) = *(a1 + v90);
  v91 = v167;
  swift_beginAccess();
  *(v1 + v91) = v90;
  v92 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__storeFront);
  swift_beginAccess();
  v94 = *v92;
  v93 = v92[1];
  v95 = v169;
  swift_beginAccess();
  *v95 = v94;
  v95[1] = v93;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v96 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__userGuid);
  swift_beginAccess();
  v98 = *v96;
  v97 = v96[1];
  v99 = v171;
  swift_beginAccess();
  *v99 = v98;
  v99[1] = v97;

  v100 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__uiScale);
  swift_beginAccess();
  v101 = *v100;
  v102 = v172;
  swift_beginAccess();
  *v102 = v101;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v103 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__suggest);
  swift_beginAccess();
  v104 = *v103;
  LOBYTE(v103) = *(v103 + 8);
  v105 = v174;
  swift_beginAccess();
  *v105 = v104;
  *(v105 + 8) = v103;
  v106 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__queryLanguage);
  swift_beginAccess();
  v108 = *v106;
  v107 = v106[1];
  v109 = v175;
  swift_beginAccess();
  *v109 = v108;
  v109[1] = v107;

  v110 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupAppBundleID);
  swift_beginAccess();
  v112 = *v110;
  v111 = v110[1];
  v113 = v176;
  swift_beginAccess();
  *v113 = v112;
  v113[1] = v111;

  v114 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupHintDomain);
  swift_beginAccess();
  v116 = *v114;
  v115 = v114[1];
  v117 = v178;
  swift_beginAccess();
  *v117 = v116;
  v117[1] = v115;

  v118 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupSelectionType);
  swift_beginAccess();
  v119 = *v118;
  LOBYTE(v118) = *(v118 + 8);
  v120 = v179;
  swift_beginAccess();
  *v120 = v119;
  *(v120 + 8) = v118;
  v121 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__siriLocale);
  swift_beginAccess();
  v123 = *v121;
  v122 = v121[1];
  v124 = v180;
  swift_beginAccess();
  *v124 = v123;
  v124[1] = v122;

  v125 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__hsEnabled;
  swift_beginAccess();
  LOBYTE(v125) = *(a1 + v125);
  v126 = v181;
  swift_beginAccess();
  *(v1 + v126) = v125;
  v127 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__internalBuild;
  swift_beginAccess();
  LOBYTE(v127) = *(a1 + v127);
  v128 = v182;
  swift_beginAccess();
  *(v1 + v128) = v127;
  v129 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__seedBuild;
  swift_beginAccess();
  LOBYTE(v129) = *(a1 + v129);
  v130 = v184;
  swift_beginAccess();
  *(v1 + v130) = v129;
  v131 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__abTestSeed;
  swift_beginAccess();
  LODWORD(v131) = *(a1 + v131);
  v132 = v185;
  swift_beginAccess();
  *(v1 + v132) = v131;
  v133 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__experimentNamespaceID);
  swift_beginAccess();
  v135 = *v133;
  v134 = v133[1];
  v136 = v186;
  swift_beginAccess();
  *v136 = v135;
  v136[1] = v134;

  v137 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isClientOnlyExperiment;
  swift_beginAccess();
  LOBYTE(v137) = *(a1 + v137);
  v138 = v187;
  swift_beginAccess();
  *(v1 + v138) = v137;
  v139 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isInReservedAllocationForExperiment;
  swift_beginAccess();
  LOBYTE(v139) = *(a1 + v139);
  v140 = v188;
  swift_beginAccess();
  *(v1 + v140) = v139;
  v141 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__exp;
  swift_beginAccess();
  v142 = *(a1 + v141);
  v143 = v189;
  swift_beginAccess();
  *(v1 + v143) = v142;
  v144 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__debugLevels;
  swift_beginAccess();
  v145 = *(a1 + v144);

  v146 = v190;
  swift_beginAccess();
  *(v1 + v146) = v145;

  return v1;
}

uint64_t sub_1B90D4000()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B90D4054()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B90D40A8()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

void *sub_1B90D413C()
{

  sub_1B8D538A0(*(v0 + 288), *(v0 + 296));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__silhouette, &qword_1EBAC44F8, &unk_1B968AE90);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__location, &qword_1EBAC3A18, &qword_1B96880D0);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__installedAppsSignature), *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__installedAppsSignature + 8));

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__subscriptions, &qword_1EBAC3A28, &qword_1B96880E0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__mapsSession, &qword_1EBAC3A20, &qword_1B96880D8);

  return v0;
}

void sub_1B90D4364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B90DA898();
        continue;
      case 2:
        sub_1B90E3DFC();
        continue;
      case 3:
        sub_1B90B5DB4();
        continue;
      case 4:
        sub_1B90D48FC(a2, a1, a3, a4);
        continue;
      case 5:
        sub_1B90DA9D0(a2, a1, a3, a4, MEMORY[0x1E69AACE0]);
        continue;
      case 6:
        sub_1B8E16BD4(a2, a1);
        continue;
      case 7:
        sub_1B8E71858(a2, a1);
        continue;
      case 8:
        sub_1B8E2FA2C(a2, a1, a3, a4);
        continue;
      case 9:
        sub_1B8E71960(a2, a1);
        continue;
      case 10:
        sub_1B8F3C308(a2, a1);
        continue;
      case 11:
        sub_1B90D4990(a2, a1);
        continue;
      case 12:
        sub_1B90D4A14(a2, a1, a3, a4);
        continue;
      case 13:
        sub_1B90D4AA8(a2, a1, a3, a4);
        continue;
      case 14:
        sub_1B90D4B3C(a2, a1, a3, a4);
        continue;
      case 15:
        sub_1B8E89110(a2, a1);
        continue;
      case 16:
        sub_1B8E89194(a2, a1);
        continue;
      case 17:
        sub_1B90D4BD0(a2, a1, a3, a4);
        continue;
      case 18:
        sub_1B90D4C9C(a2, a1, a3, a4);
        continue;
      case 19:
        sub_1B90D4D20(a2, a1, a3, a4);
        continue;
      case 20:
        sub_1B90D4DFC(a2, a1, a3, a4);
        continue;
      case 21:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__routineMode;
        v12 = sub_1B90C0294;
        goto LABEL_34;
      case 22:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__transportationMode;
        v12 = sub_1B90952C4;
        goto LABEL_34;
      case 23:
      case 25:
      case 27:
      case 31:
      case 32:
      case 33:
      case 35:
      case 40:
        sub_1B90E43C0();
        continue;
      case 24:
      case 36:
      case 37:
      case 38:
      case 41:
      case 42:
        sub_1B90AB150();
        continue;
      case 26:
        sub_1B90D4ED8(a2, a1, a3, a4);
        continue;
      case 28:
      case 39:
        sub_1B90D5110();
        continue;
      case 29:
        sub_1B90D4FB4(a2, a1, a3, a4);
        continue;
      case 30:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__suggest;
        v12 = sub_1B90F0594;
        goto LABEL_34;
      case 34:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupSelectionType;
        v12 = sub_1B905BB40;
LABEL_34:
        sub_1B90D5090(a2, a1, a3, a4, v11, v12);
        break;
      case 43:
        sub_1B90E4408();
        break;
      case 44:
        sub_1B8E2F858(a2, a1);
        break;
      case 100:
        sub_1B90E4450(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__debugLevels, MEMORY[0x1E69AABB0], MEMORY[0x1E69AABA8]);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90D48FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B90F06E4();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B90D4990(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B90D4A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B90F0690();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B90D4AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B90F063C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B90D4B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B90F05E8();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B90D4BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_Suggestion(0);
  sub_1B90E3800(&qword_1EBAC49D8, type metadata accessor for Apple_Parsec_Search_V2_Suggestion, protocol conformance descriptor for Apple_Parsec_Search_V2_Suggestion);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B90D4C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C470();
  return swift_endAccess();
}

uint64_t sub_1B90D4D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_Silhouette(0);
  sub_1B90E3800(&qword_1EBAC49B0, type metadata accessor for Apple_Parsec_Search_V2_Silhouette, protocol conformance descriptor for Apple_Parsec_Search_V2_Silhouette);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90D4DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  sub_1B90E3800(&qword_1ED9CBFC8, type metadata accessor for Apple_Parsec_Search_V2_Location, protocol conformance descriptor for Apple_Parsec_Search_V2_Location);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90D4ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  sub_1B90E3800(&qword_1EBAB4B18, type metadata accessor for Apple_Parsec_Search_V2_Subscriptions, protocol conformance descriptor for Apple_Parsec_Search_V2_Subscriptions);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90D4FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  sub_1B90E3800(&qword_1EBAC3B08, type metadata accessor for Apple_Parsec_Search_V2_MapsSession, protocol conformance descriptor for Apple_Parsec_Search_V2_MapsSession);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90D5090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_122_1();
  v8 = v7;
  v10 = *v9;
  OUTLINED_FUNCTION_131();
  v11 = swift_beginAccess();
  v12 = a6(v11);
  v14 = OUTLINED_FUNCTION_257_1(v8 + v10, v13, v12);
  return OUTLINED_FUNCTION_199_1(v14);
}

void sub_1B90D5110()
{
  OUTLINED_FUNCTION_819();
  OUTLINED_FUNCTION_89_9(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_169_2();
  v7 = v0();
  OUTLINED_FUNCTION_199_1(v7);
  OUTLINED_FUNCTION_818();
}

uint64_t sub_1B90D5188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A20, &qword_1B96880D8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v112 = &v107 - v10;
  v111 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A28, &qword_1B96880E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v115 = &v107 - v13;
  v114 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A18, &qword_1B96880D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v116 = &v107 - v16;
  v117 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC44F8, &unk_1B968AE90);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v107 - v19;
  v21 = type metadata accessor for Apple_Parsec_Search_V2_Silhouette(0);
  MEMORY[0x1EEE9AC00](v21);
  swift_beginAccess();
  v22 = sub_1B8D92198(*(a1 + 16), *(a1 + 24), 0);
  v137 = a3;
  if (!v22)
  {
    v23 = *(a1 + 24);
    v135 = *(a1 + 16);
    v136 = v23;
    sub_1B905BAEC();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  v25 = a4;
  swift_beginAccess();
  v26 = *(a1 + 40);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 56);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 64))
  {
    v30 = *(a1 + 72);
    v133 = *(a1 + 64);
    v134 = v30;
    sub_1B90F06E4();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 88);
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v33 = *(a1 + 104);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 136);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 144) + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 160);
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = *(a1 + 152) & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v39 = *(a1 + 176);
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = *(a1 + 168) & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {

    sub_1B964C700();
    if (!v4)
    {

      goto LABEL_43;
    }
  }

LABEL_43:
  swift_beginAccess();
  v41 = *(a1 + 192);
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = *(a1 + 184) & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 200) || (v43 = *(a1 + 208), v131 = *(a1 + 200), v132 = v43, sub_1B90F0690(), result = sub_1B964C680(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 216) || (v44 = *(a1 + 224), v129 = *(a1 + 216), v130 = v44, sub_1B90F063C(), result = sub_1B964C680(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 232) || (v45 = *(a1 + 240), v127 = *(a1 + 232), v128 = v45, sub_1B90F05E8(), result = sub_1B964C680(), !v4))
      {
        v109 = v25;
        swift_beginAccess();
        v46 = *(a1 + 256);
        v47 = HIBYTE(v46) & 0xF;
        if ((v46 & 0x2000000000000000) == 0)
        {
          v47 = *(a1 + 248) & 0xFFFFFFFFFFFFLL;
        }

        if (v47)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        v48 = *(a1 + 272);
        v49 = HIBYTE(v48) & 0xF;
        if ((v48 & 0x2000000000000000) == 0)
        {
          v49 = *(a1 + 264) & 0xFFFFFFFFFFFFLL;
        }

        if (v49)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        if (*(*(a1 + 280) + 16))
        {
          v108 = type metadata accessor for Apple_Parsec_Search_V2_Suggestion(0);
          sub_1B90E3800(&qword_1EBAC49D8, type metadata accessor for Apple_Parsec_Search_V2_Suggestion, protocol conformance descriptor for Apple_Parsec_Search_V2_Suggestion);

          sub_1B964C730();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        if (!sub_1B8D99EA8(*(a1 + 288), *(a1 + 296)))
        {
          v50 = *(a1 + 296);
          v108 = *(a1 + 288);
          sub_1B8D91FCC(v108, v50);
          v107 = v50;
          sub_1B964C6A0();
          if (v4)
          {
            v52 = v107;
            v51 = v108;
            return sub_1B8D538A0(v51, v52);
          }

          sub_1B8D538A0(v108, v107);
        }

        swift_beginAccess();
        sub_1B8F1B8B8();
        if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
        {
          sub_1B8D9207C(v20, &qword_1EBAC44F8, &unk_1B968AE90);
        }

        else
        {
          sub_1B90D4000();
          sub_1B90E3800(&qword_1EBAC49B0, type metadata accessor for Apple_Parsec_Search_V2_Silhouette, protocol conformance descriptor for Apple_Parsec_Search_V2_Silhouette);
          sub_1B964C740();
          if (v4)
          {
            return sub_1B90D40A8();
          }

          sub_1B90D40A8();
        }

        swift_beginAccess();
        v53 = v116;
        sub_1B8F1B8B8();
        if (__swift_getEnumTagSinglePayload(v53, 1, v117) == 1)
        {
          sub_1B8D9207C(v53, &qword_1EBAC3A18, &qword_1B96880D0);
        }

        else
        {
          sub_1B90D4000();
          sub_1B90E3800(&qword_1ED9CBFC8, type metadata accessor for Apple_Parsec_Search_V2_Location, protocol conformance descriptor for Apple_Parsec_Search_V2_Location);
          sub_1B964C740();
          if (v4)
          {
            return sub_1B90D40A8();
          }

          sub_1B90D40A8();
        }

        v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__routineMode);
        swift_beginAccess();
        if (!*v54 || (v55 = *(v54 + 8), v125 = *v54, v126 = v55, sub_1B90C0294(), result = sub_1B964C680(), !v4))
        {
          v56 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__transportationMode);
          swift_beginAccess();
          if (!*v56 || (v57 = *(v56 + 8), v123 = *v56, v124 = v57, sub_1B90952C4(), result = sub_1B964C680(), !v4))
          {
            v58 = a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__installedAppsSignature;
            swift_beginAccess();
            if (!sub_1B8D99EA8(*v58, *(v58 + 8)))
            {
              v59 = *v58;
              v60 = *(v58 + 8);
              sub_1B8D91FCC(v59, v60);
              sub_1B964C6A0();
              v51 = v59;
              v52 = v60;
              if (v4)
              {
                return sub_1B8D538A0(v51, v52);
              }

              sub_1B8D538A0(v59, v60);
            }

            v61 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__managedDevice;
            swift_beginAccess();
            if (*(a1 + v61) != 1 || (result = sub_1B964C670(), !v4))
            {
              v62 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__storeFront);
              swift_beginAccess();
              v63 = *v62;
              v64 = v62[1];
              v65 = HIBYTE(v64) & 0xF;
              if ((v64 & 0x2000000000000000) == 0)
              {
                v65 = v63 & 0xFFFFFFFFFFFFLL;
              }

              if (v65)
              {

                sub_1B964C700();
                if (v5)
                {
                }
              }

              swift_beginAccess();
              v66 = v115;
              sub_1B8F1B8B8();
              if (__swift_getEnumTagSinglePayload(v66, 1, v114) == 1)
              {
                sub_1B8D9207C(v115, &qword_1EBAC3A28, &qword_1B96880E0);
              }

              else
              {
                sub_1B90D4000();
                sub_1B90E3800(&qword_1EBAB4B18, type metadata accessor for Apple_Parsec_Search_V2_Subscriptions, protocol conformance descriptor for Apple_Parsec_Search_V2_Subscriptions);
                sub_1B964C740();
                if (v5)
                {
                  return sub_1B90D40A8();
                }

                sub_1B90D40A8();
              }

              v67 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__userGuid);
              swift_beginAccess();
              v68 = *v67;
              v69 = v67[1];
              v70 = HIBYTE(v69) & 0xF;
              if ((v69 & 0x2000000000000000) == 0)
              {
                v70 = v68 & 0xFFFFFFFFFFFFLL;
              }

              if (v70)
              {

                sub_1B964C700();
                if (v5)
                {
                }
              }

              v71 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__uiScale);
              swift_beginAccess();
              if (*v71 != 0.0)
              {
                result = sub_1B964C6B0();
                if (v5)
                {
                  return result;
                }
              }

              swift_beginAccess();
              v72 = v112;
              sub_1B8F1B8B8();
              if (__swift_getEnumTagSinglePayload(v72, 1, v111) == 1)
              {
                sub_1B8D9207C(v112, &qword_1EBAC3A20, &qword_1B96880D8);
                goto LABEL_115;
              }

              sub_1B90D4000();
              sub_1B90E3800(&qword_1EBAC3B08, type metadata accessor for Apple_Parsec_Search_V2_MapsSession, protocol conformance descriptor for Apple_Parsec_Search_V2_MapsSession);
              sub_1B964C740();
              if (!v5)
              {
                sub_1B90D40A8();
LABEL_115:
                v73 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__suggest);
                swift_beginAccess();
                if (!*v73 || (v74 = *(v73 + 8), v121 = *v73, v122 = v74, sub_1B90F0594(), result = sub_1B964C680(), !v5))
                {
                  v75 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__queryLanguage);
                  swift_beginAccess();
                  v76 = *v75;
                  v77 = v75[1];
                  v78 = HIBYTE(v77) & 0xF;
                  if ((v77 & 0x2000000000000000) == 0)
                  {
                    v78 = v76 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v78)
                  {

                    sub_1B964C700();
                    if (v5)
                    {
                    }
                  }

                  v79 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupAppBundleID);
                  swift_beginAccess();
                  v80 = *v79;
                  v81 = v79[1];
                  v82 = HIBYTE(v81) & 0xF;
                  if ((v81 & 0x2000000000000000) == 0)
                  {
                    v82 = v80 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v82)
                  {

                    sub_1B964C700();
                    if (v5)
                    {
                    }
                  }

                  v83 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupHintDomain);
                  swift_beginAccess();
                  v84 = *v83;
                  v85 = v83[1];
                  v86 = HIBYTE(v85) & 0xF;
                  if ((v85 & 0x2000000000000000) == 0)
                  {
                    v86 = v84 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v86)
                  {

                    sub_1B964C700();
                    if (v5)
                    {
                    }
                  }

                  v87 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupSelectionType);
                  swift_beginAccess();
                  if (!*v87 || (v88 = *(v87 + 8), v119 = *v87, v120 = v88, sub_1B905BB40(), result = sub_1B964C680(), !v5))
                  {
                    v89 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__siriLocale);
                    swift_beginAccess();
                    v90 = *v89;
                    v91 = v89[1];
                    v92 = HIBYTE(v91) & 0xF;
                    if ((v91 & 0x2000000000000000) == 0)
                    {
                      v92 = v90 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v92)
                    {

                      sub_1B964C700();
                      if (v5)
                      {
                      }
                    }

                    v93 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__hsEnabled;
                    swift_beginAccess();
                    if (*(a1 + v93) != 1 || (result = sub_1B964C670(), !v5))
                    {
                      v94 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__internalBuild;
                      swift_beginAccess();
                      if (*(a1 + v94) != 1 || (result = sub_1B964C670(), !v5))
                      {
                        v95 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__seedBuild;
                        swift_beginAccess();
                        if (*(a1 + v95) != 1 || (result = sub_1B964C670(), !v5))
                        {
                          v96 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__abTestSeed;
                          swift_beginAccess();
                          if (!*(a1 + v96) || (result = sub_1B964C6C0(), !v5))
                          {
                            v97 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__experimentNamespaceID);
                            swift_beginAccess();
                            v98 = *v97;
                            v99 = v97[1];
                            v100 = HIBYTE(v99) & 0xF;
                            if ((v99 & 0x2000000000000000) == 0)
                            {
                              v100 = v98 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v100)
                            {

                              sub_1B964C700();
                              if (v5)
                              {
                              }
                            }

                            v101 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isClientOnlyExperiment;
                            swift_beginAccess();
                            if (*(a1 + v101) != 1 || (result = sub_1B964C670(), !v5))
                            {
                              v102 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isInReservedAllocationForExperiment;
                              swift_beginAccess();
                              if (*(a1 + v102) != 1 || (result = sub_1B964C670(), !v5))
                              {
                                v103 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__exp;
                                swift_beginAccess();
                                if (!*(a1 + v103) || (result = sub_1B964C6D0(), !v5))
                                {
                                  swift_beginAccess();
                                  v104 = *(a1 + 120);
                                  v105 = HIBYTE(v104) & 0xF;
                                  if ((v104 & 0x2000000000000000) == 0)
                                  {
                                    v105 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
                                  }

                                  if (v105)
                                  {

                                    sub_1B964C700();
                                    if (v5)
                                    {
                                    }
                                  }

                                  v106 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__debugLevels;
                                  result = swift_beginAccess();
                                  if (*(*(a1 + v106) + 16))
                                  {
                                    sub_1B964C280();
                                    sub_1B964C250();

                                    sub_1B964C5F0();
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

              return sub_1B90D40A8();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B90D6878(uint64_t a1, uint64_t a2)
{
  v203 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  MEMORY[0x1EEE9AC00](v203);
  v200 = &v193 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B30, &unk_1B968AE60);
  MEMORY[0x1EEE9AC00](v201);
  v204 = &v193 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A20, &qword_1B96880D8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v199 = &v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v202 = &v193 - v9;
  v209 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  MEMORY[0x1EEE9AC00](v209);
  v205 = &v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B28, &unk_1B9688E90);
  MEMORY[0x1EEE9AC00](v206);
  v210 = &v193 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A28, &qword_1B96880E0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v207 = (&v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v208 = &v193 - v15;
  v214 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  MEMORY[0x1EEE9AC00](v214);
  v211 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B38, &unk_1B9688EA0);
  MEMORY[0x1EEE9AC00](v212);
  v216 = &v193 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A18, &qword_1B96880D0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v213 = &v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v215 = &v193 - v21;
  v22 = type metadata accessor for Apple_Parsec_Search_V2_Silhouette(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v193 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4BA8, &qword_1B968F158);
  MEMORY[0x1EEE9AC00](v25);
  v217 = &v193 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC44F8, &unk_1B968AE90);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v193 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v193 - v31;
  swift_beginAccess();
  v33 = *(a1 + 16);
  v34 = *(a1 + 24);
  swift_beginAccess();
  if (!sub_1B8D92198(v33, v34, *(a2 + 16)))
  {
    goto LABEL_91;
  }

  swift_beginAccess();
  v36 = *(a1 + 32);
  v35 = *(a1 + 40);
  swift_beginAccess();
  v37 = v36 == *(a2 + 32) && v35 == *(a2 + 40);
  if (!v37 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_91;
  }

  swift_beginAccess();
  v38 = *(a1 + 48);
  v39 = *(a1 + 56);
  swift_beginAccess();
  v40 = v38 == *(a2 + 48) && v39 == *(a2 + 56);
  if (!v40 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_91;
  }

  swift_beginAccess();
  v41 = *(a1 + 64);
  v42 = *(a1 + 72);
  swift_beginAccess();
  v43 = *(a2 + 64);
  v44 = v41 != 0;
  if (!v42)
  {
    v44 = v41;
  }

  if (*(a2 + 72) != 1)
  {
    if (v44 != v43)
    {
      goto LABEL_91;
    }

    goto LABEL_21;
  }

  if (v43)
  {
    if (v44 != 1)
    {
      goto LABEL_91;
    }

LABEL_21:
    swift_beginAccess();
    v45 = *(a1 + 80);
    v46 = *(a1 + 88);
    swift_beginAccess();
    v47 = v45 == *(a2 + 80) && v46 == *(a2 + 88);
    if (!v47 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_91;
    }

    swift_beginAccess();
    v48 = *(a1 + 96);
    v49 = *(a1 + 104);
    swift_beginAccess();
    v50 = v48 == *(a2 + 96) && v49 == *(a2 + 104);
    if (!v50 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_91;
    }

    swift_beginAccess();
    v51 = *(a1 + 112);
    v52 = *(a1 + 120);
    swift_beginAccess();
    v53 = v51 == *(a2 + 112) && v52 == *(a2 + 120);
    if (!v53 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_91;
    }

    swift_beginAccess();
    v54 = *(a1 + 128);
    v55 = *(a1 + 136);
    swift_beginAccess();
    v56 = v54 == *(a2 + 128) && v55 == *(a2 + 136);
    if (!v56 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_91;
    }

    swift_beginAccess();
    v57 = *(a1 + 144);
    swift_beginAccess();
    if ((sub_1B8D6123C(v57, *(a2 + 144)) & 1) == 0)
    {
      goto LABEL_91;
    }

    swift_beginAccess();
    v58 = *(a1 + 152);
    v59 = *(a1 + 160);
    swift_beginAccess();
    v60 = v58 == *(a2 + 152) && v59 == *(a2 + 160);
    if (!v60 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_91;
    }

    swift_beginAccess();
    v61 = *(a1 + 168);
    v62 = *(a1 + 176);
    swift_beginAccess();
    v63 = v61 == *(a2 + 168) && v62 == *(a2 + 176);
    if (!v63 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_91;
    }

    swift_beginAccess();
    v64 = *(a1 + 184);
    v65 = *(a1 + 192);
    swift_beginAccess();
    v66 = v64 == *(a2 + 184) && v65 == *(a2 + 192);
    if (!v66 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_91;
    }

    swift_beginAccess();
    v67 = *(a1 + 200);
    v68 = *(a1 + 208);
    swift_beginAccess();
    if (!sub_1B8D92198(v67, v68, *(a2 + 200)))
    {
      goto LABEL_91;
    }

    swift_beginAccess();
    v69 = *(a1 + 216);
    v70 = *(a1 + 224);
    swift_beginAccess();
    if (!sub_1B8D92198(v69, v70, *(a2 + 216)))
    {
      goto LABEL_91;
    }

    swift_beginAccess();
    v71 = *(a1 + 232);
    v72 = *(a1 + 240);
    swift_beginAccess();
    if (!sub_1B8D92198(v71, v72, *(a2 + 232)))
    {
      goto LABEL_91;
    }

    swift_beginAccess();
    v73 = *(a1 + 248);
    v74 = *(a1 + 256);
    swift_beginAccess();
    v75 = v73 == *(a2 + 248) && v74 == *(a2 + 256);
    if (!v75 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_91;
    }

    swift_beginAccess();
    v76 = *(a1 + 264);
    v77 = *(a1 + 272);
    swift_beginAccess();
    v78 = v76 == *(a2 + 264) && v77 == *(a2 + 272);
    if (!v78 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_91;
    }

    swift_beginAccess();
    v79 = *(a1 + 280);
    swift_beginAccess();
    v80 = *(a2 + 280);

    sub_1B8D8CEC4(v79, v80);
    LODWORD(v198) = v81;

    if ((v198 & 1) == 0)
    {
      goto LABEL_90;
    }

    swift_beginAccess();
    v82 = *(a1 + 288);
    v198 = *(a1 + 296);
    swift_beginAccess();
    v84 = *(a2 + 288);
    v83 = *(a2 + 296);
    v196 = v82;
    v197 = v83;
    sub_1B8D91FCC(v82, v198);
    v194 = v84;
    sub_1B8D91FCC(v84, v197);
    v85 = v82;
    v86 = v198;
    v87 = v84;
    v88 = v197;
    v195 = MEMORY[0x1BFADC060](v85, v198, v87, v197);
    sub_1B8D538A0(v194, v88);
    sub_1B8D538A0(v196, v86);
    if ((v195 & 1) == 0)
    {
      goto LABEL_90;
    }

    swift_beginAccess();
    sub_1B8F1B8B8();
    swift_beginAccess();
    v89 = *(v25 + 48);
    v90 = v217;
    sub_1B8F1B8B8();
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v90, 1, v22) == 1)
    {
      sub_1B8D9207C(v32, &qword_1EBAC44F8, &unk_1B968AE90);
      if (__swift_getEnumTagSinglePayload(v90 + v89, 1, v22) == 1)
      {
        sub_1B8D9207C(v90, &qword_1EBAC44F8, &unk_1B968AE90);
        goto LABEL_75;
      }
    }

    else
    {
      sub_1B8F1B8B8();
      if (__swift_getEnumTagSinglePayload(v90 + v89, 1, v22) != 1)
      {
        sub_1B90D4000();
        if (*v30 != *v24 || (sub_1B8D76D38(*(v30 + 1), *(v24 + 1)), (v96 & 1) == 0))
        {
          sub_1B8D9207C(v32, &qword_1EBAC44F8, &unk_1B968AE90);
          sub_1B90D40A8();
          sub_1B90D40A8();
          v95 = v217;
          v93 = &qword_1EBAC44F8;
          v94 = &unk_1B968AE90;
          goto LABEL_89;
        }

        sub_1B964C2B0();
        sub_1B90E3800(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v97 = sub_1B964C850();
        sub_1B8D9207C(v32, &qword_1EBAC44F8, &unk_1B968AE90);
        sub_1B90D40A8();
        sub_1B90D40A8();
        sub_1B8D9207C(v217, &qword_1EBAC44F8, &unk_1B968AE90);
        if ((v97 & 1) == 0)
        {
          goto LABEL_90;
        }

LABEL_75:
        swift_beginAccess();
        sub_1B8F1B8B8();
        swift_beginAccess();
        v91 = *(v212 + 48);
        v92 = v216;
        sub_1B8F1B8B8();
        sub_1B8F1B8B8();
        if (__swift_getEnumTagSinglePayload(v92, 1, v214) == 1)
        {
          sub_1B8D9207C(v215, &qword_1EBAC3A18, &qword_1B96880D0);
          if (__swift_getEnumTagSinglePayload(v216 + v91, 1, v214) == 1)
          {
            sub_1B8D9207C(v216, &qword_1EBAC3A18, &qword_1B96880D0);
            goto LABEL_94;
          }
        }

        else
        {
          v98 = v216;
          sub_1B8F1B8B8();
          if (__swift_getEnumTagSinglePayload(v98 + v91, 1, v214) != 1)
          {
            v101 = v216;
            sub_1B90D4000();
            static Apple_Parsec_Search_V2_Location.== infix(_:_:)();
            v103 = v102;
            sub_1B90D40A8();
            sub_1B8D9207C(v215, &qword_1EBAC3A18, &qword_1B96880D0);
            sub_1B90D40A8();
            sub_1B8D9207C(v101, &qword_1EBAC3A18, &qword_1B96880D0);
            if ((v103 & 1) == 0)
            {
              goto LABEL_90;
            }

LABEL_94:
            v104 = a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__routineMode;
            swift_beginAccess();
            v105 = *v104;
            v106 = *(v104 + 8);
            v107 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__routineMode);
            swift_beginAccess();
            if (!sub_1B8D92198(v105, v106, *v107))
            {
              goto LABEL_90;
            }

            v108 = a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__transportationMode;
            swift_beginAccess();
            v109 = *v108;
            v110 = *(v108 + 8);
            v111 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__transportationMode);
            swift_beginAccess();
            if (!sub_1B8D92198(v109, v110, *v111))
            {
              goto LABEL_90;
            }

            v112 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__installedAppsSignature);
            swift_beginAccess();
            v114 = *v112;
            v113 = v112[1];
            v115 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__installedAppsSignature);
            swift_beginAccess();
            v117 = *v115;
            v116 = v115[1];
            sub_1B8D91FCC(v114, v113);
            sub_1B8D91FCC(v117, v116);
            v118 = MEMORY[0x1BFADC060](v114, v113, v117, v116);
            sub_1B8D538A0(v117, v116);
            sub_1B8D538A0(v114, v113);
            if ((v118 & 1) == 0)
            {
              goto LABEL_90;
            }

            v119 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__managedDevice;
            swift_beginAccess();
            LODWORD(v119) = *(a1 + v119);
            v120 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__managedDevice;
            swift_beginAccess();
            if (v119 != *(a2 + v120))
            {
              goto LABEL_90;
            }

            v121 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__storeFront);
            swift_beginAccess();
            v122 = *v121;
            v123 = v121[1];
            v124 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__storeFront);
            swift_beginAccess();
            v125 = v122 == *v124 && v123 == v124[1];
            if (!v125 && (sub_1B964C9F0() & 1) == 0)
            {
              goto LABEL_90;
            }

            swift_beginAccess();
            sub_1B8F1B8B8();
            swift_beginAccess();
            v126 = *(v206 + 48);
            v127 = v210;
            sub_1B8F1B8B8();
            sub_1B8F1B8B8();
            if (__swift_getEnumTagSinglePayload(v127, 1, v209) == 1)
            {
              sub_1B8D9207C(v208, &qword_1EBAC3A28, &qword_1B96880E0);
              if (__swift_getEnumTagSinglePayload(v210 + v126, 1, v209) == 1)
              {
                sub_1B8D9207C(v210, &qword_1EBAC3A28, &qword_1B96880E0);
LABEL_106:
                v128 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__userGuid);
                swift_beginAccess();
                v129 = *v128;
                v130 = v128[1];
                v131 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__userGuid);
                swift_beginAccess();
                v132 = v129 == *v131 && v130 == v131[1];
                if (!v132 && (sub_1B964C9F0() & 1) == 0)
                {
                  goto LABEL_90;
                }

                v133 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__uiScale);
                swift_beginAccess();
                v134 = *v133;
                v135 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__uiScale);
                swift_beginAccess();
                if (v134 != *v135)
                {
                  goto LABEL_90;
                }

                swift_beginAccess();
                sub_1B8F1B8B8();
                swift_beginAccess();
                v136 = *(v201 + 48);
                v137 = v204;
                sub_1B8F1B8B8();
                sub_1B8F1B8B8();
                if (__swift_getEnumTagSinglePayload(v137, 1, v203) == 1)
                {
                  sub_1B8D9207C(v202, &qword_1EBAC3A20, &qword_1B96880D8);
                  if (__swift_getEnumTagSinglePayload(v204 + v136, 1, v203) == 1)
                  {
                    sub_1B8D9207C(v204, &qword_1EBAC3A20, &qword_1B96880D8);
LABEL_126:
                    v144 = a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__suggest;
                    swift_beginAccess();
                    v145 = *v144;
                    v146 = *(v144 + 8);
                    v147 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__suggest);
                    swift_beginAccess();
                    if (sub_1B8D92198(v145, v146, *v147))
                    {
                      v148 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__queryLanguage);
                      swift_beginAccess();
                      v149 = *v148;
                      v150 = v148[1];
                      v151 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__queryLanguage);
                      swift_beginAccess();
                      v152 = v149 == *v151 && v150 == v151[1];
                      if (v152 || (sub_1B964C9F0() & 1) != 0)
                      {
                        v153 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupAppBundleID);
                        swift_beginAccess();
                        v154 = *v153;
                        v155 = v153[1];
                        v156 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupAppBundleID);
                        swift_beginAccess();
                        v157 = v154 == *v156 && v155 == v156[1];
                        if (v157 || (sub_1B964C9F0() & 1) != 0)
                        {
                          v158 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupHintDomain);
                          swift_beginAccess();
                          v159 = *v158;
                          v160 = v158[1];
                          v161 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupHintDomain);
                          swift_beginAccess();
                          v162 = v159 == *v161 && v160 == v161[1];
                          if (v162 || (sub_1B964C9F0() & 1) != 0)
                          {
                            v163 = a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupSelectionType;
                            swift_beginAccess();
                            v164 = *v163;
                            v165 = *(v163 + 8);
                            v166 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__lookupSelectionType);
                            swift_beginAccess();
                            if (sub_1B8D92198(v164, v165, *v166))
                            {
                              v167 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__siriLocale);
                              swift_beginAccess();
                              v168 = *v167;
                              v169 = v167[1];
                              v170 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__siriLocale);
                              swift_beginAccess();
                              v171 = v168 == *v170 && v169 == v170[1];
                              if (v171 || (sub_1B964C9F0() & 1) != 0)
                              {
                                v172 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__hsEnabled;
                                swift_beginAccess();
                                LODWORD(v172) = *(a1 + v172);
                                v173 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__hsEnabled;
                                swift_beginAccess();
                                if (v172 == *(a2 + v173))
                                {
                                  v174 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__internalBuild;
                                  swift_beginAccess();
                                  LODWORD(v174) = *(a1 + v174);
                                  v175 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__internalBuild;
                                  swift_beginAccess();
                                  if (v174 == *(a2 + v175))
                                  {
                                    v176 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__seedBuild;
                                    swift_beginAccess();
                                    LODWORD(v176) = *(a1 + v176);
                                    v177 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__seedBuild;
                                    swift_beginAccess();
                                    if (v176 == *(a2 + v177))
                                    {
                                      v178 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__abTestSeed;
                                      swift_beginAccess();
                                      LODWORD(v178) = *(a1 + v178);
                                      v179 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__abTestSeed;
                                      swift_beginAccess();
                                      if (v178 == *(a2 + v179))
                                      {
                                        v180 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__experimentNamespaceID);
                                        swift_beginAccess();
                                        v181 = *v180;
                                        v182 = v180[1];
                                        v183 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__experimentNamespaceID);
                                        swift_beginAccess();
                                        v184 = v181 == *v183 && v182 == v183[1];
                                        if (v184 || (sub_1B964C9F0() & 1) != 0)
                                        {
                                          v185 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isClientOnlyExperiment;
                                          swift_beginAccess();
                                          LODWORD(v185) = *(a1 + v185);
                                          v186 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isClientOnlyExperiment;
                                          swift_beginAccess();
                                          if (v185 == *(a2 + v186))
                                          {
                                            v187 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isInReservedAllocationForExperiment;
                                            swift_beginAccess();
                                            LODWORD(v187) = *(a1 + v187);
                                            v188 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isInReservedAllocationForExperiment;
                                            swift_beginAccess();
                                            if (v187 == *(a2 + v188))
                                            {
                                              v189 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__exp;
                                              swift_beginAccess();
                                              v190 = *(a1 + v189);
                                              v191 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Search_V2_SearchRequestP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__exp;
                                              swift_beginAccess();
                                              if (v190 == *(a2 + v191))
                                              {
                                                swift_beginAccess();
                                                swift_beginAccess();

                                                sub_1B8DB5A98();
                                                v99 = v192;

                                                return v99 & 1;
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

                    goto LABEL_90;
                  }
                }

                else
                {
                  v141 = v204;
                  sub_1B8F1B8B8();
                  if (__swift_getEnumTagSinglePayload(v141 + v136, 1, v203) != 1)
                  {
                    v142 = v204;
                    sub_1B90D4000();
                    v143 = static Apple_Parsec_Search_V2_MapsSession.== infix(_:_:)(v199);
                    sub_1B90D40A8();
                    sub_1B8D9207C(v202, &qword_1EBAC3A20, &qword_1B96880D8);
                    sub_1B90D40A8();
                    sub_1B8D9207C(v142, &qword_1EBAC3A20, &qword_1B96880D8);
                    if (v143)
                    {
                      goto LABEL_126;
                    }

LABEL_90:

                    goto LABEL_91;
                  }

                  sub_1B8D9207C(v202, &qword_1EBAC3A20, &qword_1B96880D8);
                  sub_1B90D40A8();
                }

                v93 = &qword_1EBAC3B30;
                v94 = &unk_1B968AE60;
                v95 = v204;
LABEL_89:
                sub_1B8D9207C(v95, v93, v94);
                goto LABEL_90;
              }
            }

            else
            {
              v138 = v210;
              sub_1B8F1B8B8();
              if (__swift_getEnumTagSinglePayload(v138 + v126, 1, v209) != 1)
              {
                v139 = v205;
                sub_1B90D4000();
                if ((MEMORY[0x1BFADC060](*v207, v207[1], *v139, v139[1]) & 1) == 0)
                {
                  sub_1B90D40A8();
                  sub_1B8D9207C(v208, &qword_1EBAC3A28, &qword_1B96880E0);
                  sub_1B90D40A8();
                  v95 = v210;
                  v93 = &qword_1EBAC3A28;
                  v94 = &qword_1B96880E0;
                  goto LABEL_89;
                }

                sub_1B964C2B0();
                sub_1B90E3800(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                v140 = sub_1B964C850();
                sub_1B90D40A8();
                sub_1B8D9207C(v208, &qword_1EBAC3A28, &qword_1B96880E0);
                sub_1B90D40A8();
                sub_1B8D9207C(v210, &qword_1EBAC3A28, &qword_1B96880E0);
                if ((v140 & 1) == 0)
                {
                  goto LABEL_90;
                }

                goto LABEL_106;
              }

              sub_1B8D9207C(v208, &qword_1EBAC3A28, &qword_1B96880E0);
              sub_1B90D40A8();
            }

            v93 = &qword_1EBAC3B28;
            v94 = &unk_1B9688E90;
            v95 = v210;
            goto LABEL_89;
          }

          sub_1B8D9207C(v215, &qword_1EBAC3A18, &qword_1B96880D0);
          sub_1B90D40A8();
        }

        v93 = &qword_1EBAC3B38;
        v94 = &unk_1B9688EA0;
        v95 = v216;
        goto LABEL_89;
      }

      sub_1B8D9207C(v32, &qword_1EBAC44F8, &unk_1B968AE90);
      sub_1B90D40A8();
    }

    v93 = &qword_1EBAC4BA8;
    v94 = &qword_1B968F158;
    v95 = v90;
    goto LABEL_89;
  }

  if (!v44)
  {
    goto LABEL_21;
  }

LABEL_91:
  v99 = 0;
  return v99 & 1;
}

uint64_t sub_1B90D85A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B48, type metadata accessor for Apple_Parsec_Search_V2_SearchRequest, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90D8620(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC48A0, type metadata accessor for Apple_Parsec_Search_V2_SearchRequest, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90D8690(uint64_t a1, uint64_t a2)
{
  sub_1B90E3800(&qword_1EBAC48A0, type metadata accessor for Apple_Parsec_Search_V2_SearchRequest, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B90D8710()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4190);
  __swift_project_value_buffer(v0, qword_1EBAC4190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SendTopHitOff";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SendTopHitAlways";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90D8914()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC41A8);
  __swift_project_value_buffer(v0, qword_1EBAC41A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TemperatureUnitUnknown";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TemperatureUnitCelsius";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TemperatureUnitFahrenheit";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90D8B54()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC41C0);
  __swift_project_value_buffer(v0, qword_1EBAC41C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MeasurementSystemUnknown";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MeasurementSystemSI";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MeasurementSystemUS";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MeasurementSystemUK";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90D8DC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC41D8);
  __swift_project_value_buffer(v0, qword_1EBAC41D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "HourFormatUnknown";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HourFormatTwelve";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HourFormatTwentyFour";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90D9008()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC41F0);
  __swift_project_value_buffer(v0, qword_1EBAC41F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SuggestUnknown";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SuggestOn";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SuggestOff";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SuggestOnly";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SuggestWithTopHit";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "SuggestResultWithTopHit";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90D931C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4208);
  __swift_project_value_buffer(v0, qword_1EBAC4208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1B96566C0;
  v4 = v40 + v3 + v1[14];
  *(v40 + v3) = 1;
  *v4 = "status";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v40 + v3 + v2 + v1[14];
  *(v40 + v3 + v2) = 2;
  *v8 = "prefix";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v40 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "query";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v40 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "suggestions";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v40 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 16;
  *v14 = "suggestionsAreBlended";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v7();
  v15 = (v40 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "completionScore";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v40 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "feedback";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v40 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "maxAgeSeconds";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v40 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "error";
  *(v22 + 1) = 5;
  v22[16] = 2;
  v7();
  v23 = (v40 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "millisecondDuration";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v7();
  v25 = (v40 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "partialClientAddress";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  v27 = (v40 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "queryFeatures";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v40 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "blenderFeaturesL3";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v7();
  v31 = (v40 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "corrections";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v7();
  v33 = (v40 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "results";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v7();
  v35 = (v40 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "sections";
  *(v36 + 1) = 8;
  v36[16] = 2;
  v7();
  v37 = (v40 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 10000;
  *v38 = "legacyJSON";
  *(v38 + 1) = 10;
  v38[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B90D98E0(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_57_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B90D9930()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = 0;
  *(v0 + 76) = 0;
  *(v0 + 80) = xmmword_1B9652FE0;
  *(v0 + 96) = 0;
  v2 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__error;
  v3 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__millisecondDuration) = 0;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__partialClientAddress);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__queryFeatures;
  Features = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, Features);
  v7 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__blenderFeaturesL3;
  *(v0 + v7) = sub_1B964C7B0();
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__corrections) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__results) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__sections) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__legacyJson) = xmmword_1B9652FE0;
  return v0;
}

uint64_t sub_1B90D9A64(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4508, &qword_1B968AEA8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4500, &qword_1B968AEA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v56 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 64) = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = 0;
  v57 = (v1 + 72);
  *(v1 + 76) = 0;
  v58 = (v1 + 76);
  *(v1 + 40) = 0xE000000000000000;
  v56 = xmmword_1B9652FE0;
  *(v1 + 80) = xmmword_1B9652FE0;
  v59 = (v1 + 80);
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v60 = (v1 + 96);
  v8 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__error;
  v9 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v61 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__millisecondDuration;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__millisecondDuration) = 0;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__partialClientAddress);
  v63 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__partialClientAddress);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__queryFeatures;
  v64 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__queryFeatures;
  Features = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, Features);
  v13 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__blenderFeaturesL3;
  v65 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__blenderFeaturesL3;
  *(v1 + v13) = sub_1B964C7B0();
  v66 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__corrections;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__corrections) = v7;
  v67 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__results;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__results) = v7;
  v69 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__sections;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__sections) = v7;
  v70 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__legacyJson);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__legacyJson) = v56;
  swift_beginAccess();
  v14 = *(a1 + 16);
  LOBYTE(v7) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 24) = v7;
  swift_beginAccess();
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v15;
  *(v1 + 40) = v16;

  swift_beginAccess();
  v18 = *(a1 + 48);
  v17 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v18;
  *(v1 + 56) = v17;

  swift_beginAccess();
  v19 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v19;

  swift_beginAccess();
  LOBYTE(v19) = *(a1 + 72);
  v20 = v57;
  swift_beginAccess();
  *v20 = v19;
  swift_beginAccess();
  v21 = *(a1 + 76);
  v22 = v58;
  swift_beginAccess();
  *v22 = v21;
  swift_beginAccess();
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = v59;
  swift_beginAccess();
  v26 = *v25;
  v27 = v25;
  v28 = *(v1 + 88);
  *v27 = v23;
  *(v1 + 88) = v24;
  sub_1B8D91FCC(v23, v24);
  sub_1B8D538A0(v26, v28);
  swift_beginAccess();
  LODWORD(v23) = *(a1 + 96);
  v29 = v60;
  swift_beginAccess();
  *v29 = v23;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__millisecondDuration;
  swift_beginAccess();
  v31 = *(a1 + v30);
  v32 = v61;
  swift_beginAccess();
  *(v1 + v32) = v31;
  v33 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__partialClientAddress);
  swift_beginAccess();
  v35 = *v33;
  v34 = v33[1];
  v36 = v63;
  swift_beginAccess();
  *v36 = v35;
  v36[1] = v34;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__blenderFeaturesL3;
  swift_beginAccess();
  v38 = *(a1 + v37);
  v39 = v65;
  swift_beginAccess();
  *(v1 + v39) = v38;

  v40 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__corrections;
  swift_beginAccess();
  v41 = *(a1 + v40);
  v42 = v66;
  swift_beginAccess();
  *(v1 + v42) = v41;

  v43 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__results;
  swift_beginAccess();
  v44 = *(a1 + v43);
  v45 = v67;
  swift_beginAccess();
  *(v1 + v45) = v44;

  v46 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__sections;
  swift_beginAccess();
  v47 = *(a1 + v46);
  v48 = v69;
  swift_beginAccess();
  *(v1 + v48) = v47;

  v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__legacyJson);
  swift_beginAccess();
  v51 = *v49;
  v50 = v49[1];
  sub_1B8D91FCC(v51, v50);

  v52 = v70;
  swift_beginAccess();
  v53 = *v52;
  v54 = v52[1];
  *v52 = v51;
  v52[1] = v50;
  sub_1B8D538A0(v53, v54);
  return v1;
}

uint64_t sub_1B90DA298(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B90DA2B0(result, a2);
  }

  return result;
}

uint64_t sub_1B90DA2B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B90DA2D0(result, a2);
  }

  return result;
}

void *sub_1B90DA398()
{

  sub_1B8D538A0(*(v0 + 80), *(v0 + 88));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__error, &qword_1EBAC4500, &qword_1B968AEA0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__queryFeatures, &qword_1EBAC4508, &qword_1B968AEA8);

  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__legacyJson), *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__legacyJson + 8));
  return v0;
}

void sub_1B90DA4E8()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v18 = v3;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *(v13(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v16 = v18(v17);
    *(v6 + v14) = v16;
  }

  v2(v16, v12, v10, v8);
  OUTLINED_FUNCTION_272_0();
}

void sub_1B90DA59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B90DA898();
        break;
      case 2:
        sub_1B90E3DFC();
        break;
      case 3:
        sub_1B90B5DB4();
        break;
      case 4:
        sub_1B90DA904(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B8DD5778(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B90DA9D0(a2, a1, a3, a4, MEMORY[0x1E69AAC78]);
        break;
      case 7:
        sub_1B90DAA3C(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B90DAAC0(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B90E4408();
        break;
      case 10:
        goto LABEL_11;
      case 11:
        sub_1B90DAB9C(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B90DAC78(a2, a1, a3, a4);
        break;
      case 13:
        sub_1B90DAD38(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B90DAE14(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B90DAEF0(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B8E43200(a2, a1, a3, a4);
        break;
      default:
        if (v9 == 10000)
        {
LABEL_11:
          sub_1B90E43C0();
        }

        break;
    }
  }
}

void sub_1B90DA898()
{
  OUTLINED_FUNCTION_819();
  v1 = v0;
  OUTLINED_FUNCTION_122_1();
  v3 = v2;
  OUTLINED_FUNCTION_131();
  v4 = swift_beginAccess();
  v5 = v1(v4);
  v7 = OUTLINED_FUNCTION_257_1(v3 + 16, v6, v5);
  OUTLINED_FUNCTION_199_1(v7);
  OUTLINED_FUNCTION_818();
}

uint64_t sub_1B90DA904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion(0);
  sub_1B90E3800(&qword_1EBAC48D0, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B90DA9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v6 = a5();
  return OUTLINED_FUNCTION_199_1(v6);
}

uint64_t sub_1B90DAA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B90DAAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0);
  sub_1B90E3800(&qword_1EBAC48E8, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.Error);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90DAB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
  sub_1B90E3800(&qword_1EBAC4900, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90DAC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C260();
  sub_1B964C240();
  sub_1B964C3B0();
  return swift_endAccess();
}

uint64_t sub_1B90DAD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction(0);
  sub_1B90E3800(&qword_1EBAC4938, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.Correction);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B90DAE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_Result(0);
  sub_1B90E3800(&qword_1EBAC4980, type metadata accessor for Apple_Parsec_Search_V2_Result, protocol conformance descriptor for Apple_Parsec_Search_V2_Result);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B90DAEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Section(0);
  sub_1B90E3800(&qword_1EBAC4950, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Section, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.Section);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B90DAFFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
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

uint64_t sub_1B90DB074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4508, &qword_1B968AEA8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = v40 - v8;
  Features = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
  MEMORY[0x1EEE9AC00](Features);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4500, &qword_1B968AEA0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v40 - v13;
  v45 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0);
  MEMORY[0x1EEE9AC00](v45);
  v42 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v16 = *(a1 + 24);
    v43 = *(a1 + 16);
    v44 = v16;
    sub_1B90F0540();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  v40[1] = v11;
  swift_beginAccess();
  v18 = *(a1 + 40);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v20 = *(a1 + 56);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    v40[0] = Features;
    goto LABEL_14;
  }

  sub_1B964C700();
  if (v4)
  {
  }

  v40[0] = Features;

LABEL_14:
  swift_beginAccess();
  if (*(*(a1 + 64) + 16))
  {
    type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion(0);
    sub_1B90E3800(&qword_1EBAC48D0, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion);

    sub_1B964C730();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 76) == 0.0 || (result = sub_1B964C6B0(), !v4))
  {
    swift_beginAccess();
    if (!sub_1B8D99EA8(*(a1 + 80), *(a1 + 88)))
    {
      v22 = *(a1 + 80);
      v23 = *(a1 + 88);
      sub_1B8D91FCC(v22, v23);
      sub_1B964C6A0();
      v24 = v22;
      v25 = v23;
      if (v4)
      {
        return sub_1B8D538A0(v24, v25);
      }

      sub_1B8D538A0(v22, v23);
    }

    swift_beginAccess();
    if (*(a1 + 96))
    {
      result = sub_1B964C6C0();
      v26 = v40[0];
      if (v4)
      {
        return result;
      }
    }

    else
    {
      v26 = v40[0];
    }

    swift_beginAccess();
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v14, 1, v45) == 1)
    {
      sub_1B8D9207C(v14, &qword_1EBAC4500, &qword_1B968AEA0);
    }

    else
    {
      sub_1B90D4000();
      sub_1B90E3800(&qword_1EBAC48E8, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.Error);
      sub_1B964C740();
      if (v4)
      {
        return sub_1B90D40A8();
      }

      sub_1B90D40A8();
    }

    v27 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__millisecondDuration;
    swift_beginAccess();
    if (!*(a1 + v27) || (result = sub_1B964C6D0(), !v4))
    {
      v28 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__partialClientAddress);
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
        swift_beginAccess();
        v32 = v41;
        sub_1B8F1B8B8();
        if (__swift_getEnumTagSinglePayload(v32, 1, v26) == 1)
        {
          sub_1B8D9207C(v32, &qword_1EBAC4508, &qword_1B968AEA8);
        }

        else
        {
          sub_1B90D4000();
          sub_1B90E3800(&qword_1EBAC4900, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures);
          sub_1B964C740();
          result = sub_1B90D40A8();
          if (v5)
          {
            return result;
          }
        }

        v33 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__blenderFeaturesL3;
        swift_beginAccess();
        if (!*(*(a1 + v33) + 16) || (sub_1B964C260(), sub_1B964C240(), , sub_1B964C5F0(), result = , !v5))
        {
          v34 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__corrections;
          swift_beginAccess();
          if (!*(*(a1 + v34) + 16) || (type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction(0), sub_1B90E3800(&qword_1EBAC4938, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.Correction), , sub_1B964C730(), result = , !v5))
          {
            v35 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__results;
            swift_beginAccess();
            if (!*(*(a1 + v35) + 16) || (type metadata accessor for Apple_Parsec_Search_V2_Result(0), sub_1B90E3800(&qword_1EBAC4980, type metadata accessor for Apple_Parsec_Search_V2_Result, protocol conformance descriptor for Apple_Parsec_Search_V2_Result), , sub_1B964C730(), result = , !v5))
            {
              v36 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__sections;
              swift_beginAccess();
              if (!*(*(a1 + v36) + 16) || (type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Section(0), sub_1B90E3800(&qword_1EBAC4950, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Section, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.Section), , sub_1B964C730(), result = , !v5))
              {
                swift_beginAccess();
                if (*(a1 + 72) != 1 || (result = sub_1B964C670(), !v5))
                {
                  v37 = a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__legacyJson;
                  swift_beginAccess();
                  result = sub_1B8D99EA8(*v37, *(v37 + 8));
                  if ((result & 1) == 0)
                  {
                    v39 = *v37;
                    v38 = *(v37 + 8);
                    sub_1B8D91FCC(v39, v38);
                    sub_1B964C6A0();
                    v24 = v39;
                    v25 = v38;
                    return sub_1B8D538A0(v24, v25);
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

uint64_t sub_1B90DBB44(uint64_t a1, uint64_t a2)
{
  Features = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
  MEMORY[0x1EEE9AC00](Features);
  v5 = &v90[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4B98, &qword_1B968F140);
  MEMORY[0x1EEE9AC00](v97);
  v7 = &v90[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4508, &qword_1B968AEA8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v96 = &v90[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v90[-v11];
  v12 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v90[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4BA0, &unk_1B968F148);
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v90[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4500, &qword_1B968AEA0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90[-v18];
  swift_beginAccess();
  v20 = *(a1 + 16);
  swift_beginAccess();
  v21 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v20 != v21)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      if (v20 != 1)
      {
        goto LABEL_29;
      }

LABEL_11:
      v94 = v7;
      v95 = v5;
      swift_beginAccess();
      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      swift_beginAccess();
      v24 = v22 == *(a2 + 32) && v23 == *(a2 + 40);
      if (!v24 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_29;
      }

      swift_beginAccess();
      v25 = *(a1 + 48);
      v26 = *(a1 + 56);
      swift_beginAccess();
      v27 = v25 == *(a2 + 48) && v26 == *(a2 + 56);
      if (!v27 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_29;
      }

      swift_beginAccess();
      v28 = *(a1 + 64);
      swift_beginAccess();
      v29 = *(a2 + 64);

      sub_1B8D8D118(v28, v29);
      v31 = v30;

      if ((v31 & 1) == 0)
      {
        goto LABEL_53;
      }

      swift_beginAccess();
      v32 = *(a1 + 72);
      swift_beginAccess();
      if (v32 != *(a2 + 72))
      {
        goto LABEL_53;
      }

      swift_beginAccess();
      v33 = *(a1 + 76);
      swift_beginAccess();
      if (v33 != *(a2 + 76))
      {
        goto LABEL_53;
      }

      swift_beginAccess();
      v34 = *(a1 + 80);
      v93 = *(a1 + 88);
      swift_beginAccess();
      v36 = *(a2 + 80);
      v35 = *(a2 + 88);
      v92 = v34;
      sub_1B8D91FCC(v34, v93);
      sub_1B8D91FCC(v36, v35);
      v37 = v34;
      v38 = v93;
      v91 = MEMORY[0x1BFADC060](v37, v93, v36, v35);
      sub_1B8D538A0(v36, v35);
      sub_1B8D538A0(v92, v38);
      if ((v91 & 1) == 0)
      {
        goto LABEL_53;
      }

      swift_beginAccess();
      v39 = *(a1 + 96);
      swift_beginAccess();
      if (v39 != *(a2 + 96))
      {
        goto LABEL_53;
      }

      swift_beginAccess();
      sub_1B8F1B8B8();
      swift_beginAccess();
      v40 = *(v14 + 48);
      v41 = v101;
      sub_1B8F1B8B8();
      sub_1B8F1B8B8();
      if (__swift_getEnumTagSinglePayload(v41, 1, v12) == 1)
      {
        sub_1B8D9207C(v19, &qword_1EBAC4500, &qword_1B968AEA0);
        if (__swift_getEnumTagSinglePayload(v41 + v40, 1, v12) == 1)
        {
          sub_1B8D9207C(v41, &qword_1EBAC4500, &qword_1B968AEA0);
LABEL_35:
          v47 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__millisecondDuration;
          swift_beginAccess();
          v48 = *(a1 + v47);
          v49 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__millisecondDuration;
          swift_beginAccess();
          if (v48 != *(a2 + v49))
          {
            goto LABEL_53;
          }

          v50 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__partialClientAddress);
          swift_beginAccess();
          v51 = *v50;
          v52 = v50[1];
          v53 = (a2 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__partialClientAddress);
          swift_beginAccess();
          v54 = v51 == *v53 && v52 == v53[1];
          if (!v54 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_53;
          }

          swift_beginAccess();
          v55 = v99;
          sub_1B8F1B8B8();
          swift_beginAccess();
          v56 = *(v97 + 48);
          v57 = v94;
          sub_1B8F1B8B8();
          sub_1B8F1B8B8();
          v58 = Features;
          if (__swift_getEnumTagSinglePayload(v57, 1, Features) == 1)
          {
            sub_1B8D9207C(v55, &qword_1EBAC4508, &qword_1B968AEA8);
            if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v58) == 1)
            {
              sub_1B8D9207C(v57, &qword_1EBAC4508, &qword_1B968AEA8);
LABEL_48:
              v61 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__blenderFeaturesL3;
              swift_beginAccess();
              v62 = *(a1 + v61);
              v63 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__blenderFeaturesL3;
              swift_beginAccess();
              sub_1B8DB4EB4(v62, *(a2 + v63));
              if (v64)
              {
                v65 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__corrections;
                swift_beginAccess();
                v66 = *(a1 + v65);
                v67 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__corrections;
                swift_beginAccess();
                v68 = *(a2 + v67);

                sub_1B8D8D78C(v66, v68);
                v70 = v69;

                if (v70)
                {
                  v71 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__results;
                  swift_beginAccess();
                  v72 = *(a1 + v71);
                  v73 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__results;
                  swift_beginAccess();
                  v74 = *(a2 + v73);

                  sub_1B8D8D95C(v72, v74);
                  v76 = v75;

                  if (v76)
                  {
                    v77 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__sections;
                    swift_beginAccess();
                    v78 = *(a1 + v77);
                    v79 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__sections;
                    swift_beginAccess();
                    v80 = *(a2 + v79);

                    sub_1B8D8D9B0(v78, v80);
                    v82 = v81;

                    if (v82)
                    {
                      v83 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__legacyJson);
                      swift_beginAccess();
                      v84 = *v83;
                      v85 = v83[1];
                      v86 = (a2 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Search_V2_SearchResponseP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__legacyJson);
                      swift_beginAccess();
                      v87 = *v86;
                      v88 = v86[1];
                      sub_1B8D91FCC(v84, v85);
                      sub_1B8D91FCC(v87, v88);
                      v42 = MEMORY[0x1BFADC060](v84, v85, v87, v88);
                      sub_1B8D538A0(v87, v88);
                      sub_1B8D538A0(v84, v85);
LABEL_54:

                      return v42 & 1;
                    }
                  }
                }
              }

LABEL_53:
              v42 = 0;
              goto LABEL_54;
            }
          }

          else
          {
            sub_1B8F1B8B8();
            if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v58) != 1)
            {
              sub_1B90D4000();
              static Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.== infix(_:_:)();
              v60 = v59;
              sub_1B90D40A8();
              sub_1B8D9207C(v99, &qword_1EBAC4508, &qword_1B968AEA8);
              sub_1B90D40A8();
              sub_1B8D9207C(v57, &qword_1EBAC4508, &qword_1B968AEA8);
              if ((v60 & 1) == 0)
              {
                goto LABEL_53;
              }

              goto LABEL_48;
            }

            sub_1B8D9207C(v99, &qword_1EBAC4508, &qword_1B968AEA8);
            sub_1B90D40A8();
          }

          v43 = &qword_1EBAC4B98;
          v44 = &qword_1B968F140;
          v45 = v57;
LABEL_33:
          sub_1B8D9207C(v45, v43, v44);
          goto LABEL_53;
        }
      }

      else
      {
        sub_1B8F1B8B8();
        if (__swift_getEnumTagSinglePayload(v41 + v40, 1, v12) != 1)
        {
          sub_1B90D4000();
          v46 = static Apple_Parsec_Search_V2_SearchResponse.Error.== infix(_:_:)();
          sub_1B90D40A8();
          sub_1B8D9207C(v19, &qword_1EBAC4500, &qword_1B968AEA0);
          sub_1B90D40A8();
          sub_1B8D9207C(v41, &qword_1EBAC4500, &qword_1B968AEA0);
          if ((v46 & 1) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_35;
        }

        sub_1B8D9207C(v19, &qword_1EBAC4500, &qword_1B968AEA0);
        sub_1B90D40A8();
      }

      v43 = &qword_1EBAC4BA0;
      v44 = &unk_1B968F148;
      v45 = v41;
      goto LABEL_33;
    }

    if (v20 == 2)
    {
      goto LABEL_11;
    }
  }

  else if (!v20)
  {
    goto LABEL_11;
  }

LABEL_29:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1B90DC818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B40, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DC898(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC48B8, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DC908(uint64_t a1, uint64_t a2)
{
  sub_1B90E3800(&qword_1EBAC48B8, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DC988()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4220);
  __swift_project_value_buffer(v0, qword_1EBAC4220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "StatusOK";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "StatusError";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "StatusNoResults";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90DCBC8()
{
  result = MEMORY[0x1BFADC850](0xD000000000000010, 0x80000001B9706650);
  qword_1EBAC4238 = 0xD000000000000025;
  unk_1EBAC4240 = 0x80000001B9705A40;
  return result;
}

uint64_t sub_1B90DCC5C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4248);
  __swift_project_value_buffer(v0, qword_1EBAC4248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "suggestion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "feedback";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "previouslyEngaged";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "score";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "entities";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "detailText";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "serverFeatures";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B90DD0B4(v7, v8, v9, v10);
        break;
      case 8:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B90DD154(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90DD0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Search_V2_Entity(0);
  sub_1B90E3800(&qword_1ED9EDB68, type metadata accessor for Apple_Parsec_Search_V2_Entity, protocol conformance descriptor for Apple_Parsec_Search_V2_Entity);
  return sub_1B964C570();
}

uint64_t sub_1B90DD154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C280();
  sub_1B964C270();
  return sub_1B964C3B0();
}

void Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_1_15();
  if (!v3 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), (v0 = v1) == 0))
    {
      v5 = OUTLINED_FUNCTION_616();
      if (sub_1B8D99EA8(v5, v6) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), (v0 = v1) == 0))
      {
        if (*(v2 + 48) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), (v0 = v1) == 0))
        {
          if (*(v2 + 52) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6B0(), (v0 = v1) == 0))
          {
            if (!*(*(v2 + 56) + 16) || (type metadata accessor for Apple_Parsec_Search_V2_Entity(0), sub_1B90E3800(&qword_1ED9EDB68, type metadata accessor for Apple_Parsec_Search_V2_Entity, protocol conformance descriptor for Apple_Parsec_Search_V2_Entity), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), sub_1B964C730(), (v0 = v1) == 0))
            {
              OUTLINED_FUNCTION_1();
              if (!v7 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), (v0 = v1) == 0))
              {
                if (!*(*(v2 + 80) + 16) || (sub_1B964C280(), sub_1B964C270(), sub_1B964C5F0(), !v0))
                {
                  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion(0);
                  OUTLINED_FUNCTION_8_1();
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.== infix(_:_:)(uint64_t a1)
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

  v9 = OUTLINED_FUNCTION_263_2();
  if ((MEMORY[0x1BFADC060](v9) & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 48) != *(v1 + 48))
  {
    return 0;
  }

  if (*(v2 + 52) != *(v1 + 52))
  {
    return 0;
  }

  sub_1B8D85EAC(*(v2 + 56), *(v1 + 56));
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(v2 + 64) == *(v1 + 64) && *(v2 + 72) == *(v1 + 72);
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB0470(*(v2 + 80), *(v1 + 80));
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_57();
  v15 = sub_1B90E3800(v13, v14, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v15) & 1;
}

uint64_t sub_1B90DD53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B38, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DD5BC(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC48D0, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DD62C(uint64_t a1, uint64_t a2)
{
  sub_1B90E3800(&qword_1EBAC48D0, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DD6EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4270);
  __swift_project_value_buffer(v0, qword_1EBAC4270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "message";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptedMessage";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.decodeMessage<A>(decoder:)()
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
      v7 = OUTLINED_FUNCTION_9();
      sub_1B9035AFC(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9035A30(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_65_6();
  if (v9 || ((v8 & 1) == 0 ? (result = sub_1B8DC2578(v3, a1, a2, a3)) : (result = sub_1B9035C80(v3, a1, a2, a3)), !v4))
  {
    type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Search_V2_SearchResponse.Error.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v2 = *(v1 + 16);
  if (*(v0 + 16) != 255)
  {
    if (v2 != 255)
    {
      v3 = v2 & 1;
      v4 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v4, v5, v6);
      v7 = OUTLINED_FUNCTION_137_3();
      sub_1B90387E4(v7, v8, v9);
      v10 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v10, v11, v12);
      v13 = static Apple_Parsec_Search_V2_SearchResponse.Error.OneOf_Error.== infix(_:_:)();
      v14 = OUTLINED_FUNCTION_259();
      sub_1B9038824(v14, v15, v3);
      v16 = OUTLINED_FUNCTION_461();
      sub_1B9038824(v16, v17, v18);
      v19 = OUTLINED_FUNCTION_42_0();
      sub_1B903880C(v19, v20, v21);
      if (v13)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v27 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_259();
    sub_1B90387E4(v30, v31, 255);
    v32 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_461();
    sub_1B9038824(v35, v36, v37);
LABEL_8:
    v38 = OUTLINED_FUNCTION_42_0();
    sub_1B903880C(v38, v39, v40);
    v41 = OUTLINED_FUNCTION_137_3();
    sub_1B903880C(v41, v42, v43);
    return 0;
  }

  v22 = OUTLINED_FUNCTION_461();
  sub_1B90387E4(v22, v23, 255);
  if (v2 != 255)
  {
    v24 = OUTLINED_FUNCTION_137_3();
    sub_1B90387E4(v24, v25, v26);
    goto LABEL_8;
  }

  v45 = OUTLINED_FUNCTION_259();
  sub_1B90387E4(v45, v46, 255);
  v47 = OUTLINED_FUNCTION_461();
  sub_1B903880C(v47, v48, 255);
LABEL_11:
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_57();
  v51 = sub_1B90E3800(v49, v50, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v51) & 1;
}

uint64_t sub_1B90DDBF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B30, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.Error);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DDC78(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC48E8, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.Error);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DDCE8(uint64_t a1, uint64_t a2)
{
  sub_1B90E3800(&qword_1EBAC48E8, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.Error);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DDDB8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4298);
  __swift_project_value_buffer(v0, qword_1EBAC4298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "prefix";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "stats";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "topDown";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.decodeMessage<A>(decoder:)()
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
        sub_1B90DE0D0(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90DE0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(0);
  sub_1B90E3800(&qword_1EBAC4548, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats);
  return sub_1B964C580();
}

void Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4510, &qword_1B968AEB0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_159();
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v6 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
      sub_1B8F1B8B8();
      OUTLINED_FUNCTION_749();
      if (__swift_getEnumTagSinglePayload(v8, v9, v10) == 1)
      {
        sub_1B8D9207C(v2, &qword_1EBAC4510, &qword_1B968AEB0);
      }

      else
      {
        OUTLINED_FUNCTION_16_19();
        sub_1B90D4000();
        sub_1B90E3800(&qword_1EBAC4548, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats);
        OUTLINED_FUNCTION_37_2();
        sub_1B964C740();
        sub_1B90D40A8();
        if (v0)
        {
          goto LABEL_11;
        }
      }

      if (*(v1 + 32) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
      {
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_112();
  v3 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(v2);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4510, &qword_1B968AEB0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v30 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4550, &unk_1B968AED0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - v14;
  v16 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (v16 || (sub_1B964C9F0() & 1) != 0)
  {
    v17 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
    if (v17 || (sub_1B964C9F0() & 1) != 0)
    {
      v30[1] = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
      v18 = *(v12 + 48);
      sub_1B8F1B8B8();
      sub_1B8F1B8B8();
      OUTLINED_FUNCTION_178(v15, 1, v3);
      if (v16)
      {
        OUTLINED_FUNCTION_178(&v15[v18], 1, v3);
        if (v16)
        {
          sub_1B8D9207C(v15, &qword_1EBAC4510, &qword_1B968AEB0);
LABEL_16:
          if (*(v1 + 32) == *(v0 + 32))
          {
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_57();
            v21 = sub_1B90E3800(v19, v20, MEMORY[0x1E69AAC10]);
            OUTLINED_FUNCTION_199_0(v21);
          }

          goto LABEL_28;
        }
      }

      else
      {
        sub_1B8F1B8B8();
        OUTLINED_FUNCTION_178(&v15[v18], 1, v3);
        if (!v22)
        {
          OUTLINED_FUNCTION_16_19();
          sub_1B90D4000();
          sub_1B8D86180(*v11, *v7);
          if (v25)
          {
            sub_1B8D86180(v11[1], v7[1]);
            if (v26)
            {
              sub_1B964C2B0();
              OUTLINED_FUNCTION_0_57();
              sub_1B90E3800(v27, v28, MEMORY[0x1E69AAC10]);
              v29 = sub_1B964C850();
              sub_1B90D40A8();
              sub_1B90D40A8();
              sub_1B8D9207C(v15, &qword_1EBAC4510, &qword_1B968AEB0);
              if ((v29 & 1) == 0)
              {
                goto LABEL_28;
              }

              goto LABEL_16;
            }
          }

          sub_1B90D40A8();
          sub_1B90D40A8();
          v23 = &qword_1EBAC4510;
          v24 = &qword_1B968AEB0;
LABEL_27:
          sub_1B8D9207C(v15, v23, v24);
          goto LABEL_28;
        }

        sub_1B90D40A8();
      }

      v23 = &qword_1EBAC4550;
      v24 = &unk_1B968AED0;
      goto LABEL_27;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B90DE794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B28, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DE814(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC4900, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DE884(uint64_t a1, uint64_t a2)
{
  sub_1B90E3800(&qword_1EBAC4900, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DE954()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC42C0);
  __swift_project_value_buffer(v0, qword_1EBAC42C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleId";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90DEC20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B20, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DECA0(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC4568, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DED10(uint64_t a1, uint64_t a2)
{
  sub_1B90E3800(&qword_1EBAC4568, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DEDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (qword_1EBAB7270 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBAC4288;
  v10 = qword_1EBAC4290;
  swift_bridgeObjectRetain_n();
  v7 = OUTLINED_FUNCTION_186();
  MEMORY[0x1BFADC850](v7);

  *a4 = v9;
  *a5 = v10;
  return result;
}

uint64_t sub_1B90DEE80()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC42E8);
  __swift_project_value_buffer(v0, qword_1EBAC42E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "Cep";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "CepLong";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats.decodeMessage<A>(decoder:)()
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
      sub_1B90EB128();
    }

    else if (v1 == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B90DF134(v3, v4, v5, v6);
    }
  }
}

uint64_t sub_1B90DF134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats(0);
  sub_1B90E3800(&qword_1EBAC4568, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats);
  return sub_1B964C570();
}

void Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats(0), OUTLINED_FUNCTION_182_2(), sub_1B90E3800(v3, v4, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), sub_1B964C730(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats(0), OUTLINED_FUNCTION_182_2(), sub_1B90E3800(v5, v6, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), sub_1B964C730(), !v1))
    {
      type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(0);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D86180(*v2, *v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D86180(*(v1 + 8), *(v0 + 8));
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_57();
  v8 = sub_1B90E3800(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B90DF3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B18, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DF458(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC4548, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DF4C8(uint64_t a1, uint64_t a2)
{
  sub_1B90E3800(&qword_1EBAC4548, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DF594()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4310);
  __swift_project_value_buffer(v0, qword_1EBAC4310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prefix";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "completion";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "score";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Correction.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_12();
      sub_1B964C490();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Correction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      if (*(v1 + 32) == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
      {
        type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Search_V2_SearchResponse.Correction.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 32) != *(v1 + 32))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_57();
  v11 = sub_1B90E3800(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B90DFA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B10, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.Correction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DFAAC(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC4938, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.Correction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DFB1C(uint64_t a1, uint64_t a2)
{
  sub_1B90E3800(&qword_1EBAC4938, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction, protocol conformance descriptor for Apple_Parsec_Search_V2_SearchResponse.Correction);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DFBC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1BFADC850](a2, a3);
  *a4 = 0xD000000000000025;
  *a5 = 0x80000001B9705A40;
  return result;
}

uint64_t sub_1B90DFC4C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4338);
  __swift_project_value_buffer(v0, qword_1EBAC4338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "header";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "moreLabel";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "moreUrl";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "morePunchout";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "blockId";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "doNotFold";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "resultIdentifiers";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}