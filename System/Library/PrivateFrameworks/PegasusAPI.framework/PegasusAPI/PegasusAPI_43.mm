uint64_t sub_1B9117314(void (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  a2(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_Legacy_ImagePod.images.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_ImagePod.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_SummaryPod.imageResource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v5);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_SummaryPod.imageResource.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_1B966F890;
  *(a1 + 80) = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Legacy_SummaryPod.imageResource.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v14);
  OUTLINED_FUNCTION_256_1(*(v15 + 32));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_83_4();
    OUTLINED_FUNCTION_118_4(v17, xmmword_1B966F890);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Legacy_SummaryPod.hasImageResource.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v4);
  OUTLINED_FUNCTION_863();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_SummaryPod.clearImageResource()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB9070, &qword_1B964D860);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Legacy_SummaryPod.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_PropertyPod.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_WebLinkPod.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.punchOut.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v5);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_276_1();
    OUTLINED_FUNCTION_164_2(v7);
    *(a1 + 96) = 0;
    *(a1 + 104) = v8;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC53C8, &qword_1B96923F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.punchOut.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v1);
  sub_1B8D9207C(v0 + *(v2 + 52), &qword_1EBAC53C8, &qword_1B96923F0);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276_1();
  OUTLINED_FUNCTION_164_2(v2);
  *(a1 + 96) = 0;
  *(a1 + 104) = v3;
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Legacy_LinkedAnswer.punchOut.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v14);
  OUTLINED_FUNCTION_256_1(*(v15 + 52));
  v16 = OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    OUTLINED_FUNCTION_170_3(v16);
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53C8, &qword_1B96923F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9117CA4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91148B0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC53C8, &qword_1B96923F0);
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_255_2();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_35_11();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC53C8, &qword_1B96923F0);
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_256_2();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.hasPunchOut.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v4);
  OUTLINED_FUNCTION_863();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_LinkedAnswer.clearPunchOut()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(0);
  sub_1B8D9207C(v0 + *(v1 + 52), &qword_1EBAC53C8, &qword_1B96923F0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.thumbnails.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276_1();
  OUTLINED_FUNCTION_164_2(v2);
  *(a1 + 96) = MEMORY[0x1E69E7CC0];
  *(a1 + 104) = 0;
  type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_1B9118098(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.name.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.name.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91181DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.description_p.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.description_p.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.descriptionText.getter()
{
  OUTLINED_FUNCTION_73_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 48, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.descriptionText.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91251AC(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 48, v7);
  *(v8 + 48) = v2;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.descriptionText.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  v6 = *(v0 + 56);
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9118468()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.descriptionText.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B91251AC(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 48);
    *(v7 + 48) = v3;
    *(v7 + 56) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.link.getter()
{
  OUTLINED_FUNCTION_73_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 64, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.link.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91251AC(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 64, v7);
  *(v8 + 64) = v2;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.link.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  v6 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9118660()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.link.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B91251AC(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.displayLink.getter()
{
  OUTLINED_FUNCTION_73_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 80, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.displayLink.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91251AC(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 80, v7);
  *(v8 + 80) = v2;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.displayLink.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  v6 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9118858()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.displayLink.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B91251AC(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 80);
    *(v7 + 80) = v3;
    *(v7 + 88) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.punchOut.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v6);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__punchOut, v11);
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_276_1();
    OUTLINED_FUNCTION_164_2(v8);
    *(a1 + 96) = 0;
    *(a1 + 104) = v9;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC53C8, &qword_1B96923F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.punchOut.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C8, &qword_1B96923F0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_139();
  v3 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(0);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B91251AC(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_4_31();
  sub_1B9114610();
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v6);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.punchOut.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_73_7();
  OUTLINED_FUNCTION_521(*(v0 + v12) + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__punchOut, v2);
  OUTLINED_FUNCTION_150_2();
  v13 = OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_170_3(v13);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v1, &qword_1EBAC53C8, &qword_1B96923F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.query.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_10(v2);
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v3);
  OUTLINED_FUNCTION_134_4(v4);
  OUTLINED_FUNCTION_62_0(*(v0 + v5) + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query);
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B9118E48(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_521(*(v2 + *(v6 + 20)) + *a2, v8);

  return OUTLINED_FUNCTION_288();
}

void sub_1B9118F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
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
    v38 = v30(v39);
    *(v33 + v36) = v38;
  }

  v40 = (v38 + *v28);
  OUTLINED_FUNCTION_18(v40, &a10);
  *v40 = v24;
  v40[1] = v22;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.searchUri.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_10(v2);
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v3);
  OUTLINED_FUNCTION_134_4(v4);
  OUTLINED_FUNCTION_62_0(*(v0 + v5) + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B91190FC()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *(v6(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    *(v0 + v11) = v2(v12);
  }

  OUTLINED_FUNCTION_461();
  sub_1B9114610();
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

void Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.imageResource.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_73_7();
  OUTLINED_FUNCTION_521(*(v0 + v12) + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__imageResource, v2);
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_83_4();
    OUTLINED_FUNCTION_118_4(v14, xmmword_1B966F890);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B91193B4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B91148B0();
    v2(v3);
    sub_1B9114334();
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

uint64_t sub_1B9119488(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_73_7();
  OUTLINED_FUNCTION_521(*(v5 + v14) + *a3, v19);
  sub_1B8F1B8B8();
  v15 = (a4)(0);
  OUTLINED_FUNCTION_178(v7, 1, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  sub_1B8D9207C(v7, v6, v4);
  return v17;
}

void sub_1B9119584()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = sub_1B91251AC(v8);
  }

  v2(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.thumbnails.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_73_7();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.isImageInvertable.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_73_7();
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable);
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B911993C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
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

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.decoratedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v5);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_132_2();
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC53D0, &qword_1B96923F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.decoratedValue.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAC53D0, &qword_1B96923F8);
  OUTLINED_FUNCTION_3_33();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B9119B5C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2(0);
  return OUTLINED_FUNCTION_279();
}

void Apple_Parsec_Siri_Legacy_AnswerProperty.decoratedValue.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  *(v1 + 40) = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v15) + 36);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53D0, &qword_1B96923F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    OUTLINED_FUNCTION_461();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9119CC8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91148B0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC53D0, &qword_1B96923F8);
    OUTLINED_FUNCTION_3_33();
    OUTLINED_FUNCTION_255_2();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_32_15();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC53D0, &qword_1B96923F8);
    OUTLINED_FUNCTION_3_33();
    OUTLINED_FUNCTION_256_2();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.hasDecoratedValue.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v4);
  OUTLINED_FUNCTION_863();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_AnswerProperty.clearDecoratedValue()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAC53D0, &qword_1B96923F8);
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.decoratedValueAnnotation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v5);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_132_2();
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC53D0, &qword_1B96923F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.decoratedValueAnnotation.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAC53D0, &qword_1B96923F8);
  OUTLINED_FUNCTION_3_33();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Legacy_AnswerProperty.decoratedValueAnnotation.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  *(v1 + 40) = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v15) + 40);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53D0, &qword_1B96923F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    OUTLINED_FUNCTION_461();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B911A144()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_24_3();
  sub_1B8F1B8B8();
  v7 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v10, v11, v12);
  return v9;
}

uint64_t sub_1B911A234()
{
  OUTLINED_FUNCTION_111_0();
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  sub_1B8D9207C(v1 + *(v6 + 40), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.appPunchOut.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v5);
  OUTLINED_FUNCTION_100_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v8 = *(v6 + 20);
    if (qword_1EBAB7448 != -1)
    {
      OUTLINED_FUNCTION_22_17(&qword_1EBAB7448);
    }

    *(a1 + v8) = qword_1EBAC5328;
    v9 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_234_3(v9, v10);
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC53B0, &qword_1B96923D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.appPunchOut.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Legacy_AnswerProperty.appPunchOut.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1();
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v16);
  OUTLINED_FUNCTION_256_1(*(v17 + 44));
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v10 + 20);
    if (qword_1EBAB7448 != -1)
    {
      OUTLINED_FUNCTION_22_17(&qword_1EBAB7448);
    }

    *(v12 + v19) = qword_1EBAC5328;
    v20 = OUTLINED_FUNCTION_50_1();

    if (v20 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53B0, &qword_1B96923D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.hasAppPunchOut.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v4);
  OUTLINED_FUNCTION_863();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_AnswerProperty.clearAppPunchOut()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0);
  sub_1B8D9207C(v0 + *(v1 + 44), &qword_1EBAC53B0, &qword_1B96923D0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276_1();
  *(a1 + 48) = 0;
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v9 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_1B911A86C()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B911A8F4()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_Legacy_DecoratedText.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(v0);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_Siri_Legacy_TextDecorationRegion.regionProperty.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_Legacy_TextDecorationRegion.regionProperty.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1B911AA58()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B911AAE0()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_Legacy_TextDecorationRegion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_TextDecorationRegion.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.resourceURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.userAgent.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.imageData.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.imageData.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 56), *(v1 + 64));
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.urlFormatString.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.clientVersion.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.bundleID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.appDisplayName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.appStoreUri.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.subtitle.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.punchOutUri.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B911B3C4()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 16, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B911B410(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_AppPunchOut.bundleID.setter(v1, v2);
}

void sub_1B911B490()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v11 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_9_3(v11 + 16, v10);
  *(v11 + 16) = v2;
  *(v11 + 24) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.bundleID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B911B5BC()
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
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      v4(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = v3(v15);
      *(v14 + v13) = v12;
    }

    OUTLINED_FUNCTION_59_3(v12 + 16);
    *(v12 + 16) = v2;
    *(v12 + 24) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v16);
}

uint64_t sub_1B911B698()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 32, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B911B6E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_AppPunchOut.appStoreUri.setter(v1, v2);
}

void sub_1B911B764()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v11 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_9_3(v11 + 32, v10);
  *(v11 + 32) = v2;
  *(v11 + 40) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appStoreUri.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B911B890()
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
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      v4(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = v3(v15);
      *(v14 + v13) = v12;
    }

    OUTLINED_FUNCTION_59_3(v12 + 32);
    *(v12 + 32) = v2;
    *(v12 + 40) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v16);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appInstalled.getter()
{
  OUTLINED_FUNCTION_71_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 48, v3);
  return *(v2 + 48);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appInstalled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B912A8D4(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 48, v6);
  *(v7 + 48) = a1 & 1;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appInstalled.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  *(v1 + 84) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B911BA74(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B912A8D4(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  v11 = 48;
  if (a2)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_18(v8 + 48, v3 + v11);
  *(v8 + 48) = v6;

  free(v3);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutUri.getter()
{
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 56, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutUri.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B912A8D4(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 56, v7);
  *(v8 + 56) = v2;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutUri.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  v6 = *(v0 + 64);
  *(v1 + 48) = *(v0 + 56);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B911BC7C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutUri.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B912A8D4(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 56);
    *(v7 + 56) = v3;
    *(v7 + 64) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appDisplayName.getter()
{
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 72, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_Legacy_AppPunchOut.appDisplayName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B912A8D4(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 72, v7);
  *(v8 + 72) = v2;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appDisplayName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 72);
  v6 = *(v0 + 80);
  *(v1 + 48) = *(v0 + 72);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B911BE74()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Legacy_AppPunchOut.appDisplayName.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B912A8D4(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 72);
    *(v7 + 72) = v3;
    *(v7 + 80) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutName.getter()
{
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 88, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B912A8D4(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 88, v7);
  *(v8 + 88) = v2;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 88);
  v6 = *(v0 + 96);
  *(v1 + 48) = *(v0 + 88);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B911C06C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutName.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B912A8D4(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 88);
    *(v7 + 88) = v3;
    *(v7 + 96) = v2;
  }

  free(v0);
}

void sub_1B911C124()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_79();
  v2(0);
  OUTLINED_FUNCTION_77_0();
  v9 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_521(v9, &v11);
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_57(v0);
  if (v10)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.init()(v4);
    OUTLINED_FUNCTION_57(v0);
    if (!v10)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_242();
}

