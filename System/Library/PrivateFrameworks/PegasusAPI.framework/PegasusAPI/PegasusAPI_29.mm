uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.uploadedDataIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F8E7DC()
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

uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.reportType.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_DeviceContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_DeviceContext.init()@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_276_1();
  *(a2 + 48) = 0;
  *(a2 + 56) = v3;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  return OUTLINED_FUNCTION_690_0(v4);
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.collectionStartTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_755();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.collectionEndTimestamp.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90064C4(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 24, v6);
  *(v7 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.collectionEndTimestamp.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v4);
  OUTLINED_FUNCTION_225_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 24);
  *(v1 + 72) = *(v0 + 24);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F8ECC4()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback._StorageClass(v6);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90064C4(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 24) = v2;

  free(v0);
}

void sub_1B8F8ED64()
{
  v1 = OUTLINED_FUNCTION_338_0();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 32, v3);
  OUTLINED_FUNCTION_66_2(*(v0 + 32));
}

void sub_1B8F8EE70()
{
  OUTLINED_FUNCTION_184_0();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = *v7;
  v9 = *(v7 + 8);
  v11 = v10(0);
  v12 = OUTLINED_FUNCTION_216_1(v11);
  v14 = *(v0 + v1);
  if ((v12 & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v14 = v3(v15);
    *(v6 + v1) = v14;
  }

  OUTLINED_FUNCTION_9_3(v14 + 32, v13);
  *(v14 + 32) = v8;
  *(v14 + 40) = v9;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.client.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_37_3(v2);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v3);
  OUTLINED_FUNCTION_21_8(v4);
  OUTLINED_FUNCTION_374_0();
  OUTLINED_FUNCTION_71_2(*(v0 + 32));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F8EF90()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_60_5();
  v4 = *(v3 + 72);
  v5 = *(v0 + 84);
  v6 = *(v0 + 88);
  v7 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_529_0(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v9 + 32) = v4;
  *(v9 + 40) = v7;
  OUTLINED_FUNCTION_283();

  free(v12);
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.totalUsagesInCollectionPeriod.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90064C4(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 44, v6);
  *(v7 + 44) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.totalUsagesInCollectionPeriod.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0(v0 + 44);
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F8F124(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback._StorageClass(v7);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90064C4(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 44) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_276_1();
    *(a1 + 48) = 0;
    *(a1 + 56) = v10;
    OUTLINED_FUNCTION_762(v11);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC07F0, &qword_1B966FA90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.context.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B90064C4(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_UsageSinceLookback.context.modify()
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
  type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_241_1();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC07F0, &qword_1B966FA90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.hasContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_UsageSinceLookback.clearContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B90064C4(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.configuredLookbackTimeInDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.activeDaysInCollectionPeriod.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.totalEngagements.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.isDiagnosticsAndUsageEnabled.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.invokedDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.zkwEngagedDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.searchedDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.suggestionOrAppleResultEngagedDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.webEngagedDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.voiceSearchDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.numSearchEngagements.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.localGoto.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_344_0();
  *(v1 + 80) = *(v0 + 16);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.localTap.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 20);
  *(v1 + 80) = *(v0 + 20);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecGoto.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 24);
  *(v1 + 80) = *(v0 + 24);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecTap.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 28);
  *(v1 + 80) = *(v0 + 28);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.thirdPartyGoto.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_374_0();
  *(v1 + 80) = *(v0 + 32);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.thirdPartyTap.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 36);
  *(v1 + 80) = *(v0 + 36);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.thirdPartyCompletionOrRecentSearch.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 40);
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.goToSite.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 44);
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_105_0();
}

float Apple_Parsec_Feedback_V2_SafariUsagePropensity.other.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(0);
  OUTLINED_FUNCTION_354_0(v1, v2);
  return *(v0 + 48);
}

void Apple_Parsec_Feedback_V2_SafariUsagePropensity.other.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90087DC(v8);
    OUTLINED_FUNCTION_16_3(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 48, v6);
  *(v7 + 48) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.other.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  *(v1 + 80) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F90938()
{
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_52_4();
  v3 = OUTLINED_FUNCTION_744();
  v4 = *(v1 + v0);
  if ((v3 & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_72_4();
    type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(v5);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90087DC(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v4 + 48) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecWeb.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 52);
  *(v1 + 80) = *(v0 + 52);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecAppStore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  *(v1 + 80) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecMaps.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 60);
  *(v1 + 80) = *(v0 + 60);
  return OUTLINED_FUNCTION_105_0();
}

float sub_1B8F90C78()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 64, v3);
  return *(v0 + 64);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecWiki.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  *(v1 + 80) = *(v0 + 64);
  return OUTLINED_FUNCTION_105_0();
}

float sub_1B8F90D98()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 68, v3);
  return *(v0 + 68);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecNews.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 68);
  *(v1 + 80) = *(v0 + 68);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecStocks.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 72);
  *(v1 + 80) = *(v0 + 72);
  return OUTLINED_FUNCTION_105_0();
}

float sub_1B8F90F98()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 76, v3);
  return *(v0 + 76);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecWeather.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 76);
  *(v1 + 80) = *(v0 + 76);
  return OUTLINED_FUNCTION_105_0();
}

float sub_1B8F910B8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 80, v3);
  return *(v0 + 80);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecOther.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  *(v1 + 80) = *(v0 + 80);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F911D8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 84, v3);
  return *(v0 + 84);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.totalEngagements.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90087DC(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 84, v6);
  *(v7 + 84) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.totalEngagements.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0(v0 + 84);
  *(v1 + 80) = *(v0 + 84);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F912DC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(v7);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90087DC(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 84) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.topHitTriggerRatio.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B90087DC(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_EngagementTriggerRatio.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_581_0(a1);
  *(v1 + 8) = 0;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  return OUTLINED_FUNCTION_101_2(v2);
}

void Apple_Parsec_Feedback_V2_SafariUsagePropensity.topHitTriggerRatio.modify()
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
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_133_2(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC07F8, &qword_1B966FA98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_122_2();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.hasTopHitTriggerRatio.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SafariUsagePropensity.clearTopHitTriggerRatio()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B90087DC(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.totalTopHitEngagements.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_11(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.engagementShareRatio.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B90087DC(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_210_2();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_EngagementShareRatio.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_581_0(a1);
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  return OUTLINED_FUNCTION_279();
}

void Apple_Parsec_Feedback_V2_SafariUsagePropensity.engagementShareRatio.modify()
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
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  v15 = OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v10 = 0;
    OUTLINED_FUNCTION_280_0(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0800, &qword_1B966FAA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_210_2();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.hasEngagementShareRatio.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SafariUsagePropensity.clearEngagementShareRatio()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B90087DC(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

float sub_1B8F91C98()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 16, v3);
  return *(v0 + 16);
}

void sub_1B8F91D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 16, v14);
  *(v15 + 16) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.appLaunch.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_344_0();
  *(v1 + 80) = *(v0 + 16);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F91E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 16) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

float sub_1B8F91EBC()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 20, v3);
  return *(v0 + 20);
}

void sub_1B8F91F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 20, v14);
  *(v15 + 20) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.onDeviceAddressBookData.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 20);
  *(v1 + 80) = *(v0 + 20);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F92038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 20) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

float sub_1B8F920E4()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 24, v3);
  return *(v0 + 24);
}

void sub_1B8F92164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 24, v14);
  *(v15 + 24) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.onDeviceOtherPersonalData.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 24);
  *(v1 + 80) = *(v0 + 24);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F92260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 24) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

float sub_1B8F9230C()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 28, v3);
  return *(v0 + 28);
}

void sub_1B8F9238C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 28, v14);
  *(v15 + 28) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.punchout.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 28);
  *(v1 + 80) = *(v0 + 28);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F92488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 28) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

float sub_1B8F92534()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 32, v3);
  return *(v0 + 32);
}

void sub_1B8F925B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 32, v14);
  *(v15 + 32) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.thirdPartyInAppContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_374_0();
  *(v1 + 80) = *(v0 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F926AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 32) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

float sub_1B8F92758()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 36, v3);
  return *(v0 + 36);
}

void sub_1B8F927D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 36, v14);
  *(v15 + 36) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsec.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 36);
  *(v1 + 80) = *(v0 + 36);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F928D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 36) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

float sub_1B8F92980()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 40, v3);
  return *(v0 + 40);
}

void sub_1B8F92A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 40, v14);
  *(v15 + 40) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.querySuggestion.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 40);
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F92AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 40) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

float sub_1B8F92BA8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 44, v3);
  return *(v0 + 44);
}

void sub_1B8F92C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 44, v14);
  *(v15 + 44) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.other.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 44);
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F92D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 44) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.totalEngagements.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B900B3DC(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 48, v6);
  *(v7 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.totalEngagements.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  *(v1 + 80) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F92E94(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(v7);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B900B3DC(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 48) = v3;

  free(v1);
}

float sub_1B8F92F30()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 52, v3);
  return *(v0 + 52);
}

void sub_1B8F92FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 52, v14);
  *(v15 + 52) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.siriSuggestions.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 52);
  *(v1 + 80) = *(v0 + 52);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F930AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 52) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

float sub_1B8F93158()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 56, v3);
  return *(v0 + 56);
}

void sub_1B8F931D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 56, v14);
  *(v15 + 56) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecWeb.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  *(v1 + 80) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F932D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 56) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

float sub_1B8F93380()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 60, v3);
  return *(v0 + 60);
}

void sub_1B8F93400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 60, v14);
  *(v15 + 60) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecAppStore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 60);
  *(v1 + 80) = *(v0 + 60);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F934FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 60) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

void sub_1B8F935E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 64, v14);
  *(v15 + 64) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecMaps.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  *(v1 + 80) = *(v0 + 64);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F936E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 64) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

void sub_1B8F937D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 68, v14);
  *(v15 + 68) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecWiki.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 68);
  *(v1 + 80) = *(v0 + 68);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F938CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 68) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

float sub_1B8F93978()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 72, v3);
  return *(v0 + 72);
}

void sub_1B8F939F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 72, v14);
  *(v15 + 72) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecNews.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 72);
  *(v1 + 80) = *(v0 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F93AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 72) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

void sub_1B8F93BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 76, v14);
  *(v15 + 76) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecStocks.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 76);
  *(v1 + 80) = *(v0 + 76);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F93CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 76) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

