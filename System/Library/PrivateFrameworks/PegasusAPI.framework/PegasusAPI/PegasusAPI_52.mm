uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.hasMultiUserContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusContext.clearMultiUserContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9400, &qword_1B96AA6C0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9239418(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.contentRatingRestrictions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_132_2();
    *(a1 + 16) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9408, &qword_1B96AA6C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_197_3();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.contentRatingRestrictions.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9408, &qword_1B96AA6C8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9239418(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_197_3();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(0);
  return OUTLINED_FUNCTION_101_2(v2);
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusContext.contentRatingRestrictions.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  OUTLINED_FUNCTION_248_2(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9408, &qword_1B96AA6C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_197_3();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.hasContentRatingRestrictions.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusContext.clearContentRatingRestrictions()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9408, &qword_1B96AA6C8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9239418(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isPushOffRequest.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.userGroundingNeeded.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.resultCandidateID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isPhoneCallActive.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B92158D0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1(0);
  v7 = *(v3 + *(v6 + 20)) + *a2;
  result = OUTLINED_FUNCTION_6_2(v6);
  v9 = *(v7 + 8);
  *a3 = *v7;
  *(a3 + 8) = v9;
  return result;
}

void sub_1B9215980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_184_0();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v22;
  v33 = *v32;
  v34 = *(v32 + 8);
  v36 = *(v35(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v22 + v36);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v39 = OUTLINED_FUNCTION_40_0();
    v38 = v28(v39);
    *(v31 + v36) = v38;
  }

  v40 = v38 + *v26;
  OUTLINED_FUNCTION_18(v40, &a10);
  *v40 = v33;
  *(v40 + 8) = v34;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.siriResponseMode.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9215AC0()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  OUTLINED_FUNCTION_134_2();
  v6 = v5;
  OUTLINED_FUNCTION_238();
  v8 = *(v7 + 72);
  v9 = *(v0 + 84);
  v10 = *(v0 + 88);
  v11 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v0 + 84);
    v15 = *(v0 + 88);
    v2(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v13 = v1(v16);
    *(v15 + v14) = v13;
  }

  v17 = 48;
  if (v6)
  {
    v17 = 24;
  }

  v18 = v13 + *v4;
  OUTLINED_FUNCTION_18(v18, v0 + v17);
  *v18 = v8;
  *(v18 + 8) = v11;
  OUTLINED_FUNCTION_283();

  free(v19);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isSaeRequest.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.conversationContext.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ConversationContext(0);
  v9 = OUTLINED_FUNCTION_29_14(v8);
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_520_1(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9410, &unk_1B96AA6D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_196_4();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.conversationContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9410, &unk_1B96AA6D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9239418(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_196_4();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ConversationContext(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusContext.conversationContext.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_491();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_306_1(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ConversationContext(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  OUTLINED_FUNCTION_248_2(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v14 = OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    *v9 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_576_1(v14);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v6, &qword_1EBAC9410, &unk_1B96AA6D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_196_4();
    OUTLINED_FUNCTION_461();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.hasConversationContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ConversationContext(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusContext.clearConversationContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9410, &unk_1B96AA6D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9239418(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ConversationContext(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.SiriInteractionType.rawValue.getter()
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

uint64_t sub_1B9216174@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.SiriInteractionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92161A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9284320();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92162C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SiriPegasusContext.SiriInteractionType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Restriction.reason.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Restriction.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Restriction(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_Restriction.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Restriction(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9216504()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B9216588()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_POMMESRequestContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_VisualSearchContext.visualQuery.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(v7);
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    *a1 = xmmword_1B9652FE0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v9 = OUTLINED_FUNCTION_584_0();
    v10 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v9);
    OUTLINED_FUNCTION_249_3(v10);
    v11 = OUTLINED_FUNCTION_245_2();
    v12 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(v11);
    result = OUTLINED_FUNCTION_11_31(v12);
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9418, &unk_1B96B5780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_472();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VisualSearchContext.visualQuery.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC9418, &unk_1B96B5780);
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_122_0();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_VisualSearchContext.visualQuery.modify()
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
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 20));
  v17 = OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    *v11 = xmmword_1B9652FE0;
    OUTLINED_FUNCTION_282_2(v17);
    v19 = OUTLINED_FUNCTION_526_0();
    type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v19);
    v20 = OUTLINED_FUNCTION_87_5();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_233_0();
    v25 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(v24);
    OUTLINED_FUNCTION_6_19(v25);
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9418, &unk_1B96B5780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B92168F0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9239DFC();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC9418, &unk_1B96B5780);
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_505_1();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_194_4();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC9418, &unk_1B96B5780);
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_506_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9216B48()
{
  OUTLINED_FUNCTION_92_0();
  v0(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(0);
  OUTLINED_FUNCTION_10_4(*(v0 + *(v1 + 20)) + 16, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = OUTLINED_FUNCTION_433_1(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B923FB18(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  *(v1 + 48) = *(v0 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9216CC0()
{
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 48);
  if (v3)
  {

    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.setter();
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v0 + 64);
      v9 = *(v0 + 56);
      OUTLINED_FUNCTION_241_3();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B923FB18(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.query.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED38, &unk_1B966BBE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_193_6();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.query.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_455_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_193_6();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.query.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    v13[8] = 0;
    v15 = MEMORY[0x1E69E7CC0];
    *(v13 + 5) = 0;
    *(v13 + 6) = v15;
    v13[14] = 0;
    *(v13 + 8) = v15;
    *(v13 + 9) = v15;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
    OUTLINED_FUNCTION_6_19(v16);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBABED38, &unk_1B966BBE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_193_6();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasQuery.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearQuery()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_433_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_29_14(Context);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_192_6();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_455_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_192_6();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.modify()
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
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v10);
  OUTLINED_FUNCTION_135_0();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_192_6();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasQueryContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_11(Context);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearQueryContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_433_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_274_1(Context);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.userDataShareOptIn.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.featureFlag.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5B98 != -1)
    {
      OUTLINED_FUNCTION_431_0(&qword_1EBAB5B98);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &unk_1EBAC9420, &qword_1B96AA6E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_191_4();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9420, &qword_1B96AA6E0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_455_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_191_4();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v10);
  OUTLINED_FUNCTION_135_0();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5B98 != -1)
    {
      OUTLINED_FUNCTION_431_0(&qword_1EBAB5B98);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &unk_1EBAC9420, &qword_1B96AA6E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_191_4();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasSiriPegasusContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearSiriPegasusContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9420, &qword_1B96AA6E0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_433_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriEnvironment.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.isSiriInternalRequest.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.isDataOnlyRequest.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.trialIdentifiers.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5940 != -1)
    {
      OUTLINED_FUNCTION_430_0(&qword_1EBAB5940);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9428, &qword_1B96AA6E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_189_2();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9428, &qword_1B96AA6E8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_455_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_189_2();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.modify()
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
  type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(v10);
  OUTLINED_FUNCTION_135_0();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5940 != -1)
    {
      OUTLINED_FUNCTION_430_0(&qword_1EBAB5940);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC9428, &qword_1B96AA6E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_189_2();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasClientConversationContextInfo.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearClientConversationContextInfo()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9428, &qword_1B96AA6E8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_433_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.conversationContextBytes.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v4);
  OUTLINED_FUNCTION_254_1(v5);
  OUTLINED_FUNCTION_41();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.requestType.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0(v8);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &unk_1EBAC9430, &qword_1B96AA6F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_187_3();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9430, &qword_1B96AA6F0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_455_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_187_3();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_280_0(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &unk_1EBAC9430, &qword_1B96AA6F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_187_3();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasPommesRequestContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearPommesRequestContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9430, &qword_1B96AA6F0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_433_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.visualSearchContext.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_165_4(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(0);
  OUTLINED_FUNCTION_57(v0);
  if (v6)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
    result = OUTLINED_FUNCTION_11_31(Lite);
    if (!v6)
    {
      return sub_1B8D9207C(v0, &unk_1EBAC9438, &qword_1B96AA6F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.visualSearchContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9438, &qword_1B96AA6F8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_455_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_186_4();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.visualSearchContext.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
    OUTLINED_FUNCTION_6_19(Lite);
    if (!v13)
    {
      sub_1B8D9207C(v0, &unk_1EBAC9438, &qword_1B96AA6F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_186_4();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasVisualSearchContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearVisualSearchContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9438, &qword_1B96AA6F8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_433_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.asrContext.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0(v8);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC9440, &qword_1B96AA700);
    }
  }

  else
  {
    OUTLINED_FUNCTION_185_6();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.asrContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9440, &qword_1B96AA700);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_455_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_185_6();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.asrContext.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_280_0(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9440, &qword_1B96AA700);
    }
  }

  else
  {
    OUTLINED_FUNCTION_185_6();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasAsrContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearAsrContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9440, &qword_1B96AA700);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_433_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.searchConversationContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9448, &qword_1B96AA708);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_455_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_105_6();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.searchConversationContext.modify()
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
  type metadata accessor for Apple_Parsec_Search_SearchConversationContext(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_490_1(MEMORY[0x1E69E7CC0]);
    v14 = OUTLINED_FUNCTION_526_0();
    v15 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v14);
    OUTLINED_FUNCTION_6_19(v15);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9448, &qword_1B96AA708);
    }
  }

  else
  {
    OUTLINED_FUNCTION_105_6();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasSearchConversationContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearSearchConversationContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9448, &qword_1B96AA708);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_433_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B923FB18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t sub_1B9219A24@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
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

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_103_3();
  result = OUTLINED_FUNCTION_10_4(v1 + 16, v3);
  v5 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v5;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v1 + v2);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B92452BC(v10);
    *(v3 + v2) = v9;
  }

  result = OUTLINED_FUNCTION_9_3(v9 + 16, v8);
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_37_3(v3);
  v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v4) + 20);
  *(v1 + 84) = v5;
  v6 = *(v0 + v5);
  OUTLINED_FUNCTION_62_0(v6 + 16);
  v7 = *(v6 + 24);
  *(v1 + 72) = *(v6 + 16);
  *(v1 + 80) = v7;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9219BD8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 72);
  v3 = *(v0 + 84);
  v4 = *(v0 + 88);
  v5 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_245_3();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B92452BC(v10);
    *(v9 + v8) = v7;
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  OUTLINED_FUNCTION_242();

  free(v11);
}

void sub_1B9219C94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryID.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  v9 = OUTLINED_FUNCTION_29_14(v8);
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    OUTLINED_FUNCTION_520_1(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9450, &qword_1B96AA710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_184_5();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.error.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9450, &qword_1B96AA710);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B92452BC(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_184_5();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  OUTLINED_FUNCTION_102_7();
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.error.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_103_3();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v13 = 0;
    v13[1] = 0;
    *(v13 + 16) = -1;
    OUTLINED_FUNCTION_282_2(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9450, &qword_1B96AA710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_184_5();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasError.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.clearError()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9450, &qword_1B96AA710);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B92452BC(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

double Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(0) + 20));
  v2 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore;
  OUTLINED_FUNCTION_10_4(v1 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore, v3);
  return *(v1 + v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.setter(double a1)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(0);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v7 = sub_1B92452BC(v7);
    *(v1 + v2) = v7;
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore;
  result = OUTLINED_FUNCTION_9_3(v7 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore, v6);
  *(v7 + v8) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[10] = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(0) + 20);
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore;
  OUTLINED_FUNCTION_68_0();
  v3[9] = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B921A3A4(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 72);
  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 88);
    v10 = *(v2 + 80);
    OUTLINED_FUNCTION_245_3();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B92452BC(v11);
    *(v10 + v9) = v8;
  }

  v12 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore;
  OUTLINED_FUNCTION_11_4();
  *(v8 + v12) = v4;

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryString.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5B28 != -1)
    {
      OUTLINED_FUNCTION_429_0(&qword_1EBAB5B28);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9458, &qword_1B96AA718);
    }
  }

  else
  {
    OUTLINED_FUNCTION_183_6();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9458, &qword_1B96AA718);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B92452BC(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_183_6();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v10);
  OUTLINED_FUNCTION_135_0();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_103_3();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5B28 != -1)
    {
      OUTLINED_FUNCTION_429_0(&qword_1EBAB5B28);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC9458, &qword_1B96AA718);
    }
  }

  else
  {
    OUTLINED_FUNCTION_183_6();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSiriInstruction.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.clearSiriInstruction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9458, &qword_1B96AA718);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B92452BC(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5AE8 != -1)
    {
      OUTLINED_FUNCTION_428_1(&qword_1EBAB5AE8);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9460, &qword_1B96AA720);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182_4();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9460, &qword_1B96AA720);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B92452BC(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_182_4();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v10);
  OUTLINED_FUNCTION_135_0();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_103_3();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5AE8 != -1)
    {
      OUTLINED_FUNCTION_428_1(&qword_1EBAB5AE8);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC9460, &qword_1B96AA720);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182_4();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasResponseMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.clearResponseMetadata()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9460, &qword_1B96AA720);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B92452BC(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseContext.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7AF0 != -1)
    {
      OUTLINED_FUNCTION_427_1(&qword_1EBAB7AF0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &unk_1EBAC9468, &qword_1B96AA728);
    }
  }

  else
  {
    OUTLINED_FUNCTION_181_7();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9468, &qword_1B96AA728);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B92452BC(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseContext.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(v10);
  OUTLINED_FUNCTION_135_0();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_103_3();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7AF0 != -1)
    {
      OUTLINED_FUNCTION_427_1(&qword_1EBAB7AF0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &unk_1EBAC9468, &qword_1B96AA728);
    }
  }

  else
  {
    OUTLINED_FUNCTION_181_7();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasResponseContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.clearResponseContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9468, &qword_1B96AA728);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B92452BC(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t sub_1B921B5E4()
{
  v0 = OUTLINED_FUNCTION_178_1();
  v2 = v1(v0);
  OUTLINED_FUNCTION_6_2(v2);
  v3 = OUTLINED_FUNCTION_288();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_288();
}

void sub_1B921B6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
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
  v41 = *v40;
  v42 = v40[1];
  *v40 = v24;
  v40[1] = v22;
  sub_1B8D538A0(v41, v42);
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v4);
  OUTLINED_FUNCTION_254_1(v5);
  OUTLINED_FUNCTION_41();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B921B820()
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
      v18 = *(v0 + 72);
      v19 = *(v0 + 64);
      v6(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v20 = OUTLINED_FUNCTION_40_0();
      v17 = v5(v20);
      *(v19 + v18) = v17;
    }

    v21 = (v17 + *v4);
    OUTLINED_FUNCTION_18(v21, v0 + 24);
    v14 = *v21;
    v15 = v21[1];
    *v21 = v3;
    v21[1] = v2;
  }

  sub_1B8D538A0(v14, v15);
  OUTLINED_FUNCTION_283();

  free(v22);
}