void Apple_Parsec_Siri_Legacy_AppPunchOut.appIcon.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_521(*(v0 + v12) + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIcon, v2);
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_83_4();
    OUTLINED_FUNCTION_118_4(v14, xmmword_1B966F890);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.hasAppIcon.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v5);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIcon, v8);
  sub_1B8F1B8B8();
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_AppPunchOut.clearAppIcon()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_139();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    *(v0 + v3) = sub_1B912A8D4(v4);
  }

  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t sub_1B911C5C0(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v5(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v2 + *a2, v6);
}

void sub_1B911C680()
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

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appIconMap.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_71_7();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B911C7D0()
{
  OUTLINED_FUNCTION_243();
  v5 = *v4;
  v6 = *(*v4 + 48);
  if (v7)
  {
    v8 = v3;

    v8(v9);
  }

  else
  {
    v10 = v2;
    OUTLINED_FUNCTION_134_2();
    v11 = *(v5 + 64);
    v12 = *(v5 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v5 + 64);
      v16 = *(v5 + 56);
      v1(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v17 = OUTLINED_FUNCTION_40_0();
      v14 = v0(v17);
      *(v16 + v15) = v14;
    }

    v18 = *v10;
    OUTLINED_FUNCTION_59_3(v14 + v18);
    *(v14 + v18) = v6;
  }

  OUTLINED_FUNCTION_242();

  free(v19);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.providerID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_10(v2);
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v3);
  OUTLINED_FUNCTION_134_4(v4);
  OUTLINED_FUNCTION_62_0(*(v0 + v5) + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B911CA30(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v5(v4);
  OUTLINED_FUNCTION_77_0();
  v6 = *a2;
  OUTLINED_FUNCTION_10_4(v2 + v6, v7);
  return *(v2 + v6);
}

void sub_1B911CAC0()
{
  OUTLINED_FUNCTION_184_0();
  v5 = v4;
  OUTLINED_FUNCTION_134_2();
  v7 = v6;
  v9 = v8(0);
  v10 = OUTLINED_FUNCTION_216_1(v9);
  v11 = *(v0 + v3);
  if ((v10 & 1) == 0)
  {
    v2(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v1(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  v14 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v14, v15);
  *(v11 + v5) = v7 & 1;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appAvailableStorefront.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront);
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B911CBEC()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  OUTLINED_FUNCTION_134_2();
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 72);
  v8 = *(*v4 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v5 + 80);
    v12 = *(v5 + 72);
    v1(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = v0(v13);
    *(v12 + v11) = v10;
  }

  v14 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18(v14, v5 + v15);
  *(v10 + v3) = v8;
  OUTLINED_FUNCTION_283();

  free(v16);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.subtitle.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_10(v2);
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v3);
  OUTLINED_FUNCTION_134_4(v4);
  OUTLINED_FUNCTION_62_0(*(v0 + v5) + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B911CE10()
{
  OUTLINED_FUNCTION_284();
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
    OUTLINED_FUNCTION_236_2();
    v10 = v9;
    v11 = *(v0 + 72);
    v12 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v0 + 72);
      v16 = *(v0 + 64);
      v10(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v17 = OUTLINED_FUNCTION_40_0();
      v14 = v4(v17);
      *(v16 + v15) = v14;
    }

    v18 = (v14 + *v3);
    OUTLINED_FUNCTION_18(v18, v0 + 24);
    *v18 = v2;
    v18[1] = v1;
  }

  OUTLINED_FUNCTION_283();

  free(v19);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.launchOverSiri.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri);
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerSnippet.appPunchOut.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v5);
  OUTLINED_FUNCTION_100_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v8 = *(v6 + 20);
    if (qword_1EBAB7448 != -1)
    {
      OUTLINED_FUNCTION_22_17(&qword_1EBAB7448);
    }

    *(a1 + v8) = qword_1EBAC5328;
    v9 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_234_3(v9, v10);
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC53B0, &qword_1B96923D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerSnippet.appPunchOut.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Legacy_AnswerSnippet.appPunchOut.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1();
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v16);
  OUTLINED_FUNCTION_256_1(*(v17 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v10 + 20);
    if (qword_1EBAB7448 != -1)
    {
      OUTLINED_FUNCTION_22_17(&qword_1EBAB7448);
    }

    *(v12 + v19) = qword_1EBAC5328;
    v20 = OUTLINED_FUNCTION_50_1();

    if (v20 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53B0, &qword_1B96923D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B911D2F8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91148B0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC53B0, &qword_1B96923D0);
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_255_2();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_5_27();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC53B0, &qword_1B96923D0);
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_256_2();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerSnippet.hasAppPunchOut.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v4);
  OUTLINED_FUNCTION_863();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_AnswerSnippet.clearAppPunchOut()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAC53B0, &qword_1B96923D0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerSnippet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_SnippetObject.answer.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object(0);
  OUTLINED_FUNCTION_178(v1, 1, v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9088, &unk_1B9692400);
    OUTLINED_FUNCTION_132_2();
    *(v0 + 16) = MEMORY[0x1E69E7CC0];
    type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);
    return OUTLINED_FUNCTION_279();
  }

  else
  {
    OUTLINED_FUNCTION_13_20();
    OUTLINED_FUNCTION_288();
    return sub_1B9114610();
  }
}

uint64_t Apple_Parsec_Siri_Legacy_SnippetObject.answer.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9088, &unk_1B9692400);
  OUTLINED_FUNCTION_13_20();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object(0);
  v1 = OUTLINED_FUNCTION_231();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

void Apple_Parsec_Siri_Legacy_SnippetObject.answer.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[1] = v7;
  type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[3] = v11;
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_179_1();
  v12 = type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object(0);
  v0[4] = v12;
  OUTLINED_FUNCTION_178(v7, 1, v12);
  if (v13)
  {
    sub_1B8D9207C(v7, &qword_1EBAB9088, &unk_1B9692400);
    OUTLINED_FUNCTION_247_1();
    v11[2] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_13_20();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B911D824()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v4, &qword_1EBAB9088, &unk_1B9692400);
    OUTLINED_FUNCTION_13_20();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9088, &unk_1B9692400);
    OUTLINED_FUNCTION_13_20();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_Legacy_SnippetObject.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject(v0);
  return OUTLINED_FUNCTION_25();
}