void sub_1B8F93DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_652_0();
  v10 = OUTLINED_FUNCTION_38_4();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v5 + v8);
  if ((v13 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v17 = v6(v16);
    OUTLINED_FUNCTION_72_2(v17);
  }

  OUTLINED_FUNCTION_9_3(v15 + 80, v14);
  *(v15 + 80) = v9;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecWeather.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  *(v1 + 80) = *(v0 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F93EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4();
  v11 = OUTLINED_FUNCTION_686_0();
  v12 = *(v9 + v6);
  if ((v11 & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_265_1();
    v8(v13);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_73_2(v15);
  }

  OUTLINED_FUNCTION_11_4();
  *(v12 + 80) = v10;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

float Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecOther.getter()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 84, v1);
  return *(v0 + 84);
}

void Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecOther.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B900B3DC(v8);
    OUTLINED_FUNCTION_16_3(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 84, v6);
  *(v7 + 84) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecOther.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 84);
  *(v1 + 80) = *(v0 + 84);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F94058()
{
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_52_4();
  v3 = OUTLINED_FUNCTION_744();
  v4 = *(v1 + v0);
  if ((v3 & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_72_4();
    type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(v5);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B900B3DC(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v4 + 84) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.webSuggestions.getter()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 88, v1);
  return *(v0 + 88);
}

void Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.webSuggestions.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B900B3DC(v8);
    OUTLINED_FUNCTION_16_3(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 88, v6);
  *(v7 + 88) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.webSuggestions.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 88);
  *(v1 + 80) = *(v0 + 88);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F941E0()
{
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_52_4();
  v3 = OUTLINED_FUNCTION_744();
  v4 = *(v1 + v0);
  if ((v3 & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_72_4();
    type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(v5);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B900B3DC(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v4 + 88) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.topHitTriggerRatio.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B900B3DC(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.topHitTriggerRatio.modify()
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
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_133_2(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC07F8, &qword_1B966FA98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_122_2();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.hasTopHitTriggerRatio.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.clearTopHitTriggerRatio()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B900B3DC(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

void sub_1B8F94640()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_522_0();
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = v1(0);
  OUTLINED_FUNCTION_309_0(v7);
  OUTLINED_FUNCTION_433_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  v8 = OUTLINED_FUNCTION_57(v2);
  if (v9)
  {
    *v0 = 0;
    *(v0 + 8) = 0;
    OUTLINED_FUNCTION_826(v8);
    OUTLINED_FUNCTION_57(v2);
    if (!v9)
    {
      sub_1B8D9207C(v2, &qword_1EBAC07F8, &qword_1B966FA98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_202();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.querySuggestionTriggerRatio.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B900B3DC(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.querySuggestionTriggerRatio.modify()
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
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_133_2(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC07F8, &qword_1B966FA98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_122_2();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.hasQuerySuggestionTriggerRatio.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.clearQuerySuggestionTriggerRatio()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B900B3DC(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.totalTopHitEngagements.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_17_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F94BE8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_522_0();
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = v1(0);
  OUTLINED_FUNCTION_309_0(v7);
  OUTLINED_FUNCTION_433_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  v8 = OUTLINED_FUNCTION_57(v2);
  if (v9)
  {
    *v0 = 0;
    OUTLINED_FUNCTION_251_0(v8);
    OUTLINED_FUNCTION_57(v2);
    if (!v9)
    {
      sub_1B8D9207C(v2, &qword_1EBAC0800, &qword_1B966FAA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_202();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.engagementShareRatio.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B900B3DC(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_210_2();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.engagementShareRatio.modify()
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
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  v15 = OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v10 = 0;
    OUTLINED_FUNCTION_280_0(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0800, &qword_1B966FAA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_210_2();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.hasEngagementShareRatio.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.clearEngagementShareRatio()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B900B3DC(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_ImagesUsagePropensity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ImagesUsagePropensity.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(v1);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  return OUTLINED_FUNCTION_723_0(v2);
}

uint64_t Apple_Parsec_Feedback_V2_NewsUsagePropensity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_NewsUsagePropensity.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_581_0(a1);
  type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Feedback_V2_EngagementTriggerRatio.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_EngagementShareRatio.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.usageSinceLookback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_22_13();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0) + 20);
  if (qword_1EBAB6E40 != -1)
  {
    OUTLINED_FUNCTION_263_1(&qword_1EBAB6E40);
  }

  *(v0 + v9) = qword_1EBAC0610;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.usageSinceLookback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.usageSinceLookback.modify()
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
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_8_22(v15);
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_22_13();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_9;
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v18 = *(v0 + 20);
  if (qword_1EBAB6E40 != -1)
  {
    OUTLINED_FUNCTION_263_1(&qword_1EBAB6E40);
  }

  *(v11 + v18) = qword_1EBAC0610;

LABEL_9:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F957E4()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_22_13();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_22_13();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.safariUsagePropensity.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_121_1();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(0) + 20);
  if (qword_1EBAB6E50 != -1)
  {
    OUTLINED_FUNCTION_615_0(&qword_1EBAB6E50);
  }

  *(v0 + v10) = qword_1EBAC0630;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.safariUsagePropensity.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
  OUTLINED_FUNCTION_121_1();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.safariUsagePropensity.modify()
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
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_8_22(v15);
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_121_1();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_10;
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v18 = *(v0 + 20);
  if (qword_1EBAB6E50 != -1)
  {
    OUTLINED_FUNCTION_615_0(&qword_1EBAB6E50);
  }

  *(v11 + v18) = qword_1EBAC0630;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F95BD0()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.spotlightUsagePropensity.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_120_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0) + 20);
  if (qword_1EBAB6E60 != -1)
  {
    OUTLINED_FUNCTION_614_0(&qword_1EBAB6E60);
  }

  *(v0 + v10) = qword_1EBAC0650;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.spotlightUsagePropensity.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
  OUTLINED_FUNCTION_120_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.spotlightUsagePropensity.modify()
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
  type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_8_22(v15);
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_120_3();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_10;
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v18 = *(v0 + 20);
  if (qword_1EBAB6E60 != -1)
  {
    OUTLINED_FUNCTION_614_0(&qword_1EBAB6E60);
  }

  *(v11 + v18) = qword_1EBAC0650;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F95FBC()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_120_3();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_120_3();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.imagesUsagePropensity.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_118_2();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(0);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  return OUTLINED_FUNCTION_723_0(v10);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.imagesUsagePropensity.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
  OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.imagesUsagePropensity.modify()
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
  type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
LABEL_7:
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F96350()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_118_2();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_118_2();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.newsUsagePropensity.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_3();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_15_15(v5);
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_117_2();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v9 = OUTLINED_FUNCTION_751();
  type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(v9);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.newsUsagePropensity.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
  OUTLINED_FUNCTION_117_2();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.newsUsagePropensity.modify()
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
  type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    v16 = sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
LABEL_7:
    *v10 = 0;
    OUTLINED_FUNCTION_689_0(v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    v16 = sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_117_2();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F966D0()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_117_2();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_116_2();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_117_2();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.collectionStartTimestamp.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  result = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.collectionStartTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.collectionEndTimestamp.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  result = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.collectionEndTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.configuredLookbackTimeInDays.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  result = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.configuredLookbackTimeInDays.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.totalSessions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  result = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.totalSessions.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v7);
  OUTLINED_FUNCTION_100_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_276_1();
    *(a1 + 48) = 0;
    *(a1 + 56) = v10;
    OUTLINED_FUNCTION_762(v11);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC07F0, &qword_1B966FA90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.context.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBAC07F0, &qword_1B966FA90);
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.context.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v14);
  OUTLINED_FUNCTION_68_4(*(v15 + 44));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_241_1();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC07F0, &qword_1B966FA90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F96C4C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC07F0, &qword_1B966FA90);
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_324_0();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC07F0, &qword_1B966FA90);
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t sub_1B8F96D5C()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_225_0();
  sub_1B8F1B8B8();
  v6 = v0(0);
  OUTLINED_FUNCTION_220_2(v6);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B8F96E24()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v2(v1);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.uuidBytes.getter()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.uuidBytes.setter()
{
  v3 = OUTLINED_FUNCTION_112();
  v4 = v1 + *(type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v3) + 36);
  result = sub_1B8D538A0(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.uuidBytes.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v0);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v65 = v3;
  v66 = v4;
  v57 = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v64 = v6;
  v7 = OUTLINED_FUNCTION_201();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(v7);
  v9 = OUTLINED_FUNCTION_183(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  v61 = v10;
  v11 = OUTLINED_FUNCTION_201();
  v60 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v11);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  v63 = v13;
  v14 = OUTLINED_FUNCTION_201();
  v59 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v14);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21();
  v62 = v16;
  v17 = OUTLINED_FUNCTION_201();
  v18 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v17);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21();
  v58 = v20;
  v21 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(v21);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_720_0();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v57 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v57 - v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_512_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v57 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0810, &qword_1B966FAB0);
  OUTLINED_FUNCTION_183(v33);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_139();
  sub_1B8FAC578();
  sub_1B8FAC578();
  OUTLINED_FUNCTION_432();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_144_4();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_828() != 1)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_121_1();
      v45 = v62;
      sub_1B8FAC528();
      if (*(v1 + *(v59 + 20)) == *(v45 + *(v59 + 20)) || (, , v46 = OUTLINED_FUNCTION_543(), v48 = sub_1B9009C9C(v46, v47), , , v48))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v49, v50, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_1_0();
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_563_0();
      sub_1B8FAC5C8();
      goto LABEL_30;
    case 2u:
      OUTLINED_FUNCTION_144_4();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_828() != 2)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_120_3();
      v39 = v63;
      sub_1B8FAC528();
      if (*&v29[*(v60 + 20)] == *(v39 + *(v60 + 20)) || (, , v40 = OUTLINED_FUNCTION_113_0(), v42 = sub_1B900D340(v40, v41), , , v42))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v43, v44, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_439_0();
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_562_0();
      sub_1B8FAC5C8();
      goto LABEL_30;
    case 3u:
      OUTLINED_FUNCTION_144_4();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_828() != 3)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_118_2();
      sub_1B8FAC528();
      static Apple_Parsec_Feedback_V2_ImagesUsagePropensity.== infix(_:_:)(v26);
      sub_1B8FAC5C8();
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_47_4();
      sub_1B8FAC5C8();
      goto LABEL_31;
    case 4u:
      OUTLINED_FUNCTION_144_4();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_828() == 4)
      {
        OUTLINED_FUNCTION_117_2();
        v35 = v64;
        sub_1B8FAC528();
        if (*v2 == *v35 && *(v2 + 4) == *(v35 + 4))
        {
          v36 = *(v57 + 24);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v37, v38, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_731(v2 + v36);
          OUTLINED_FUNCTION_116_2();
          sub_1B8FAC5C8();
        }

        else
        {
          OUTLINED_FUNCTION_116_2();
          sub_1B8FAC5C8();
        }

        OUTLINED_FUNCTION_116_2();
LABEL_30:
        sub_1B8FAC5C8();
        OUTLINED_FUNCTION_47_4();
        sub_1B8FAC5C8();
      }

      else
      {
        OUTLINED_FUNCTION_116_2();
LABEL_22:
        sub_1B8FAC5C8();
        sub_1B8D9207C(v0, &qword_1EBAC0810, &qword_1B966FAB0);
      }

LABEL_31:
      OUTLINED_FUNCTION_283();
      return;
    default:
      OUTLINED_FUNCTION_144_4();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_828())
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_22_13();
      v51 = v58;
      sub_1B8FAC528();
      if (*&v32[*(v18 + 20)] == *(v51 + *(v18 + 20)) || (, , v52 = OUTLINED_FUNCTION_543(), v54 = sub_1B90076F8(v52, v53), , , v54))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v55, v56, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_597_0();
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_564_0();
      sub_1B8FAC5C8();
      goto LABEL_30;
  }
}