void sub_1B921B908()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_167_3();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_31_2();
  v1(v8);
  OUTLINED_FUNCTION_77_0();
  v9 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_521(v9, &v16);
  OUTLINED_FUNCTION_209();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  OUTLINED_FUNCTION_57(v0);
  if (v10)
  {
    *v3 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = OUTLINED_FUNCTION_584_0();
    type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v11);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    OUTLINED_FUNCTION_57(v0);
    if (!v10)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9448, &qword_1B96AA708);
    }
  }

  else
  {
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchConversationContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9448, &qword_1B96AA708);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B92452BC(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_105_6();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchConversationContext.modify()
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
  type metadata accessor for Apple_Parsec_Search_SearchConversationContext(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_103_3();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_490_1(MEMORY[0x1E69E7CC0]);
    v14 = OUTLINED_FUNCTION_526_0();
    v15 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v14);
    OUTLINED_FUNCTION_6_19(v15);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9448, &qword_1B96AA708);
    }
  }

  else
  {
    OUTLINED_FUNCTION_105_6();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSearchConversationContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.clearSearchConversationContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9448, &qword_1B96AA708);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B92452BC(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.serviceDebug.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.rewrittenUtteranceIdx.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v6 = sub_1B964C1A0();
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    sub_1B964C120();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &unk_1EBAC9470, &qword_1B96AA730);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_397();
    return v8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.rewrittenUtteranceIdx.setter()
{
  OUTLINED_FUNCTION_183_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9470, &qword_1B96AA730);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_31_2();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v3);
  if ((OUTLINED_FUNCTION_47(v4) & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B92452BC(v5);
    OUTLINED_FUNCTION_135(v6);
  }

  sub_1B964C1A0();
  OUTLINED_FUNCTION_135_0();
  v7 = OUTLINED_FUNCTION_514();
  v8(v7);
  v9 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v0);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.rewrittenUtteranceIdx.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_194_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_71(v9);
  v2[5] = sub_1B964C1A0();
  OUTLINED_FUNCTION_30_1();
  v2[6] = v10;
  v12 = *(v11 + 64);
  v2[7] = __swift_coroFrameAllocStub(v12);
  v2[8] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_103_3();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__rewrittenUtteranceIdx, v2);
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    sub_1B964C120();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v1, &unk_1EBAC9470, &qword_1B96AA730);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12();
    v14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B921C270()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  v4 = *(*v0 + 32);
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_303();
    v6(v5);
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.rewrittenUtteranceIdx.setter();
    v7 = OUTLINED_FUNCTION_1_0();
    v8(v7);
  }

  else
  {
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.rewrittenUtteranceIdx.setter();
  }

  free(v2);
  free(v1);
  free(v4);
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasRewrittenUtteranceIdx.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = sub_1B964C1A0();
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.clearRewrittenUtteranceIdx()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9470, &qword_1B96AA730);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B92452BC(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = sub_1B964C1A0();
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isQueryDirectQuestion.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B921C6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92842CC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1B90387E4(v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.error.setter(uint64_t *a1)
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

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.message.getter()
{
  OUTLINED_FUNCTION_65_6();
  if (!v1 && (v0 & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_432();
    sub_1B90387FC(v2, v3, 0);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.message.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B903880C(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v0;
  *(v1 + 16) = 0;
  return result;
}

uint64_t (*Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.message.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_65_6();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v7, v8, 0);
  }

  *a1 = v5;
  a1[1] = v6;
  return sub_1B921C8BC;
}

uint64_t sub_1B921C8BC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 16);
  if (a2)
  {

    v6 = OUTLINED_FUNCTION_543();
    sub_1B903880C(v6, v7, v5);
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_543();
    result = sub_1B903880C(v9, v10, v5);
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 0;
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.encryptedMessage.getter()
{
  OUTLINED_FUNCTION_65_6();
  if (!v1 && (v0 & 1) != 0)
  {
    v2 = OUTLINED_FUNCTION_432();
    sub_1B90387FC(v2, v3, 1);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.encryptedMessage.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B903880C(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v0;
  *(v1 + 16) = 1;
  return result;
}

uint64_t (*Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.encryptedMessage.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_65_6();
  if (v4 || (v3 & 1) == 0)
  {
    v6 = 0;
    v5 = 0xC000000000000000;
  }

  else
  {
    v6 = *v1;
    v5 = v1[1];
    v7 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v7, v8, 1);
  }

  *a1 = v6;
  a1[1] = v5;
  return sub_1B921CA94;
}

uint64_t sub_1B921CA94(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 16);
  if (a2)
  {
    v6 = OUTLINED_FUNCTION_288();
    sub_1B8D91FCC(v6, v7);
    v8 = OUTLINED_FUNCTION_303();
    sub_1B903880C(v8, v9, v5);
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 1;
    v10 = OUTLINED_FUNCTION_288();

    return sub_1B8D538A0(v10, v11);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_303();
    result = sub_1B903880C(v13, v14, v5);
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 1;
  }

  return result;
}

uint64_t sub_1B921CB4C()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B921CBD0()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t static Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.OneOf_Error.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v5 = OUTLINED_FUNCTION_461();
      sub_1B90387FC(v5, v6, 1);
      v7 = OUTLINED_FUNCTION_288();
      sub_1B90387FC(v7, v8, 1);
      OUTLINED_FUNCTION_288();
      OUTLINED_FUNCTION_594_1();
      v9 = MEMORY[0x1BFADC060]();
      v10 = OUTLINED_FUNCTION_288();
      sub_1B9038824(v10, v11, 1);
      v12 = OUTLINED_FUNCTION_461();
      v14 = 1;
LABEL_11:
      sub_1B9038824(v12, v13, v14);
      return v9 & 1;
    }

LABEL_5:
    v15 = OUTLINED_FUNCTION_42_0();
    sub_1B90387FC(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_288();
    sub_1B90387FC(v18, v19, v4);
    v20 = OUTLINED_FUNCTION_288();
    sub_1B9038824(v20, v21, v4);
    v22 = OUTLINED_FUNCTION_42_0();
    sub_1B9038824(v22, v23, v24);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

  v26 = *a1;
  if (v3 != *a2 || v2 != *(a2 + 8))
  {
    OUTLINED_FUNCTION_594_1();
    v9 = sub_1B964C9F0();
    v28 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v28, v29, 0);
    v30 = OUTLINED_FUNCTION_85_4();
    sub_1B90387FC(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_85_4();
    sub_1B9038824(v33, v34, v35);
    v12 = OUTLINED_FUNCTION_461();
    v14 = 0;
    goto LABEL_11;
  }

  sub_1B90387FC(v26, v2, 0);
  v36 = OUTLINED_FUNCTION_85_4();
  sub_1B90387FC(v36, v37, v38);
  v39 = OUTLINED_FUNCTION_85_4();
  sub_1B9038824(v39, v40, v41);
  v42 = OUTLINED_FUNCTION_85_4();
  sub_1B9038824(v42, v43, v44);
  return 1;
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.experience.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[6] = v1;
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  v3[7] = __swift_coroFrameAllocStub(v8);
  v3[8] = __swift_coroFrameAllocStub(v8);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  OUTLINED_FUNCTION_66_1(v9);
  OUTLINED_FUNCTION_62_0(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__experience);
  OUTLINED_FUNCTION_319_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_156_7(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &unk_1EBAC9478, &qword_1B96AA738);
LABEL_6:
    v11 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(0);
    OUTLINED_FUNCTION_415_0(v12);
    v13 = OUTLINED_FUNCTION_523_1();
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(v13);
    v14 = OUTLINED_FUNCTION_40_3();
    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_461();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_12_28();
    sub_1B9239E50();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_178_5();
  OUTLINED_FUNCTION_182();
  return sub_1B9239DA8();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(0);
  OUTLINED_FUNCTION_415_0(v3);
  v4 = OUTLINED_FUNCTION_523_1();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(v4);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_306_1(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  *(v0 + 40) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v0 + 48) = v11;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  OUTLINED_FUNCTION_37_0(v7);
  if (v12)
  {
    sub_1B8D9207C(v7, &unk_1EBAC9478, &qword_1B96AA738);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_177_1();
      sub_1B9239DA8();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_12_28();
    sub_1B9239E50();
  }

  v14 = MEMORY[0x1E69E7CC0];
  *v11 = MEMORY[0x1E69E7CC0];
  v11[1] = v14;
  *(v11 + 8) = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_156_7(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    sub_1B8D9207C(v0, &unk_1EBAC9478, &qword_1B96AA738);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_177_7();
      OUTLINED_FUNCTION_182();
      return sub_1B9239DA8();
    }

    OUTLINED_FUNCTION_12_28();
    sub_1B9239E50();
  }

  v10 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience(v10);
  OUTLINED_FUNCTION_102_7();
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void sub_1B921D340()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9478, &qword_1B96AA738);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_31_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v4);
  if ((OUTLINED_FUNCTION_216_1(v5) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v6 = OUTLINED_FUNCTION_40_0();
    *(v0 + v1) = sub_1B924A4A8(v6);
  }

  sub_1B9239DA8();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  OUTLINED_FUNCTION_472();
  swift_storeEnumTagMultiPayload();
  v8 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B921D468()
{
  v0 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  v1(v0);
  OUTLINED_FUNCTION_102_7();
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_306_1(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  *(v0 + 40) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v0 + 48) = v11;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  OUTLINED_FUNCTION_37_0(v7);
  if (v12)
  {
    sub_1B8D9207C(v7, &unk_1EBAC9478, &qword_1B96AA738);
LABEL_7:
    *v11 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_12_28();
    sub_1B9239E50();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_177_7();
  OUTLINED_FUNCTION_177_1();
  sub_1B9239DA8();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B921D79C()
{
  OUTLINED_FUNCTION_167_3();
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_10_4(v0 + *v1, v2);
  return sub_1B8D92024();
}

uint64_t sub_1B921D800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_690();
  sub_1B8D92024();
  return a7(v7);
}

void sub_1B921D8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_184_0();
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  if ((OUTLINED_FUNCTION_216_1(v24) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v25 = OUTLINED_FUNCTION_40_0();
    *(v22 + v23) = sub_1B924A4A8(v25);
  }

  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_183_2();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolveProfileInformation.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[6] = v1;
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  v3[7] = __swift_coroFrameAllocStub(v8);
  v3[8] = __swift_coroFrameAllocStub(v8);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  OUTLINED_FUNCTION_66_1(v9);
  OUTLINED_FUNCTION_62_0(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resolveProfileInformation);
  OUTLINED_FUNCTION_319_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_242();
}

void sub_1B921DA54()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = *v3;
  if (v5)
  {
    v6 = v0;
    v8 = *(v4 + 56);
    v7 = *(v4 + 64);
    OUTLINED_FUNCTION_690();
    OUTLINED_FUNCTION_594_1();
    sub_1B8D92024();
    v6(v8);
    v9 = OUTLINED_FUNCTION_186();
    sub_1B8D9207C(v9, v10, v2);
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_247_2();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B924A4A8(v11);
      OUTLINED_FUNCTION_168(v12);
    }

    v8 = *(v4 + 56);
    v7 = *(v4 + 64);
    OUTLINED_FUNCTION_131();
    swift_beginAccess();
    OUTLINED_FUNCTION_594_1();
    sub_1B8DAA170();
    swift_endAccess();
  }

  free(v7);
  free(v8);
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter()
{
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_319_1();
  sub_1B8D92024();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation(0);
  OUTLINED_FUNCTION_131_7(v0, v6, v5);
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAC9480, &qword_1B96AA740);
    v8 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest(v8);
    OUTLINED_FUNCTION_102_7();
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_225_5();
    return OUTLINED_FUNCTION_470_0();
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9480, &qword_1B96AA740);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924A4A8(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_225_5();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation(0);
  OUTLINED_FUNCTION_131_7(v0, v14, v13);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAC9480, &qword_1B96AA740);
    OUTLINED_FUNCTION_490_1(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    OUTLINED_FUNCTION_225_5();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverUnderstanding.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_156_7(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  v9 = OUTLINED_FUNCTION_29_14(v8);
  if (v10)
  {
    *a1 = xmmword_1B9652FE0;
    a1[1] = xmmword_1B9652FE0;
    a1[2] = xmmword_1B9652FE0;
    a1[3] = xmmword_1B9652FE0;
    OUTLINED_FUNCTION_762(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9488, &qword_1B96AA748);
    }
  }

  else
  {
    OUTLINED_FUNCTION_118_6();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverUnderstanding.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9488, &qword_1B96AA748);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924A4A8(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_118_6();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerUnderstanding.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  a1[1] = xmmword_1B9652FE0;
  a1[2] = xmmword_1B9652FE0;
  a1[3] = xmmword_1B9652FE0;
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  return OUTLINED_FUNCTION_690_0(v1);
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverUnderstanding.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v13 = xmmword_1B9652FE0;
    v13[1] = xmmword_1B9652FE0;
    v13[2] = xmmword_1B9652FE0;
    v13[3] = xmmword_1B9652FE0;
    OUTLINED_FUNCTION_610_1(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9488, &qword_1B96AA748);
    }
  }

  else
  {
    OUTLINED_FUNCTION_118_6();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerUnderstanding.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_156_7(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clearServerUnderstanding()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9488, &qword_1B96AA748);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924A4A8(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_156_7(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v9 = OUTLINED_FUNCTION_245_2();
    Suggestion = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(v9);
    OUTLINED_FUNCTION_249_3(Suggestion);
    v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
    result = OUTLINED_FUNCTION_11_31(v11);
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9490, &qword_1B96AA750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_117_4();
    OUTLINED_FUNCTION_472();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9490, &qword_1B96AA750);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924A4A8(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_117_4();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v13 = 0;
    v13[8] = 1;
    *(v13 + 2) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_280_0(v14);
    v16 = OUTLINED_FUNCTION_233_0();
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(v16);
    v17 = OUTLINED_FUNCTION_87_5();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
    OUTLINED_FUNCTION_6_19(v21);
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9490, &qword_1B96AA750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_117_4();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_156_7(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clearServerSuggestion()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9490, &qword_1B96AA750);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924A4A8(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.responseCacheControl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_156_7(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  v9 = OUTLINED_FUNCTION_29_14(v8);
  if (v10)
  {
    *a1 = 0;
    *(a1 + 4) = 0;
    OUTLINED_FUNCTION_251_0(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9498, &qword_1B96AA758);
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_4();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.responseCacheControl.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9498, &qword_1B96AA758);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924A4A8(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_116_4();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_ResponseCacheControl.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  return OUTLINED_FUNCTION_279();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.responseCacheControl.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v13 = 0;
    v13[1] = 0;
    OUTLINED_FUNCTION_280_0(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9498, &qword_1B96AA758);
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_4();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasResponseCacheControl.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_156_7(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clearResponseCacheControl()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9498, &qword_1B96AA758);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924A4A8(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.userPromptSignals.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_156_7(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(0);
  v9 = OUTLINED_FUNCTION_29_14(v8);
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_520_1(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC94A0, &qword_1B96AA760);
    }
  }

  else
  {
    OUTLINED_FUNCTION_115_9();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.userPromptSignals.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A0, &qword_1B96AA760);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924A4A8(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.userPromptSignals.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_306_1(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(v8);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v0 + 48) = v12;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v13 = OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_576_1(v13);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v7, &qword_1EBAC94A0, &qword_1B96AA760);
    }
  }

  else
  {
    OUTLINED_FUNCTION_115_9();
    OUTLINED_FUNCTION_461();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasUserPromptSignals.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_156_7(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clearUserPromptSignals()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A0, &qword_1B96AA760);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924A4A8(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.appIntent.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_156_7(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
    v9 = OUTLINED_FUNCTION_274_1(v8);
    OUTLINED_FUNCTION_520_1(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC94A8, &qword_1B96AA768);
    }
  }

  else
  {
    OUTLINED_FUNCTION_114_8();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.appIntent.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A8, &qword_1B96AA768);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924A4A8(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_114_8();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.appIntent.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
    OUTLINED_FUNCTION_533_0();
    OUTLINED_FUNCTION_83();
    v18 = __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_282_2(v18);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC94A8, &qword_1B96AA768);
    }
  }

  else
  {
    OUTLINED_FUNCTION_114_8();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasAppIntent.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_156_7(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clearAppIntent()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A8, &qword_1B96AA768);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924A4A8(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.sageExperience.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_156_7(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = v9;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = OUTLINED_FUNCTION_245_2();
    v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView(v10);
    result = OUTLINED_FUNCTION_11_31(v11);
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC94B0, &qword_1B96AA770);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113_9();
    OUTLINED_FUNCTION_472();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.sageExperience.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94B0, &qword_1B96AA770);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924A4A8(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_113_9();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SageExperience.init()()
{
  v0 = OUTLINED_FUNCTION_578_1(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(v0);
  OUTLINED_FUNCTION_279();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.sageExperience.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    v16 = MEMORY[0x1E69E7CC0];
    *v13 = MEMORY[0x1E69E7CC0];
    v13[1] = v16;
    OUTLINED_FUNCTION_280_0(v14);
    v17 = OUTLINED_FUNCTION_233_0();
    v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView(v17);
    OUTLINED_FUNCTION_6_19(v18);
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC94B0, &qword_1B96AA770);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113_9();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasSageExperience.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_156_7(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clearSageExperience()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94B0, &qword_1B96AA770);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_247_2();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924A4A8(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void static Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(0);
  v5 = OUTLINED_FUNCTION_183(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v6 = OUTLINED_FUNCTION_324_1();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_512_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94B8, &qword_1B96AA778);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_139();
  sub_1B9239DFC();
  sub_1B9239DFC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B9239DFC();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_178_5();
      sub_1B9239DA8();
      OUTLINED_FUNCTION_257();
      static Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.== infix(_:_:)();
      sub_1B9239E50();
      OUTLINED_FUNCTION_196();
      sub_1B9239E50();
      OUTLINED_FUNCTION_12_28();
      sub_1B9239E50();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_464();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_167_7();
  sub_1B9239DFC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_7:
    sub_1B9239E50();
    sub_1B8D9207C(v0, &qword_1EBAC94B8, &qword_1B96AA778);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_177_7();
  sub_1B9239DA8();
  sub_1B8D66EA4(*v2, *v1);
  if (v11)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_75();
    sub_1B8CD2D08(v12, v13, MEMORY[0x1E69AAC10]);
    sub_1B964C850();
  }

  OUTLINED_FUNCTION_408_0();
  sub_1B9239E50();
  OUTLINED_FUNCTION_128();
  sub_1B9239E50();
  OUTLINED_FUNCTION_12_28();
  sub_1B9239E50();
LABEL_10:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94C0, &qword_1B96AA780);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94C8, &qword_1B96AA788);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  sub_1B8D842B4(*v1, *v0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_15;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(0);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  if (!v18)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8D92024();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_178(v15, v16, v17);
    if (!v18)
    {
      OUTLINED_FUNCTION_24_21();
      sub_1B9239DA8();
      OUTLINED_FUNCTION_196();
      static Apple_Parsec_Siri_V2alpha_SingleExperience.== infix(_:_:)();
      v20 = v19;
      sub_1B9239E50();
      OUTLINED_FUNCTION_531_0();
      sub_1B9239E50();
      sub_1B8D9207C(v2, &qword_1EBAC94C0, &qword_1B96AA780);
      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_218_2();
    sub_1B9239E50();
LABEL_10:
    sub_1B8D9207C(v2, &qword_1EBAC94C8, &qword_1B96AA788);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v12, v13, v14);
  if (!v18)
  {
    goto LABEL_10;
  }

  sub_1B8D9207C(v2, &qword_1EBAC94C0, &qword_1B96AA780);
LABEL_12:
  sub_1B8D8463C();
  if ((v21 & 1) != 0 && *(v1 + 16) == *(v0 + 16) && *(v1 + 17) == *(v0 + 17))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_75();
    v25 = sub_1B8CD2D08(v23, v24, MEMORY[0x1E69AAC10]);
    v22 = OUTLINED_FUNCTION_634(v25);
    goto LABEL_16;
  }

LABEL_15:
  v22 = 0;
LABEL_16:
  OUTLINED_FUNCTION_264(v22);
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation.== infix(_:_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94D0, &qword_1B96AA790);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_139();
  v5 = (v1 + *(v4 + 56));
  sub_1B9239DFC();
  OUTLINED_FUNCTION_543();
  sub_1B9239DFC();
  sub_1B8D83EF4(*v1, *v5);
  if (v6)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest(0);
    OUTLINED_FUNCTION_871();
    OUTLINED_FUNCTION_0_75();
    sub_1B8CD2D08(v7, v8, MEMORY[0x1E69AAC10]);
    sub_1B964C850();
  }

  sub_1B9239E50();
  OUTLINED_FUNCTION_472();
  sub_1B9239E50();
  return OUTLINED_FUNCTION_466_0();
}

void sub_1B922032C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusPerfMetrics.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  v9 = OUTLINED_FUNCTION_29_14(v8);
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0;
    OUTLINED_FUNCTION_251_0(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC94D8, &qword_1B96AA798);
    }
  }

  else
  {
    OUTLINED_FUNCTION_216_4();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusPerfMetrics.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94D8, &qword_1B96AA798);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924F960(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_216_4();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  *a1 = 0;
  a1[1] = 0;
  return OUTLINED_FUNCTION_279();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusPerfMetrics.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v15 = OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0;
    OUTLINED_FUNCTION_280_0(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC94D8, &qword_1B96AA798);
    }
  }

  else
  {
    OUTLINED_FUNCTION_216_4();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.hasPegasusPerfMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.clearPegasusPerfMetrics()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94D8, &qword_1B96AA798);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924F960(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.latencyInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    *a1 = 0;
    a1[1] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v9 = OUTLINED_FUNCTION_245_2();
    v10 = type metadata accessor for Latencyinfopb_BanyanLatencyInfo(v9);
    result = OUTLINED_FUNCTION_11_31(v10);
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC94E0, &qword_1B96AA7A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.latencyInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E0, &qword_1B96AA7A0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924F960(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_215_3();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.latencyInfo.modify()
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
  type metadata accessor for Latencyinfopb_KfedLatencyInfo(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v15 = OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0;
    OUTLINED_FUNCTION_280_0(v15);
    v17 = OUTLINED_FUNCTION_233_0();
    v18 = type metadata accessor for Latencyinfopb_BanyanLatencyInfo(v17);
    OUTLINED_FUNCTION_6_19(v18);
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC94E0, &qword_1B96AA7A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_215_3();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.hasLatencyInfo.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.clearLatencyInfo()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E0, &qword_1B96AA7A0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924F960(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  v9 = OUTLINED_FUNCTION_29_14(v8);
  if (v10)
  {
    *a1 = xmmword_1B9652FE0;
    a1[1] = xmmword_1B9652FE0;
    OUTLINED_FUNCTION_251_0(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC94E8, &qword_1B96AA7A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_212_4();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E8, &qword_1B96AA7A8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924F960(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_212_4();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  a1[1] = xmmword_1B9652FE0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  return OUTLINED_FUNCTION_279();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v15 = OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v10 = xmmword_1B9652FE0;
    v10[1] = xmmword_1B9652FE0;
    OUTLINED_FUNCTION_280_0(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC94E8, &qword_1B96AA7A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_212_4();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.hasPegasusClientEventLog.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.clearPegasusClientEventLog()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E8, &qword_1B96AA7A8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B924F960(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusSelfOpaquePayloads.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.isFallbackTriggered.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.mathOperationContainsRandom.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainUseCaseMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B9221A84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ResponseContext.multiUserResponseContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
  v8 = OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    OUTLINED_FUNCTION_251_0(v8);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC94F0, &qword_1B96AA7B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_108_7();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ResponseContext.multiUserResponseContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F0, &qword_1B96AA7B0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9252FBC(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_108_7();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_ResponseContext.multiUserResponseContext.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v15 = OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v10 = 0;
    *(v10 + 8) = 1;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0xE000000000000000;
    OUTLINED_FUNCTION_280_0(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC94F0, &qword_1B96AA7B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_108_7();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_ResponseContext.hasMultiUserResponseContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ResponseContext.clearMultiUserResponseContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F0, &qword_1B96AA7B0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9252FBC(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_ResponseContext.audioResponseContext.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(v5);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  OUTLINED_FUNCTION_57(v0);
  if (v6)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
    result = OUTLINED_FUNCTION_11_31(v7);
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC94F8, &qword_1B96AA7B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_107_4();
    OUTLINED_FUNCTION_472();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ResponseContext.audioResponseContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F8, &qword_1B96AA7B8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9252FBC(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_107_4();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B9222384()
{
  OUTLINED_FUNCTION_468();
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v1(0);
  v0(0);
  v2 = OUTLINED_FUNCTION_87_5();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Apple_Parsec_Siri_V2alpha_ResponseContext.audioResponseContext.modify()
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
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
    OUTLINED_FUNCTION_6_19(v15);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC94F8, &qword_1B96AA7B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_107_4();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_ResponseContext.hasAudioResponseContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ResponseContext.clearAudioResponseContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F8, &qword_1B96AA7B8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9252FBC(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioResponseContext.queueStateInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(v7);
  OUTLINED_FUNCTION_100_0();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9500, &unk_1B96AA7C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioResponseContext.queueStateInfo.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC9500, &unk_1B96AA7C0);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_122_0();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_AudioResponseContext.queueStateInfo.modify()
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
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 20));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    *v11 = 0;
    *(v11 + 8) = 1;
    *(v11 + 16) = 0;
    *(v11 + 24) = 1;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    *(v11 + 48) = 0;
    *(v11 + 56) = sub_1B964C7B0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
    OUTLINED_FUNCTION_6_19(v18);
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9500, &unk_1B96AA7C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9222960()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9239DFC();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC9500, &unk_1B96AA7C0);
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_505_1();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_206_3();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC9500, &unk_1B96AA7C0);
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_506_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t sub_1B9222A70()
{
  OUTLINED_FUNCTION_250_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_225_0();
  sub_1B8D92024();
  v7 = v0(0);
  OUTLINED_FUNCTION_131_7(v2, v8, v7);
  v9 = OUTLINED_FUNCTION_214_4();
  sub_1B8D9207C(v9, v10, v11);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9222B4C()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v2(v1);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.valueLabel.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9222D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B927AD6C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest(0);
  return OUTLINED_FUNCTION_690_0(v3);
}

uint64_t sub_1B9222E8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.ReferenceType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogAct.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogAct.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t sub_1B9222FF4()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B9223078()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerUnderstanding.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ResponseCacheControl.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(v7);
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v9 = OUTLINED_FUNCTION_584_0();
    v10 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(v9);
    result = OUTLINED_FUNCTION_11_31(v10);
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC94C0, &qword_1B96AA780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_21();
    OUTLINED_FUNCTION_472();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAC94C0, &qword_1B96AA780);
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_122_0();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_SingleExperience.init()()
{
  v0 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(v0);
  OUTLINED_FUNCTION_102_7();
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v1 = OUTLINED_FUNCTION_591_0();
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(v1);
  v2 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.modify()
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
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 36));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_490_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_526_0();
    v18 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(v17);
    OUTLINED_FUNCTION_6_19(v18);
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC94C0, &qword_1B96AA780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_21();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B92234F0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9239DFC();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC94C0, &qword_1B96AA780);
    OUTLINED_FUNCTION_24_21();
    OUTLINED_FUNCTION_505_1();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_218_2();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC94C0, &qword_1B96AA780);
    OUTLINED_FUNCTION_24_21();
    OUTLINED_FUNCTION_506_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_SingleExperience.resultEntity.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(v7);
  OUTLINED_FUNCTION_100_0();
  v8 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CA4A8 != -1)
    {
      OUTLINED_FUNCTION_149_2(&qword_1ED9CA4A8);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8FC0, &unk_1B964D7B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_19();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SingleExperience.resultEntity.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB8FC0, &unk_1B964D7B0);
  OUTLINED_FUNCTION_22_19();
  OUTLINED_FUNCTION_122_0();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_SingleExperience.resultEntity.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CA4A8 != -1)
    {
      OUTLINED_FUNCTION_149_2(&qword_1ED9CA4A8);
    }

    OUTLINED_FUNCTION_57_2();
    if (v10 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8FC0, &unk_1B964D7B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_19();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B92239E4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9239DFC();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8FC0, &unk_1B964D7B0);
    OUTLINED_FUNCTION_22_19();
    OUTLINED_FUNCTION_505_1();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_200_5();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8FC0, &unk_1B964D7B0);
    OUTLINED_FUNCTION_22_19();
    OUTLINED_FUNCTION_506_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_SingleExperience.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientDrivenExperience.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component(0);
  v5 = OUTLINED_FUNCTION_753();
  OUTLINED_FUNCTION_131_7(v5, v6, v7);
  if (v8)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8FF8, &unk_1B96AA7D0);
    v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
    OUTLINED_FUNCTION_274_1(v9);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(0);
    OUTLINED_FUNCTION_102_7();
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    return OUTLINED_FUNCTION_279();
  }

  else
  {
    OUTLINED_FUNCTION_77_9();
    OUTLINED_FUNCTION_288();
    return sub_1B9239DA8();
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.init()()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_274_1(v0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(0);
  OUTLINED_FUNCTION_102_7();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  return OUTLINED_FUNCTION_279();
}

void Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component(0);
  v15 = OUTLINED_FUNCTION_76_2(v14);
  OUTLINED_FUNCTION_131_7(v15, v16, v17);
  if (v18)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8FF8, &unk_1B96AA7D0);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
    v19 = OUTLINED_FUNCTION_231();
    v23 = OUTLINED_FUNCTION_255_3(v19, v20, v21, v22);
    v25 = (v10 + v24);
    *v25 = 0;
    v25[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_689_0(v23);
  }

  else
  {
    OUTLINED_FUNCTION_77_9();
    OUTLINED_FUNCTION_128();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_242();
}

void sub_1B9223F14()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &qword_1EBAB8FF8, &unk_1B96AA7D0);
    OUTLINED_FUNCTION_77_9();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB8FF8, &unk_1B96AA7D0);
    OUTLINED_FUNCTION_77_9();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientComponent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t static Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FF0, &unk_1B964D7E0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_116();
  sub_1B9239DFC();
  sub_1B9239DFC();
  static Apple_Parsec_Siri_V2alpha_DomainClientComponent.== infix(_:_:)();
  v3 = v2;
  sub_1B9239E50();
  OUTLINED_FUNCTION_74_7();
  sub_1B9239E50();
  return v3 & 1;
}