BOOL static Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object.== infix(_:_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9080, &unk_1B964D870);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_139();
  v4 = (v0 + *(v3 + 56));
  sub_1B91148B0();
  OUTLINED_FUNCTION_543();
  sub_1B91148B0();
  v5 = *v0 == *v4 && v0[1] == v4[1];
  v9 = 0;
  if (v5 || (sub_1B964C9F0() & 1) != 0)
  {
    sub_1B8D7391C(v0[2], v4[2]);
    if (v6)
    {
      type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_60();
      sub_1B8CD2888(v7, v8, MEMORY[0x1E69AAC10]);
      if (sub_1B964C850())
      {
        v9 = 1;
      }
    }
  }

  sub_1B9114334();
  sub_1B9114334();
  return v9;
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.lines.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.text.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.imageResource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(v5);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.imageResource.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Legacy_Answer.Line.imageResource.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(v14);
  OUTLINED_FUNCTION_256_1(*(v15 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_83_4();
    OUTLINED_FUNCTION_118_4(v17, xmmword_1B966F890);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B911DEE8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91148B0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9070, &qword_1B964D860);
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_255_2();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_6_21();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9070, &qword_1B964D860);
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_256_2();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.hasImageResource.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(v4);
  OUTLINED_FUNCTION_863();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_Answer.Line.clearImageResource()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAB9070, &qword_1B964D860);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(0);
  OUTLINED_FUNCTION_279();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v2 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B911E184()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC51A0);
  __swift_project_value_buffer(v0, qword_1EBAC51A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REGION_PROPERTY_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REGION_PROPERTY_HIGHLIGHTED_QUERY_PARAM";
  *(v10 + 8) = 39;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REGION_PROPERTY_SUGGESTED_UTTERANCE";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "REGION_PROPERTY_SUPERSCRIPT";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "REGION_PROPERTY_SUBSCRIPT";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "REGION_PROPERTY_DE_EMPHASIZE_RESULT";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "REGION_PROPERTY_SMALL_CAPS";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "REGION_PROPERTY_TIME_COLON_VERTICAL_CENTERING";
  *(v22 + 1) = 45;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "REGION_PROPERTY_TINTED";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B911E530()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC51B8);
  __swift_project_value_buffer(v0, qword_1EBAC51B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "general_knowledge_snippet";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "answer_snippet";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.decodeMessage<A>(decoder:)()
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
      sub_1B911EC78(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_17_3();
      sub_1B911E780(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B911E780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53A0, &qword_1B96923C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5740, &qword_1B96946E8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC53A0, &qword_1B96923C0);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9114334();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAC5740, &qword_1B96946E8);
      sub_1B9114610();
      sub_1B9114610();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2888(&qword_1EBAC5538, type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC5740, &qword_1B96946E8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC5740, &qword_1B96946E8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC5740, &qword_1B96946E8);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC5740, &qword_1B96946E8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAC53A0, &qword_1B96923C0);
  sub_1B9114610();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B911EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53A0, &qword_1B96923C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5748, &qword_1B96946F0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC53A0, &qword_1B96923C0);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAC5748, &qword_1B96946F0);
      sub_1B9114610();
      sub_1B9114610();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9114334();
    }
  }

  sub_1B8CD2888(&qword_1EBAC5640, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AnswerSnippet);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC5748, &qword_1B96946F0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC5748, &qword_1B96946F0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC5748, &qword_1B96946F0);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC5748, &qword_1B96946F0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAC53A0, &qword_1B96923C0);
  sub_1B9114610();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_243_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53A0, &qword_1B96923C0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - v3;
  OUTLINED_FUNCTION_176_1();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_178(v4, 1, v5);
  if (v6)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = OUTLINED_FUNCTION_7_6();
    sub_1B911F498(v7, v8, v9, v10);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_6();
    sub_1B911F284(v11, v12, v13, v14);
  }

  OUTLINED_FUNCTION_63_6();
  result = sub_1B9114334();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B911F284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53A0, &qword_1B96923C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC53A0, &qword_1B96923C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B9114610();
      sub_1B8CD2888(&qword_1EBAC5538, type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet);
      sub_1B964C740();
      return sub_1B9114334();
    }

    result = sub_1B9114334();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B911F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53A0, &qword_1B96923C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC53A0, &qword_1B96923C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9114610();
      sub_1B8CD2888(&qword_1EBAC5640, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AnswerSnippet);
      sub_1B964C740();
      return sub_1B9114334();
    }

    result = sub_1B9114334();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_Legacy_LegacySnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_8();
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53D8, &unk_1B9692410);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  v10 = *(v9 + 56);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_50(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_50(v0 + v10);
    if (v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
LABEL_12:
      type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet(0);
      OUTLINED_FUNCTION_871();
      OUTLINED_FUNCTION_0_60();
      v17 = sub_1B8CD2888(v15, v16, MEMORY[0x1E69AAC10]);
      v12 = OUTLINED_FUNCTION_634(v17);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v0 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_63_6();
    sub_1B9114334();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAC53D8, &unk_1B9692410);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_225_3();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet.== infix(_:_:)();
  v14 = v13;
  sub_1B9114334();
  OUTLINED_FUNCTION_254_2();
  sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
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

uint64_t sub_1B911F964(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5710, type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_LegacySnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B911F9E4(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5520, type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_LegacySnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B911FA54(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC5520, type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_LegacySnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B911FAEC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC51D0);
  __swift_project_value_buffer(v0, qword_1EBAC51D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B964E4A0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 2;
  *v5 = "title";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "subtitle";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "category";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "pods";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "app_punch_out";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "summary_title";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.decodeMessage<A>(decoder:)()
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
      case 2:
      case 3:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B911FE88(v7, v8, v9, v10);
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B911FF28(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B911FE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView(0);
  sub_1B8CD2888(&qword_1EBAC53E8, type metadata accessor for Apple_Parsec_Siri_Legacy_PodView, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PodView);
  return sub_1B964C570();
}

uint64_t sub_1B911FF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  sub_1B8CD2888(&qword_1EBAC53F0, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AppPunchOut);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_186_1();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  OUTLINED_FUNCTION_1();
  if (!v7 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      if (!*(v1 + 32) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), sub_1B964C6C0(), !v0))
      {
        if (!*(*(v1 + 40) + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_PodView(0), sub_1B8CD2888(&qword_1EBAC53E8, type metadata accessor for Apple_Parsec_Siri_Legacy_PodView, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PodView), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
        {
          type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0);
          sub_1B8F1B8B8();
          OUTLINED_FUNCTION_32(v2);
          if (v9)
          {
            sub_1B8D9207C(v2, &qword_1EBAC53B0, &qword_1B96923D0);
          }

          else
          {
            OUTLINED_FUNCTION_1_51();
            OUTLINED_FUNCTION_424();
            sub_1B9114610();
            OUTLINED_FUNCTION_64_4();
            sub_1B8CD2888(v10, v11, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AppPunchOut);
            OUTLINED_FUNCTION_597_0();
            OUTLINED_FUNCTION_687();
            sub_1B964C740();
            OUTLINED_FUNCTION_5_27();
            sub_1B9114334();
            if (v0)
            {
              goto LABEL_16;
            }
          }

          OUTLINED_FUNCTION_1();
          if (!v12 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
          {
            OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B91202D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5708, type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9120358(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5538, type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91203C8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC5538, type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B9120460()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC51E8);
  __swift_project_value_buffer(v0, qword_1EBAC51E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image_pod";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "summary_pod";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "property_pod";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "web_link_pod";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B9120764(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B9120C5C(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B9121154(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B912164C(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9120764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5720, &qword_1B96946C8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9114334();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAC5720, &qword_1B96946C8);
      sub_1B9114610();
      sub_1B9114610();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2888(&qword_1EBAC5560, type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImagePod);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC5720, &qword_1B96946C8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC5720, &qword_1B96946C8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC5720, &qword_1B96946C8);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC5720, &qword_1B96946C8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9098, &qword_1B96923E0);
  sub_1B9114610();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9120C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5728, &qword_1B96946D0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAC5728, &qword_1B96946D0);
      sub_1B9114610();
      sub_1B9114610();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9114334();
    }
  }

  sub_1B8CD2888(&qword_1EBAC5578, type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_SummaryPod);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC5728, &qword_1B96946D0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC5728, &qword_1B96946D0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC5728, &qword_1B96946D0);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC5728, &qword_1B96946D0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9098, &qword_1B96923E0);
  sub_1B9114610();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9121154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5730, &qword_1B96946D8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v18, &qword_1EBAC5730, &qword_1B96946D8);
      sub_1B9114610();
      sub_1B9114610();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9114334();
    }
  }

  sub_1B8CD2888(&qword_1EBAC5590, type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PropertyPod);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC5730, &qword_1B96946D8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC5730, &qword_1B96946D8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC5730, &qword_1B96946D8);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC5730, &qword_1B96946D8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9098, &qword_1B96923E0);
  sub_1B9114610();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B912164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5738, &qword_1B96946E0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v18, &qword_1EBAC5738, &qword_1B96946E0);
      sub_1B9114610();
      sub_1B9114610();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9114334();
    }
  }

  sub_1B8CD2888(&qword_1EBAC55A8, type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_WebLinkPod);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC5738, &qword_1B96946E0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC5738, &qword_1B96946E0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC5738, &qword_1B96946E0);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC5738, &qword_1B96946E0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9098, &qword_1B96923E0);
  sub_1B9114610();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_243_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - v3;
  OUTLINED_FUNCTION_176_1();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_178(v4, 1, v5);
  if (v6)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_686();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = OUTLINED_FUNCTION_7_6();
      sub_1B9121E9C(v19, v20, v21, v22);
      break;
    case 2u:
      v11 = OUTLINED_FUNCTION_7_6();
      sub_1B91220B0(v11, v12, v13, v14);
      break;
    case 3u:
      v15 = OUTLINED_FUNCTION_7_6();
      sub_1B91222C4(v15, v16, v17, v18);
      break;
    default:
      v7 = OUTLINED_FUNCTION_7_6();
      sub_1B9121C8C(v7, v8, v9, v10);
      break;
  }

  OUTLINED_FUNCTION_16_21();
  result = sub_1B9114334();
  if (!v0)
  {
LABEL_8:
    type metadata accessor for Apple_Parsec_Siri_Legacy_PodView(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9121C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B9114610();
      sub_1B8CD2888(&qword_1EBAC5560, type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImagePod);
      sub_1B964C740();
      return sub_1B9114334();
    }

    result = sub_1B9114334();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9121E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9114610();
      sub_1B8CD2888(&qword_1EBAC5578, type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_SummaryPod);
      sub_1B964C740();
      return sub_1B9114334();
    }

    result = sub_1B9114334();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91220B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B9114610();
      sub_1B8CD2888(&qword_1EBAC5590, type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PropertyPod);
      sub_1B964C740();
      return sub_1B9114334();
    }

    result = sub_1B9114334();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91222C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B9114610();
      sub_1B8CD2888(&qword_1EBAC55A8, type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_WebLinkPod);
      sub_1B964C740();
      return sub_1B9114334();
    }

    result = sub_1B9114334();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_Legacy_PodView.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_8();
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90A0, &qword_1B964D890);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  v10 = *(v9 + 56);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_50(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_50(v0 + v10);
    if (v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
LABEL_12:
      type metadata accessor for Apple_Parsec_Siri_Legacy_PodView(0);
      OUTLINED_FUNCTION_871();
      OUTLINED_FUNCTION_0_60();
      v17 = sub_1B8CD2888(v15, v16, MEMORY[0x1E69AAC10]);
      v12 = OUTLINED_FUNCTION_634(v17);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v0 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_16_21();
    sub_1B9114334();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB90A0, &qword_1B964D890);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_225_3();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod.== infix(_:_:)();
  v14 = v13;
  sub_1B9114334();
  OUTLINED_FUNCTION_254_2();
  sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
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

uint64_t sub_1B9122790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5700, type metadata accessor for Apple_Parsec_Siri_Legacy_PodView, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PodView);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9122810(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC53E8, type metadata accessor for Apple_Parsec_Siri_Legacy_PodView, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PodView);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9122880(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC53E8, type metadata accessor for Apple_Parsec_Siri_Legacy_PodView, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PodView);

  return sub_1B964C5D0();
}

void Apple_Parsec_Siri_Legacy_ImagePod.decodeMessage<A>(decoder:)()
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

    if (v1 == 12)
    {
      OUTLINED_FUNCTION_9();
      sub_1B912C75C();
    }
  }
}

void Apple_Parsec_Siri_Legacy_ImagePod.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(0), sub_1B8CD2888(&qword_1EBAC5408, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(0);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9122B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56F8, type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImagePod);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9122BC4(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5560, type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImagePod);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9122C34(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC5560, type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImagePod);

  return sub_1B964C5D0();
}

uint64_t sub_1B9122CCC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5218);
  __swift_project_value_buffer(v0, qword_1EBAC5218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image_resource";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "caption";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_SummaryPod.decodeMessage<A>(decoder:)()
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
        sub_1B9122FCC(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9122FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Legacy_SummaryPod.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_186_1();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  OUTLINED_FUNCTION_1();
  if (!v6 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
      sub_1B8F1B8B8();
      OUTLINED_FUNCTION_32(v1);
      if (v8)
      {
        sub_1B8D9207C(v1, &qword_1EBAB9070, &qword_1B964D860);
      }

      else
      {
        OUTLINED_FUNCTION_2_34();
        OUTLINED_FUNCTION_424();
        sub_1B9114610();
        OUTLINED_FUNCTION_33_11();
        sub_1B8CD2888(v9, v10, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);
        OUTLINED_FUNCTION_597_0();
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        OUTLINED_FUNCTION_6_21();
        sub_1B9114334();
        if (v0)
        {
          goto LABEL_12;
        }
      }

      OUTLINED_FUNCTION_1();
      if (!v11 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B91232F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56F0, type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_SummaryPod);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9123374(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5578, type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_SummaryPod);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91233E4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC5578, type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_SummaryPod);

  return sub_1B964C5D0();
}

uint64_t sub_1B912347C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5230);
  __swift_project_value_buffer(v0, qword_1EBAC5230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "answer_properties";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Legacy_PropertyPod.decodeMessage<A>(decoder:)()
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

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B912C75C();
    }
  }
}

void Apple_Parsec_Siri_Legacy_PropertyPod.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0), sub_1B8CD2888(&qword_1EBAC5428, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AnswerProperty), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(0);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B91237FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56E8, type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PropertyPod);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912387C(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5590, type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PropertyPod);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91238EC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC5590, type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PropertyPod);

  return sub_1B964C5D0();
}

uint64_t sub_1B9123984()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5248);
  __swift_project_value_buffer(v0, qword_1EBAC5248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linked_answers";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Legacy_WebLinkPod.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(0), sub_1B8CD2888(&qword_1EBAC5438, type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_LinkedAnswer), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(0);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9123D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56E0, type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_WebLinkPod);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9123DC8(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC55A8, type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_WebLinkPod);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9123E38(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC55A8, type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_WebLinkPod);

  return sub_1B964C5D0();
}

uint64_t sub_1B9123ED0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5260);
  __swift_project_value_buffer(v0, qword_1EBAC5260);
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
  *v8 = "description_text";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "link";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "display_link";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "punch_out";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "query";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "search_uri";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "thumbnails";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "is_image_invertable";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.decodeMessage<A>(decoder:)()
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
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9124340(v3, v4, v5, v6);
        break;
      case 8:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B91243F4(v7, v8, v9, v10);
        break;
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9124340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  sub_1B8CD2888(&qword_1EBAC5448, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PunchOut);
  return sub_1B964C580();
}

uint64_t sub_1B91243F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);
  return sub_1B964C570();
}