uint64_t static Apple_Parsec_Feedback_V2_ImagesUsagePropensity.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_516_0(a1);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_375_0(v3);
  if (!v4)
  {
    return 0;
  }

  if (*(v2 + 8) != *(v1 + 8))
  {
    return 0;
  }

  OUTLINED_FUNCTION_722_0();
  if (!v4 || *(v2 + 16) != *(v1 + 16) || *(v2 + 20) != *(v1 + 20))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(0);
  OUTLINED_FUNCTION_868();
  OUTLINED_FUNCTION_0_40();
  v7 = sub_1B8CD2450(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t static Apple_Parsec_Feedback_V2_NewsUsagePropensity.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_516_0(a1);
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_40();
  v6 = sub_1B8CD2450(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B8F978C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF9B0);
  __swift_project_value_buffer(v0, qword_1EBABF9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1B96566C0;
  v4 = v40 + v3 + v1[14];
  *(v40 + v3) = 0;
  *v4 = "SearchSuggestionTypeUnknown";
  *(v4 + 8) = 27;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v40 + v3 + v2 + v1[14];
  *(v40 + v3 + v2) = 1;
  *v8 = "SearchSuggestionTypeParsec";
  *(v8 + 8) = 26;
  *(v8 + 16) = 2;
  v7();
  v9 = (v40 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "SearchSuggestionTypeProactive";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v7();
  v11 = (v40 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "SearchSuggestionTypeRecents";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v7();
  v13 = (v40 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SearchSuggestionTypeProactiveCategory";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v7();
  v15 = (v40 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "SearchSuggestionTypeContextual";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v7();
  v17 = (v40 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "SearchSuggestionTypeUserTyped";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v7();
  v19 = (v40 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "SearchSuggestionTypeCoreSpotlightContent";
  *(v20 + 1) = 40;
  v20[16] = 2;
  v7();
  v21 = (v40 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "SearchSuggestionTypeThirdPartyProvider";
  *(v22 + 1) = 38;
  v22[16] = 2;
  v7();
  v23 = (v40 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "SearchSuggestionTypePastEngagement";
  *(v24 + 1) = 34;
  v24[16] = 2;
  v7();
  v25 = (v40 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SearchSuggestionTypeParsecCategory";
  *(v26 + 1) = 34;
  v26[16] = 2;
  v7();
  v27 = (v40 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "SearchSuggestionTypeSiri";
  *(v28 + 1) = 24;
  v28[16] = 2;
  v7();
  v29 = (v40 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "SearchSuggestionTypeWeb";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v40 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SearchSuggestionTypeApplication";
  *(v32 + 1) = 31;
  v32[16] = 2;
  v7();
  v33 = (v40 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SearchSuggestionTypeWebAsTyped";
  *(v34 + 1) = 30;
  v34[16] = 2;
  v7();
  v35 = (v40 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "SearchSuggestionTypeNLP";
  *(v36 + 1) = 23;
  v36[16] = 2;
  v7();
  v37 = (v40 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "SearchSuggestionTypeVisualSearch";
  *(v38 + 1) = 32;
  v38[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F97E40()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF9C8);
  __swift_project_value_buffer(v0, qword_1EBABF9C8);
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
  *v8 = "ResultTypeParsec";
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
  *v16 = "ResultTypeSafariTophit";
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
  *v30 = "ResultTypeDuckduckgo";
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
  *v36 = "ResultTypeProactiveSuggest";
  *(v36 + 1) = 26;
  v36[16] = 2;
  v7();
  v37 = (v86 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "ResultTypeLocalSuggest";
  *(v38 + 1) = 22;
  v38[16] = 2;
  v7();
  v39 = (v86 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "ResultTypeServerSuggest";
  *(v40 + 1) = 23;
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
  *v48 = "ResultTypeSiriSuggest";
  *(v48 + 1) = 21;
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

uint64_t sub_1B8F9890C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF9E0);
  __swift_project_value_buffer(v0, qword_1EBABF9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "EngagementActionTargetUnknown";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EngagementActionTargetDirections";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EngagementActionTargetCall";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EngagementActionTargetMessage";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EngagementActionTargetPlay";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "EngagementActionTargetView";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "EngagementActionTargetOpen";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "EngagementActionTargetIntentModify";
  *(v22 + 1) = 34;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "EngagementActionTargetSubscribe";
  *(v24 + 1) = 31;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "EngagementActionTargetUnsubscribe";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "EngagementActionTargetVideoCall";
  *(v28 + 1) = 31;
  v28[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F98D1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF9F8);
  __swift_project_value_buffer(v0, qword_1EBABF9F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D040;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "EngagementDestinationUnknown";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EngagementDestinationCard";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EngagementDestinationPunchout";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EngagementDestinationNone";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EngagementDestinationInsert";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "EngagementDestinationFindOnPage";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "EngagementDestinationLastSearch";
  *(v20 + 1) = 31;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "EngagementDestinationMapsCard";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "EngagementDestinationITunesSheet";
  *(v24 + 1) = 32;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "EngagementDestinationHostedHTMLPage";
  *(v26 + 1) = 35;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "EngagementDestinationQueryBuilder";
  *(v28 + 1) = 33;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "EngagementDestinationSiriOverlay";
  *(v30 + 1) = 32;
  v30[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9916C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFA10);
  __swift_project_value_buffer(v0, qword_1EBABFA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_1B966F8B0;
  v4 = v164 + v3 + v1[14];
  *(v164 + v3) = 0;
  *v4 = "CardSectionTypeNone";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v164 + v3 + v2 + v1[14];
  *(v164 + v3 + v2) = 1;
  *v8 = "CardSectionTypeAppLink";
  *(v8 + 8) = 22;
  *(v8 + 16) = 2;
  v7();
  v9 = (v164 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CardSectionTypeDescription";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v7();
  v11 = (v164 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CardSectionTypeKeyValueData";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v7();
  v13 = (v164 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CardSectionTypeMap";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v7();
  v15 = (v164 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CardSectionTypeMediaInfo";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v7();
  v17 = (v164 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "CardSectionTypeMediaPlayer";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v7();
  v19 = (v164 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CardSectionTypeNowPlaying";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v7();
  v21 = (v164 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "CardSectionTypeRichTitle";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v7();
  v23 = (v164 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CardSectionTypeRow";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v7();
  v25 = (v164 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CardSectionTypeScoreboard";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v7();
  v27 = (v164 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "CardSectionTypeSocialMediaPost";
  *(v28 + 1) = 30;
  v28[16] = 2;
  v7();
  v29 = (v164 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "CardSectionTypeStockChart";
  *(v30 + 1) = 25;
  v30[16] = 2;
  v7();
  v31 = (v164 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "CardSectionTypeTableHeaderRow";
  *(v32 + 1) = 29;
  v32[16] = 2;
  v7();
  v33 = (v164 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "CardSectionTypeTableRow";
  *(v34 + 1) = 23;
  v34[16] = 2;
  v7();
  v35 = (v164 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CardSectionTypeTextColumns";
  *(v36 + 1) = 26;
  v36[16] = 2;
  v7();
  v37 = (v164 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "CardSectionTypeTitle";
  *(v38 + 1) = 20;
  v38[16] = 2;
  v7();
  v39 = (v164 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "CardSectionTypeTrackList";
  *(v40 + 1) = 24;
  v40[16] = 2;
  v7();
  v41 = (v164 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "CardSectionTypeAudioPlayback";
  *(v42 + 1) = 28;
  v42[16] = 2;
  v7();
  v43 = (v164 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "CardSectionTypeFlight";
  *(v44 + 1) = 21;
  v44[16] = 2;
  v7();
  v45 = (v164 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "CardSectionTypeActivityIndicator";
  *(v46 + 1) = 32;
  v46[16] = 2;
  v7();
  v47 = (v164 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "CardSectionTypeWeb";
  *(v48 + 1) = 18;
  v48[16] = 2;
  v7();
  v49 = (v164 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "CardSectionTypeMessage";
  *(v50 + 1) = 22;
  v50[16] = 2;
  v7();
  v51 = (v164 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "CardSectionTypeDetailedRow";
  *(v52 + 1) = 26;
  v52[16] = 2;
  v7();
  v53 = (v164 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "CardSectionTypeImages";
  *(v54 + 1) = 21;
  v54[16] = 2;
  v7();
  v55 = (v164 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "CardSectionTypeSuggestion";
  *(v56 + 1) = 25;
  v56[16] = 2;
  v7();
  v57 = (v164 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "CardSectionTypeSelectableGrid";
  *(v58 + 1) = 29;
  v58[16] = 2;
  v7();
  v59 = (v164 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "CardSectionTypeSectionHeader";
  *(v60 + 1) = 28;
  v60[16] = 2;
  v7();
  v61 = (v164 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "CardSectionTypeMetaInfo";
  *(v62 + 1) = 23;
  v62[16] = 2;
  v7();
  v63 = (v164 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "CardSectionTypeWatchList";
  *(v64 + 1) = 24;
  v64[16] = 2;
  v7();
  v65 = (v164 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "CardSectionTypeMapsDetailedRow";
  *(v66 + 1) = 30;
  v66[16] = 2;
  v7();
  v67 = (v164 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "CardSectionTypeButton";
  *(v68 + 1) = 21;
  v68[16] = 2;
  v7();
  v69 = (v164 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "CardSectionTypeHorizontalButton";
  *(v70 + 1) = 31;
  v70[16] = 2;
  v7();
  v71 = (v164 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "CardSectionTypeVerticalLayout";
  *(v72 + 1) = 29;
  v72[16] = 2;
  v7();
  v73 = (v164 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "CardSectionTypeProduct";
  *(v74 + 1) = 22;
  v74[16] = 2;
  v7();
  v75 = (v164 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "CardSectionTypeHorizontalScroll";
  *(v76 + 1) = 31;
  v76[16] = 2;
  v7();
  v77 = (v164 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "CardSectionTypeMediaRemoteControl";
  *(v78 + 1) = 33;
  v78[16] = 2;
  v7();
  v79 = (v164 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "CardSectionTypeMapPlace";
  *(v80 + 1) = 23;
  v80[16] = 2;
  v7();
  v81 = (v164 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "CardSectionTypeCompactRow";
  *(v82 + 1) = 25;
  v82[16] = 2;
  v7();
  v83 = (v164 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "CardSectionTypeWorldMap";
  *(v84 + 1) = 23;
  v84[16] = 2;
  v7();
  v85 = (v164 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "CardSectionTypeAttributionFooter";
  *(v86 + 1) = 32;
  v86[16] = 2;
  v7();
  v87 = (v164 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "CardSectionTypeGrid";
  *(v88 + 1) = 19;
  v88[16] = 2;
  v7();
  v89 = (v164 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "CardSectionTypePersonHeader";
  *(v90 + 1) = 27;
  v90[16] = 2;
  v7();
  v91 = (v164 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "CardSectionTypeColorBar";
  *(v92 + 1) = 23;
  v92[16] = 2;
  v7();
  v93 = (v164 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "CardSectionTypeSplit";
  *(v94 + 1) = 20;
  v94[16] = 2;
  v7();
  v95 = (v164 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 45;
  *v96 = "CardSectionTypeLinkPresentation";
  *(v96 + 1) = 31;
  v96[16] = 2;
  v7();
  v97 = (v164 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 46;
  *v98 = "CardSectionTypeFindMy";
  *(v98 + 1) = 21;
  v98[16] = 2;
  v7();
  v99 = (v164 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 47;
  *v100 = "CardSectionTypeHero";
  *(v100 + 1) = 19;
  v100[16] = 2;
  v7();
  v101 = (v164 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 48;
  *v102 = "CardSectionTypeNews";
  *(v102 + 1) = 19;
  v102[16] = 2;
  v7();
  v103 = (v164 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 49;
  *v104 = "CardSectionTypeMini";
  *(v104 + 1) = 19;
  v104[16] = 2;
  v7();
  v105 = (v164 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 50;
  *v106 = "CardSectionTypeInfo";
  *(v106 + 1) = 19;
  v106[16] = 2;
  v7();
  v107 = (v164 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 51;
  *v108 = "CardSectionTypeCollection";
  *(v108 + 1) = 25;
  v108[16] = 2;
  v7();
  v109 = (v164 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 52;
  *v110 = "CardSectionTypeCombined";
  *(v110 + 1) = 23;
  v110[16] = 2;
  v7();
  v111 = (v164 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 53;
  *v112 = "CardSectionTypeResponseWrapper";
  *(v112 + 1) = 30;
  v112[16] = 2;
  v7();
  v113 = (v164 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 54;
  *v114 = "CardSectionTypeListenTo";
  *(v114 + 1) = 23;
  v114[16] = 2;
  v7();
  v115 = (v164 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 55;
  *v116 = "CardSectionTypeWatchNow";
  *(v116 + 1) = 23;
  v116[16] = 2;
  v7();
  v117 = (v164 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 56;
  *v118 = "CardSectionTypeStrokeAnimation";
  *(v118 + 1) = 30;
  v118[16] = 2;
  v7();
  v119 = (v164 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 57;
  *v120 = "CardSectionTypeButtonList";
  *(v120 + 1) = 25;
  v120[16] = 2;
  v7();
  v121 = (v164 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 58;
  *v122 = "CardSectionTypeCommandRow";
  *(v122 + 1) = 25;
  v122[16] = 2;
  v7();
  v123 = (v164 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 59;
  *v124 = "CardSectionTypeLeadingTrailing";
  *(v124 + 1) = 30;
  v124[16] = 2;
  v7();
  v125 = (v164 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 60;
  *v126 = "CardSectionTypeHeroTitle";
  *(v126 + 1) = 24;
  v126[16] = 2;
  v7();
  v127 = (v164 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 61;
  *v128 = "CardSectionTypeArchiveView";
  *(v128 + 1) = 26;
  v128[16] = 2;
  v7();
  v129 = (v164 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "CardSectionTypeAppIcon";
  *(v130 + 1) = 22;
  v130[16] = 2;
  v7();
  v131 = (v164 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 64;
  *v132 = "CardSectionTypeLargeTitleDetailedRow";
  *(v132 + 1) = 36;
  v132[16] = 2;
  v7();
  v133 = (v164 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 200;
  *v134 = "CardSectionTypeRFSummaryItemShortNumber";
  *(v134 + 1) = 39;
  v134[16] = 2;
  v7();
  v135 = (v164 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 201;
  *v136 = "CardSectionTypeRFSummaryItemText";
  *(v136 + 1) = 32;
  v136[16] = 2;
  v7();
  v137 = (v164 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 202;
  *v138 = "CardSectionTypeRFSummaryItemStandard";
  *(v138 + 1) = 36;
  v138[16] = 2;
  v7();
  v139 = (v164 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 203;
  *v140 = "CardSectionTypeRFFactItemShortNumber";
  *(v140 + 1) = 36;
  v140[16] = 2;
  v7();
  v141 = (v164 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 204;
  *v142 = "CardSectionTypeRFFactItemStandard";
  *(v142 + 1) = 33;
  v142[16] = 2;
  v7();
  v143 = (v164 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 205;
  *v144 = "CardSectionTypeRFLongItemStandard";
  *(v144 + 1) = 33;
  v144[16] = 2;
  v7();
  v145 = (v164 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 206;
  *v146 = "CardSectionTypeRFPrimaryHeaderRich";
  *(v146 + 1) = 34;
  v146[16] = 2;
  v7();
  v147 = (v164 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 207;
  *v148 = "CardSectionTypeRFPrimaryHeaderStandard";
  *(v148 + 1) = 38;
  v148[16] = 2;
  v7();
  v149 = (v164 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 208;
  *v150 = "CardSectionTypeRFReferenceFootnote";
  *(v150 + 1) = 34;
  v150[16] = 2;
  v7();
  v151 = (v164 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 209;
  *v152 = "CardSectionTypeRFReferenceRich";
  *(v152 + 1) = 30;
  v152[16] = 2;
  v7();
  v153 = (v164 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 210;
  *v154 = "CardSectionTypeRFSimpleItemRich";
  *(v154 + 1) = 31;
  v154[16] = 2;
  v7();
  v155 = (v164 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 211;
  *v156 = "CardSectionTypeRFSimpleItemStandard";
  *(v156 + 1) = 35;
  v156[16] = 2;
  v7();
  v157 = (v164 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 212;
  *v158 = "CardSectionTypeRFSummaryItemAlignedText";
  *(v158 + 1) = 39;
  v158[16] = 2;
  v7();
  v159 = (v164 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 213;
  *v160 = "CardSectionTypeRFExpandableStandard";
  *(v160 + 1) = 35;
  v160[16] = 2;
  v7();
  v161 = (v164 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 214;
  *v162 = "CardSectionTypeRFFactItemButton";
  *(v162 + 1) = 31;
  v162[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F9A580()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFA28);
  __swift_project_value_buffer(v0, qword_1EBABFA28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "FBTHTophitNo";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FBTHTophitShouldBe";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FBTHTophitMustBe";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9A7AC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFA40);
  __swift_project_value_buffer(v0, qword_1EBABFA40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B965A600;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TriggerVisibleResultsEventUnknown";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TriggerVisibleResultsEventResultListUpdated";
  *(v10 + 8) = 43;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TriggerVisibleResultsEventScroll";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TriggerVisibleResultsEventShowMore";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "TriggerVisibleResultsEventPeek";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "TriggerVisibleResultsEventPop";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "TriggerVisibleResultsEventShowLess";
  *(v20 + 1) = 34;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "TriggerVisibleResultsEventCardSwipe";
  *(v22 + 1) = 35;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "TriggerVisibleResultsEventClick";
  *(v24 + 1) = 31;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "TriggerVisibleResultsEventViewResized";
  *(v26 + 1) = 37;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "TriggerVisibleResultsEventScrollUp";
  *(v28 + 1) = 34;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "TriggerVisibleResultsEventScrollDown";
  *(v30 + 1) = 36;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "TriggerVisibleResultsEventResumeSearch";
  *(v32 + 1) = 38;
  v32[16] = 2;
  v9();
  v33 = (v5 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "TriggerVisibleResultsEventArrowUp";
  *(v34 + 1) = 33;
  v34[16] = 2;
  v9();
  v35 = (v5 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 14;
  *v36 = "TriggerVisibleResultsEventArrowDown";
  *(v36 + 1) = 35;
  v36[16] = 2;
  v9();
  v37 = (v5 + 15 * v2);
  v38 = v37 + v1[14];
  *v37 = 15;
  *v38 = "TriggerVisibleResultsEventShowMoreResults";
  *(v38 + 1) = 41;
  v38[16] = 2;
  v9();
  v39 = (v5 + 16 * v2);
  v40 = v39 + v1[14];
  *v39 = 16;
  *v40 = "TriggerVisibleResultsEventScrollLeft";
  *(v40 + 1) = 36;
  v40[16] = 2;
  v9();
  v41 = (v5 + 17 * v2);
  v42 = v41 + v1[14];
  *v41 = 17;
  *v42 = "TriggerVisibleResultsEventScrollRight";
  *(v42 + 1) = 37;
  v42[16] = 2;
  v9();
  v43 = (v5 + 18 * v2);
  v44 = v43 + v1[14];
  *v43 = 18;
  *v44 = "TriggerVisibleResultsBackButton";
  *(v44 + 1) = 31;
  v44[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9ADAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFA58);
  __swift_project_value_buffer(v0, qword_1EBABFA58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SessionEndTriggerEventUnknown";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SessionEndTriggerEventNoPreviousSession";
  *(v10 + 8) = 39;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SessionEndTriggerEventExternalRequest";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SessionEndTriggerEventSessionIdle";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SessionEndTriggerEventMaxSessionTimePassed";
  *(v16 + 1) = 42;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "SessionEndTriggerEventGuidChanged";
  *(v18 + 1) = 33;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SessionEndTriggerEventCriticalMemory";
  *(v20 + 1) = 36;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "SessionEndTriggerEventEngagementReceived";
  *(v22 + 1) = 40;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "SessionEndTriggerEventFBFPostProcessed";
  *(v24 + 1) = 38;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9B14C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFA70);
  __swift_project_value_buffer(v0, qword_1EBABFA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ActionCardTypeUnknown";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ActionCardTypeNormal";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ActionCardTypeMaps";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ActionCardTypeITunesSheet";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ActionCardTypeHostedHTMLPage";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9B3F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFA88);
  __swift_project_value_buffer(v0, qword_1EBABFA88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1B965CDB0;
  v4 = v62 + v3 + v1[14];
  *(v62 + v3) = 0;
  *v4 = "TriggerSearchRequestEventUnknown";
  *(v4 + 8) = 32;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v62 + v3 + v2 + v1[14];
  *(v62 + v3 + v2) = 1;
  *v8 = "TriggerSearchRequestEventNewCharacter";
  *(v8 + 8) = 37;
  *(v8 + 16) = 2;
  v7();
  v9 = (v62 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "TriggerSearchRequestEventIMECommit";
  *(v10 + 1) = 34;
  v10[16] = 2;
  v7();
  v11 = (v62 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "TriggerSearchRequestEventBackspace";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v7();
  v13 = (v62 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "TriggerSearchRequestEventVoiceSearch";
  *(v14 + 1) = 36;
  v14[16] = 2;
  v7();
  v15 = (v62 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "TriggerSearchRequestEventDictation";
  *(v16 + 1) = 34;
  v16[16] = 2;
  v7();
  v17 = (v62 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "TriggerSearchRequestEventCopyAndPaste";
  *(v18 + 1) = 37;
  v18[16] = 2;
  v7();
  v19 = (v62 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "TriggerSearchRequestEventDragAndDrop";
  *(v20 + 1) = 36;
  v20[16] = 2;
  v7();
  v21 = (v62 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "TriggerSearchRequestEventSuggestion";
  *(v22 + 1) = 35;
  v22[16] = 2;
  v7();
  v23 = (v62 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TriggerSearchRequestEventPrefetch";
  *(v24 + 1) = 33;
  v24[16] = 2;
  v7();
  v25 = (v62 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "TriggerSearchRequestEventPartialSuggestion";
  *(v26 + 1) = 42;
  v26[16] = 2;
  v7();
  v27 = (v62 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "TriggerSearchRequestEventLookup";
  *(v28 + 1) = 31;
  v28[16] = 2;
  v7();
  v29 = (v62 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "TriggerSearchRequestEventCrossButton";
  *(v30 + 1) = 36;
  v30[16] = 2;
  v7();
  v31 = (v62 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "TriggerSearchRequestEventShowMore";
  *(v32 + 1) = 33;
  v32[16] = 2;
  v7();
  v33 = (v62 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "TriggerSearchRequestEventCard";
  *(v34 + 1) = 29;
  v34[16] = 2;
  v7();
  v35 = (v62 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "TriggerSearchRequestEventImageLoad";
  *(v36 + 1) = 34;
  v36[16] = 2;
  v7();
  v37 = (v62 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "TriggerSearchRequestEventBag";
  *(v38 + 1) = 28;
  v38[16] = 2;
  v7();
  v39 = (v62 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "TriggerSearchRequestEventUnlockDevice";
  *(v40 + 1) = 37;
  v40[16] = 2;
  v7();
  v41 = (v62 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "TriggerSearchRequestEventCorrection";
  *(v42 + 1) = 35;
  v42[16] = 2;
  v7();
  v43 = (v62 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "TriggerSearchRequestEventWarm";
  *(v44 + 1) = 29;
  v44[16] = 2;
  v7();
  v45 = (v62 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "TriggerSearchRequestEventFlight";
  *(v46 + 1) = 31;
  v46[16] = 2;
  v7();
  v47 = (v62 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "TriggerSearchRequestEventSuggestQueries";
  *(v48 + 1) = 39;
  v48[16] = 2;
  v7();
  v49 = (v62 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "TriggerSearchRequestEventSearchOnly";
  *(v50 + 1) = 35;
  v50[16] = 2;
  v7();
  v51 = (v62 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "TriggerSearchRequestEventReturnKey";
  *(v52 + 1) = 34;
  v52[16] = 2;
  v7();
  v53 = (v62 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "TriggerSearchRequestEventSuggestWithResults";
  *(v54 + 1) = 43;
  v54[16] = 2;
  v7();
  v55 = (v62 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "TriggerSearchRequestEventQueryBuilder";
  *(v56 + 1) = 37;
  v56[16] = 2;
  v7();
  v57 = (v62 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "TriggerSearchRequestEventResumeSearch";
  *(v58 + 1) = 37;
  v58[16] = 2;
  v7();
  v59 = (v62 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "TriggerSearchRequestEventScopeChanged";
  *(v60 + 1) = 37;
  v60[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F9BC00()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFAA0);
  __swift_project_value_buffer(v0, qword_1EBABFAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "EndpointTypeUnknown";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EndpointTypeParsec";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EndpointTypeGoogle";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EndpointTypeYahoo";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EndpointTypeBing";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "EndpointTypeDuckduckgo";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "EndpointTypeParsecSearch";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "EndpointTypeParsecImage";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "EndpointTypeYandex";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "EndpointTypeBaidu";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "EndpointTypeParsecBag";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "EndpointTypeParsecCard";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "EndpointTypeParsecWarm";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v9();
  v33 = (v5 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "EndpointTypeParsecFlight";
  *(v34 + 1) = 24;
  v34[16] = 2;
  v9();
  v35 = (v5 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 14;
  *v36 = "EndpointTypeSogou";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v9();
  v37 = (v5 + 15 * v2);
  v38 = v37 + v1[14];
  *v37 = 15;
  *v38 = "EndpointTypeQihoo";
  *(v38 + 1) = 17;
  v38[16] = 2;
  v9();
  v39 = (v5 + 16 * v2);
  v40 = v39 + v1[14];
  *v39 = 16;
  *v40 = "EndpointTypeEcosia";
  *(v40 + 1) = 18;
  v40[16] = 2;
  v9();
  v41 = (v5 + 17 * v2);
  v42 = v41 + v1[14];
  *v41 = 17;
  *v42 = "EndpointTypeParsecZeroKeywordSuggest";
  *(v42 + 1) = 36;
  v42[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9C1C0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFAB8);
  __swift_project_value_buffer(v0, qword_1EBABFAB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "IndexTypeUnknown";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IndexTypeSpotlight";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "IndexTypeCalculator";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "IndexTypeCoreDuet";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "IndexTypeSafariBookmarks";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "IndexTypeSafariHistory";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "IndexTypeLookupDictionary";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "IndexTypeEngagedCompletionCache";
  *(v22 + 1) = 31;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9C52C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFAD0);
  __swift_project_value_buffer(v0, qword_1EBABFAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CardDisappearEventUnknown";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CardDisappearEventBack";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CardDisappearEventSwipe";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CardDisappearEventPop";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CardDisappearEventDone";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "CardDisappearEventReplaced";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "CardDisappearEventBackgroundTap";
  *(v20 + 1) = 31;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "CardDisappearEventClose";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9C894()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFAE8);
  __swift_project_value_buffer(v0, qword_1EBABFAE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ClearInputTriggerEventUnknown";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ClearInputTriggerEventCrossButton";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ClearInputTriggerEventCut";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ClearInputTriggerEventBackspace";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9CAFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB00);
  __swift_project_value_buffer(v0, qword_1EBABFB00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SectionEngagementTriggerEventUnknown";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SectionEngagementTriggerEventSearchInApp";
  *(v10 + 8) = 40;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SectionEngagementTriggerEventShowMore";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SectionEngagementTriggerEventShowLess";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SectionEngagementTriggerEventClear";
  *(v16 + 1) = 34;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9CDA0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB18);
  __swift_project_value_buffer(v0, qword_1EBABFB18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VisibleSectionHeaderTypeUnknown";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VisibleSectionHeaderTypeSearchInApp";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VisibleSectionHeaderTypeShowMore";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VisibleSectionHeaderTypeNormal";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9D008()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB30);
  __swift_project_value_buffer(v0, qword_1EBABFB30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1B9661280;
  v4 = v46 + v3 + v1[14];
  *(v46 + v3) = 0;
  *v4 = "KnownFeedbackTypeUnknown";
  *(v4 + 8) = 24;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v46 + v3 + v2 + v1[14];
  *(v46 + v3 + v2) = 1;
  *v8 = "SafariAutoFill";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v46 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "Crowdsourcing";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v46 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "SpotlightResultFeatures";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v7();
  v13 = (v46 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SafariAutoPlay";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v46 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "Trystero";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v46 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "EngagedCompletionFeatures";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v7();
  v19 = (v46 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ProactiveEventTracker";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v46 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "PhiDES";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  v23 = (v46 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "DuetExpert";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v7();
  v25 = (v46 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "UserReport";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v7();
  v27 = (v46 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "Usage";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  v29 = (v46 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "FeedbackV2";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v7();
  v31 = (v46 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "FeedbackV2PB";
  *(v32 + 1) = 12;
  v32[16] = 2;
  v7();
  v33 = (v46 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ProactiveEventTrackerAggregated";
  *(v34 + 1) = 31;
  v34[16] = 2;
  v7();
  v35 = (v46 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "Handwashing";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v7();
  v37 = (v46 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "Experiments";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  v39 = (v46 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "FeatureQuality";
  *(v40 + 1) = 14;
  v40[16] = 2;
  v7();
  v41 = (v46 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "OnDeviceAnalytics";
  *(v42 + 1) = 17;
  v42[16] = 2;
  v7();
  v43 = (v46 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "ModelFeedback";
  *(v44 + 1) = 13;
  v44[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F9D628()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB48);
  __swift_project_value_buffer(v0, qword_1EBABFB48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FeedbackGradeUnknown";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FeedbackGradeDisastrous";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FeedbackGradeBad";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FeedbackGradeOK";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "FeedbackGradeGood";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "FeedbackGradeExcellent";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "FeedbackGradeOther";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9D94C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB60);
  __swift_project_value_buffer(v0, qword_1EBABFB60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1B965DC60;
  v4 = v54 + v3 + v1[14];
  *(v54 + v3) = 0;
  *v4 = "TriggerEngagementEventUnknown";
  *(v4 + 8) = 29;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v54 + v3 + v2 + v1[14];
  *(v54 + v3 + v2) = 1;
  *v8 = "TriggerEngagementEventEnter";
  *(v8 + 8) = 27;
  *(v8 + 16) = 2;
  v7();
  v9 = (v54 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "TriggerEngagementEventTap";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v54 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "TriggerEngagementEventClick";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v7();
  v13 = (v54 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "TriggerEngagementEventDoubleClick";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v7();
  v15 = (v54 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "TriggerEngagementEventPeek";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v7();
  v17 = (v54 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "TriggerEngagementEventPop";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v7();
  v19 = (v54 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "TriggerEngagementEventReveal";
  *(v20 + 1) = 28;
  v20[16] = 2;
  v7();
  v21 = (v54 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "TriggerEngagementEventArrowUp";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v7();
  v23 = (v54 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TriggerEngagementEventArrowDown";
  *(v24 + 1) = 31;
  v24[16] = 2;
  v7();
  v25 = (v54 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "TriggerEngagementEventThreeFingersTap";
  *(v26 + 1) = 37;
  v26[16] = 2;
  v7();
  v27 = (v54 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "TriggerEngagementEventSwipe";
  *(v28 + 1) = 27;
  v28[16] = 2;
  v7();
  v29 = (v54 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "TriggerEngagementEventForcedAfterListUpdate";
  *(v30 + 1) = 43;
  v30[16] = 2;
  v7();
  v31 = (v54 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "TriggerEngagementEventShortcut";
  *(v32 + 1) = 30;
  v32[16] = 2;
  v7();
  v33 = (v54 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "TriggerEngagementEventPan";
  *(v34 + 1) = 25;
  v34[16] = 2;
  v7();
  v35 = (v54 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "TriggerEngagementEventSwipeLeft";
  *(v36 + 1) = 31;
  v36[16] = 2;
  v7();
  v37 = (v54 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "TriggerEngagementEventSwipeRight";
  *(v38 + 1) = 32;
  v38[16] = 2;
  v7();
  v39 = (v54 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "TriggerEngagementEventClear";
  *(v40 + 1) = 27;
  v40[16] = 2;
  v7();
  v41 = (v54 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "TriggerEngagementEventDrag";
  *(v42 + 1) = 26;
  v42[16] = 2;
  v7();
  v43 = (v54 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "TriggerEngagementEventMultipleSelection";
  *(v44 + 1) = 39;
  v44[16] = 2;
  v7();
  v45 = (v54 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "TriggerEngagementEventAutoVoice";
  *(v46 + 1) = 31;
  v46[16] = 2;
  v7();
  v47 = (v54 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "TriggerEngagementMultipleSelectionMenu";
  *(v48 + 1) = 38;
  v48[16] = 2;
  v7();
  v49 = (v54 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "TriggerEngagementEventGetInfo";
  *(v50 + 1) = 29;
  v50[16] = 2;
  v7();
  v51 = (v54 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "TriggerEngagementEventArrowRight";
  *(v52 + 1) = 32;
  v52[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F9E070()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB78);
  __swift_project_value_buffer(v0, qword_1EBABFB78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1B966F8C0;
  v4 = v78 + v3 + v1[14];
  *(v78 + v3) = 0;
  *v4 = "ViewAppearEventUnknown";
  *(v4 + 8) = 22;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v78 + v3 + v2 + v1[14];
  *(v78 + v3 + v2) = 1;
  *v8 = "ViewAppearEventSwipeDown";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  v7();
  v9 = (v78 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ViewAppearEventTodayView";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v78 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ViewAppearEventLockScreen";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v78 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ViewAppearEventBreadcrumb";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v7();
  v15 = (v78 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ViewAppearEventKeyboardShortcut";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v7();
  v17 = (v78 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ViewAppearEventMouseClickOnMenu";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v7();
  v19 = (v78 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ViewAppearEventAppLaunch";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v7();
  v21 = (v78 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ViewAppearEventNewTab";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v7();
  v23 = (v78 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ViewAppearEventTapToInput";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v7();
  v25 = (v78 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ViewAppearEventNewWindow";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = (v78 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ViewAppearEventClick";
  *(v28 + 1) = 20;
  v28[16] = 2;
  v7();
  v29 = (v78 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ViewAppearEventTabSwitch";
  *(v30 + 1) = 24;
  v30[16] = 2;
  v7();
  v31 = (v78 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ViewAppearEventOrb";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v7();
  v33 = (v78 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ViewAppearEventContextualMenu";
  *(v34 + 1) = 29;
  v34[16] = 2;
  v7();
  v35 = (v78 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ViewAppearEventLookupHintTap";
  *(v36 + 1) = 28;
  v36[16] = 2;
  v7();
  v37 = (v78 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "ViewAppearEventLookupTap";
  *(v38 + 1) = 24;
  v38[16] = 2;
  v7();
  v39 = (v78 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "ViewAppearEventSwipeUp";
  *(v40 + 1) = 22;
  v40[16] = 2;
  v7();
  v41 = (v78 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "ViewAppearEventSwipeLeft";
  *(v42 + 1) = 24;
  v42[16] = 2;
  v7();
  v43 = (v78 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "ViewAppearEventSwipeRight";
  *(v44 + 1) = 25;
  v44[16] = 2;
  v7();
  v45 = (v78 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "ViewAppearEventStartComposing";
  *(v46 + 1) = 29;
  v46[16] = 2;
  v7();
  v47 = (v78 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "ViewAppearEventFindPopularItems";
  *(v48 + 1) = 31;
  v48[16] = 2;
  v7();
  v49 = (v78 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "ViewAppearEventPullDownHomeScreen";
  *(v50 + 1) = 33;
  v50[16] = 2;
  v7();
  v51 = (v78 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "ViewAppearEventNotificationCenter";
  *(v52 + 1) = 33;
  v52[16] = 2;
  v7();
  v53 = (v78 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "ViewAppearEventPartialPullDown";
  *(v54 + 1) = 30;
  v54[16] = 2;
  v7();
  v55 = (v78 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "ViewAppearEventUnlockDevice";
  *(v56 + 1) = 27;
  v56[16] = 2;
  v7();
  v57 = (v78 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "ViewAppearEventDidEnterForeground";
  *(v58 + 1) = 33;
  v58[16] = 2;
  v7();
  v59 = (v78 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "ViewAppearEventBack";
  *(v60 + 1) = 19;
  v60[16] = 2;
  v7();
  v61 = (v78 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "ViewAppearEventInfoIconTap";
  *(v62 + 1) = 26;
  v62[16] = 2;
  v7();
  v63 = (v78 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "ViewAppearEventPullDownNotificationCenter";
  *(v64 + 1) = 41;
  v64[16] = 2;
  v7();
  v65 = (v78 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "ViewAppearEventHomeScreenButton";
  *(v66 + 1) = 31;
  v66[16] = 2;
  v7();
  v67 = (v78 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "ViewAppearEventPausedVideoIconTap";
  *(v68 + 1) = 33;
  v68[16] = 2;
  v7();
  v69 = (v78 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "ViewAppearEventLiftedSubjectStaticImageLongPress";
  *(v70 + 1) = 48;
  v70[16] = 2;
  v7();
  v71 = (v78 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "ViewAppearEventLiftedSubjectPausedVideoLongPress";
  *(v72 + 1) = 48;
  v72[16] = 2;
  v7();
  v73 = (v78 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "ViewAppearEventStaticImageIconTap";
  *(v74 + 1) = 33;
  v74[16] = 2;
  v7();
  v75 = (v78 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "ViewAppearEventStaticImageLongPress";
  *(v76 + 1) = 35;
  v76[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F9EA48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB90);
  __swift_project_value_buffer(v0, qword_1EBABFB90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1B9667720;
  v4 = v59 + v3;
  v5 = v59 + v3 + v1[14];
  *(v59 + v3) = 0;
  *v5 = "ViewDisappearEventUnknown";
  *(v5 + 8) = 25;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ViewDisappearEventKilled";
  *(v9 + 8) = 24;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ViewDisappearEventHomeButton";
  *(v11 + 1) = 28;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ViewDisappearEventTaskSwitcher";
  *(v13 + 1) = 30;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ViewDisappearEventCancel";
  *(v15 + 1) = 24;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ViewDisappearEventEscape";
  *(v17 + 1) = 24;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ViewDisappearEventCloseWindowByKeyboard";
  *(v19 + 1) = 39;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ViewDisappearEventCloseWindowByMouse";
  *(v21 + 1) = 36;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "ViewDisappearEventMinimizeWindowByKeyboard";
  *(v23 + 1) = 42;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "ViewDisappearEventMinimizeWindowByMouse";
  *(v25 + 1) = 39;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "ViewDisappearEventSwitchedToOtherApp";
  *(v27 + 1) = 36;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "ViewDisappearEventQuitApp";
  *(v29 + 1) = 25;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "ViewDisappearEventLockButton";
  *(v31 + 1) = 28;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "ViewDisappearEventClickNotificationBanner";
  *(v33 + 1) = 41;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "ViewDisappearEventPhoneCall";
  *(v35 + 1) = 27;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "ViewDisappearEventLostFocus";
  *(v37 + 1) = 27;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 16;
  *v39 = "ViewDisappearEventDone";
  *(v39 + 1) = 22;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 17;
  *v41 = "ViewDisappearEventSwipeDown";
  *(v41 + 1) = 27;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 18;
  *v43 = "ViewDisappearEventSwipeUp";
  *(v43 + 1) = 25;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 19;
  *v45 = "ViewDisappearEventSwipeLeft";
  *(v45 + 1) = 27;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 20;
  *v47 = "ViewDisappearEventSwipeRight";
  *(v47 + 1) = 28;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 21;
  *v49 = "ViewDisappearEventShareButton";
  *(v49 + 1) = 29;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 22;
  *v51 = "ViewDisappearEventDeviceIdle";
  *(v51 + 1) = 28;
  v51[16] = 2;
  v8();
  v52 = (v4 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 23;
  *v53 = "ViewDisappearEventDidEnterBackground";
  *(v53 + 1) = 36;
  v53[16] = 2;
  v8();
  v54 = (v4 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 24;
  *v55 = "ViewDisappearEventGoToSite";
  *(v55 + 1) = 26;
  v55[16] = 2;
  v8();
  v56 = (v4 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 25;
  *v57 = "ViewDisappearEventDidChangeTab";
  *(v57 + 1) = 30;
  v57[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8F9F1D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFBA8);
  __swift_project_value_buffer(v0, qword_1EBABFBA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1B966F8D0;
  v4 = v104 + v3 + v1[14];
  *(v104 + v3) = 0;
  *v4 = "TimingDataKeyUnknown";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v104 + v3 + v2 + v1[14];
  *(v104 + v3 + v2) = 1;
  *v8 = "TimingDataConnectionReused";
  *(v8 + 8) = 26;
  *(v8 + 16) = 2;
  v7();
  v9 = (v104 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "TimingDataConnectionPeerAddress";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v7();
  v11 = (v104 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "TimingDataConnectionInterfaceIdentifier";
  *(v12 + 1) = 39;
  v12[16] = 2;
  v7();
  v13 = (v104 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "TimingDataConnectionUUID";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v104 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "TimingDataConnectionStartTimeCounts";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v7();
  v17 = (v104 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "TimingDataConnectionStopTimeCounts";
  *(v18 + 1) = 34;
  v18[16] = 2;
  v7();
  v19 = (v104 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "TimingDataNStatRXPackets";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v7();
  v21 = (v104 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "TimingDataNStatRXBytes";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v7();
  v23 = (v104 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TimingDataNStatTXPackets";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v7();
  v25 = (v104 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "TimingDataNStatTXBytes";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v7();
  v27 = (v104 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "TimingDataNStatRXDuplicateBytes";
  *(v28 + 1) = 31;
  v28[16] = 2;
  v7();
  v29 = (v104 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "TimingDataNStatRXOutOfOrderBytes";
  *(v30 + 1) = 32;
  v30[16] = 2;
  v7();
  v31 = (v104 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "TimingDataNStatTXRetransmit";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v7();
  v33 = (v104 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "TimingDataNStatConnectAttempts";
  *(v34 + 1) = 30;
  v34[16] = 2;
  v7();
  v35 = (v104 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "TimingDataNStatConnectSuccesses";
  *(v36 + 1) = 31;
  v36[16] = 2;
  v7();
  v37 = (v104 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "TimingDataNStatMinRTT";
  *(v38 + 1) = 21;
  v38[16] = 2;
  v7();
  v39 = (v104 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "TimingDataNStatAvgRTT";
  *(v40 + 1) = 21;
  v40[16] = 2;
  v7();
  v41 = (v104 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "TimingDataNStatVarRTT";
  *(v42 + 1) = 21;
  v42[16] = 2;
  v7();
  v43 = (v104 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "TimingDataNStatCellRXPackets";
  *(v44 + 1) = 28;
  v44[16] = 2;
  v7();
  v45 = (v104 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "TimingDataNStatCellTXPackets";
  *(v46 + 1) = 28;
  v46[16] = 2;
  v7();
  v47 = (v104 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "TimingDataNStatWifiRXPackets";
  *(v48 + 1) = 28;
  v48[16] = 2;
  v7();
  v49 = (v104 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "TimingDataNStatWifiTXPackets";
  *(v50 + 1) = 28;
  v50[16] = 2;
  v7();
  v51 = (v104 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "TimingDataNStatWiredRXPackets";
  *(v52 + 1) = 29;
  v52[16] = 2;
  v7();
  v53 = (v104 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "TimingDataNStatWiredTXPackets";
  *(v54 + 1) = 29;
  v54[16] = 2;
  v7();
  v55 = (v104 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "TimingDataTCPFastOpenStats";
  *(v56 + 1) = 26;
  v56[16] = 2;
  v7();
  v57 = (v104 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "TimingDataTCPInfoAtStart";
  *(v58 + 1) = 24;
  v58[16] = 2;
  v7();
  v59 = (v104 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "TimingDataTCPInfoAtStop";
  *(v60 + 1) = 23;
  v60[16] = 2;
  v7();
  v61 = (v104 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "TimingDataLocalAddressAndPort";
  *(v62 + 1) = 29;
  v62[16] = 2;
  v7();
  v63 = (v104 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "TimingDataRemoteAddressAndPort";
  *(v64 + 1) = 30;
  v64[16] = 2;
  v7();
  v65 = (v104 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "TimingDataNetworkProtocolName";
  *(v66 + 1) = 29;
  v66[16] = 2;
  v7();
  v67 = (v104 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "TimingDataConnectionRace";
  *(v68 + 1) = 24;
  v68[16] = 2;
  v7();
  v69 = (v104 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "TimingDataQUICWhitelistedDomain";
  *(v70 + 1) = 31;
  v70[16] = 2;
  v7();
  v71 = (v104 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "TimingDataRequestHeaderSize";
  *(v72 + 1) = 27;
  v72[16] = 2;
  v7();
  v73 = (v104 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "TimingDataResponseHeaderSize";
  *(v74 + 1) = 28;
  v74[16] = 2;
  v7();
  v75 = (v104 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "TimingDataResponseBodyBytesReceived";
  *(v76 + 1) = 35;
  v76[16] = 2;
  v7();
  v77 = (v104 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "TimingDataResponseBodyBytesDecoded";
  *(v78 + 1) = 34;
  v78[16] = 2;
  v7();
  v79 = (v104 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "TimingDataFetchStart";
  *(v80 + 1) = 20;
  v80[16] = 2;
  v7();
  v81 = (v104 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "TimingDataDomainLookupStart";
  *(v82 + 1) = 27;
  v82[16] = 2;
  v7();
  v83 = (v104 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "TimingDataDomainLookupEnd";
  *(v84 + 1) = 25;
  v84[16] = 2;
  v7();
  v85 = (v104 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "TimingDataConnectStart";
  *(v86 + 1) = 22;
  v86[16] = 2;
  v7();
  v87 = (v104 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "TimingDataSecureConnectionStart";
  *(v88 + 1) = 31;
  v88[16] = 2;
  v7();
  v89 = (v104 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "TimingDataConnectEnd";
  *(v90 + 1) = 20;
  v90[16] = 2;
  v7();
  v91 = (v104 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "TimingDataRequestStart";
  *(v92 + 1) = 22;
  v92[16] = 2;
  v7();
  v93 = (v104 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "TimingDataRequestEnd";
  *(v94 + 1) = 20;
  v94[16] = 2;
  v7();
  v95 = (v104 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 45;
  *v96 = "TimingDataResponseStart";
  *(v96 + 1) = 23;
  v96[16] = 2;
  v7();
  v97 = (v104 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 46;
  *v98 = "TimingDataResponseEnd";
  *(v98 + 1) = 21;
  v98[16] = 2;
  v7();
  v99 = (v104 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 47;
  *v100 = "TimingDataRedirectStart";
  *(v100 + 1) = 23;
  v100[16] = 2;
  v7();
  v101 = (v104 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 48;
  *v102 = "TimingDataRedirectEnd";
  *(v102 + 1) = 21;
  v102[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F9FEA8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFBC0);
  __swift_project_value_buffer(v0, qword_1EBABFBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1B966F8D0;
  v4 = v104 + v3 + v1[14];
  *(v104 + v3) = 0;
  *v4 = "CommandTypeUnknown";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v104 + v3 + v2 + v1[14];
  *(v104 + v3 + v2) = 1;
  *v8 = "CommandTypeShowContactCard";
  *(v8 + 8) = 26;
  *(v8 + 16) = 2;
  v7();
  v9 = (v104 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CommandTypeShowSFCard";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v104 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CommandTypeShowAppStoreSheet";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v7();
  v13 = (v104 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CommandTypeOpenPunchout";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v7();
  v15 = (v104 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CommandTypeOpenFileProviderItem";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v7();
  v17 = (v104 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "CommandTypeOpenAppClip";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v104 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CommandTypeOpenWebClip";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v7();
  v21 = (v104 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "CommandTypeRequestAppClipInstall";
  *(v22 + 1) = 32;
  v22[16] = 2;
  v7();
  v23 = (v104 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CommandTypeRequestUserReport";
  *(v24 + 1) = 28;
  v24[16] = 2;
  v7();
  v25 = (v104 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CommandTypeLaunchApp";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  v27 = (v104 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "CommandTypeRunVoiceShortcut";
  *(v28 + 1) = 27;
  v28[16] = 2;
  v7();
  v29 = (v104 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "CommandTypeIndexedUserActivity";
  *(v30 + 1) = 30;
  v30[16] = 2;
  v7();
  v31 = (v104 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "CommandTypeOpenCoreSpotlightItem";
  *(v32 + 1) = 32;
  v32[16] = 2;
  v7();
  v33 = (v104 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "CommandTypePerformIntent";
  *(v34 + 1) = 24;
  v34[16] = 2;
  v7();
  v35 = (v104 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CommandTypeSearchInApp";
  *(v36 + 1) = 22;
  v36[16] = 2;
  v7();
  v37 = (v104 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "CommandTypeUpdateSearchQuery";
  *(v38 + 1) = 28;
  v38[16] = 2;
  v7();
  v39 = (v104 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "CommandTypeSearchWeb";
  *(v40 + 1) = 20;
  v40[16] = 2;
  v7();
  v41 = (v104 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "CommandTypeInvokeSiri";
  *(v42 + 1) = 21;
  v42[16] = 2;
  v7();
  v43 = (v104 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "CommandTypePerformContactQuery";
  *(v44 + 1) = 30;
  v44[16] = 2;
  v7();
  v45 = (v104 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "CommandTypeOpenCalculation";
  *(v46 + 1) = 26;
  v46[16] = 2;
  v7();
  v47 = (v104 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "CommandTypePlayVideo";
  *(v48 + 1) = 20;
  v48[16] = 2;
  v7();
  v49 = (v104 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "CommandTypeCall";
  *(v50 + 1) = 15;
  v50[16] = 2;
  v7();
  v51 = (v104 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "CommandTypeEmail";
  *(v52 + 1) = 16;
  v52[16] = 2;
  v7();
  v53 = (v104 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "CommandTypeBeginMapsRouting";
  *(v54 + 1) = 27;
  v54[16] = 2;
  v7();
  v55 = (v104 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "CommandTypeToggleAudio";
  *(v56 + 1) = 22;
  v56[16] = 2;
  v7();
  v57 = (v104 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "CommandTypePerformPersonEntityQuery";
  *(v58 + 1) = 35;
  v58[16] = 2;
  v7();
  v59 = (v104 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "CommandTypeShowPurchaseRequest";
  *(v60 + 1) = 30;
  v60[16] = 2;
  v7();
  v61 = (v104 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "CommandTypeShowScreenTimeRequestSheet";
  *(v62 + 1) = 37;
  v62[16] = 2;
  v7();
  v63 = (v104 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "CommandTypePerformEntityQuery";
  *(v64 + 1) = 29;
  v64[16] = 2;
  v7();
  v65 = (v104 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "CommandTypeShare";
  *(v66 + 1) = 16;
  v66[16] = 2;
  v7();
  v67 = (v104 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "CommandTypeCopy";
  *(v68 + 1) = 15;
  v68[16] = 2;
  v7();
  v69 = (v104 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "CommandTypeToggleWatchListStatus";
  *(v70 + 1) = 32;
  v70[16] = 2;
  v7();
  v71 = (v104 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "CommandTypeShowPhotosOneUpView";
  *(v72 + 1) = 30;
  v72[16] = 2;
  v7();
  v73 = (v104 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "CommandTypePlayMedia";
  *(v74 + 1) = 20;
  v74[16] = 2;
  v7();
  v75 = (v104 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "CommandTypeOpenMedia";
  *(v76 + 1) = 20;
  v76[16] = 2;
  v7();
  v77 = (v104 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "CommandTypeAddToPhotosLibrary";
  *(v78 + 1) = 29;
  v78[16] = 2;
  v7();
  v79 = (v104 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "CommandTypePerformContactAction";
  *(v80 + 1) = 31;
  v80[16] = 2;
  v7();
  v81 = (v104 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "CommandTypeExpandInline";
  *(v82 + 1) = 23;
  v82[16] = 2;
  v7();
  v83 = (v104 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "CommandTypeSubscribeForUpdates";
  *(v84 + 1) = 30;
  v84[16] = 2;
  v7();
  v85 = (v104 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "CommandTypeViewEmail";
  *(v86 + 1) = 20;
  v86[16] = 2;
  v7();
  v87 = (v104 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "CommandTypeRejectPeopleInPhoto";
  *(v88 + 1) = 30;
  v88[16] = 2;
  v7();
  v89 = (v104 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "CommandTypeShowWrapperResponseView";
  *(v90 + 1) = 34;
  v90[16] = 2;
  v7();
  v91 = (v104 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "CommandTypeClearProactiveCategory";
  *(v92 + 1) = 33;
  v92[16] = 2;
  v7();
  v93 = (v104 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "CommandTypeCreateContact";
  *(v94 + 1) = 24;
  v94[16] = 2;
  v7();
  v95 = (v104 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 45;
  *v96 = "CommandTypeCreateCalendarEvent";
  *(v96 + 1) = 30;
  v96[16] = 2;
  v7();
  v97 = (v104 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 46;
  *v98 = "CommandTypeCreateReminder";
  *(v98 + 1) = 25;
  v98[16] = 2;
  v7();
  v99 = (v104 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 47;
  *v100 = "CommandTypeManageReservation";
  *(v100 + 1) = 28;
  v100[16] = 2;
  v7();
  v101 = (v104 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 50;
  *v102 = "CommandTypeFlightCheckin";
  *(v102 + 1) = 24;
  v102[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FA0B9C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFBD8);
  __swift_project_value_buffer(v0, qword_1EBABFBD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CoreSpotlightIndexUsedUnknown";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CoreSpotlightIndexUsedMainIndex";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CoreSpotlightIndexUsedHighPriorityIndex";
  *(v12 + 1) = 39;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA0DC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFBF0);
  __swift_project_value_buffer(v0, qword_1EBABFBF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CoreSpotlightIndexUsedReasonUnknown";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CoreSpotlightIndexUsedReasonHighPriorityDueToTimeOut";
  *(v10 + 1) = 52;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CoreSpotlightIndexUsedReasonHighPriorityDueToHighRelevance";
  *(v12 + 1) = 58;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA0FF4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC08);
  __swift_project_value_buffer(v0, qword_1EBABFC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ThirdPartyQueryCompletionMatchedUnknown";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ThirdPartyQueryCompletionMatchedFalse";
  *(v10 + 1) = 37;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ThirdPartyQueryCompletionMatchedTrue";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA1220()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC20);
  __swift_project_value_buffer(v0, qword_1EBABFC20);
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

uint64_t sub_1B8FA1584()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC38);
  __swift_project_value_buffer(v0, qword_1EBABFC38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "HideReasonUnknown";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HideReasonSafariDemoting";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HideReason3rdPartyNavigational";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA17B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC50);
  __swift_project_value_buffer(v0, qword_1EBABFC50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MailSuggestionDataSourcesUnknown";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MailSuggestionDataSourcesPommes";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MailSuggestionDataSourcesSKGMegadome";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MailSuggestionDataSourcesContacts";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA1A18()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC68);
  __swift_project_value_buffer(v0, qword_1EBABFC68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v4 = "CoreSpotlightResultQueryRecencyUnknown";
  *(v4 + 8) = 38;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 1;
  *v8 = "CoreSpotlightResultQueryRecencyLastDay";
  *(v8 + 8) = 38;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CoreSpotlightResultQueryRecencyLast3Days";
  *(v10 + 1) = 40;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CoreSpotlightResultQueryRecencyLastWeek";
  *(v12 + 1) = 39;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CoreSpotlightResultQueryRecencyLastMonth";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CoreSpotlightResultQueryRecencyLast3Months";
  *(v16 + 1) = 42;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "CoreSpotlightResultQueryRecencyLastYear";
  *(v18 + 1) = 39;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CoreSpotlightResultQueryRecencyLast18Months";
  *(v20 + 1) = 43;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "CoreSpotlightResultQueryRecencyBefore18Months";
  *(v22 + 1) = 45;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FA1DAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC80);
  __swift_project_value_buffer(v0, qword_1EBABFC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "EmbeddingStatusTypeNoEmbedding";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EmbeddingStatusTypeNonPurgeableEmbedding";
  *(v10 + 1) = 40;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EmbeddingStatusTypePurgeableEmbedding";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA1FD8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC98);
  __swift_project_value_buffer(v0, qword_1EBABFC98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ContactActionTypeUnknown";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ContactActionTypeMail";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ContactActionTypeMessage";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ContactActionTypeVideoCall";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ContactActionTypeAudioCall";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "ContactActionTypeTTYCall";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "ContactActionTypeTTYRelayCall";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "ContactActionTypePay";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "ContactActionTypeDirections";
  *(v24 + 1) = 27;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "ContactActionTypeExpanse";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA23B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFCB0);
  __swift_project_value_buffer(v0, qword_1EBABFCB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CounterfactualErrorNone";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CounterfactualErrorUnknown";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CounterfactualErrorTimeout";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA25DC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFCC8);
  __swift_project_value_buffer(v0, qword_1EBABFCC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1B965A5F0;
  v4 = v50 + v3 + v1[14];
  *(v50 + v3) = 0;
  *v4 = "MKPlaceViewFeedbackTypeUnknown";
  *(v4 + 8) = 30;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v50 + v3 + v2 + v1[14];
  *(v50 + v3 + v2) = 2;
  *v8 = "MKPlaceViewFeedbackTypePhoneNumber";
  *(v8 + 8) = 34;
  *(v8 + 16) = 2;
  v7();
  v9 = (v50 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "MKPlaceViewFeedbackTypeWebsite";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v7();
  v11 = (v50 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "MKPlaceViewFeedbackTypeAddContact";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v7();
  v13 = (v50 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "MKPlaceViewFeedbackTypeShare";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v7();
  v15 = (v50 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 12;
  *v16 = "MKPlaceViewFeedbackTypeDirectionsToHere";
  *(v16 + 1) = 39;
  v16[16] = 2;
  v7();
  v17 = (v50 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 13;
  *v18 = "MKPlaceViewFeedbackTypeDirectionsFromHere";
  *(v18 + 1) = 41;
  v18[16] = 2;
  v7();
  v19 = (v50 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 14;
  *v20 = "MKPlaceViewFeedbackTypeDismissed";
  *(v20 + 1) = 32;
  v20[16] = 2;
  v7();
  v21 = (v50 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 62;
  *v22 = "MKPlaceViewFeedbackTypeReportAProblem";
  *(v22 + 1) = 37;
  v22[16] = 2;
  v7();
  v23 = (v50 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 124;
  *v24 = "MKPlaceViewFeedbackTypeEditContact";
  *(v24 + 1) = 34;
  v24[16] = 2;
  v7();
  v25 = (v50 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 125;
  *v26 = "MKPlaceViewFeedbackTypeDeleteContact";
  *(v26 + 1) = 36;
  v26[16] = 2;
  v7();
  v27 = (v50 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 127;
  *v28 = "MKPlaceViewFeedbackTypeFlyoverTour";
  *(v28 + 1) = 34;
  v28[16] = 2;
  v7();
  v29 = (v50 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 172;
  *v30 = "MKPlaceViewFeedbackTypeAllPhotos";
  *(v30 + 1) = 32;
  v30[16] = 2;
  v7();
  v31 = (v50 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 173;
  *v32 = "MKPlaceViewFeedbackTypePhoto";
  *(v32 + 1) = 28;
  v32[16] = 2;
  v7();
  v33 = (v50 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 174;
  *v34 = "MKPlaceViewFeedbackTypeAddPhoto";
  *(v34 + 1) = 31;
  v34[16] = 2;
  v7();
  v35 = (v50 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 175;
  *v36 = "MKPlaceViewFeedbackTypeAllReviews";
  *(v36 + 1) = 33;
  v36[16] = 2;
  v7();
  v37 = (v50 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 176;
  *v38 = "MKPlaceViewFeedbackTypeReview";
  *(v38 + 1) = 29;
  v38[16] = 2;
  v7();
  v39 = (v50 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 177;
  *v40 = "MKPlaceViewFeedbackTypeWriteReview";
  *(v40 + 1) = 34;
  v40[16] = 2;
  v7();
  v41 = (v50 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 178;
  *v42 = "MKPlaceViewFeedbackTypeDeal";
  *(v42 + 1) = 27;
  v42[16] = 2;
  v7();
  v43 = (v50 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 179;
  *v44 = "MKPlaceViewFeedbackTypeCheckin";
  *(v44 + 1) = 30;
  v44[16] = 2;
  v7();
  v45 = (v50 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 180;
  *v46 = "MKPlaceViewFeedbackTypeMoreInfo";
  *(v46 + 1) = 31;
  v46[16] = 2;
  v7();
  v47 = (v50 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 201;
  *v48 = "MKPlaceViewFeedbackTypePostalAddress";
  *(v48 + 1) = 36;
  v48[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FA2CB0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFCE0);
  __swift_project_value_buffer(v0, qword_1EBABFCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SKProductPageResultCanceled";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SKProductPageResultClosed";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SKProductPageResultDownloadComplete";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SKProductPageResultGotoStore";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SKProductPageResultPurchased";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "SKProductPageResultRightBarButtonAction";
  *(v18 + 1) = 39;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA2F94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFCF8);
  __swift_project_value_buffer(v0, qword_1EBABFCF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SearchTypeUnknown";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SearchTypeZeroKeyword";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SearchTypeAsYouType";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SearchTypeCommitted";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA31F8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFD10);
  __swift_project_value_buffer(v0, qword_1EBABFD10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "EntityTypeUnknown";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EntityTypePhotos";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EntityTypePerson";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EntityTypeServer";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EntityTypeTopic";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA3498()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFD28);
  __swift_project_value_buffer(v0, qword_1EBABFD28);
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

uint64_t sub_1B8FA3740()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFD40);
  __swift_project_value_buffer(v0, qword_1EBABFD40);
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

uint64_t sub_1B8FA39A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFD58);
  __swift_project_value_buffer(v0, qword_1EBABFD58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 0;
  *v4 = "PhotosLibraryBucketUnknown";
  *(v4 + 8) = 26;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 1;
  *v8 = "PhotosLibraryBucket500OrLess";
  *(v8 + 8) = 28;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PhotosLibraryBucket500To2K";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PhotosLibraryBucket2KTo5K";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PhotosLibraryBucket5KTo10K";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "PhotosLibraryBucket10KTo20K";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "PhotosLibraryBucket20KTo30K";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "PhotosLibraryBucket30KTo40K";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "PhotosLibraryBucket40KTo50K";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "PhotosLibraryBucket50KTo100K";
  *(v24 + 1) = 28;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "PhotosLibraryBucketMoreThan100K";
  *(v26 + 1) = 31;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FA3DAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFD70);
  __swift_project_value_buffer(v0, qword_1EBABFD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 0;
  *v4 = "PhotosRetrievalBucketUnknown";
  *(v4 + 8) = 28;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 1;
  *v8 = "PhotosRetrievalBucket10OrLess";
  *(v8 + 8) = 29;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PhotosRetrievalBucket10To50";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PhotosRetrievalBucket50To100";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PhotosRetrievalBucket100To250";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "PhotosRetrievalBucket250To500";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "PhotosRetrievalBucket500To2K";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "PhotosRetrievalBucket2KTo5K";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "PhotosRetrievalBucket5KTo10K";
  *(v22 + 1) = 28;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "PhotosRetrievalBucket10KTo20K";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "PhotosRetrievalBucket20KTo30K";
  *(v26 + 1) = 29;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "PhotosRetrievalBucket30KTo40K";
  *(v28 + 1) = 29;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "PhotosRetrievalBucket40KTo50K";
  *(v30 + 1) = 29;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "PhotosRetrievalBucket50KTo100K";
  *(v32 + 1) = 30;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "PhotosRetrievalBucketMoreThan100K";
  *(v34 + 1) = 33;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FA4294()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFD88);
  __swift_project_value_buffer(v0, qword_1EBABFD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LookupHintRelevancyUnknown";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LookupHintRelevancyGood";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LookupHintRelevancyBad";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA44C0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFDA0);
  __swift_project_value_buffer(v0, qword_1EBABFDA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "FlusherEndpointCrowdsourcing";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FlusherEndpointFeedback";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA46B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFDB8);
  __swift_project_value_buffer(v0, qword_1EBABFDB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1B966F8F0;
  v4 = v102 + v3 + v1[14];
  *(v102 + v3) = 0;
  *v4 = "FeedbackTypeUnknown";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v102 + v3 + v2 + v1[14];
  *(v102 + v3 + v2) = 1;
  *v8 = "FeedbackTypeSearchViewAppear";
  *(v8 + 8) = 28;
  *(v8 + 16) = 2;
  v7();
  v9 = (v102 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "FeedbackTypeSearchViewDisappear";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v7();
  v11 = (v102 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "FeedbackTypeRanking";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v102 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "FeedbackTypeRankSections";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v102 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "FeedbackTypeResultRanking";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v7();
  v17 = (v102 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "FeedbackTypeResult";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  v19 = (v102 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "FeedbackTypeEngagement";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v7();
  v21 = (v102 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "FeedbackTypeVisibleResults";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v7();
  v23 = (v102 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "FeedbackTypeCardSection";
  *(v24 + 1) = 23;
  v24[16] = 2;
  v7();
  v25 = (v102 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "FeedbackTypeMapsCardSection";
  *(v26 + 1) = 27;
  v26[16] = 2;
  v7();
  v27 = (v102 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "FeedbackTypeStoreCardSection";
  *(v28 + 1) = 28;
  v28[16] = 2;
  v7();
  v29 = (v102 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "FeedbackTypeStartSearch";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v102 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "FeedbackTypeEndSearch";
  *(v32 + 1) = 21;
  v32[16] = 2;
  v7();
  v33 = (v102 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "FeedbackTypeStartNetworkSearch";
  *(v34 + 1) = 30;
  v34[16] = 2;
  v7();
  v35 = (v102 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "FeedbackTypeEndNetworkSearch";
  *(v36 + 1) = 28;
  v36[16] = 2;
  v7();
  v37 = (v102 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "FeedbackTypeStartLocalSearch";
  *(v38 + 1) = 28;
  v38[16] = 2;
  v7();
  v39 = (v102 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "FeedbackTypeEndLocalSearch";
  *(v40 + 1) = 26;
  v40[16] = 2;
  v7();
  v41 = (v102 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "FeedbackTypeError";
  *(v42 + 1) = 17;
  v42[16] = 2;
  v7();
  v43 = (v102 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "FeedbackTypeCustomUnknown";
  *(v44 + 1) = 25;
  v44[16] = 2;
  v7();
  v45 = (v102 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "FeedbackTypeSuggestionEngagement";
  *(v46 + 1) = 32;
  v46[16] = 2;
  v7();
  v47 = (v102 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "FeedbackTypeCardViewDisappear";
  *(v48 + 1) = 29;
  v48[16] = 2;
  v7();
  v49 = (v102 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "FeedbackTypeVisibleSuggestions";
  *(v50 + 1) = 30;
  v50[16] = 2;
  v7();
  v51 = (v102 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "FeedbackTypeResultsReceivedAfterTimeout";
  *(v52 + 1) = 39;
  v52[16] = 2;
  v7();
  v53 = (v102 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "FeedbackTypeLateSectionsAppended";
  *(v54 + 1) = 32;
  v54[16] = 2;
  v7();
  v55 = (v102 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "FeedbackTypeClearInput";
  *(v56 + 1) = 22;
  v56[16] = 2;
  v7();
  v57 = (v102 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "FeedbackTypeSectionEngagement";
  *(v58 + 1) = 29;
  v58[16] = 2;
  v7();
  v59 = (v102 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "FeedbackTypeVisibleSectionHeader";
  *(v60 + 1) = 32;
  v60[16] = 2;
  v7();
  v61 = (v102 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "FeedbackTypeDidGoToSite";
  *(v62 + 1) = 23;
  v62[16] = 2;
  v7();
  v63 = (v102 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "FeedbackTypeDidGoToSearch";
  *(v64 + 1) = 25;
  v64[16] = 2;
  v7();
  v65 = (v102 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "FeedbackTypeSessionMissingResults";
  *(v66 + 1) = 33;
  v66[16] = 2;
  v7();
  v67 = (v102 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "FeedbackTypeSessionMissingSuggestions";
  *(v68 + 1) = 37;
  v68[16] = 2;
  v7();
  v69 = (v102 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "FeedbackTypeResultGrading";
  *(v70 + 1) = 25;
  v70[16] = 2;
  v7();
  v71 = (v102 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "FeedbackTypeLookupHintRelevancyGraded";
  *(v72 + 1) = 37;
  v72[16] = 2;
  v7();
  v73 = (v102 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "FeedbackTypeConnectionInvalidated";
  *(v74 + 1) = 33;
  v74[16] = 2;
  v7();
  v75 = (v102 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "FeedbackTypeEngagementCard";
  *(v76 + 1) = 26;
  v76[16] = 2;
  v7();
  v77 = (v102 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "FeedbackTypeSessionEnd";
  *(v78 + 1) = 22;
  v78[16] = 2;
  v7();
  v79 = (v102 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "FeedbackTypeCardViewAppear";
  *(v80 + 1) = 26;
  v80[16] = 2;
  v7();
  v81 = (v102 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "FeedbackTypeSkipSearch";
  *(v82 + 1) = 22;
  v82[16] = 2;
  v7();
  v83 = (v102 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "FeedbackTypeCacheHit";
  *(v84 + 1) = 20;
  v84[16] = 2;
  v7();
  v85 = (v102 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "FeedbackTypeCBAEngagement";
  *(v86 + 1) = 25;
  v86[16] = 2;
  v7();
  v87 = (v102 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "FeedbackTypeClientTiming";
  *(v88 + 1) = 24;
  v88[16] = 2;
  v7();
  v89 = (v102 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "FeedbackTypeCommandEngagement";
  *(v90 + 1) = 29;
  v90[16] = 2;
  v7();
  v91 = (v102 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "FeedbackTypeDynamicButtonVisibility";
  *(v92 + 1) = 35;
  v92[16] = 2;
  v7();
  v93 = (v102 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "FeedbackTypeExperimentTriggeredFeedback";
  *(v94 + 1) = 39;
  v94[16] = 2;
  v7();
  v95 = (v102 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 100;
  *v96 = "FeedbackTypeCustomCrowdsourcing";
  *(v96 + 1) = 31;
  v96[16] = 2;
  v7();
  v97 = (v102 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 101;
  *v98 = "FeedbackTypeCustomSafariAutofill";
  *(v98 + 1) = 32;
  v98[16] = 2;
  v7();
  v99 = (v102 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 102;
  *v100 = "FeedbackTypeCustomSpotlightResultFeatures";
  *(v100 + 1) = 41;
  v100[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FA5370()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFDD0);
  __swift_project_value_buffer(v0, qword_1EBABFDD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
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
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LookupSelectionTypeHintTap";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LookupSelectionTypeSceneAware";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA55D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFDE8);
  __swift_project_value_buffer(v0, qword_1EBABFDE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SkipSearchTriggerEventUnknown";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SkipSearchTriggerEventLessThanMinimumQueryLength";
  *(v10 + 8) = 48;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SkipSearchTriggerEventBagDisabled";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SkipSearchTriggerEventBagFetchFailed";
  *(v14 + 1) = 36;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SkipSearchTriggerEventCacheHit";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "SkipSearchTriggerEventEmptyQueryInput";
  *(v18 + 1) = 37;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SkipSearchTriggerEventQueryInputWithURISchemePrefix";
  *(v20 + 1) = 51;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA58FC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFE00);
  __swift_project_value_buffer(v0, qword_1EBABFE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PrivateRelayStatusUnknown";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PrivateRelayStatusEnabled";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PrivateRelayStatusDisabled";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA5B6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFE30);
  __swift_project_value_buffer(v0, qword_1EBABFE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NoCBAMatch";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EffectiveTLDPlusOneMatch";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ParameterStrippedMatch";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ExactMatch";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA5DD4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFE48);
  __swift_project_value_buffer(v0, qword_1EBABFE48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v366 = swift_allocObject();
  *(v366 + 16) = xmmword_1B966F900;
  v4 = v366 + v3 + v1[14];
  *(v366 + v3) = 0;
  *v4 = "Unknown";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v366 + v3 + v2 + v1[14];
  *(v366 + v3 + v2) = 1;
  *v8 = "ParsecWebIndex";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v366 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "Application";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v366 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "Preferences";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v366 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "MobileMail";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v366 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "MobileSafari";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v366 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "MobileSMS";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  v19 = (v366 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "Stocks";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v7();
  v21 = (v366 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ParsecStocks";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v7();
  v23 = (v366 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TapToRadar";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v7();
  v25 = (v366 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SearchdZKWApps";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v366 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "SearchdSuggestions";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v7();
  v29 = (v366 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "Podcasts";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v7();
  v31 = (v366 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "MobileAddressBook";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v7();
  v33 = (v366 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "DocumentsApp";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v7();
  v35 = (v366 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CoreSuggestions";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v7();
  v37 = (v366 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "MobileDocumentsFileProvider";
  *(v38 + 1) = 27;
  v38[16] = 2;
  v7();
  v39 = (v366 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "Music";
  *(v40 + 1) = 5;
  v40[16] = 2;
  v7();
  v41 = (v366 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "MobileCal";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v366 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "OtherSearchWeb";
  *(v44 + 1) = 14;
  v44[16] = 2;
  v7();
  v45 = (v366 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "OtherSearchAppStore";
  *(v46 + 1) = 19;
  v46[16] = 2;
  v7();
  v47 = (v366 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "OtherSearchMaps";
  *(v48 + 1) = 15;
  v48[16] = 2;
  v7();
  v49 = (v366 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "SuggestionListUserTypedString";
  *(v50 + 1) = 29;
  v50[16] = 2;
  v7();
  v51 = (v366 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "SuggestionListParsec";
  *(v52 + 1) = 20;
  v52[16] = 2;
  v7();
  v53 = (v366 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "OtherTapToRadar";
  *(v54 + 1) = 15;
  v54[16] = 2;
  v7();
  v55 = (v366 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "SpotlightUISearchThrough";
  *(v56 + 1) = 24;
  v56[16] = 2;
  v7();
  v57 = (v366 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "Weather";
  *(v58 + 1) = 7;
  v58[16] = 2;
  v7();
  v59 = (v366 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "Maps";
  *(v60 + 1) = 4;
  v60[16] = 2;
  v7();
  v61 = (v366 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "GoogleCompletion";
  *(v62 + 1) = 16;
  v62[16] = 2;
  v7();
  v63 = (v366 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "History";
  *(v64 + 1) = 7;
  v64[16] = 2;
  v7();
  v65 = (v366 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "SafariCompletionListSearchEngineSuggestion";
  *(v66 + 1) = 42;
  v66[16] = 2;
  v7();
  v67 = (v366 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "GoogleSearch";
  *(v68 + 1) = 12;
  v68[16] = 2;
  v7();
  v69 = (v366 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "SafariCompletionListUserTypedString";
  *(v70 + 1) = 35;
  v70[16] = 2;
  v7();
  v71 = (v366 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "AppleHistory";
  *(v72 + 1) = 12;
  v72[16] = 2;
  v7();
  v73 = (v366 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "SafariCompletionListFindOnPage";
  *(v74 + 1) = 30;
  v74[16] = 2;
  v7();
  v75 = (v366 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "TopHit";
  *(v76 + 1) = 6;
  v76[16] = 2;
  v7();
  v77 = (v366 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "AppleTopHit";
  *(v78 + 1) = 11;
  v78[16] = 2;
  v7();
  v79 = (v366 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "ICloudTab";
  *(v80 + 1) = 9;
  v80[16] = 2;
  v7();
  v81 = (v366 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "SafariCompletionListRecentSearch";
  *(v82 + 1) = 32;
  v82[16] = 2;
  v7();
  v83 = (v366 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "Bookmark";
  *(v84 + 1) = 8;
  v84[16] = 2;
  v7();
  v85 = (v366 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "YahooCompletion";
  *(v86 + 1) = 15;
  v86[16] = 2;
  v7();
  v87 = (v366 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "AppleBookmarks";
  *(v88 + 1) = 14;
  v88[16] = 2;
  v7();
  v89 = (v366 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "AppleOther";
  *(v90 + 1) = 10;
  v90[16] = 2;
  v7();
  v91 = (v366 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "BingCompletion";
  *(v92 + 1) = 14;
  v92[16] = 2;
  v7();
  v93 = (v366 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "HashtagImagesQuerySuggestion";
  *(v94 + 1) = 28;
  v94[16] = 2;
  v7();
  v95 = (v366 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 45;
  *v96 = "SafariCompletionListRestoredSearch";
  *(v96 + 1) = 34;
  v96[16] = 2;
  v7();
  v97 = (v366 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 46;
  *v98 = "DDGCompletion";
  *(v98 + 1) = 13;
  v98[16] = 2;
  v7();
  v99 = (v366 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 47;
  *v100 = "YahooSearch";
  *(v100 + 1) = 11;
  v100[16] = 2;
  v7();
  v101 = (v366 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 48;
  *v102 = "Tweetie";
  *(v102 + 1) = 7;
  v102[16] = 2;
  v7();
  v103 = (v366 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 49;
  *v104 = "AddressBox";
  *(v104 + 1) = 10;
  v104[16] = 2;
  v7();
  v105 = (v366 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 50;
  *v106 = "SpotlightSuggestionListLocal";
  *(v106 + 1) = 28;
  v106[16] = 2;
  v7();
  v107 = (v366 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 51;
  *v108 = "DDGSearch";
  *(v108 + 1) = 9;
  v108[16] = 2;
  v7();
  v109 = (v366 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 52;
  *v110 = "BingSearch";
  *(v110 + 1) = 10;
  v110[16] = 2;
  v7();
  v111 = (v366 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 53;
  *v112 = "AppleNews";
  *(v112 + 1) = 9;
  v112[16] = 2;
  v7();
  v113 = (v366 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 54;
  *v114 = "AppleCoreSuggestions";
  *(v114 + 1) = 20;
  v114[16] = 2;
  v7();
  v115 = (v366 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 55;
  *v116 = "GiphyForMessenger";
  *(v116 + 1) = 17;
  v116[16] = 2;
  v7();
  v117 = (v366 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 56;
  *v118 = "AppleSettings";
  *(v118 + 1) = 13;
  v118[16] = 2;
  v7();
  v119 = (v366 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 57;
  *v120 = "Youtube";
  *(v120 + 1) = 7;
  v120[16] = 2;
  v7();
  v121 = (v366 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 58;
  *v122 = "WhatsApp";
  *(v122 + 1) = 8;
  v122[16] = 2;
  v7();
  v123 = (v366 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 59;
  *v124 = "AppleApplications";
  *(v124 + 1) = 17;
  v124[16] = 2;
  v7();
  v125 = (v366 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 60;
  *v126 = "RiffsyKeyboard";
  *(v126 + 1) = 14;
  v126[16] = 2;
  v7();
  v127 = (v366 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 61;
  *v128 = "SpotlightSuggestionListContact";
  *(v128 + 1) = 30;
  v128[16] = 2;
  v7();
  v129 = (v366 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 62;
  *v130 = "Yelp";
  *(v130 + 1) = 4;
  v130[16] = 2;
  v7();
  v131 = (v366 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 63;
  *v132 = "MicrosoftOfficeOutlook";
  *(v132 + 1) = 22;
  v132[16] = 2;
  v7();
  v133 = (v366 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 64;
  *v134 = "Pinterest";
  *(v134 + 1) = 9;
  v134[16] = 2;
  v7();
  v135 = (v366 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 65;
  *v136 = "AppleMail";
  *(v136 + 1) = 9;
  v136[16] = 2;
  v7();
  v137 = (v366 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 66;
  *v138 = "HashtagImagesCategory";
  *(v138 + 1) = 21;
  v138[16] = 2;
  v7();
  v139 = (v366 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 67;
  *v140 = "MobileNotes";
  *(v140 + 1) = 11;
  v140[16] = 2;
  v7();
  v141 = (v366 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 68;
  *v142 = "ApplePDFs";
  *(v142 + 1) = 9;
  v142[16] = 2;
  v7();
  v143 = (v366 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 69;
  *v144 = "AppleDocuments";
  *(v144 + 1) = 14;
  v144[16] = 2;
  v7();
  v145 = (v366 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 70;
  *v146 = "GoogleChromeIOS";
  *(v146 + 1) = 15;
  v146[16] = 2;
  v7();
  v147 = (v366 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 71;
  *v148 = "AppleDeveloper";
  *(v148 + 1) = 14;
  v148[16] = 2;
  v7();
  v149 = (v366 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 72;
  *v150 = "GoogleMaps";
  *(v150 + 1) = 10;
  v150[16] = 2;
  v7();
  v151 = (v366 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 73;
  *v152 = "AppleDirectories";
  *(v152 + 1) = 16;
  v152[16] = 2;
  v7();
  v153 = (v366 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 74;
  *v154 = "BaiduCompletion";
  *(v154 + 1) = 15;
  v154[16] = 2;
  v7();
  v155 = (v366 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 75;
  *v156 = "BaiduSearch";
  *(v156 + 1) = 11;
  v156[16] = 2;
  v7();
  v157 = (v366 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 76;
  *v158 = "AppleReminders";
  *(v158 + 1) = 14;
  v158[16] = 2;
  v7();
  v159 = (v366 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 77;
  *v160 = "ApplePhotos";
  *(v160 + 1) = 11;
  v160[16] = 2;
  v7();
  v161 = (v366 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 78;
  *v162 = "AppleDictionary";
  *(v162 + 1) = 15;
  v162[16] = 2;
  v7();
  v163 = (v366 + v3 + 79 * v2);
  v164 = v163 + v1[14];
  *v163 = 79;
  *v164 = "SiriCompletion";
  *(v164 + 1) = 14;
  v164[16] = 2;
  v7();
  v165 = (v366 + v3 + 80 * v2);
  v166 = v165 + v1[14];
  *v165 = 80;
  *v166 = "GooglePhotos";
  *(v166 + 1) = 12;
  v166[16] = 2;
  v7();
  v167 = (v366 + v3 + 81 * v2);
  v168 = v167 + v1[14];
  *v167 = 81;
  *v168 = "AppleIBooks";
  *(v168 + 1) = 11;
  v168[16] = 2;
  v7();
  v169 = (v366 + v3 + 82 * v2);
  v170 = v169 + v1[14];
  *v169 = 82;
  *v170 = "Linkedin";
  *(v170 + 1) = 8;
  v170[16] = 2;
  v7();
  v171 = (v366 + v3 + 83 * v2);
  v172 = v171 + v1[14];
  *v171 = 83;
  *v172 = "AppleNumbers";
  *(v172 + 1) = 12;
  v172[16] = 2;
  v7();
  v173 = (v366 + v3 + 84 * v2);
  v174 = v173 + v1[14];
  *v173 = 84;
  *v174 = "AppleMobileTimer";
  *(v174 + 1) = 16;
  v174[16] = 2;
  v7();
  v175 = (v366 + v3 + 85 * v2);
  v176 = v175 + v1[14];
  *v175 = 85;
  *v176 = "Pandora";
  *(v176 + 1) = 7;
  v176[16] = 2;
  v7();
  v177 = (v366 + v3 + 86 * v2);
  v178 = v177 + v1[14];
  *v177 = 86;
  *v178 = "HashtagImagesRecent";
  *(v178 + 1) = 19;
  v178[16] = 2;
  v7();
  v179 = (v366 + v3 + 87 * v2);
  v180 = v179 + v1[14];
  *v179 = 87;
  *v180 = "MLBAtBat";
  *(v180 + 1) = 8;
  v180[16] = 2;
  v7();
  v181 = (v366 + v3 + 88 * v2);
  v182 = v181 + v1[14];
  *v181 = 88;
  *v182 = "YahooAerogram";
  *(v182 + 1) = 13;
  v182[16] = 2;
  v7();
  v183 = (v366 + v3 + 89 * v2);
  v184 = v183 + v1[14];
  *v183 = 89;
  *v184 = "Dropbox";
  *(v184 + 1) = 7;
  v184[16] = 2;
  v7();
  v185 = (v366 + v3 + 90 * v2);
  v186 = v185 + v1[14];
  *v185 = 90;
  *v186 = "AppleLookupSearchThrough";
  *(v186 + 1) = 24;
  v186[16] = 2;
  v7();
  v187 = (v366 + v3 + 91 * v2);
  v188 = v187 + v1[14];
  *v187 = 91;
  *v188 = "AppleCalendar";
  *(v188 + 1) = 13;
  v188[16] = 2;
  v7();
  v189 = (v366 + v3 + 92 * v2);
  v190 = v189 + v1[14];
  *v189 = 92;
  *v190 = "AirBNB";
  *(v190 + 1) = 6;
  v190[16] = 2;
  v7();
  v191 = (v366 + v3 + 93 * v2);
  v192 = v191 + v1[14];
  *v191 = 93;
  *v192 = "StubHub";
  *(v192 + 1) = 7;
  v192[16] = 2;
  v7();
  v193 = (v366 + v3 + 94 * v2);
  v194 = v193 + v1[14];
  *v193 = 94;
  *v194 = "Groupon";
  *(v194 + 1) = 7;
  v194[16] = 2;
  v7();
  v195 = (v366 + v3 + 95 * v2);
  v196 = v195 + v1[14];
  *v195 = 95;
  *v196 = "AppleCalculator";
  *(v196 + 1) = 15;
  v196[16] = 2;
  v7();
  v197 = (v366 + v3 + 96 * v2);
  v198 = v197 + v1[14];
  *v197 = 96;
  *v198 = "Twitch";
  *(v198 + 1) = 6;
  v198[16] = 2;
  v7();
  v199 = (v366 + v3 + 97 * v2);
  v200 = v199 + v1[14];
  *v199 = 97;
  *v200 = "AppleKeynote";
  *(v200 + 1) = 12;
  v200[16] = 2;
  v7();
  v201 = (v366 + v3 + 98 * v2);
  v202 = v201 + v1[14];
  *v201 = 98;
  *v202 = "Zillow";
  *(v202 + 1) = 6;
  v202[16] = 2;
  v7();
  v203 = (v366 + v3 + 99 * v2);
  v204 = v203 + v1[14];
  *v203 = 99;
  *v204 = "AppleVoiceMemos";
  *(v204 + 1) = 15;
  v204[16] = 2;
  v7();
  v205 = (v366 + v3 + 100 * v2);
  v206 = v205 + v1[14];
  *v205 = 100;
  *v206 = "SafariCompletionListQuickSearch";
  *(v206 + 1) = 31;
  v206[16] = 2;
  v7();
  v207 = (v366 + v3 + 101 * v2);
  v208 = v207 + v1[14];
  *v207 = 101;
  *v208 = "HashtagImagesZKW";
  *(v208 + 1) = 16;
  v208[16] = 2;
  v7();
  v209 = (v366 + v3 + 102 * v2);
  v210 = v209 + v1[14];
  *v209 = 102;
  *v210 = "SafariSearchSuggestion";
  *(v210 + 1) = 22;
  v210[16] = 2;
  v7();
  v211 = (v366 + v3 + 103 * v2);
  v212 = v211 + v1[14];
  *v211 = 103;
  *v212 = "ZKWSuggestions";
  *(v212 + 1) = 14;
  v212[16] = 2;
  v7();
  v213 = (v366 + v3 + 104 * v2);
  v214 = v213 + v1[14];
  *v213 = 104;
  *v214 = "OtherSearchSiri";
  *(v214 + 1) = 15;
  v214[16] = 2;
  v7();
  v215 = (v366 + v3 + 105 * v2);
  v216 = v215 + v1[14];
  *v215 = 105;
  *v216 = "SafariSwitchToTab";
  *(v216 + 1) = 17;
  v216[16] = 2;
  v7();
  v217 = (v366 + v3 + 106 * v2);
  v218 = v217 + v1[14];
  *v217 = 106;
  *v218 = "SafariQuickWebsiteSearch";
  *(v218 + 1) = 24;
  v218[16] = 2;
  v7();
  v219 = (v366 + v3 + 107 * v2);
  v220 = v219 + v1[14];
  *v219 = 107;
  *v220 = "SpotlightSiriSuggestion";
  *(v220 + 1) = 23;
  v220[16] = 2;
  v7();
  v221 = (v366 + v3 + 108 * v2);
  v222 = v221 + v1[14];
  *v221 = 108;
  *v222 = "AppleContacts";
  *(v222 + 1) = 13;
  v222[16] = 2;
  v7();
  v223 = (v366 + v3 + 109 * v2);
  v224 = v223 + v1[14];
  *v223 = 109;
  *v224 = "ParsecAppStore";
  *(v224 + 1) = 14;
  v224[16] = 2;
  v7();
  v225 = (v366 + v3 + 110 * v2);
  v226 = v225 + v1[14];
  *v225 = 110;
  *v226 = "ParsecMaps";
  *(v226 + 1) = 10;
  v226[16] = 2;
  v7();
  v227 = (v366 + v3 + 111 * v2);
  v228 = v227 + v1[14];
  *v227 = 111;
  *v228 = "ParsecWiki";
  *(v228 + 1) = 10;
  v228[16] = 2;
  v7();
  v229 = (v366 + v3 + 112 * v2);
  v230 = v229 + v1[14];
  *v229 = 112;
  *v230 = "ParsecKG";
  *(v230 + 1) = 8;
  v230[16] = 2;
  v7();
  v231 = (v366 + v3 + 113 * v2);
  v232 = v231 + v1[14];
  *v231 = 113;
  *v232 = "ParsecNews";
  *(v232 + 1) = 10;
  v232[16] = 2;
  v7();
  v233 = (v366 + v3 + 114 * v2);
  v234 = v233 + v1[14];
  *v233 = 114;
  *v234 = "ParsecWeather";
  *(v234 + 1) = 13;
  v234[16] = 2;
  v7();
  v235 = (v366 + v3 + 115 * v2);
  v236 = v235 + v1[14];
  *v235 = 115;
  *v236 = "SpotlightSearchInApp";
  *(v236 + 1) = 20;
  v236[16] = 2;
  v7();
  v237 = (v366 + v3 + 116 * v2);
  v238 = v237 + v1[14];
  *v237 = 116;
  *v238 = "SpotlightWebSuggestionsUserTyped";
  *(v238 + 1) = 32;
  v238[16] = 2;
  v7();
  v239 = (v366 + v3 + 117 * v2);
  v240 = v239 + v1[14];
  *v239 = 117;
  *v240 = "SpotlightWebSuggestionsParsec";
  *(v240 + 1) = 29;
  v240[16] = 2;
  v7();
  v241 = (v366 + v3 + 118 * v2);
  v242 = v241 + v1[14];
  *v241 = 118;
  *v242 = "SpotlightWebRelatedSearch";
  *(v242 + 1) = 25;
  v242[16] = 2;
  v7();
  v243 = (v366 + v3 + 119 * v2);
  v244 = v243 + v1[14];
  *v243 = 119;
  *v244 = "SpotlightTopHits";
  *(v244 + 1) = 16;
  v244[16] = 2;
  v7();
  v245 = (v366 + v3 + 120 * v2);
  v246 = v245 + v1[14];
  *v245 = 120;
  *v246 = "SpotlightRelatedSearch";
  *(v246 + 1) = 22;
  v246[16] = 2;
  v7();
  v247 = (v366 + v3 + 121 * v2);
  v248 = v247 + v1[14];
  *v247 = 121;
  *v248 = "MailSearchTopHit";
  *(v248 + 1) = 16;
  v248[16] = 2;
  v7();
  v249 = (v366 + v3 + 122 * v2);
  v250 = v249 + v1[14];
  *v249 = 122;
  *v250 = "MailSearchSuggestion";
  *(v250 + 1) = 20;
  v250[16] = 2;
  v7();
  v251 = (v366 + v3 + 123 * v2);
  v252 = v251 + v1[14];
  *v251 = 123;
  *v252 = "MailSearchSuggestionVip";
  *(v252 + 1) = 23;
  v252[16] = 2;
  v7();
  v253 = (v366 + v3 + 124 * v2);
  v254 = v253 + v1[14];
  *v253 = 124;
  *v254 = "MailSearchSuggestionUserTyped";
  *(v254 + 1) = 29;
  v254[16] = 2;
  v7();
  v255 = (v366 + v3 + 125 * v2);
  v256 = v255 + v1[14];
  *v255 = 125;
  *v256 = "MailSearchMessageResult";
  *(v256 + 1) = 23;
  v256[16] = 2;
  v7();
  v257 = (v366 + v3 + 126 * v2);
  v258 = v257 + v1[14];
  *v257 = 126;
  *v258 = "MailSearchMessageList";
  *(v258 + 1) = 21;
  v258[16] = 2;
  v7();
  v259 = (v366 + v3 + 127 * v2);
  v260 = v259 + v1[14];
  *v259 = 127;
  *v260 = "ParsecEntity";
  *(v260 + 1) = 12;
  v260[16] = 2;
  v7();
  v261 = (v366 + v3 + (v2 << 7));
  v262 = v261 + v1[14];
  *v261 = 128;
  *v262 = "MailSearchSuggestionDate";
  *(v262 + 1) = 24;
  v262[16] = 2;
  v7();
  v263 = (v366 + v3 + 129 * v2);
  v264 = v263 + v1[14];
  *v263 = 129;
  *v264 = "MailSearchSuggestionFreeText";
  *(v264 + 1) = 28;
  v264[16] = 2;
  v7();
  v265 = (v366 + v3 + 130 * v2);
  v266 = v265 + v1[14];
  *v265 = 130;
  *v266 = "MailSearchSuggestionAttachment";
  *(v266 + 1) = 30;
  v266[16] = 2;
  v7();
  v267 = (v366 + v3 + 131 * v2);
  v268 = v267 + v1[14];
  *v267 = 131;
  *v268 = "MailSearchSuggestionPeople";
  *(v268 + 1) = 26;
  v268[16] = 2;
  v7();
  v269 = (v366 + v3 + 132 * v2);
  v270 = v269 + v1[14];
  *v269 = 132;
  *v270 = "MailSearchSuggestionContact";
  *(v270 + 1) = 27;
  v270[16] = 2;
  v7();
  v271 = (v366 + v3 + 133 * v2);
  v272 = v271 + v1[14];
  *v271 = 133;
  *v272 = "MailSearchSuggestionMailbox";
  *(v272 + 1) = 27;
  v272[16] = 2;
  v7();
  v273 = (v366 + v3 + 134 * v2);
  v274 = v273 + v1[14];
  *v273 = 134;
  *v274 = "MailSearchSuggestionFlag";
  *(v274 + 1) = 24;
  v274[16] = 2;
  v7();
  v275 = (v366 + v3 + 135 * v2);
  v276 = v275 + v1[14];
  *v275 = 135;
  *v276 = "MailSearchSuggestionSubject";
  *(v276 + 1) = 27;
  v276[16] = 2;
  v7();
  v277 = (v366 + v3 + 136 * v2);
  v278 = v277 + v1[14];
  *v277 = 136;
  *v278 = "MailSearchLocation";
  *(v278 + 1) = 18;
  v278[16] = 2;
  v7();
  v279 = (v366 + v3 + 137 * v2);
  v280 = v279 + v1[14];
  *v279 = 137;
  *v280 = "MailSearchDocument";
  *(v280 + 1) = 18;
  v280[16] = 2;
  v7();
  v281 = (v366 + v3 + 138 * v2);
  v282 = v281 + v1[14];
  *v281 = 138;
  *v282 = "MailSearchLink";
  *(v282 + 1) = 14;
  v282[16] = 2;
  v7();
  v283 = (v366 + v3 + 139 * v2);
  v284 = v283 + v1[14];
  *v283 = 139;
  *v284 = "FirstPartyApp";
  *(v284 + 1) = 13;
  v284[16] = 2;
  v7();
  v285 = (v366 + v3 + 140 * v2);
  v286 = v285 + v1[14];
  *v285 = 140;
  *v286 = "ThirdPartyApp";
  *(v286 + 1) = 13;
  v286[16] = 2;
  v7();
  v287 = (v366 + v3 + 141 * v2);
  v288 = v287 + v1[14];
  *v287 = 141;
  *v288 = "MailSearchSuggestionSenderContains";
  *(v288 + 1) = 34;
  v288[16] = 2;
  v7();
  v289 = (v366 + v3 + 142 * v2);
  v290 = v289 + v1[14];
  *v289 = 142;
  *v290 = "MailSearchSuggestionTopicContains";
  *(v290 + 1) = 33;
  v290[16] = 2;
  v7();
  v291 = (v366 + v3 + 143 * v2);
  v292 = v291 + v1[14];
  *v291 = 143;
  *v292 = "MailSearchSuggestionInstantAnswer";
  *(v292 + 1) = 33;
  v292[16] = 2;
  v7();
  v293 = (v366 + v3 + 144 * v2);
  v294 = v293 + v1[14];
  *v293 = 144;
  *v294 = "PhotosAlbums";
  *(v294 + 1) = 12;
  v294[16] = 2;
  v7();
  v295 = (v366 + v3 + 145 * v2);
  v296 = v295 + v1[14];
  *v295 = 145;
  *v296 = "PhotosCaption";
  *(v296 + 1) = 13;
  v296[16] = 2;
  v7();
  v297 = (v366 + v3 + 146 * v2);
  v298 = v297 + v1[14];
  *v297 = 146;
  *v298 = "PhotosCategories";
  *(v298 + 1) = 16;
  v298[16] = 2;
  v7();
  v299 = (v366 + v3 + 147 * v2);
  v300 = v299 + v1[14];
  *v299 = 147;
  *v300 = "PhotosDates";
  *(v300 + 1) = 11;
  v300[16] = 2;
  v7();
  v301 = (v366 + v3 + 148 * v2);
  v302 = v301 + v1[14];
  *v301 = 148;
  *v302 = "PhotosImportedByApp";
  *(v302 + 1) = 19;
  v302[16] = 2;
  v7();
  v303 = (v366 + v3 + 149 * v2);
  v304 = v303 + v1[14];
  *v303 = 149;
  *v304 = "PhotosKeywords";
  *(v304 + 1) = 14;
  v304[16] = 2;
  v7();
  v305 = (v366 + v3 + 150 * v2);
  v306 = v305 + v1[14];
  *v305 = 150;
  *v306 = "PhotosMediaType";
  *(v306 + 1) = 15;
  v306[16] = 2;
  v7();
  v307 = (v366 + v3 + 151 * v2);
  v308 = v307 + v1[14];
  *v307 = 151;
  *v308 = "PhotosMemories";
  *(v308 + 1) = 14;
  v308[16] = 2;
  v7();
  v309 = (v366 + v3 + 152 * v2);
  v310 = v309 + v1[14];
  *v309 = 152;
  *v310 = "PhotosMoments";
  *(v310 + 1) = 13;
  v310[16] = 2;
  v7();
  v311 = (v366 + v3 + 153 * v2);
  v312 = v311 + v1[14];
  *v311 = 153;
  *v312 = "PhotosOcr";
  *(v312 + 1) = 9;
  v312[16] = 2;
  v7();
  v313 = (v366 + v3 + 154 * v2);
  v314 = v313 + v1[14];
  *v313 = 154;
  *v314 = "PhotosPeople";
  *(v314 + 1) = 12;
  v314[16] = 2;
  v7();
  v315 = (v366 + v3 + 155 * v2);
  v316 = v315 + v1[14];
  *v315 = 155;
  *v316 = "PhotosPlaces";
  *(v316 + 1) = 12;
  v316[16] = 2;
  v7();
  v317 = (v366 + v3 + 156 * v2);
  v318 = v317 + v1[14];
  *v317 = 156;
  *v318 = "PhotosTitle";
  *(v318 + 1) = 11;
  v318[16] = 2;
  v7();
  v319 = (v366 + v3 + 157 * v2);
  v320 = v319 + v1[14];
  *v319 = 157;
  *v320 = "PhotosTopResults";
  *(v320 + 1) = 16;
  v320[16] = 2;
  v7();
  v321 = (v366 + v3 + 158 * v2);
  v322 = v321 + v1[14];
  *v321 = 158;
  *v322 = "PhotosSuggestionsGeneric";
  *(v322 + 1) = 24;
  v322[16] = 2;
  v7();
  v323 = (v366 + v3 + 159 * v2);
  v324 = v323 + v1[14];
  *v323 = 159;
  *v324 = "PhotosSuggestionsPlace";
  *(v324 + 1) = 22;
  v324[16] = 2;
  v7();
  v325 = (v366 + v3 + 160 * v2);
  v326 = v325 + v1[14];
  *v325 = 160;
  *v326 = "PhotosZkwDate";
  *(v326 + 1) = 13;
  v326[16] = 2;
  v7();
  v327 = (v366 + v3 + 161 * v2);
  v328 = v327 + v1[14];
  *v327 = 161;
  *v328 = "PhotosZkwMeaning";
  *(v328 + 1) = 16;
  v328[16] = 2;
  v7();
  v329 = (v366 + v3 + 162 * v2);
  v330 = v329 + v1[14];
  *v329 = 162;
  *v330 = "PhotosZkwPerson";
  *(v330 + 1) = 15;
  v330[16] = 2;
  v7();
  v331 = (v366 + v3 + 163 * v2);
  v332 = v331 + v1[14];
  *v331 = 163;
  *v332 = "PhotosZkwPlace";
  *(v332 + 1) = 14;
  v332[16] = 2;
  v7();
  v333 = (v366 + v3 + 164 * v2);
  v334 = v333 + v1[14];
  *v333 = 164;
  *v334 = "PhotosZkwScene";
  *(v334 + 1) = 14;
  v334[16] = 2;
  v7();
  v335 = (v366 + v3 + 165 * v2);
  v336 = v335 + v1[14];
  *v335 = 165;
  *v336 = "PhotosZkwSeason";
  *(v336 + 1) = 15;
  v336[16] = 2;
  v7();
  v337 = (v366 + v3 + 166 * v2);
  v338 = v337 + v1[14];
  *v337 = 166;
  *v338 = "PhotosZkwSocialGroup";
  *(v338 + 1) = 20;
  v338[16] = 2;
  v7();
  v339 = (v366 + v3 + 167 * v2);
  v340 = v339 + v1[14];
  *v339 = 167;
  *v340 = "PhotosZkwUnnamedPerson";
  *(v340 + 1) = 22;
  v340[16] = 2;
  v7();
  v341 = (v366 + v3 + 168 * v2);
  v342 = v341 + v1[14];
  *v341 = 168;
  *v342 = "MailSearchSuggestionInstantAnswerFlight";
  *(v342 + 1) = 39;
  v342[16] = 2;
  v7();
  v343 = (v366 + v3 + 169 * v2);
  v344 = v343 + v1[14];
  *v343 = 169;
  *v344 = "MailSearchSuggestionInstantAnswerLodging";
  *(v344 + 1) = 40;
  v344[16] = 2;
  v7();
  v345 = (v366 + v3 + 170 * v2);
  v346 = v345 + v1[14];
  *v345 = 170;
  *v346 = "PhotosTrip";
  *(v346 + 1) = 10;
  v346[16] = 2;
  v7();
  v347 = (v366 + v3 + 171 * v2);
  v348 = v347 + v1[14];
  *v347 = 171;
  *v348 = "PhotosAllResults";
  *(v348 + 1) = 16;
  v348[16] = 2;
  v7();
  v349 = (v366 + v3 + 172 * v2);
  v350 = v349 + v1[14];
  *v349 = 172;
  *v350 = "PhotosSuggestionsUserGeneratedText";
  *(v350 + 1) = 34;
  v350[16] = 2;
  v7();
  v351 = (v366 + v3 + 173 * v2);
  v352 = v351 + v1[14];
  *v351 = 173;
  *v352 = "PhotosSuggestionsScene";
  *(v352 + 1) = 22;
  v352[16] = 2;
  v7();
  v353 = (v366 + v3 + 174 * v2);
  v354 = v353 + v1[14];
  *v353 = 174;
  *v354 = "PhotosSuggestionsPublicEvent";
  *(v354 + 1) = 28;
  v354[16] = 2;
  v7();
  v355 = (v366 + v3 + 175 * v2);
  v356 = v355 + v1[14];
  *v355 = 175;
  *v356 = "PhotosSuggestionsActionCam";
  *(v356 + 1) = 26;
  v356[16] = 2;
  v7();
  v357 = (v366 + v3 + 176 * v2);
  v358 = v357 + v1[14];
  *v357 = 176;
  *v358 = "PhotosSuggestionsSpatial";
  *(v358 + 1) = 24;
  v358[16] = 2;
  v7();
  v359 = (v366 + v3 + 177 * v2);
  v360 = v359 + v1[14];
  *v359 = 177;
  *v360 = "PhotosSuggestionsFilename";
  *(v360 + 1) = 25;
  v360[16] = 2;
  v7();
  v361 = (v366 + v3 + 178 * v2);
  v362 = v361 + v1[14];
  *v361 = 178;
  *v362 = "PhotosSectionPrompt";
  *(v362 + 1) = 19;
  v362[16] = 2;
  v7();
  v363 = (v366 + v3 + 179 * v2);
  v364 = v363 + v1[14];
  *v363 = 179;
  *v364 = "PhotosSectionSuggestions";
  *(v364 + 1) = 24;
  v364[16] = 2;
  v7();
  return sub_1B964C760();
}