void static Apple_Parsec_Siri_V2alpha_DomainClientComponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_8();
  v5 = OUTLINED_FUNCTION_686();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_79();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE8, &qword_1B964D7D8);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_239_3();
  OUTLINED_FUNCTION_313_1();
  OUTLINED_FUNCTION_50(v2);
  if (!v11)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8D92024();
    OUTLINED_FUNCTION_70_9();
    if (!v11)
    {
      OUTLINED_FUNCTION_361_1();
      OUTLINED_FUNCTION_246();
      static Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent.== infix(_:_:)();
      v14 = v13;
      sub_1B9239E50();
      OUTLINED_FUNCTION_467();
      sub_1B9239E50();
      sub_1B8D9207C(v2, &qword_1EBAB8FE0, &qword_1B964D7D0);
      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_76_5();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v2, &qword_1EBAB8FE8, &qword_1B964D7D8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_70_9();
  if (!v11)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAB8FE0, &qword_1B964D7D0);
LABEL_12:
  v15 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(0) + 20);
  v16 = *(v1 + v15);
  v17 = *(v1 + v15 + 8);
  v18 = (v0 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (v19 || (sub_1B964C9F0() & 1) != 0)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_75();
    v22 = sub_1B8CD2D08(v20, v21, MEMORY[0x1E69AAC10]);
    v12 = OUTLINED_FUNCTION_634(v22);
    goto LABEL_18;
  }