void Apple_Parsec_Siri_Legacy_LinkedAnswer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C8, &qword_1B96923F0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_192_4();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v7 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v9 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v10 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
        {
          type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(0);
          sub_1B8F1B8B8();
          OUTLINED_FUNCTION_178(v2, 1, v5);
          if (v11)
          {
            sub_1B8D9207C(v2, &qword_1EBAC53C8, &qword_1B96923F0);
          }

          else
          {
            OUTLINED_FUNCTION_4_31();
            sub_1B9114610();
            sub_1B8CD2888(&qword_1EBAC5448, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PunchOut);
            OUTLINED_FUNCTION_687();
            sub_1B964C740();
            OUTLINED_FUNCTION_35_11();
            sub_1B9114334();
            if (v0)
            {
              goto LABEL_22;
            }
          }

          OUTLINED_FUNCTION_1();
          if (!v12 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v13 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
            {
              if (!*(*(v1 + 96) + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0), OUTLINED_FUNCTION_33_11(), sub_1B8CD2888(v14, v15, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
              {
                if (*(v1 + 104) != 1 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), sub_1B964C670(), !v0))
                {
                  OUTLINED_FUNCTION_8_1();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Legacy_LinkedAnswer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C8, &qword_1B96923F0);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5450, &qword_1B9692420);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_428();
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_84_1();
  v14 = v11 && v12 == v13;
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_40_5();
  v17 = v11 && v15 == v16;
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v18 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_30;
  }

  type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(0);
  v19 = *(v7 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  OUTLINED_FUNCTION_50(v2);
  if (!v11)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_50(v2 + v19);
    if (!v20)
    {
      OUTLINED_FUNCTION_4_31();
      sub_1B9114610();
      OUTLINED_FUNCTION_246();
      v22 = static Apple_Parsec_Siri_Legacy_PunchOut.== infix(_:_:)();
      sub_1B9114334();
      sub_1B9114334();
      sub_1B8D9207C(v2, &qword_1EBAC53C8, &qword_1B96923F0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_33;
    }

    OUTLINED_FUNCTION_35_11();
    sub_1B9114334();
LABEL_29:
    sub_1B8D9207C(v2, &qword_1EBAC5450, &qword_1B9692420);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_50(v2 + v19);
  if (!v11)
  {
    goto LABEL_29;
  }

  sub_1B8D9207C(v2, &qword_1EBAC53C8, &qword_1B96923F0);
LABEL_33:
  v23 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
  if (v23 || (sub_1B964C9F0() & 1) != 0)
  {
    v24 = *(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88);
    if (v24 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B8D748F8(*(v1 + 96), *(v0 + 96));
      if ((v25 & 1) != 0 && *(v1 + 104) == *(v0 + 104))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_60();
        v28 = sub_1B8CD2888(v26, v27, MEMORY[0x1E69AAC10]);
        v21 = OUTLINED_FUNCTION_634(v28);
        goto LABEL_31;
      }
    }
  }

LABEL_30:
  v21 = 0;
LABEL_31:
  OUTLINED_FUNCTION_264(v21);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9124B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56D8, type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_LinkedAnswer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9124B90(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5438, type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_LinkedAnswer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9124C00(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC5438, type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_LinkedAnswer);

  return sub_1B964C5D0();
}

uint64_t sub_1B9124C98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5278);
  __swift_project_value_buffer(v0, qword_1EBAC5278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B96511C0;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "description";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "description_text";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "link";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "display_link";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "punch_out";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "query";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "search_uri";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "image_resource";
  *(v23 + 1) = 14;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "thumbnails";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "is_image_invertable";
  *(v27 + 1) = 19;
  v27[16] = 2;
  v8();
  return sub_1B964C760();
}

void *sub_1B91250E4()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__punchOut;
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__imageResource;
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable) = 0;
  return v0;
}

void *sub_1B91251AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C8, &qword_1B96923F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v37 - v6;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[6] = 0;
  v1[5] = 0xE000000000000000;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = 0;
  v38 = v1 + 10;
  v1[11] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__punchOut;
  v39 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__punchOut;
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
  v41 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__imageResource;
  v42 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__imageResource;
  v12 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v43 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails) = MEMORY[0x1E69E7CC0];
  v44 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable) = 0;
  swift_beginAccess();
  v14 = a1[2];
  v13 = a1[3];
  swift_beginAccess();
  v1[2] = v14;
  v1[3] = v13;
  swift_beginAccess();
  v15 = a1[4];
  v16 = a1[5];
  swift_beginAccess();
  v1[4] = v15;
  v1[5] = v16;

  swift_beginAccess();
  v18 = a1[6];
  v17 = a1[7];
  swift_beginAccess();
  v1[6] = v18;
  v1[7] = v17;

  swift_beginAccess();
  v20 = a1[8];
  v19 = a1[9];
  swift_beginAccess();
  v1[8] = v20;
  v1[9] = v19;

  swift_beginAccess();
  v22 = a1[10];
  v21 = a1[11];
  v23 = v38;
  swift_beginAccess();
  *v23 = v22;
  v1[11] = v21;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  *v9 = v26;
  v9[1] = v25;

  v27 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  v30 = v41;
  swift_beginAccess();
  *v30 = v29;
  v30[1] = v28;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v43;
  swift_beginAccess();
  *(v1 + v33) = v32;

  v34 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable;
  swift_beginAccess();
  LOBYTE(v34) = *(a1 + v34);

  v35 = v44;
  swift_beginAccess();
  *(v1 + v35) = v34;
  return v1;
}

void *sub_1B91256F8()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__punchOut, &qword_1EBAC53C8, &qword_1B96923F0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__imageResource, &qword_1EBAB9070, &qword_1B964D860);

  return v0;
}

uint64_t sub_1B9125820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8E4C21C();
        break;
      case 2:
        sub_1B90E3DFC();
        break;
      case 3:
        sub_1B8DC4778(a2, a1);
        break;
      case 4:
        sub_1B8E16ACC(a2, a1);
        break;
      case 5:
        sub_1B8E16B50(a2, a1);
        break;
      case 6:
        sub_1B91259FC(a2, a1, a3, a4);
        break;
      case 7:
      case 8:
        sub_1B8E4C770();
        break;
      case 9:
        sub_1B9125AD8();
        break;
      case 10:
        sub_1B9125B80(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B90AB150();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91259FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  sub_1B8CD2888(&qword_1EBAC5448, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PunchOut);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9125AD8()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_33_11();
  sub_1B8CD2888(v0, v1, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);
  OUTLINED_FUNCTION_153_1();
  v2 = sub_1B964C580();
  return OUTLINED_FUNCTION_199_1(v2);
}

uint64_t sub_1B9125B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9125C8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = v37 - v8;
  v38 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  MEMORY[0x1EEE9AC00](v38);
  v37[1] = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C8, &qword_1B96923F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v37 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  MEMORY[0x1EEE9AC00](v13);
  v39 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = a1[3];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v17 = a1[5];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    goto LABEL_11;
  }

  sub_1B964C700();
  if (v4)
  {
  }

LABEL_11:
  swift_beginAccess();
  v19 = a1[7];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = a1[6] & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v22 = a1[9];
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = a1[8] & 0xFFFFFFFFFFFFLL;
  }

  if (!v23 || (, sub_1B964C700(), result = , !v4))
  {
    swift_beginAccess();
    v24 = a1[11];
    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = a1[10] & 0xFFFFFFFFFFFFLL;
    }

    if (!v25 || (, sub_1B964C700(), result = , !v4))
    {
      swift_beginAccess();
      sub_1B8F1B8B8();
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        sub_1B8D9207C(v12, &qword_1EBAC53C8, &qword_1B96923F0);
      }

      else
      {
        sub_1B9114610();
        sub_1B8CD2888(&qword_1EBAC5448, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PunchOut);
        sub_1B964C740();
        result = sub_1B9114334();
        if (v4)
        {
          return result;
        }
      }

      v26 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query);
      swift_beginAccess();
      v27 = *v26;
      v28 = v26[1];
      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v27 & 0xFFFFFFFFFFFFLL;
      }

      v30 = v40;
      if (!v29 || (, sub_1B964C700(), result = , !v5))
      {
        v31 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
        swift_beginAccess();
        v32 = *v31;
        v33 = v31[1];
        v34 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v34 = v32 & 0xFFFFFFFFFFFFLL;
        }

        if (!v34 || (, sub_1B964C700(), result = , !v5))
        {
          swift_beginAccess();
          sub_1B8F1B8B8();
          if (__swift_getEnumTagSinglePayload(v30, 1, v38) == 1)
          {
            sub_1B8D9207C(v30, &qword_1EBAB9070, &qword_1B964D860);
          }

          else
          {
            sub_1B9114610();
            sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);
            sub_1B964C740();
            result = sub_1B9114334();
            if (v5)
            {
              return result;
            }
          }

          v35 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails;
          swift_beginAccess();
          if (!*(*(a1 + v35) + 16) || (sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource), , sub_1B964C730(), result = , !v5))
          {
            v36 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable;
            result = swift_beginAccess();
            if (*(a1 + v36) == 1)
            {
              return sub_1B964C670();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B9126410()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v79 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = (v7 - v6);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9078, &qword_1B964D868);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_137();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  v11 = OUTLINED_FUNCTION_183(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44_0();
  v76 = v12;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v74 - v14;
  v15 = OUTLINED_FUNCTION_201();
  v82 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v15);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v80 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5450, &qword_1B9692420);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C8, &qword_1B96923F0);
  v24 = OUTLINED_FUNCTION_183(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44_0();
  v81 = v25;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - v27;
  OUTLINED_FUNCTION_521((v4 + 2), &v104);
  v30 = v4[2];
  v29 = v4[3];
  OUTLINED_FUNCTION_521((v2 + 2), &v103);
  v31 = v30 == v2[2] && v29 == v2[3];
  if (v31 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_521((v4 + 4), &v102);
    v32 = v4[4];
    v33 = v4[5];
    OUTLINED_FUNCTION_521((v2 + 4), &v101);
    v34 = v32 == v2[4] && v33 == v2[5];
    if (v34 || (OUTLINED_FUNCTION_193_3() & 1) != 0)
    {
      OUTLINED_FUNCTION_521((v4 + 6), &v100);
      v35 = v4[6];
      v36 = v4[7];
      OUTLINED_FUNCTION_521((v2 + 6), &v99);
      v37 = v35 == v2[6] && v36 == v2[7];
      if (v37 || (OUTLINED_FUNCTION_193_3() & 1) != 0)
      {
        OUTLINED_FUNCTION_521((v4 + 8), &v98);
        v38 = v4[8];
        v39 = v4[9];
        OUTLINED_FUNCTION_521((v2 + 8), &v97);
        v40 = v38 == v2[8] && v39 == v2[9];
        if (v40 || (OUTLINED_FUNCTION_193_3() & 1) != 0)
        {
          OUTLINED_FUNCTION_521((v4 + 10), &v96);
          v41 = v4[10];
          v42 = v4[11];
          OUTLINED_FUNCTION_521((v2 + 10), &v95);
          v43 = v41 == v2[10] && v42 == v2[11];
          if (v43 || (OUTLINED_FUNCTION_193_3() & 1) != 0)
          {
            v74 = v8;
            v75 = v0;
            OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__punchOut, &v94);
            sub_1B8F1B8B8();
            OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__punchOut, &v93);
            v44 = *(v19 + 48);
            sub_1B8F1B8B8();
            sub_1B8F1B8B8();
            v45 = v82;
            OUTLINED_FUNCTION_178(v22, 1, v82);
            if (v31)
            {

              sub_1B8D9207C(v28, &qword_1EBAC53C8, &qword_1B96923F0);
              OUTLINED_FUNCTION_178(&v22[v44], 1, v45);
              if (v31)
              {
                sub_1B8D9207C(v22, &qword_1EBAC53C8, &qword_1B96923F0);
LABEL_39:
                v52 = (v4 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query);
                OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query, &v92);
                v53 = *v52;
                v54 = v52[1];
                v55 = (v2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query);
                OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query, &v91);
                if (v53 != *v55 || v54 != v55[1])
                {
                  OUTLINED_FUNCTION_177_1();
                  if ((sub_1B964C9F0() & 1) == 0)
                  {
                    goto LABEL_36;
                  }
                }

                v57 = (v4 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
                OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri, &v90);
                v58 = *v57;
                v59 = v57[1];
                v60 = (v2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
                OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri, &v89);
                if (v58 != *v60 || v59 != v60[1])
                {
                  OUTLINED_FUNCTION_177_1();
                  if ((sub_1B964C9F0() & 1) == 0)
                  {
                    goto LABEL_36;
                  }
                }

                OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__imageResource, &v88);
                v62 = v78;
                sub_1B8F1B8B8();
                OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__imageResource, &v87);
                v63 = *(v77 + 48);
                v64 = v75;
                sub_1B8F1B8B8();
                sub_1B8F1B8B8();
                v65 = v79;
                OUTLINED_FUNCTION_178(v64, 1, v79);
                if (v31)
                {
                  sub_1B8D9207C(v62, &qword_1EBAB9070, &qword_1B964D860);
                  OUTLINED_FUNCTION_178(v64 + v63, 1, v65);
                  if (v31)
                  {
                    sub_1B8D9207C(v64, &qword_1EBAB9070, &qword_1B964D860);
                    goto LABEL_59;
                  }
                }

                else
                {
                  v66 = v76;
                  sub_1B8F1B8B8();
                  OUTLINED_FUNCTION_178(v64 + v63, 1, v65);
                  if (!v67)
                  {
                    OUTLINED_FUNCTION_2_34();
                    v68 = v74;
                    sub_1B9114610();
                    v69 = static Apple_Parsec_Siri_Legacy_ImageResource.== infix(_:_:)(v66, v68);
                    sub_1B9114334();
                    sub_1B8D9207C(v62, &qword_1EBAB9070, &qword_1B964D860);
                    sub_1B9114334();
                    sub_1B8D9207C(v64, &qword_1EBAB9070, &qword_1B964D860);
                    if (v69)
                    {
LABEL_59:
                      OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails, &v86);
                      OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails, &v85);

                      v70 = OUTLINED_FUNCTION_177_1();
                      sub_1B8D748F8(v70, v71);
                      v73 = v72;

                      if (v73)
                      {
                        OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable, &v84);

                        OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable, &v83);

                        goto LABEL_37;
                      }
                    }

LABEL_36:

                    goto LABEL_37;
                  }

                  sub_1B8D9207C(v62, &qword_1EBAB9070, &qword_1B964D860);
                  OUTLINED_FUNCTION_6_21();
                  sub_1B9114334();
                }

                v47 = &qword_1EBAB9078;
                v48 = &qword_1B964D868;
                v49 = v64;
LABEL_35:
                sub_1B8D9207C(v49, v47, v48);
                goto LABEL_36;
              }
            }

            else
            {
              sub_1B8F1B8B8();
              OUTLINED_FUNCTION_178(&v22[v44], 1, v45);
              if (!v46)
              {
                OUTLINED_FUNCTION_4_31();
                sub_1B9114610();

                LODWORD(v82) = static Apple_Parsec_Siri_Legacy_PunchOut.== infix(_:_:)();
                sub_1B9114334();
                sub_1B8D9207C(v28, &qword_1EBAC53C8, &qword_1B96923F0);
                OUTLINED_FUNCTION_254_2();
                v50 = OUTLINED_FUNCTION_424();
                sub_1B8D9207C(v50, v51, &qword_1B96923F0);
                if ((v82 & 1) == 0)
                {
                  goto LABEL_36;
                }

                goto LABEL_39;
              }

              sub_1B8D9207C(v28, &qword_1EBAC53C8, &qword_1B96923F0);
              OUTLINED_FUNCTION_35_11();
              sub_1B9114334();
            }

            v47 = &qword_1EBAC5450;
            v48 = &qword_1B9692420;
            v49 = v22;
            goto LABEL_35;
          }
        }
      }
    }
  }

LABEL_37:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9126CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56D0, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9126D60(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5408, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9126DD0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC5408, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer);

  return sub_1B964C5D0();
}