LABEL_10:
  v12 = 0;
LABEL_18:
  OUTLINED_FUNCTION_264(v12);
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.audioClientComponent.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_52_10();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v9 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(0) + 20);
  if (qword_1EBAB4178 != -1)
  {
    OUTLINED_FUNCTION_440_0(&qword_1EBAB4178);
  }

  *(v0 + v9) = qword_1EBAB4180;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.audioClientComponent.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB8FE0, &qword_1B964D7D0);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_V2alpha_DomainClientComponent.audioClientComponent.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_7(v14);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_8_22(v15);
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_52_10();
      OUTLINED_FUNCTION_128();
      sub_1B9239DA8();
      goto LABEL_9;
    }

    sub_1B9239E50();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v18 = *(v0 + 20);
  if (qword_1EBAB4178 != -1)
  {
    OUTLINED_FUNCTION_440_0(&qword_1EBAB4178);
  }

  *(v11 + v18) = qword_1EBAB4180;

LABEL_9:
  OUTLINED_FUNCTION_242();
}

void sub_1B9224714()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &qword_1EBAB8FE0, &qword_1B964D7D0);
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB8FE0, &qword_1B964D7D0);
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.videoClientComponent.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(0) + 20);
  if (qword_1EBAB7878 != -1)
  {
    OUTLINED_FUNCTION_439_1(&qword_1EBAB7878);
  }

  *(v0 + v10) = qword_1EBAC7C08;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.videoClientComponent.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB8FE0, &qword_1B964D7D0);
  OUTLINED_FUNCTION_51_13();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_V2alpha_DomainClientComponent.videoClientComponent.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_7(v14);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_8_22(v15);
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_128();
      sub_1B9239DA8();
      goto LABEL_10;
    }

    sub_1B9239E50();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v18 = *(v0 + 20);
  if (qword_1EBAB7878 != -1)
  {
    OUTLINED_FUNCTION_439_1(&qword_1EBAB7878);
  }

  *(v11 + v18) = qword_1EBAC7C08;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