uint64_t sub_1B9126E68()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5298);
  __swift_project_value_buffer(v0, qword_1EBAC5298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "value";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "decorated_value";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "value_annotation";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "decorated_value_annotation";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "selected";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "app_punch_out";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.decodeMessage<A>(decoder:)()
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
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9127258(v7, v8, v9, v10);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B912730C(v3, v4, v5, v6);
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 7:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B91273C0(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9127258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  sub_1B8CD2888(&qword_1EBAC5468, type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B912730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  sub_1B8CD2888(&qword_1EBAC5468, type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B91273C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  sub_1B8CD2888(&qword_1EBAC53F0, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AppPunchOut);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Legacy_AnswerProperty.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v35 = v34 - v4;
  v5 = OUTLINED_FUNCTION_201();
  v36 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v34[1] = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53D0, &qword_1B96923F8);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v34 - v15;
  v17 = type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44_0();
  v34[2] = v19;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  if (!v21 || (sub_1B964C700(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v22 || (sub_1B964C700(), !v1))
    {
      v34[0] = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0);
      sub_1B8F1B8B8();
      OUTLINED_FUNCTION_32(v16);
      if (v23)
      {
        sub_1B8D9207C(v16, &qword_1EBAC53D0, &qword_1B96923F8);
      }

      else
      {
        OUTLINED_FUNCTION_3_33();
        sub_1B9114610();
        OUTLINED_FUNCTION_146_3();
        sub_1B8CD2888(v24, v25, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_DecoratedText);
        sub_1B964C740();
        OUTLINED_FUNCTION_32_15();
        sub_1B9114334();
        if (v1)
        {
          goto LABEL_22;
        }
      }

      OUTLINED_FUNCTION_1();
      if (!v26 || (sub_1B964C700(), !v1))
      {
        sub_1B8F1B8B8();
        v27 = OUTLINED_FUNCTION_493();
        OUTLINED_FUNCTION_178(v27, v28, v17);
        if (v23)
        {
          sub_1B8D9207C(v13, &qword_1EBAC53D0, &qword_1B96923F8);
        }

        else
        {
          OUTLINED_FUNCTION_3_33();
          sub_1B9114610();
          OUTLINED_FUNCTION_146_3();
          sub_1B8CD2888(v29, v30, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_DecoratedText);
          sub_1B964C740();
          OUTLINED_FUNCTION_32_15();
          sub_1B9114334();
          if (v1)
          {
            goto LABEL_22;
          }
        }

        v31 = v35;
        if (*(v0 + 48) != 1 || (sub_1B964C670(), !v1))
        {
          sub_1B8F1B8B8();
          OUTLINED_FUNCTION_178(v31, 1, v36);
          if (v23)
          {
            sub_1B8D9207C(v31, &qword_1EBAC53B0, &qword_1B96923D0);
LABEL_21:
            OUTLINED_FUNCTION_177_1();
            sub_1B964C290();
            goto LABEL_22;
          }

          OUTLINED_FUNCTION_1_51();
          sub_1B9114610();
          OUTLINED_FUNCTION_64_4();
          sub_1B8CD2888(v32, v33, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AppPunchOut);
          sub_1B964C740();
          OUTLINED_FUNCTION_5_27();
          sub_1B9114334();
          if (!v1)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Legacy_AnswerProperty.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_112();
  v80 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_192_4();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B8, &qword_1B96923D8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v75 - v11;
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  v81 = v14;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v75 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53D0, &qword_1B96923F8);
  v19 = OUTLINED_FUNCTION_183(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44_0();
  v82 = v20;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v75 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5470, &unk_1B9692428);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44_0();
  v83 = v26;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - v28;
  OUTLINED_FUNCTION_428();
  v32 = v32 && v30 == v31;
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v33 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v33 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v78 = v2;
  v75 = v7;
  v76 = v12;
  v34 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0);
  v84 = v0;
  v77 = v34;
  v35 = *(v34 + 36);
  v36 = *(v24 + 48);
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_199_4();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v29);
  if (v32)
  {
    OUTLINED_FUNCTION_50(&v29[v36]);
    if (!v32)
    {
      goto LABEL_35;
    }

    sub_1B8D9207C(v29, &qword_1EBAC53D0, &qword_1B96923F8);
  }

  else
  {
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_50(&v29[v36]);
    if (v46)
    {
LABEL_34:
      OUTLINED_FUNCTION_32_15();
      sub_1B9114334();
LABEL_35:
      v47 = &qword_1EBAC5470;
      v48 = &unk_1B9692428;
LABEL_45:
      v54 = v29;
LABEL_46:
      sub_1B8D9207C(v54, v47, v48);
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_3_33();
    sub_1B9114610();
    v49 = *v23 == *v17 && v23[1] == v17[1];
    if (!v49 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_44;
    }

    sub_1B8D72408(v23[2], v17[2]);
    if ((v50 & 1) == 0)
    {
      goto LABEL_44;
    }

    v51 = sub_1B964C2B0();
    OUTLINED_FUNCTION_0_60();
    sub_1B8CD2888(v52, v53, MEMORY[0x1E69AAC10]);
    v35 = v84;
    sub_1B964C850();
    OUTLINED_FUNCTION_152_2();
    sub_1B9114334();
    sub_1B9114334();
    sub_1B8D9207C(v29, &qword_1EBAC53D0, &qword_1B96923F8);
    if ((v51 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v37 = *(v1 + 32) == *(v35 + 32) && *(v1 + 40) == *(v35 + 40);
  if (!v37 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v38 = *(v77 + 40);
  v39 = *(v24 + 48);
  v29 = v83;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_199_4();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v29);
  if (v32)
  {
    OUTLINED_FUNCTION_50(&v29[v39]);
    v40 = v78;
    if (v32)
    {
      sub_1B8D9207C(v29, &qword_1EBAC53D0, &qword_1B96923F8);
      goto LABEL_26;
    }

    goto LABEL_35;
  }

  v56 = v82;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(&v29[v39]);
  v40 = v78;
  if (v57)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_3_33();
  v58 = v81;
  sub_1B9114610();
  v59 = *v56 == *v58 && v56[1] == v58[1];
  if (!v59 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D72408(v56[2], v58[2]), (v60 & 1) == 0))
  {
LABEL_44:
    sub_1B9114334();
    sub_1B9114334();
    v47 = &qword_1EBAC53D0;
    v48 = &qword_1B96923F8;
    goto LABEL_45;
  }

  v61 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  sub_1B8CD2888(v62, v63, MEMORY[0x1E69AAC10]);
  v38 = v84;
  sub_1B964C850();
  OUTLINED_FUNCTION_152_2();
  sub_1B9114334();
  sub_1B9114334();
  sub_1B8D9207C(v29, &qword_1EBAC53D0, &qword_1B96923F8);
  if ((v61 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_26:
  if (*(v1 + 48) != *(v38 + 48))
  {
    goto LABEL_47;
  }

  v41 = *(v79 + 48);
  v42 = v76;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_199_4();
  v43 = v42;
  sub_1B8F1B8B8();
  v44 = v42;
  v45 = v80;
  OUTLINED_FUNCTION_178(v44, 1, v80);
  if (v32)
  {
    OUTLINED_FUNCTION_50(v43 + v41);
    if (v32)
    {
      sub_1B8D9207C(v43, &qword_1EBAC53B0, &qword_1B96923D0);
LABEL_66:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_60();
      sub_1B8CD2888(v73, v74, MEMORY[0x1E69AAC10]);
      v55 = sub_1B964C850();
      goto LABEL_48;
    }

    goto LABEL_62;
  }

  OUTLINED_FUNCTION_176_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v43 + v41);
  if (v64)
  {
    OUTLINED_FUNCTION_5_27();
    sub_1B9114334();
LABEL_62:
    v47 = &qword_1EBAC53B8;
    v48 = &qword_1B96923D8;
    v54 = v43;
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_1_51();
  v65 = v75;
  sub_1B9114610();
  v66 = *(v45 + 20);
  v67 = *(v40 + v66);
  v68 = *(v65 + v66);
  if (v67 != v68)
  {

    v69 = sub_1B912BB5C(v67, v68);

    if ((v69 & 1) == 0)
    {
      OUTLINED_FUNCTION_62_3();
      sub_1B9114334();
      sub_1B9114334();
      v47 = &qword_1EBAC53B0;
      v48 = &qword_1B96923D0;
      v54 = v76;
      goto LABEL_46;
    }
  }

  v70 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  sub_1B8CD2888(v71, v72, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_61_5();
  sub_1B9114334();
  sub_1B9114334();
  sub_1B8D9207C(v76, &qword_1EBAC53B0, &qword_1B96923D0);
  if (v70)
  {
    goto LABEL_66;
  }

LABEL_47:
  v55 = 0;
LABEL_48:
  OUTLINED_FUNCTION_264(v55);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91281E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56C8, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AnswerProperty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9128264(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5428, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AnswerProperty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91282D4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC5428, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AnswerProperty);

  return sub_1B964C5D0();
}

uint64_t sub_1B9128360()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC52B0);
  __swift_project_value_buffer(v0, qword_1EBAC52B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "regions";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B91285A8()
{
  OUTLINED_FUNCTION_236_2();
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_176_1();
      sub_1B912DB70();
    }

    else if (v1 == 1)
    {
      sub_1B964C530();
    }
  }
}

void Apple_Parsec_Siri_Legacy_DecoratedText.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion(0), sub_1B8CD2888(&qword_1EBAC5480, type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_TextDecorationRegion), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9128754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), void (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_428();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0 || (a3(*(v5 + 16), *(v4 + 16)) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  v13 = sub_1B8CD2888(v11, v12, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v13) & 1;
}

uint64_t sub_1B91288AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56C0, type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_DecoratedText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912892C(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5468, type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_DecoratedText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912899C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC5468, type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_DecoratedText);

  return sub_1B964C5D0();
}

uint64_t sub_1B9128A34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC52C8);
  __swift_project_value_buffer(v0, qword_1EBAC52C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "start";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "length";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "region_property";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_TextDecorationRegion.decodeMessage<A>(decoder:)()
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
      sub_1B9128CE0(v3, v4, v5, v6);
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_TextDecorationRegion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
    {
      if (!*(v2 + 8) || (sub_1B912EC1C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
      {
        type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Legacy_TextDecorationRegion.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4))
  {
    return 0;
  }

  v6 = *(v3 + 8);
  v7 = *(v2 + 8);
  if (*(v2 + 16) == 1)
  {
    switch(v7)
    {
      case 1:
        if (v6 == 1)
        {
          goto LABEL_8;
        }

        return 0;
      case 2:
        if (v6 == 2)
        {
          goto LABEL_8;
        }

        return 0;
      case 3:
        if (v6 == 3)
        {
          goto LABEL_8;
        }

        return 0;
      case 4:
        if (v6 == 4)
        {
          goto LABEL_8;
        }

        return 0;
      case 5:
        if (v6 == 5)
        {
          goto LABEL_8;
        }

        return 0;
      case 6:
        if (v6 == 6)
        {
          goto LABEL_8;
        }

        return 0;
      case 7:
        if (v6 == 7)
        {
          goto LABEL_8;
        }

        return 0;
      case 8:
        if (v6 == 8)
        {
          goto LABEL_8;
        }

        return 0;
      default:
        if (v6)
        {
          return 0;
        }

        goto LABEL_8;
    }
  }

  if (v6 != v7)
  {
    return 0;
  }

LABEL_8:
  type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  v11 = sub_1B8CD2888(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B9128FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56B8, type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_TextDecorationRegion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912906C(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5480, type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_TextDecorationRegion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91290DC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC5480, type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_TextDecorationRegion);

  return sub_1B964C5D0();
}

uint64_t sub_1B9129168()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC52E0);
  __swift_project_value_buffer(v0, qword_1EBAC52E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "scale_factor";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resource_url";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "user_agent";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pixel_width";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "pixel_height";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "image_data";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "url_format_string";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "point_width";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "point_height";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.decodeMessage<A>(decoder:)()
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
      case 4:
      case 5:
      case 8:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 2:
      case 3:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Siri_Legacy_ImageResource.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_22(), sub_1B964C6F0(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
      {
        if (v2[5] == 0.0 || (OUTLINED_FUNCTION_22(), sub_1B964C6F0(), !v1))
        {
          if (v2[6] == 0.0 || (OUTLINED_FUNCTION_22(), sub_1B964C6F0(), !v1))
          {
            v5 = OUTLINED_FUNCTION_616();
            if (sub_1B8D99EA8(v5, v6) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v1))
            {
              OUTLINED_FUNCTION_1();
              if (!v7 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
              {
                if (v2[11] == 0.0 || (OUTLINED_FUNCTION_22(), sub_1B964C6F0(), !v1))
                {
                  if (v2[12] == 0.0 || (OUTLINED_FUNCTION_22(), sub_1B964C6F0(), !v1))
                  {
                    type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
                    OUTLINED_FUNCTION_8_1();
                  }
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

uint64_t static Apple_Parsec_Siri_Legacy_ImageResource.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 24) == *(v2 + 24) && *(v3 + 32) == *(v2 + 32);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 40) != *(v2 + 40) || *(v3 + 48) != *(v2 + 48) || (MEMORY[0x1BFADC060](*(v3 + 56), *(v3 + 64), *(v2 + 56), *(v2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 72) == *(v2 + 72) && *(v3 + 80) == *(v2 + 80);
  if (!v7 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 88) != *(v2 + 88) || *(v3 + 96) != *(v2 + 96))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  v10 = sub_1B8CD2888(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B9129948(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56B0, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91299C8(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9129A38(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);

  return sub_1B964C5D0();
}

uint64_t sub_1B9129AD0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC52F8);
  __swift_project_value_buffer(v0, qword_1EBAC52F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "request_id";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "client_version";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "bundle_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "app_display_name";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "app_store_uri";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "subtitle";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "punch_out_uri";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v1 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v7 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
            {
              OUTLINED_FUNCTION_1();
              if (!v8 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
              {
                type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
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

uint64_t static Apple_Parsec_Siri_Legacy_PunchOut.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_428();
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v10 = v4 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = v1[8] == v0[8] && v1[9] == v0[9];
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = v1[10] == v0[10] && v1[11] == v0[11];
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v14 = v1[12] == v0[12] && v1[13] == v0[13];
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  v17 = sub_1B8CD2888(v15, v16, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v17) & 1;
}

uint64_t sub_1B912A1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56A8, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PunchOut);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912A228(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5448, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PunchOut);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912A298(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC5448, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_PunchOut);

  return sub_1B964C5D0();
}

uint64_t sub_1B912A330()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5310);
  __swift_project_value_buffer(v0, qword_1EBAC5310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B964D040;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "bundle_id";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "app_store_uri";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "app_installed";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "punch_out_uri";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "app_display_name";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "punch_out_name";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "app_icon";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "app_icon_map";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "provider_id";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "app_available_storefront";
  *(v25 + 1) = 24;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "subtitle";
  *(v27 + 1) = 8;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "launch_over_siri";
  *(v29 + 1) = 16;
  v29[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B912A7B4(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_57_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B912A804()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIcon;
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
  *(v0 + v3) = sub_1B964C7B0();
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront) = 0;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri) = 0;
  return v0;
}

uint64_t sub_1B912A8D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v38 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  v39 = (v1 + 72);
  *(v1 + 80) = 0xE000000000000000;
  *(v1 + 88) = 0;
  v40 = (v1 + 88);
  *(v1 + 96) = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIcon;
  v41 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIcon;
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
  v42 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
  *(v1 + v7) = sub_1B964C7B0();
  v8 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
  v44 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v45 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront) = 0;
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
  v46 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v47 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri) = 0;
  swift_beginAccess();
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v11;
  *(v1 + 24) = v10;

  swift_beginAccess();
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v13;
  *(v1 + 40) = v12;

  swift_beginAccess();
  LOBYTE(v12) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v12;
  swift_beginAccess();
  v15 = *(a1 + 56);
  v14 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v15;
  *(v1 + 64) = v14;

  swift_beginAccess();
  v17 = *(a1 + 72);
  v16 = *(a1 + 80);
  v18 = v39;
  swift_beginAccess();
  *v18 = v17;
  *(v1 + 80) = v16;

  swift_beginAccess();
  v20 = *(a1 + 88);
  v19 = *(a1 + 96);
  v21 = v40;
  swift_beginAccess();
  *v21 = v20;
  *(v1 + 96) = v19;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
  swift_beginAccess();
  v23 = *(a1 + v22);
  v24 = v42;
  swift_beginAccess();
  *(v1 + v24) = v23;

  v25 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
  swift_beginAccess();
  v27 = *v25;
  v26 = v25[1];
  v28 = v44;
  swift_beginAccess();
  *v28 = v27;
  v28[1] = v26;

  v29 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront;
  swift_beginAccess();
  LOBYTE(v29) = *(a1 + v29);
  v30 = v45;
  swift_beginAccess();
  *(v1 + v30) = v29;
  v31 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  v34 = v46;
  swift_beginAccess();
  *v34 = v33;
  v34[1] = v32;

  v35 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri;
  swift_beginAccess();
  LOBYTE(v35) = *(a1 + v35);

  v36 = v47;
  swift_beginAccess();
  *(v1 + v36) = v35;
  return v1;
}

void *sub_1B912ADF8()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIcon, &qword_1EBAB9070, &qword_1B964D860);

  return v0;
}

uint64_t sub_1B912AEA8(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B912AF58()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v10 = v3;
  v5 = v4;
  v7 = *(v6(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = v10(v8);
  }

  v9 = OUTLINED_FUNCTION_176_1();
  v2(v9);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B912B008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8E4C21C();
        break;
      case 2:
        sub_1B90E3DFC();
        break;
      case 3:
        sub_1B8E4317C(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B8DE24EC(a2, a1);
        break;
      case 5:
        sub_1B8E6D974(a2, a1);
        break;
      case 6:
        sub_1B8E6D9F8(a2, a1);
        break;
      case 7:
        sub_1B9125AD8();
        break;
      case 8:
        sub_1B912B20C(a2, a1, a3, a4);
        break;
      case 9:
      case 11:
        sub_1B8E4C770();
        break;
      case 10:
      case 12:
        sub_1B90AB150();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B912B20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C280();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);
  sub_1B8CD2888(&qword_1EBAC54A0, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);
  sub_1B964C3A0();
  return swift_endAccess();
}

uint64_t sub_1B912B364(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
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

uint64_t sub_1B912B3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v33 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  MEMORY[0x1EEE9AC00](v33);
  swift_beginAccess();
  v10 = *(a1 + 24);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 40);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 48) != 1 || (result = sub_1B964C670(), !v4))
  {
    swift_beginAccess();
    v15 = *(a1 + 64);
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (, sub_1B964C700(), result = , !v4))
    {
      swift_beginAccess();
      v17 = *(a1 + 80);
      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = *(a1 + 72) & 0xFFFFFFFFFFFFLL;
      }

      if (!v18 || (, sub_1B964C700(), result = , !v4))
      {
        swift_beginAccess();
        v19 = *(a1 + 96);
        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = *(a1 + 88) & 0xFFFFFFFFFFFFLL;
        }

        if (!v20 || (, sub_1B964C700(), result = , !v4))
        {
          swift_beginAccess();
          sub_1B8F1B8B8();
          if (__swift_getEnumTagSinglePayload(v9, 1, v33) == 1)
          {
            sub_1B8D9207C(v9, &qword_1EBAB9070, &qword_1B964D860);
          }

          else
          {
            sub_1B9114610();
            sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);
            sub_1B964C740();
            result = sub_1B9114334();
            if (v4)
            {
              return result;
            }
          }

          v21 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
          swift_beginAccess();
          if (!*(*(a1 + v21) + 16) || (v32 = sub_1B964C280(), sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource), sub_1B8CD2888(&qword_1EBAC54A0, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource), , sub_1B964C5E0(), result = , !v4))
          {
            v22 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
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
              v26 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront;
              swift_beginAccess();
              if (*(a1 + v26) != 1 || (result = sub_1B964C670(), !v5))
              {
                v27 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
                swift_beginAccess();
                v28 = *v27;
                v29 = v27[1];
                v30 = HIBYTE(v29) & 0xF;
                if ((v29 & 0x2000000000000000) == 0)
                {
                  v30 = v28 & 0xFFFFFFFFFFFFLL;
                }

                if (!v30 || (, sub_1B964C700(), result = , !v5))
                {
                  v31 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri;
                  result = swift_beginAccess();
                  if (*(a1 + v31) == 1)
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

  return result;
}

uint64_t sub_1B912BA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_280();
  v9 = v8(v7);
  if (*(v5 + *(v9 + 20)) != *(v4 + *(v9 + 20)))
  {

    v10 = OUTLINED_FUNCTION_177_1();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  sub_1B8CD2888(v12, v13, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B912BB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  MEMORY[0x1EEE9AC00](v4);
  v52[0] = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9078, &qword_1B964D868);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = v52 - v13;
  swift_beginAccess();
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  v17 = v16 == *(a2 + 16) && v15 == *(a2 + 24);
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  swift_beginAccess();
  v20 = v18 == *(a2 + 32) && v19 == *(a2 + 40);
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v21 = *(a1 + 48);
  swift_beginAccess();
  if (v21 != *(a2 + 48))
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  swift_beginAccess();
  v24 = v22 == *(a2 + 56) && v23 == *(a2 + 64);
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  swift_beginAccess();
  v27 = v25 == *(a2 + 72) && v26 == *(a2 + 80);
  if (!v27 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v28 = *(a1 + 88);
  v29 = *(a1 + 96);
  swift_beginAccess();
  v30 = v28 == *(a2 + 88) && v29 == *(a2 + 96);
  if (!v30 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v31 = *(v6 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
  {

    sub_1B8D9207C(v14, &qword_1EBAB9070, &qword_1B964D860);
    if (__swift_getEnumTagSinglePayload(&v8[v31], 1, v4) == 1)
    {
      sub_1B8D9207C(v8, &qword_1EBAB9070, &qword_1B964D860);
LABEL_34:
      swift_beginAccess();
      swift_beginAccess();

      sub_1B8DB5F50();
      v35 = v34;

      if (v35)
      {
        v36 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
        swift_beginAccess();
        v37 = *v36;
        v38 = v36[1];
        v39 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
        swift_beginAccess();
        v40 = v37 == *v39 && v38 == v39[1];
        if (v40 || (sub_1B964C9F0() & 1) != 0)
        {
          v41 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront;
          swift_beginAccess();
          LODWORD(v41) = *(a1 + v41);
          v42 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront;
          swift_beginAccess();
          if (v41 == *(a2 + v42))
          {
            v45 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
            swift_beginAccess();
            v46 = *v45;
            v47 = v45[1];
            v48 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
            swift_beginAccess();
            v49 = v46 == *v48 && v47 == v48[1];
            if (v49 || (sub_1B964C9F0() & 1) != 0)
            {
              v50 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri;
              swift_beginAccess();
              LOBYTE(v50) = *(a1 + v50);

              v51 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri;
              swift_beginAccess();
              LOBYTE(v51) = *(a2 + v51);

              v43 = v50 ^ v51 ^ 1;
              return v43 & 1;
            }
          }
        }
      }

      goto LABEL_41;
    }

    goto LABEL_32;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(&v8[v31], 1, v4) == 1)
  {

    sub_1B8D9207C(v14, &qword_1EBAB9070, &qword_1B964D860);
    sub_1B9114334();
LABEL_32:
    sub_1B8D9207C(v8, &qword_1EBAB9078, &qword_1B964D868);
    goto LABEL_41;
  }

  v32 = v52[0];
  sub_1B9114610();

  v33 = static Apple_Parsec_Siri_Legacy_ImageResource.== infix(_:_:)(v12, v32);
  sub_1B9114334();
  sub_1B8D9207C(v14, &qword_1EBAB9070, &qword_1B964D860);
  sub_1B9114334();
  sub_1B8D9207C(v8, &qword_1EBAB9070, &qword_1B964D860);
  if (v33)
  {
    goto LABEL_34;
  }

LABEL_41:

LABEL_42:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_1B912C340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56A0, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AppPunchOut);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912C3C0(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC53F0, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AppPunchOut);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912C430(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC53F0, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AppPunchOut);

  return sub_1B964C5D0();
}

uint64_t sub_1B912C4BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5330);
  __swift_project_value_buffer(v0, qword_1EBAC5330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "snippet_objects";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "app_punch_out";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Legacy_AnswerSnippet.decodeMessage<A>(decoder:)()
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
      v3 = OUTLINED_FUNCTION_9();
      sub_1B912C7B0(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B912C75C();
    }
  }
}

void sub_1B912C75C()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD2888(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B912C7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  sub_1B8CD2888(&qword_1EBAC53F0, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AppPunchOut);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Legacy_AnswerSnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_186_1();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject(0), sub_1B8CD2888(&qword_1EBAC54B8, type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_SnippetObject), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_153_1(), sub_1B964C730(), !v1))
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(0);
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_32(v2);
    if (v7)
    {
      sub_1B8D9207C(v2, &qword_1EBAC53B0, &qword_1B96923D0);
LABEL_7:
      OUTLINED_FUNCTION_491();
      sub_1B964C290();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_424();
    sub_1B9114610();
    OUTLINED_FUNCTION_64_4();
    sub_1B8CD2888(v8, v9, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AppPunchOut);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_153_1();
    sub_1B964C740();
    OUTLINED_FUNCTION_5_27();
    sub_1B9114334();
    if (!v1)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B912CB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5698, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AnswerSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912CB88(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5640, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AnswerSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912CBF8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC5640, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_AnswerSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B912CC9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_182();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B964D050;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = 6;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  sub_1B964C750();
  OUTLINED_FUNCTION_21_7();
  (*(v15 + 104))(v13, v14);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_SnippetObject.decodeMessage<A>(decoder:)()
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
      sub_1B912CE68(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B912CE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9088, &unk_1B9692400);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5718, &qword_1B96946C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  v24 = v11;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9088, &unk_1B9692400);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    sub_1B8D9207C(v18, &qword_1EBAC5718, &qword_1B96946C0);
    sub_1B9114610();
    sub_1B9114610();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  }

  sub_1B8CD2888(&qword_1EBAC54C8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_Answer);
  v20 = v27;
  sub_1B964C580();
  if (v20)
  {
    v21 = v18;
    return sub_1B8D9207C(v21, &qword_1EBAC5718, &qword_1B96946C0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC5718, &qword_1B96946C0);
    v21 = v16;
    return sub_1B8D9207C(v21, &qword_1EBAC5718, &qword_1B96946C0);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v18, &qword_1EBAC5718, &qword_1B96946C0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9088, &unk_1B9692400);
  sub_1B9114610();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
}

void Apple_Parsec_Siri_Legacy_SnippetObject.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9088, &unk_1B9692400);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  v10 = v0;
  sub_1B8F1B8B8();
  v7 = type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object(0);
  OUTLINED_FUNCTION_178(v5, 1, v7);
  if (v8)
  {
    sub_1B8D9207C(v5, &qword_1EBAB9088, &unk_1B9692400);
LABEL_5:
    type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject(0);
    OUTLINED_FUNCTION_491();
    sub_1B964C290();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_13_20();
  sub_1B9114610();
  sub_1B8CD2888(&qword_1EBAC54C8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_Answer);
  OUTLINED_FUNCTION_597_0();
  OUTLINED_FUNCTION_153_1();
  sub_1B964C740();
  sub_1B9114334();
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Legacy_SnippetObject.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_8();
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9090, &unk_1B964D880);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  v10 = *(v9 + 56);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_50(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_50(v0 + v10);
    if (v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9088, &unk_1B9692400);
LABEL_12:
      type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject(0);
      OUTLINED_FUNCTION_871();
      OUTLINED_FUNCTION_0_60();
      v16 = sub_1B8CD2888(v14, v15, MEMORY[0x1E69AAC10]);
      v12 = OUTLINED_FUNCTION_634(v16);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v0 + v10);
  if (v11)
  {
    sub_1B9114334();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB9090, &unk_1B964D880);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_225_3();
  OUTLINED_FUNCTION_246();
  v13 = static Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object.== infix(_:_:)();
  sub_1B9114334();
  OUTLINED_FUNCTION_254_2();
  sub_1B8D9207C(v0, &qword_1EBAB9088, &unk_1B9692400);
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

uint64_t sub_1B912D7A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5690, type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_SnippetObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912D820(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC54B8, type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_SnippetObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912D890(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC54B8, type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_SnippetObject);

  return sub_1B964C5D0();
}

uint64_t sub_1B912D928()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5360);
  __swift_project_value_buffer(v0, qword_1EBAC5360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lines";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B912DB70()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD2888(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1 + 16, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

void Apple_Parsec_Siri_Legacy_Answer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(0), sub_1B8CD2888(&qword_1EBAC54D8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_Answer.Line), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B912DD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5688, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_Answer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912DDB8(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC54C8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_Answer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912DE28(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC54C8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_Answer);

  return sub_1B964C5D0();
}

uint64_t sub_1B912DEA8()
{
  result = MEMORY[0x1BFADC850](0x656E694C2ELL, 0xE500000000000000);
  qword_1EBAC5378 = 0xD00000000000001FLL;
  unk_1EBAC5380 = 0x80000001B97084F0;
  return result;
}

uint64_t static Apple_Parsec_Siri_Legacy_Answer.Line.protoMessageName.getter()
{
  if (qword_1EBAB7468 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B912DF74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5388);
  __swift_project_value_buffer(v0, qword_1EBAC5388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_resource";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "is_image_inverted";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.decodeMessage<A>(decoder:)()
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
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B912E230(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B912E230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Legacy_Answer.Line.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v8 || (sub_1B964C700(), !v1))
  {
    type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(0);
    sub_1B8F1B8B8();
    v9 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v9, v10, v6);
    if (v11)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9070, &qword_1B964D860);
    }

    else
    {
      OUTLINED_FUNCTION_2_34();
      sub_1B9114610();
      OUTLINED_FUNCTION_33_11();
      sub_1B8CD2888(v12, v13, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_ImageResource);
      sub_1B964C740();
      OUTLINED_FUNCTION_6_21();
      sub_1B9114334();
      if (v1)
      {
        goto LABEL_10;
      }
    }

    if (*(v0 + 16) != 1 || (sub_1B964C670(), !v1))
    {
      sub_1B964C290();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Legacy_Answer.Line.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9078, &qword_1B964D868);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_428();
  v12 = v12 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_17;
  }

  type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(0);
  v13 = *(v8 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  OUTLINED_FUNCTION_50(v2);
  if (!v12)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_50(v2 + v13);
    if (!v14)
    {
      OUTLINED_FUNCTION_2_34();
      sub_1B9114610();
      v15 = OUTLINED_FUNCTION_246();
      static Apple_Parsec_Siri_Legacy_ImageResource.== infix(_:_:)(v15, v16);
      OUTLINED_FUNCTION_141_8();
      sub_1B9114334();
      sub_1B9114334();
      sub_1B8D9207C(v2, &qword_1EBAB9070, &qword_1B964D860);
      if ((v4 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_6_21();
    sub_1B9114334();
LABEL_14:
    sub_1B8D9207C(v2, &qword_1EBAB9078, &qword_1B964D868);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_50(v2 + v13);
  if (!v12)
  {
    goto LABEL_14;
  }

  sub_1B8D9207C(v2, &qword_1EBAB9070, &qword_1B964D860);
LABEL_16:
  if (*(v1 + 16) == *(v0 + 16))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_60();
    v20 = sub_1B8CD2888(v18, v19, MEMORY[0x1E69AAC10]);
    v17 = OUTLINED_FUNCTION_634(v20);
    goto LABEL_18;
  }

LABEL_17:
  v17 = 0;
LABEL_18:
  OUTLINED_FUNCTION_264(v17);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B912E790()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B8CD2888(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B912E84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5680, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_Answer.Line);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912E8CC(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC54D8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_Answer.Line);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912E93C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2888(&qword_1EBAC54D8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_Answer.Line);

  return sub_1B964C5D0();
}

unint64_t sub_1B912EC1C()
{
  result = qword_1EBAC5490;
  if (!qword_1EBAC5490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Legacy_RegionProperty, &type metadata for Apple_Parsec_Siri_Legacy_RegionProperty, v0, v1);
    atomic_store(result, &qword_1EBAC5490);
  }

  return result;
}

unint64_t sub_1B912EC74()
{
  result = qword_1EBAC54F0;
  if (!qword_1EBAC54F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Legacy_RegionProperty, &type metadata for Apple_Parsec_Siri_Legacy_RegionProperty, v0, v1);
    atomic_store(result, &qword_1EBAC54F0);
  }

  return result;
}

unint64_t sub_1B912ECCC()
{
  result = qword_1EBAC54F8;
  if (!qword_1EBAC54F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Legacy_RegionProperty, &type metadata for Apple_Parsec_Siri_Legacy_RegionProperty, v0, v1);
    atomic_store(result, &qword_1EBAC54F8);
  }

  return result;
}

unint64_t sub_1B912ED24()
{
  result = qword_1EBAC5500;
  if (!qword_1EBAC5500)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Legacy_RegionProperty, &type metadata for Apple_Parsec_Siri_Legacy_RegionProperty, v0, v1);
    atomic_store(result, &qword_1EBAC5500);
  }

  return result;
}

unint64_t sub_1B912ED7C()
{
  result = qword_1EBAC5508;
  if (!qword_1EBAC5508)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC5510, &qword_1B9692520);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAC5508);
  }

  return result;
}

uint64_t sub_1B91303AC(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9130448(uint64_t a1)
{
  sub_1B9130564(319, &qword_1ED9CF698, type metadata accessor for Apple_Parsec_Siri_Legacy_PodView, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9130564(319, &qword_1ED9D27D8, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9130564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9130624(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(319);
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

void sub_1B9130744(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9130564(319, &qword_1ED9EC990, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B91308DC(uint64_t a1)
{
  sub_1B9130564(319, &qword_1ED9CF660, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9130564(319, &qword_1ED9ED7D0, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9130A64(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9130564(319, &qword_1ED9D1D48, type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9130564(319, &qword_1ED9D27D8, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B9130BEC(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B9130CA0(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void __swift_store_extra_inhabitant_index_205Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_231();

    __swift_storeEnumTagSinglePayload(v9, v4, v4, v10);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

uint64_t sub_1B9130E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

void sub_1B9130EDC(uint64_t a1)
{
  sub_1B9130564(319, &qword_1ED9CF658, type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9130564(319, &qword_1ED9D27D8, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_128_1();
  if (*(v9 + 84) == v3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v10 = sub_1B964C2B0();
    v11 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v11, v3, v10);
}

uint64_t __swift_store_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_128_1();
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_231();
  }

  else
  {
    v12 = sub_1B964C2B0();
    v11 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v12);
}

void sub_1B9131168(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1B9130564(319, a4, a5, a6);
  if (v7 <= 0x3F)
  {
    v19 = v6;
    v8 = sub_1B964C2B0();
    if (v9 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0(v8, v9, v10, v11, v12, v13, v14, v15, v16, *v17, *&v17[4], 0, v18, v19, v20);
    }
  }
}

uint64_t sub_1B91311D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_102Tm_5_0);
}

uint64_t sub_1B9131230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_103Tm_4_0);
}

uint64_t sub_1B9131298(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

void sub_1B9131388(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B9130564(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9131460(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9130564(319, &qword_1ED9EC990, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9131534(uint64_t a1)
{
  sub_1B9130564(319, &qword_1ED9ED7D0, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9130564(319, &qword_1ED9EC990, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9131694(uint64_t a1)
{
  sub_1B9130564(319, &qword_1ED9EC990, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_22_17(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_83_4()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v0[3] = 0;
  v0[4] = 0xE000000000000000;
  v0[5] = 0;
  v0[6] = 0;
  v0[7] = 0;
}

uint64_t OUTLINED_FUNCTION_118_4@<X0>(unint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3[4] = a3;
  v3[5].n128_u64[1] = 0;
  v3[6].n128_u64[0] = 0;
  v3[5].n128_u64[0] = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void OUTLINED_FUNCTION_164_2(uint64_t a1@<X8>)
{
  v1[6] = 0;
  v1[7] = a1;
  v1[8] = 0;
  v1[9] = a1;
  v1[10] = 0;
  v1[11] = a1;
}

uint64_t OUTLINED_FUNCTION_170_3(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[5] = 0xE000000000000000;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = 0;
  v1[11] = 0xE000000000000000;
  v1[12] = 0;
  v1[13] = 0xE000000000000000;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_179_1()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_193_3()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_211_1()
{

  return sub_1B9114610();
}

uint64_t OUTLINED_FUNCTION_224_3@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_225_3()
{

  return sub_1B9114610();
}

uint64_t OUTLINED_FUNCTION_234_3(uint64_t a1, uint64_t a2)
{
  __swift_getEnumTagSinglePayload(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_246_2@<X0>(uint64_t a1@<X8>)
{
  v2[5] = v1;
  v2[6] = 0;
  v2[7] = a1;
  type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_253_2()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_254_2()
{

  return sub_1B9114334();
}

uint64_t OUTLINED_FUNCTION_255_2()
{

  return sub_1B9114610();
}

uint64_t OUTLINED_FUNCTION_256_2()
{

  return sub_1B9114610();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet.templateItems.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet.snippetObjects.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TemplateItem.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TemplateItem.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(v5);
  v7 = OUTLINED_FUNCTION_115(*(v6 + 24));
  OUTLINED_FUNCTION_166_1(v7, v8);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(v9 + 20);
    if (qword_1EBAB7498 != -1)
    {
      OUTLINED_FUNCTION_207_4(&qword_1EBAB7498);
    }

    *(a1 + v11) = qword_1EBAC57E8;
    v12 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v9);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9060, &qword_1B964D850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_21();
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TemplateItem.value.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB9060, &qword_1B964D850);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_TemplateItem.value.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v9 + 20);
    if (qword_1EBAB7498 != -1)
    {
      OUTLINED_FUNCTION_207_4(&qword_1EBAB7498);
    }

    *(v11 + v18) = qword_1EBAC57E8;
    v19 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, v20, v9);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9060, &qword_1B964D850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_21();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TemplateItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B91325C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91569C8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TemplateItem.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  v1 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(0);
  OUTLINED_FUNCTION_200_3(v1);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(0);
  v2 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_TemplateItem.TypeEnum.allCases.modify()
{
  v0 = OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4(v0, v1);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91326F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_Platform_Watchos_TemplateItem.TypeEnum.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.headerItem.getter()
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v4);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(0);
  OUTLINED_FUNCTION_19_17();
  if (v5)
  {
    OUTLINED_FUNCTION_295_1();
    OUTLINED_FUNCTION_283_3(v6);
    OUTLINED_FUNCTION_113_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v1);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v1);
    result = OUTLINED_FUNCTION_19_17();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC5AD8, &qword_1B96946F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_58_8();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t sub_1B9132818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B913FC40();
  return a7(v7);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.headerItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AD8, &qword_1B96946F8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_162_2(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B913ED14(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_58_8();
  OUTLINED_FUNCTION_237_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeaderItem.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(0);
  OUTLINED_FUNCTION_200_3(v2);
  OUTLINED_FUNCTION_174_4();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v1);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
}

void Apple_Parsec_Siri_Platform_Watchos_Value.headerItem.modify()
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
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_18(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_282_2(v15);
    OUTLINED_FUNCTION_113_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v0);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5AD8, &qword_1B96946F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_58_8();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.subheaderItem.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v3);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem(0);
  OUTLINED_FUNCTION_19_17();
  if (v4)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v5 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
    result = OUTLINED_FUNCTION_11_31(v5);
    if (!v4)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC5AE0, &qword_1B9694700);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_5();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.subheaderItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AE0, &qword_1B9694700);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_162_2(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B913ED14(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_56_5();
  OUTLINED_FUNCTION_237_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_Platform_Watchos_Value.subheaderItem.modify()
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
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_17_18(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
    OUTLINED_FUNCTION_6_19(v14);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5AE0, &qword_1B9694700);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_5();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9132ED4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B913FC40();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B913FC94();
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

uint64_t sub_1B9132FA4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_73_8(0);
  OUTLINED_FUNCTION_119_0(v5 + *a3);
  sub_1B8D92024();
  a4(0);
  v12 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_196();
  sub_1B8D9207C(v15, v16, v4);
  return OUTLINED_FUNCTION_466_0();
}

void sub_1B9133090()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_79();
  v10 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    v13 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B913ED14(v13);
    *(v5 + v10) = v12;
  }

  v4(0);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_55_4(v12 + *v2, &v18);
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.heroImageItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(0);
  v6 = OUTLINED_FUNCTION_19_17();
  if (v7)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    OUTLINED_FUNCTION_283_3(v6);
    type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_245_2();
    v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(v12);
    result = OUTLINED_FUNCTION_11_31(v13);
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5AE8, &qword_1B9694708);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.heroImageItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AE8, &qword_1B9694708);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_162_2(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B913ED14(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_54_8();
  OUTLINED_FUNCTION_237_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  v1 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(0);
  OUTLINED_FUNCTION_200_3(v1);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(v6);
  v7 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Apple_Parsec_Siri_Platform_Watchos_Value.heroImageItem.modify()
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
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_18(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v10 = 0;
    *(v10 + 8) = 1;
    OUTLINED_FUNCTION_282_2(v14);
    type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_233_0();
    v21 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(v20);
    OUTLINED_FUNCTION_6_19(v21);
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5AE8, &qword_1B9694708);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}