void sub_1B9224B00()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &qword_1EBAB8FE0, &qword_1B964D7D0);
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB8FE0, &qword_1B964D7D0);
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.geoClientComponent.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_50_12();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  *v0 = 0;
  *(v0 + 8) = 1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  OUTLINED_FUNCTION_102_7();
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  v14 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.geoClientComponent.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB8FE0, &qword_1B964D7D0);
  OUTLINED_FUNCTION_50_12();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_V2alpha_DomainClientComponent.geoClientComponent.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8FE0, &qword_1B964D7D0);
LABEL_7:
    *v10 = 0;
    *(v10 + 8) = 1;
    OUTLINED_FUNCTION_101_4();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B9239E50();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_50_12();
  OUTLINED_FUNCTION_128();
  sub_1B9239DA8();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9224F04()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &qword_1EBAB8FE0, &qword_1B964D7D0);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB8FE0, &qword_1B964D7D0);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.appsClientComponent.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_15_15(v5);
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_49_14();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  v9 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(v9);
  OUTLINED_FUNCTION_102_7();
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.appsClientComponent.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB8FE0, &qword_1B964D7D0);
  OUTLINED_FUNCTION_49_14();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_V2alpha_DomainClientComponent.appsClientComponent.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8FE0, &qword_1B964D7D0);
LABEL_7:
    *v10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_101_4();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B9239E50();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49_14();
  OUTLINED_FUNCTION_128();
  sub_1B9239DA8();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B922529C()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &qword_1EBAB8FE0, &qword_1B964D7D0);
    OUTLINED_FUNCTION_49_14();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB8FE0, &qword_1B964D7D0);
    OUTLINED_FUNCTION_49_14();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.deviceExpertClientComponent.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_15_15(v5);
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_48_11();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);
  OUTLINED_FUNCTION_274_1(v9);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0);
  OUTLINED_FUNCTION_102_7();
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.deviceExpertClientComponent.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB8FE0, &qword_1B964D7D0);
  OUTLINED_FUNCTION_48_11();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_V2alpha_DomainClientComponent.deviceExpertClientComponent.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_175_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_43_7(v12);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_8_22(v13);
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8FE0, &qword_1B964D7D0);
LABEL_7:
    type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);
    v16 = OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_255_3(v16, v17, v18, v19);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1B9239E50();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_48_11();
  OUTLINED_FUNCTION_128();
  sub_1B9239DA8();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B922563C()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &qword_1EBAB8FE0, &qword_1B964D7D0);
    OUTLINED_FUNCTION_48_11();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB8FE0, &qword_1B964D7D0);
    OUTLINED_FUNCTION_48_11();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(0);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.setter()
{
  v3 = OUTLINED_FUNCTION_112();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(v3);
  OUTLINED_FUNCTION_479_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(v0);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v59 = v2;
  v60 = v3;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0);
  v5 = OUTLINED_FUNCTION_183(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v56 = v6;
  v7 = OUTLINED_FUNCTION_201();
  v52 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(v7);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v58 = v9;
  v10 = OUTLINED_FUNCTION_201();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v10);
  v12 = OUTLINED_FUNCTION_183(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  v55 = v13;
  v14 = OUTLINED_FUNCTION_201();
  v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v14);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21();
  v57 = v16;
  v17 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v17);
  OUTLINED_FUNCTION_135_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_21();
  v53 = v19;
  v20 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(v20);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_66();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = (&v51 - v24);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_442();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v51 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v51 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9508, &unk_1B96AA7E0);
  OUTLINED_FUNCTION_183(v32);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_139();
  sub_1B9239DFC();
  sub_1B9239DFC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_69_6();
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_573_1() != 1)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_51_13();
      v41 = v57;
      sub_1B9239DA8();
      if (*&v29[*(v54 + 20)] == *(v41 + *(v54 + 20)) || (, , OUTLINED_FUNCTION_543(), sub_1B91C7ECC(), v43 = v42, , , (v43 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_75();
        sub_1B8CD2D08(v44, v45, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_393_0();
      sub_1B9239E50();
      goto LABEL_27;
    case 2u:
      OUTLINED_FUNCTION_69_6();
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_573_1() == 2)
      {
        OUTLINED_FUNCTION_50_12();
        sub_1B9239DA8();
        v34 = OUTLINED_FUNCTION_541_0();
        static Apple_Parsec_Siri_V2alpha_GeoClientComponent.== infix(_:_:)(v34, v35);
        sub_1B9239E50();
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_464();
      goto LABEL_20;
    case 3u:
      OUTLINED_FUNCTION_69_6();
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_573_1() == 3)
      {
        OUTLINED_FUNCTION_49_14();
        v36 = v58;
        sub_1B9239DA8();
        sub_1B8D67E68(*v25, *v36);
        if (v37)
        {
          v38 = *(v52 + 20);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_75();
          sub_1B8CD2D08(v39, v40, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_731(v25 + v38);
        }

        OUTLINED_FUNCTION_391_0();
        sub_1B9239E50();
LABEL_27:
        sub_1B9239E50();
        OUTLINED_FUNCTION_76_5();
        sub_1B9239E50();
      }

      else
      {
        OUTLINED_FUNCTION_171_2();
LABEL_20:
        sub_1B9239E50();
        sub_1B8D9207C(v0, &qword_1EBAC9508, &unk_1B96AA7E0);
      }

      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_283();
      return;
    case 4u:
      OUTLINED_FUNCTION_69_6();
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_573_1() != 4)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_48_11();
      sub_1B9239DA8();
      static Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.== infix(_:_:)();
      sub_1B9239E50();
      goto LABEL_27;
    default:
      OUTLINED_FUNCTION_69_6();
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_573_1())
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_52_10();
      v46 = v53;
      sub_1B9239DA8();
      if (*&v31[*(v1 + 20)] == *(v46 + *(v1 + 20)) || (, , sub_1B91A1B74(), v48 = v47, , , (v48 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_75();
        sub_1B8CD2D08(v49, v50, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_439_0();
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_394_0();
      sub_1B9239E50();
      goto LABEL_27;
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_1_63();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v9 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0) + 20);
  if (qword_1ED9C97B0 != -1)
  {
    OUTLINED_FUNCTION_93_7(&qword_1ED9C97B0);
  }

  *(v0 + v9) = qword_1ED9C97B8;
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.setter()
{
  sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  OUTLINED_FUNCTION_1_63();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_7(v14);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_8_22(v15);
  if (v16)
  {
    sub_1B8D9207C(v1, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_1_63();
      OUTLINED_FUNCTION_128();
      sub_1B9239DA8();
      goto LABEL_9;
    }

    sub_1B9239E50();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v18 = *(v0 + 20);
  if (qword_1ED9C97B0 != -1)
  {
    OUTLINED_FUNCTION_93_7(&qword_1ED9C97B0);
  }

  *(v11 + v18) = qword_1ED9C97B8;

LABEL_9:
  OUTLINED_FUNCTION_242();
}

void sub_1B92262C0()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_1_63();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_21_17();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_1_63();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.catDialog.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_47_11();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  OUTLINED_FUNCTION_92_0();
  *(v0 + 32) = 0;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent(0);
  return OUTLINED_FUNCTION_101_2(v10);
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.catDialog.setter()
{
  sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  OUTLINED_FUNCTION_47_11();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_CatDialogComponent.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent(0);
  return OUTLINED_FUNCTION_101_2(v2);
}

void Apple_Parsec_Siri_V2alpha_ExperienceComponent.catDialog.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    *(v10 + 16) = 0;
    *(v10 + 24) = v17;
    *(v10 + 32) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9239E50();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_47_11();
  OUTLINED_FUNCTION_128();
  sub_1B9239DA8();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9226680()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_47_11();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_47_11();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.layoutExperience.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_46_11();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  v10 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  *(v0 + 8) = v10;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(0);
  OUTLINED_FUNCTION_415_0(v11);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);
  v16 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.layoutExperience.setter()
{
  sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  OUTLINED_FUNCTION_46_11();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(0);
  OUTLINED_FUNCTION_415_0(v3);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);
  v8 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void Apple_Parsec_Siri_V2alpha_ExperienceComponent.layoutExperience.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
LABEL_7:
    v17 = MEMORY[0x1E69E7CC0];
    *v10 = MEMORY[0x1E69E7CC0];
    *(v10 + 8) = v17;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);
    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B9239E50();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_46_11();
  OUTLINED_FUNCTION_128();
  sub_1B9239DA8();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9226B20()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_46_11();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_46_11();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.domainObjectComponent.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_15_15(v5);
  if (v6)
  {
    sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_45_12();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_274_1(v9);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent(0);
  OUTLINED_FUNCTION_102_7();
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.domainObjectComponent.setter()
{
  sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  OUTLINED_FUNCTION_45_12();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1B9226DB0(void (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  a2(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_ExperienceComponent.domainObjectComponent.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_175_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_43_7(v12);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_8_22(v13);
  if (v14)
  {
    sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
LABEL_7:
    type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component(0);
    v16 = OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_255_3(v16, v17, v18, v19);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B9239E50();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_45_12();
  OUTLINED_FUNCTION_128();
  sub_1B9239DA8();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9226F44()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_45_12();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_45_12();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.directExecutionComponent.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_15_15(v5);
  if (v6)
  {
    sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_44_11();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  v9 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent(v9);
  OUTLINED_FUNCTION_102_7();
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.directExecutionComponent.setter()
{
  sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  OUTLINED_FUNCTION_44_11();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_V2alpha_ExperienceComponent.directExecutionComponent.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
LABEL_7:
    *v10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_101_4();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1B9239E50();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_44_11();
  OUTLINED_FUNCTION_128();
  sub_1B9239DA8();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B92272F4()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_44_11();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_44_11();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.delayedActionComponent.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_43_13();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  v10 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  *(v0 + 8) = v10;
  *(v0 + 16) = 0;
  *(v0 + 20) = 0;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(0);
  OUTLINED_FUNCTION_415_0(v11);
  v12 = OUTLINED_FUNCTION_523_1();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(v12);
  v13 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.delayedActionComponent.setter()
{
  sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  OUTLINED_FUNCTION_43_13();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_DelayedActionComponent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(0);
  OUTLINED_FUNCTION_415_0(v3);
  v4 = OUTLINED_FUNCTION_523_1();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(v4);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Siri_V2alpha_ExperienceComponent.delayedActionComponent.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
LABEL_7:
    v17 = MEMORY[0x1E69E7CC0];
    *v10 = MEMORY[0x1E69E7CC0];
    *(v10 + 8) = v17;
    *(v10 + 16) = 0;
    *(v10 + 20) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1B9239E50();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_13();
  OUTLINED_FUNCTION_128();
  sub_1B9239DA8();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9227724()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_43_13();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_43_13();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.sayItComponent.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_42_12();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  OUTLINED_FUNCTION_92_0();
  *(v0 + 32) = 0;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent(0);
  return OUTLINED_FUNCTION_690_0(v10);
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.sayItComponent.setter()
{
  sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  OUTLINED_FUNCTION_42_12();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItComponent.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent(0);
  return OUTLINED_FUNCTION_690_0(v2);
}

void Apple_Parsec_Siri_V2alpha_ExperienceComponent.sayItComponent.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    *(v10 + 16) = 0;
    *(v10 + 24) = v17;
    *(v10 + 32) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1B9239E50();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_42_12();
  OUTLINED_FUNCTION_128();
  sub_1B9239DA8();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9227AF0()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.buttonViewComponent.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_15_15(v5);
  if (v6)
  {
    sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_41_18();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  OUTLINED_FUNCTION_132_2();
  v9 = OUTLINED_FUNCTION_582_1(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent(v9);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.buttonViewComponent.setter()
{
  sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  OUTLINED_FUNCTION_41_18();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_ButtonViewComponent.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1 = OUTLINED_FUNCTION_582_1(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent(v1);
  return OUTLINED_FUNCTION_279();
}

void Apple_Parsec_Siri_V2alpha_ExperienceComponent.buttonViewComponent.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    *(v10 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_689_0(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1B9239E50();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_41_18();
  OUTLINED_FUNCTION_128();
  sub_1B9239DA8();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9227EBC()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_41_18();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_41_18();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.disambiguationListComponent.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_15_15(v5);
  if (v6)
  {
    sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_40_12();
      OUTLINED_FUNCTION_288();
      return sub_1B9239DA8();
    }

    sub_1B9239E50();
  }

  v9 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent(v9);
  OUTLINED_FUNCTION_102_7();
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.disambiguationListComponent.setter()
{
  sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_432();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_V2alpha_ExperienceComponent.disambiguationListComponent.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
LABEL_7:
    *v10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_101_4();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1B9239E50();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_128();
  sub_1B9239DA8();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B922826C()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9239DFC();
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_40_12();
    OUTLINED_FUNCTION_439_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4, &unk_1EBAB8FD0, &qword_1B964D7C0);
    OUTLINED_FUNCTION_40_12();
    OUTLINED_FUNCTION_1_0();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent(v0);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v85 = v2;
  v86 = v3;
  v71[2] = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v80 = v5;
  v6 = OUTLINED_FUNCTION_201();
  v71[0] = type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v81 = v8;
  v9 = OUTLINED_FUNCTION_201();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent(v9);
  v11 = OUTLINED_FUNCTION_183(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21();
  v78 = v12;
  v13 = OUTLINED_FUNCTION_201();
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(v13);
  v15 = OUTLINED_FUNCTION_183(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21();
  v77 = v16;
  v17 = OUTLINED_FUNCTION_201();
  v71[1] = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent(v17);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_21();
  v79 = v19;
  v20 = OUTLINED_FUNCTION_201();
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent(v20);
  v22 = OUTLINED_FUNCTION_183(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_21();
  v76 = v23;
  v24 = OUTLINED_FUNCTION_201();
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(v24);
  v26 = OUTLINED_FUNCTION_183(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_21();
  v75 = v27;
  v28 = OUTLINED_FUNCTION_201();
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent(v28);
  v30 = OUTLINED_FUNCTION_183(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_21();
  v74 = v31;
  v32 = OUTLINED_FUNCTION_201();
  v72 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(v32);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21();
  v73 = v34;
  v35 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(v35);
  OUTLINED_FUNCTION_126_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44_0();
  v83 = v37;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v38);
  v84 = v71 - v39;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_512_0();
  v42 = MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](v42);
  v82 = (v71 - v43);
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_442();
  v46 = MEMORY[0x1EEE9AC00](v45);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = v71 - v48;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_447_0();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9510, &qword_1B96AA7F0);
  OUTLINED_FUNCTION_183(v50);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_173();
  sub_1B9239DFC();
  sub_1B9239DFC();
  OUTLINED_FUNCTION_245();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_6_28();
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_511_1() != 1)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_47_11();
      sub_1B9239DA8();
      static Apple_Parsec_Siri_V2alpha_CatDialogComponent.== infix(_:_:)(v49);
      sub_1B9239E50();
      goto LABEL_39;
    case 2u:
      OUTLINED_FUNCTION_6_28();
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_511_1() != 2)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_46_11();
      sub_1B9239DA8();
      OUTLINED_FUNCTION_472();
      static Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.== infix(_:_:)();
      sub_1B9239E50();
      OUTLINED_FUNCTION_514();
      goto LABEL_39;
    case 3u:
      OUTLINED_FUNCTION_6_28();
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_511_1() == 3)
      {
        OUTLINED_FUNCTION_45_12();
        sub_1B9239DA8();
        OUTLINED_FUNCTION_196();
        static Apple_Parsec_Siri_V2alpha_DomainObjectComponent.== infix(_:_:)();
        sub_1B9239E50();
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_464();
      goto LABEL_31;
    case 4u:
      OUTLINED_FUNCTION_6_28();
      v52 = v82;
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_511_1() != 4)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_44_11();
      v53 = v79;
      sub_1B9239DA8();
      sub_1B8D5A714(*v52, *v53);
      if (v54)
      {
        goto LABEL_18;
      }

      goto LABEL_38;
    case 5u:
      OUTLINED_FUNCTION_6_28();
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_511_1() != 5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_43_13();
      sub_1B9239DA8();
      static Apple_Parsec_Siri_V2alpha_DelayedActionComponent.== infix(_:_:)();
      sub_1B9239E50();
      goto LABEL_39;
    case 6u:
      OUTLINED_FUNCTION_6_28();
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_511_1() != 6)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_42_12();
      sub_1B9239DA8();
      v61 = OUTLINED_FUNCTION_461();
      static Apple_Parsec_Siri_V2alpha_SayItComponent.== infix(_:_:)(v61);
      sub_1B9239E50();
      goto LABEL_39;
    case 7u:
      OUTLINED_FUNCTION_6_28();
      v55 = v84;
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_511_1() != 7)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_41_18();
      v56 = v81;
      sub_1B9239DA8();
      v57 = *v55 == *v56 && v55[1] == v56[1];
      if (v57 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B8D5A714(v55[2], v56[2]);
        if (v58)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_38;
    case 8u:
      OUTLINED_FUNCTION_6_28();
      v62 = v83;
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_511_1() != 8)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_40_12();
      v63 = v80;
      sub_1B9239DA8();
      sub_1B8D60B60(*v62, *v63);
      if (v64)
      {
LABEL_18:
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_75();
        sub_1B8CD2D08(v59, v60, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_181();
      }

LABEL_38:
      sub_1B9239E50();
      goto LABEL_39;
    default:
      OUTLINED_FUNCTION_6_28();
      sub_1B9239DFC();
      if (OUTLINED_FUNCTION_511_1())
      {
        OUTLINED_FUNCTION_21_17();
LABEL_31:
        sub_1B9239E50();
        sub_1B8D9207C(v1, &qword_1EBAC9510, &qword_1B96AA7F0);
      }

      else
      {
        OUTLINED_FUNCTION_1_63();
        v65 = v73;
        sub_1B9239DA8();
        if (*(v0 + *(v72 + 20)) == *(v65 + *(v72 + 20)) || (, , v66 = OUTLINED_FUNCTION_432(), v68 = sub_1B9268C00(v66, v67), , , v68))
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_75();
          sub_1B8CD2D08(v69, v70, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_186();
          sub_1B964C850();
        }

        OUTLINED_FUNCTION_195_2();
        sub_1B9239E50();
LABEL_39:
        sub_1B9239E50();
        OUTLINED_FUNCTION_19_19();
        sub_1B9239E50();
      }

      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_283();
      return;
  }
}

uint64_t static Apple_Parsec_Siri_V2alpha_CatDialogComponent.== infix(_:_:)(uint64_t a1)
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

  type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_75();
  v12 = sub_1B8CD2D08(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

void static Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v39 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9518, &qword_1B96AA7F8);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9520, &qword_1B96AA800);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v40 = v11;
  v12 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash(v12);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v14 = OUTLINED_FUNCTION_236();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_139();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9530, &qword_1B96AA810) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(v20);
  v21 = *(v18 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v22)
  {
    OUTLINED_FUNCTION_37_0(v2 + v21);
    if (v22)
    {
      sub_1B8D9207C(v2, &qword_1EBAC9528, &qword_1B96AA808);
      goto LABEL_11;
    }

LABEL_9:
    v23 = &qword_1EBAC9530;
    v24 = &qword_1B96AA810;
    v25 = v2;
LABEL_20:
    sub_1B8D9207C(v25, v23, v24);
    goto LABEL_21;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v21);
  if (v22)
  {
    OUTLINED_FUNCTION_190_3();
    sub_1B9239E50();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18_20();
  sub_1B9239DA8();
  v26 = static Apple_Parsec_Siri_V2alpha_Sash.== infix(_:_:)(v0, v1);
  sub_1B9239E50();
  OUTLINED_FUNCTION_514();
  sub_1B9239E50();
  sub_1B8D9207C(v2, &qword_1EBAC9528, &qword_1B96AA808);
  if ((v26 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v27 = *(v38 + 48);
  OUTLINED_FUNCTION_493_0();
  sub_1B8D92024();
  v28 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v28, v29, v39);
  if (!v22)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v40 + v27);
    if (!v30)
    {
      OUTLINED_FUNCTION_2_46();
      sub_1B9239DA8();
      OUTLINED_FUNCTION_246();
      static Apple_Parsec_Siri_V2alpha_CasinoSnippet.== infix(_:_:)();
      v33 = v32;
      OUTLINED_FUNCTION_188_3();
      sub_1B9239E50();
      OUTLINED_FUNCTION_311();
      sub_1B9239E50();
      sub_1B8D9207C(v40, &qword_1EBAC9518, &qword_1B96AA7F8);
      if ((v33 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_17_21();
    sub_1B9239E50();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_48(v40 + v27);
  if (!v22)
  {
LABEL_19:
    v23 = &qword_1EBAC9520;
    v24 = &qword_1B96AA800;
    v25 = v40;
    goto LABEL_20;
  }

  sub_1B8D9207C(v40, &qword_1EBAC9518, &qword_1B96AA7F8);
LABEL_24:
  sub_1B8D668C0(*v6, *v4);
  if (v34)
  {
    sub_1B8D5A714(*(v6 + 8), *(v4 + 8));
    if ((v35 & 1) != 0 && sub_1B8D92198(*(v6 + 16), *(v6 + 24), *(v4 + 16)) && *(v6 + 25) == *(v4 + 25))
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_75();
      sub_1B8CD2D08(v36, v37, MEMORY[0x1E69AAC10]);
      v31 = sub_1B964C850();
      goto LABEL_22;
    }
  }

LABEL_21:
  v31 = 0;
LABEL_22:
  OUTLINED_FUNCTION_264(v31);
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Siri_V2alpha_DomainObjectComponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_8();
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9540, &qword_1B96AA820);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_239_3();
  OUTLINED_FUNCTION_313_1();
  OUTLINED_FUNCTION_50(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_70_9();
    if (v9)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9538, &qword_1B96AA818);
LABEL_12:
      type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent(0);
      OUTLINED_FUNCTION_871();
      OUTLINED_FUNCTION_0_75();
      v15 = sub_1B8CD2D08(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_634(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_70_9();
  if (v9)
  {
    OUTLINED_FUNCTION_106_7();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAC9540, &qword_1B96AA820);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component.== infix(_:_:)();
  v12 = v11;
  sub_1B9239E50();
  OUTLINED_FUNCTION_467();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &qword_1EBAC9538, &qword_1B96AA818);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v10);
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Siri_V2alpha_DelayedActionComponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_112();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9548, &qword_1B96AA828);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_137();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9550, &qword_1B96AA830);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  sub_1B8D5A714(*v1, *v0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(0);
  v10 = *(v7 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v11)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v10);
    if (!v11)
    {
      OUTLINED_FUNCTION_1_63();
      sub_1B9239DA8();
      OUTLINED_FUNCTION_494_0();
      if (v14 || (, , v15 = OUTLINED_FUNCTION_616(), v17 = sub_1B9268C00(v15, v16), , , v17))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_75();
        sub_1B8CD2D08(v18, v19, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_257();
        v20 = sub_1B964C850();
        sub_1B9239E50();
        OUTLINED_FUNCTION_531_0();
        sub_1B9239E50();
        sub_1B8D9207C(v2, &qword_1EBAC9548, &qword_1B96AA828);
        if ((v20 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      OUTLINED_FUNCTION_195_2();
      sub_1B9239E50();
      sub_1B9239E50();
      v12 = &qword_1EBAC9548;
      v13 = &qword_1B96AA828;
LABEL_11:
      sub_1B8D9207C(v2, v12, v13);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_21_17();
    sub_1B9239E50();
LABEL_10:
    v12 = &qword_1EBAC9550;
    v13 = &qword_1B96AA830;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_0(v2 + v10);
  if (!v11)
  {
    goto LABEL_10;
  }

  sub_1B8D9207C(v2, &qword_1EBAC9548, &qword_1B96AA828);
LABEL_15:
  sub_1B8D66E50(*(v1 + 8), *(v0 + 8));
  if ((v21 & 1) != 0 && *(v1 + 16) == *(v0 + 16) && *(v1 + 20) == *(v0 + 20))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_75();
    v25 = sub_1B8CD2D08(v23, v24, MEMORY[0x1E69AAC10]);
    v22 = OUTLINED_FUNCTION_199_0(v25);
    goto LABEL_19;
  }

LABEL_18:
  v22 = 0;
LABEL_19:
  OUTLINED_FUNCTION_264(v22);
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_Siri_V2alpha_SayItComponent.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 32) != *(v1 + 32) || *(v2 + 33) != *(v1 + 33))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent(0);
  OUTLINED_FUNCTION_764();
  OUTLINED_FUNCTION_0_75();
  v12 = sub_1B8CD2D08(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ButtonViewComponent.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D5A714(*(v2 + 16), *(v1 + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_75();
  v9 = sub_1B8CD2D08(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DirectExecutionComponent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_DelayedActionComponent.renderedDialog.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(v7);
  OUTLINED_FUNCTION_100_0();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9C97B0 != -1)
    {
      OUTLINED_FUNCTION_93_7(&qword_1ED9C97B0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9548, &qword_1B96AA828);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_63();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DelayedActionComponent.renderedDialog.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAC9548, &qword_1B96AA828);
  OUTLINED_FUNCTION_1_63();
  OUTLINED_FUNCTION_122_0();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_DelayedActionComponent.renderedDialog.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 36));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9C97B0 != -1)
    {
      OUTLINED_FUNCTION_93_7(&qword_1ED9C97B0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v10 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9548, &qword_1B96AA828);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_63();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_242();
}