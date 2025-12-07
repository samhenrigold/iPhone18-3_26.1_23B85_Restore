uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.hasStopTimeCounts.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_NetworkTimingData.clearStopTimeCounts()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44758, &qword_21B118100);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  if ((OUTLINED_FUNCTION_650(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_16_1();
    v5 = sub_21B030D58(v4);
    OUTLINED_FUNCTION_20_1(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_274(v6);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionUuid.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

uint64_t sub_21AFDB518()
{
  v0 = OUTLINED_FUNCTION_427();
  v1(v0);
  OUTLINED_FUNCTION_482();
  OUTLINED_FUNCTION_269(v2);

  return OUTLINED_FUNCTION_7();
}

void sub_21AFDB5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_623();
  a21 = v26;
  a22 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v23;
  v35 = OUTLINED_FUNCTION_233();
  v37 = v36(v35);
  OUTLINED_FUNCTION_706(v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v23 + v25);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v40 = OUTLINED_FUNCTION_16_1();
    isUniquelyReferenced_nonNull_native = v31(v40);
    v39 = isUniquelyReferenced_nonNull_native;
    *(v34 + v25) = isUniquelyReferenced_nonNull_native;
  }

  v41 = (v39 + *v29);
  OUTLINED_FUNCTION_643(isUniquelyReferenced_nonNull_native, &a10);
  *v41 = v24;
  v41[1] = v22;

  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.networkProtocolName.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.quicwhitelistedDomain.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_40_2(v1);
  OUTLINED_FUNCTION_441(v2);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.redirectCount.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_21AFDB950()
{
  v2 = OUTLINED_FUNCTION_427();
  v4 = v3(v2);
  OUTLINED_FUNCTION_309(v4, v5);
  return *(v1 + v0);
}

void sub_21AFDB9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_623();
  OUTLINED_FUNCTION_352();
  v13 = OUTLINED_FUNCTION_36_0();
  v15 = v14(v13);
  v16 = OUTLINED_FUNCTION_687(v15);
  v17 = *(v8 + v12);
  if ((v16 & 1) == 0)
  {
    v11(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_16_1();
    v19 = v10(v18);
    OUTLINED_FUNCTION_711(v19);
  }

  v20 = OUTLINED_FUNCTION_525();
  OUTLINED_FUNCTION_14_4(v20, v21);
  *(v17 + v9) = v7;
  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.redirectCountW3C.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFDBADC()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_296();
  v6 = OUTLINED_FUNCTION_520();
  v7 = *(v5 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_519();
    v3(v8);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = v2(v9);
    OUTLINED_FUNCTION_529(v10);
  }

  OUTLINED_FUNCTION_525();
  OUTLINED_FUNCTION_15_4();
  *(v7 + v1) = v4;
  OUTLINED_FUNCTION_77();

  free(v11);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.requestHeaderSize.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseBodyBytesDecoded.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseBodyBytesReceived.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseHeaderSize.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_21AFDBF70()
{
  v2 = OUTLINED_FUNCTION_427();
  v4 = v3(v2);
  OUTLINED_FUNCTION_309(v4, v5);
  return *(v1 + v0);
}

void sub_21AFDBFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_623();
  OUTLINED_FUNCTION_352();
  v13 = OUTLINED_FUNCTION_36_0();
  v15 = v14(v13);
  v16 = OUTLINED_FUNCTION_687(v15);
  v17 = *(v8 + v12);
  if ((v16 & 1) == 0)
  {
    v11(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_16_1();
    v19 = v10(v18);
    OUTLINED_FUNCTION_711(v19);
  }

  v20 = OUTLINED_FUNCTION_525();
  OUTLINED_FUNCTION_14_4(v20, v21);
  *(v17 + v9) = v7 & 1;
  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.tfosuccess.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_40_2(v1);
  OUTLINED_FUNCTION_441(v2);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFDC104()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_296();
  v4 = *(v0 + 80);
  v5 = *(v0 + 72);
  v6 = *(v0 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = v2(v9);
    OUTLINED_FUNCTION_529(v10);
  }

  OUTLINED_FUNCTION_525();
  OUTLINED_FUNCTION_15_4();
  *(v8 + v1) = v6;
  OUTLINED_FUNCTION_77();

  free(v11);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.timingDataInit.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_137(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4);
  OUTLINED_FUNCTION_225(v5);
  v6 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timingDataInit;
  OUTLINED_FUNCTION_261();
  *(v1 + 72) = *(v0 + v6);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectStart.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectEnd.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.domainLookupStart.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.domainLookupEnd.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.fetchStart.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.redirectStart.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.redirectEnd.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.requestStart.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.requestEnd.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseStart.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseEnd.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.secureConnectStart.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_21AFDCEA8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_21B111EB4();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_84();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.fallbackResultSection.getter()
{
  v0 = OUTLINED_FUNCTION_52();
  sub_21AF99818(v0, v1);
  return OUTLINED_FUNCTION_52();
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.fallbackResultSection.setter()
{
  OUTLINED_FUNCTION_99();
  result = sub_21AF99728(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleID.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_669(v2, v3, *(v1 + 64), a1);
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_21AF83FA4(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleIdentifier.getter()
{
  v1 = *(v0 + 64);
  if (v1 != 255 && (v1 & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_52();
    sub_21AF83F94(v2, v3, 0);
  }

  return OUTLINED_FUNCTION_52();
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_99();
  result = sub_21AF83FA4(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 64) = 0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664(a1);
  v3 = *(v2 + 64);
  if (v3 == 255 || (v3 & 1) != 0)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v4 = *(v2 + 48);
    v5 = *(v2 + 56);
    v6 = OUTLINED_FUNCTION_84();
    sub_21AF83F94(v6, v7, 0);
  }

  *v1 = v4;
  v1[1] = v5;
  return OUTLINED_FUNCTION_545();
}

uint64_t sub_21AFDD194(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 64);
  if (a2)
  {

    v6 = OUTLINED_FUNCTION_105();
    sub_21AF83FA4(v6, v7, v5);
    *(v3 + 48) = v4;
    *(v3 + 56) = v2;
    *(v3 + 64) = 0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_105();
    result = sub_21AF83FA4(v9, v10, v5);
    *(v3 + 48) = v4;
    *(v3 + 56) = v2;
    *(v3 + 64) = 0;
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.knownBundleIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_21AF83FA4(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = 1;
  return result;
}

uint64_t (*Apple_Parsec_Feedback_V2_ResultSectionForFeedback.knownBundleIdentifier.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  if ((v4 & 1) == 0)
  {
    v2 = 0;
  }

  if (v4 == 255)
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = (v4 == 255 || (v4 & 1) == 0) | v3 & 1;
  return sub_21AFDD2E4;
}

uint64_t sub_21AFDD2E4(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_21AF83FA4(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.titleButtonItem.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_111();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v8);
  OUTLINED_FUNCTION_307();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  OUTLINED_FUNCTION_635();
  v9 = OUTLINED_FUNCTION_33_4();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = v1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = 0;
    OUTLINED_FUNCTION_827(v9);
    result = OUTLINED_FUNCTION_33_4();
    if (!v10)
    {
      return sub_21AF99BE0(v2, &qword_27CD44828, &qword_21B118108);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_2();
    v11 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v11);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.titleButtonItem.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 48), &qword_27CD44828, &qword_21B118108);
  OUTLINED_FUNCTION_49_2();
  v3 = OUTLINED_FUNCTION_415();
  sub_21B03179C(v3);
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  v4 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Feedback_V2_ButtonForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_336(a1);
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  return OUTLINED_FUNCTION_674(v2);
}

void Apple_Parsec_Feedback_V2_ResultSectionForFeedback.titleButtonItem.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_499();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v8);
  OUTLINED_FUNCTION_150(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v15);
  OUTLINED_FUNCTION_299(*(v16 + 48));
  OUTLINED_FUNCTION_12_5();
  if (v17)
  {
    *v11 = 0;
    *(v11 + 8) = 1;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0xE000000000000000;
    *(v11 + 32) = 0;
    sub_21B111EB4();
    OUTLINED_FUNCTION_12_5();
    if (!v17)
    {
      sub_21AF99BE0(v0, &qword_27CD44828, &qword_21B118108);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_2();
    v18 = OUTLINED_FUNCTION_84();
    sub_21B03179C(v18);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_114();
}

void sub_21AFDD634()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_75();
    sub_21B0317EC(v6);
    sub_21AF99BE0(v4 + v3, &qword_27CD44828, &qword_21B118108);
    OUTLINED_FUNCTION_49_2();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_325();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &qword_27CD44828, &qword_21B118108);
    OUTLINED_FUNCTION_49_2();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xC000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 255;
  *(a1 + 68) = 0;
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  sub_21B111EB4();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  v1 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Feedback_V2_ActionItemForFeedback.punchout.getter()
{
  v1 = OUTLINED_FUNCTION_111();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v5);
  OUTLINED_FUNCTION_307();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_29_4(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_532(MEMORY[0x277D84F90]);
    result = OUTLINED_FUNCTION_33_4();
    if (!v7)
    {
      return sub_21AF99BE0(v0, &qword_27CD44830, &qword_21B118110);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_13();
    v8 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v8);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ActionItemForFeedback.punchout.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 20), &qword_27CD44830, &qword_21B118110);
  OUTLINED_FUNCTION_4_13();
  v3 = OUTLINED_FUNCTION_415();
  sub_21B03179C(v3);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v4 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = v1;
  *(a1 + 56) = -1;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  return OUTLINED_FUNCTION_690(v2);
}

void Apple_Parsec_Feedback_V2_ActionItemForFeedback.punchout.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_499();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_294(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v8);
  OUTLINED_FUNCTION_140(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_497(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_93(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v14);
  OUTLINED_FUNCTION_256(*(v15 + 20));
  OUTLINED_FUNCTION_27_4();
  if (v16)
  {
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_310(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_27_4();
    if (!v16)
    {
      sub_21AF99BE0(v0, &qword_27CD44830, &qword_21B118110);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_13();
    v17 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v17);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_114();
}

void sub_21AFDDB40()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_75();
    sub_21B0317EC(v6);
    sub_21AF99BE0(v4 + v3, &qword_27CD44830, &qword_21B118110);
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_120();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &qword_27CD44830, &qword_21B118110);
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_ActionItemForFeedback.hasPunchout.getter()
{
  v1 = OUTLINED_FUNCTION_109();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v5);
  OUTLINED_FUNCTION_864();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_36_3(v6);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_ActionItemForFeedback.clearPunchout()()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  sub_21AF99BE0(v0 + *(v1 + 20), &qword_27CD44830, &qword_21B118110);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_34_0();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Feedback_V2_ActionItemForFeedback.init()(uint64_t a1)
{
  sub_21B111EB4();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v1 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.fbr.setter()
{
  OUTLINED_FUNCTION_99();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.topicIdentifier.setter()
{
  OUTLINED_FUNCTION_99();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t sub_21AFDDF20()
{
  v0 = OUTLINED_FUNCTION_338();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_68();

  return v3(v2);
}

uint64_t sub_21AFDDFA4()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_163();
  v2 = OUTLINED_FUNCTION_110();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276();
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = v2;
  *(a1 + 88) = 0;
  *(a1 + 96) = v2;
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  return sub_21B111EB4();
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.urls.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleID.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_669(v2, v3, *(v1 + 56), a1);
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_21AF83FA4(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleIdentifier.getter()
{
  v1 = *(v0 + 56);
  if (v1 != 255 && (v1 & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_52();
    sub_21AF83F94(v2, v3, 0);
  }

  return OUTLINED_FUNCTION_52();
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_99();
  result = sub_21AF83FA4(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 56) = 0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664(a1);
  v3 = *(v2 + 56);
  if (v3 == 255 || (v3 & 1) != 0)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = OUTLINED_FUNCTION_84();
    sub_21AF83F94(v6, v7, 0);
  }

  *v1 = v4;
  v1[1] = v5;
  return OUTLINED_FUNCTION_545();
}

uint64_t sub_21AFDE2C0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 56);
  if (a2)
  {

    v6 = OUTLINED_FUNCTION_105();
    sub_21AF83FA4(v6, v7, v5);
    *(v3 + 40) = v4;
    *(v3 + 48) = v2;
    *(v3 + 56) = 0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_105();
    result = sub_21AF83FA4(v9, v10, v5);
    *(v3 + 40) = v4;
    *(v3 + 48) = v2;
    *(v3 + 56) = 0;
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.knownBundleIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_21AF83FA4(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = 1;
  return result;
}

uint64_t (*Apple_Parsec_Feedback_V2_PunchoutForFeedback.knownBundleIdentifier.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  if ((v4 & 1) == 0)
  {
    v2 = 0;
  }

  if (v4 == 255)
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = (v4 == 255 || (v4 & 1) == 0) | v3 & 1;
  return sub_21AFDE410;
}

uint64_t sub_21AFDE410(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_21AF83FA4(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t sub_21AFDE510()
{
  v1 = OUTLINED_FUNCTION_450();
  v2(v1);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_13_3(v0 + 16, v3);

  return OUTLINED_FUNCTION_52();
}

void sub_21AFDE55C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_SearchResultForFeedback.identifier.setter(v1, v2, v3, v4, v5, v6, v7);
}

void sub_21AFDE5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_623();
  v12 = v11;
  v14 = v13;
  v15 = OUTLINED_FUNCTION_213();
  v17 = v16(v15);
  v18 = OUTLINED_FUNCTION_687(v17);
  v20 = *(v8 + v10);
  if ((v18 & 1) == 0)
  {
    v14(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v21 = OUTLINED_FUNCTION_16_1();
    v22 = v12(v21);
    OUTLINED_FUNCTION_711(v22);
  }

  OUTLINED_FUNCTION_14_4(v20 + 16, v19);
  *(v20 + 16) = v9;
  *(v20 + 24) = v7;

  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.identifier.modify()
{
  v2 = OUTLINED_FUNCTION_471();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_136(v3);
  *(v1 + 72) = *(type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4) + 20);
  OUTLINED_FUNCTION_249();
  v5 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_109();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.topHit.modify()
{
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_147(v2);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v3);
  OUTLINED_FUNCTION_182(v4);
  OUTLINED_FUNCTION_371();
  OUTLINED_FUNCTION_49_0(*(v0 + 32));
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.action.getter()
{
  v1 = OUTLINED_FUNCTION_111();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_251(v5);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_865();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  OUTLINED_FUNCTION_26_2(v0);
  if (v6)
  {
    sub_21B111EB4();
    type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    result = OUTLINED_FUNCTION_26_2(v0);
    if (!v6)
    {
      return sub_21AF99BE0(v0, &qword_27CD44838, &qword_21B118118);
    }
  }

  else
  {
    OUTLINED_FUNCTION_210();
    return sub_21B03179C(v0);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.action.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44838, &qword_21B118118);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_535(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_454(v4);
  }

  OUTLINED_FUNCTION_210();
  v5 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v5);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  OUTLINED_FUNCTION_290(v6);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v8);
  OUTLINED_FUNCTION_135();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_467(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149(v12);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v13)
  {
    sub_21B111EB4();
    type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
    OUTLINED_FUNCTION_755();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_27_4();
    if (!v13)
    {
      sub_21AF99BE0(v0, &qword_27CD44838, &qword_21B118118);
    }
  }

  else
  {
    OUTLINED_FUNCTION_210();
    v18 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v18);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasAction.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v4);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44838, &qword_21B118118);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_536(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_20_1(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  OUTLINED_FUNCTION_274(v5);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.punchout.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_535(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_454(v4);
  }

  OUTLINED_FUNCTION_4_13();
  v5 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v5);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_290(v6);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.punchout.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v8);
  OUTLINED_FUNCTION_135();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_467(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149(v12);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v13)
  {
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_310(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_27_4();
    if (!v13)
    {
      sub_21AF99BE0(v0, &qword_27CD44830, &qword_21B118110);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_13();
    v14 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v14);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasPunchout.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v4);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearPunchout()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_536(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_20_1(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_274(v5);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.type.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.localFeatures.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v7);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_343();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  OUTLINED_FUNCTION_29_4(v8);
  if (v9)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
    *a1 = sub_21B112334();
    v10 = sub_21B112334();
    a1[1] = v10;
    OUTLINED_FUNCTION_761(v10);
    result = OUTLINED_FUNCTION_33_4();
    if (!v9)
    {
      return sub_21AF99BE0(v1, &qword_27CD44858, &qword_21B118120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    v11 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v11);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.localFeatures.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44858, &qword_21B118120);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_535(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_454(v4);
  }

  OUTLINED_FUNCTION_21_3();
  v5 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v5);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  OUTLINED_FUNCTION_290(v6);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_Struct.init()()
{
  v1 = OUTLINED_FUNCTION_100();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_Value(v1);
  v4 = OUTLINED_FUNCTION_869(v2, MEMORY[0x277D837D0], v3, MEMORY[0x277D837E0]);
  *v0 = v4;
  v0[1] = OUTLINED_FUNCTION_869(v4, MEMORY[0x277D849A8], v5, MEMORY[0x277D849B8]);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  return OUTLINED_FUNCTION_672(v6);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.localFeatures.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_Struct(v8);
  OUTLINED_FUNCTION_135();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_467(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149(v13);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v14)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
    *v10 = sub_21B112334();
    v15 = sub_21B112334();
    v10[1] = v15;
    OUTLINED_FUNCTION_760(v15);
    OUTLINED_FUNCTION_27_4();
    if (!v14)
    {
      sub_21AF99BE0(v0, &qword_27CD44858, &qword_21B118120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    v16 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v16);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasLocalFeatures.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v4);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearLocalFeatures()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44858, &qword_21B118120);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_536(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_20_1(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  OUTLINED_FUNCTION_274(v5);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultType.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

double sub_21AFDF7E8()
{
  v2 = OUTLINED_FUNCTION_427();
  v4 = v3(v2);
  OUTLINED_FUNCTION_309(v4, v5);
  return *(v1 + v0);
}

void sub_21AFDF868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_648();
  v9 = v8;
  OUTLINED_FUNCTION_404();
  v10 = v4;
  v12 = v11;
  v14 = v13(0);
  v15 = OUTLINED_FUNCTION_867(v14);
  v17 = *(v4 + v7);
  if ((v15 & 1) == 0)
  {
    v6(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_16_1();
    v17 = v5(v18);
    *(v10 + v7) = v17;
  }

  v19 = *v9;
  OUTLINED_FUNCTION_14_4(v17 + v19, v16);
  *(v17 + v19) = v12;
  OUTLINED_FUNCTION_647();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.rankingScore.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_137(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  OUTLINED_FUNCTION_225(v5);
  v6 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore;
  OUTLINED_FUNCTION_261();
  *(v1 + 72) = *(v0 + v6);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFDF994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_646();
  OUTLINED_FUNCTION_296();
  v9 = *(v5 + 72);
  v10 = *(v5 + 88);
  v11 = *(v5 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_16_1();
    v15 = v7(v14);
    OUTLINED_FUNCTION_758(v15);
  }

  OUTLINED_FUNCTION_525();
  OUTLINED_FUNCTION_15_4();
  *(v13 + v6) = v9;
  OUTLINED_FUNCTION_649();

  free(v16);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isStaticCorrection.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.queryID.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_137(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_225(v3);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_839();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.intendedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.correctedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.completedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isLocalApplicationResult.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.publiclyIndexable.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.fbr.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.userInput.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isFuzzyMatch.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.doNotFold.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_21AFE0704()
{
  v2 = OUTLINED_FUNCTION_427();
  v4 = v3(v2);
  OUTLINED_FUNCTION_309(v4, v5);
  return *(v1 + v0);
}

void sub_21AFE0784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_623();
  OUTLINED_FUNCTION_352();
  v13 = OUTLINED_FUNCTION_36_0();
  v15 = v14(v13);
  v16 = OUTLINED_FUNCTION_687(v15);
  v17 = *(v8 + v12);
  if ((v16 & 1) == 0)
  {
    v11(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_16_1();
    v19 = v10(v18);
    OUTLINED_FUNCTION_711(v19);
  }

  v20 = OUTLINED_FUNCTION_525();
  OUTLINED_FUNCTION_14_4(v20, v21);
  *(v17 + v9) = v7;
  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.blockID.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_137(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_225(v3);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_839();
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE0898()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_296();
  v6 = OUTLINED_FUNCTION_592();
  v7 = *(v5 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_613();
    v3(v8);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = v2(v9);
    OUTLINED_FUNCTION_529(v10);
  }

  OUTLINED_FUNCTION_525();
  OUTLINED_FUNCTION_15_4();
  *(v7 + v1) = v4;
  OUTLINED_FUNCTION_77();

  free(v11);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hashedIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_137(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_225(v3);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_839();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultBundleIdentifier.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_205();
  *(a1 + 20) = v3;
  OUTLINED_FUNCTION_612(*(v1 + v3));
  return OUTLINED_FUNCTION_545();
}

uint64_t sub_21AFE0B14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultBundleID.setter(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultBundleID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664(a1);
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_611();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = OUTLINED_FUNCTION_105();
    sub_21AF83F94(v7, v8, 0);
  }

  *v1 = v5;
  v1[1] = v6;
  return OUTLINED_FUNCTION_545();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.knownResultBundleID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664(a1);
  OUTLINED_FUNCTION_205();
  *(v1 + 12) = v2;
  OUTLINED_FUNCTION_361();
  OUTLINED_FUNCTION_514(v3);
  return OUTLINED_FUNCTION_545();
}

uint64_t sub_21AFE0CD4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_205();
  v7 = *(v3 + v6) + *a1;
  v8 = *(v7 + 8);
  *a3 = *v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = *(v7 + 16);

  return a2();
}

uint64_t sub_21AFE0D64(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v10 = OUTLINED_FUNCTION_687(v9);
  v11 = *(v3 + v4);
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v12 = OUTLINED_FUNCTION_16_1();
    v13 = sub_21B037BC0(v12);
    OUTLINED_FUNCTION_662(v13);
  }

  v14 = v11 + *a2;
  v15 = *v14;
  v16 = *(v14 + 8);
  *v14 = v6;
  *(v14 + 8) = v7;
  v17 = *(v14 + 16);
  *(v14 + 16) = v8;

  return a3(v15, v16, v17);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.sectionBundleID.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_205();
  *(a1 + 20) = v3;
  OUTLINED_FUNCTION_612(*(v1 + v3));
  return OUTLINED_FUNCTION_545();
}

uint64_t sub_21AFE0E90(uint64_t a1, char a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = *(a1 + 16);
  if (a2)
  {
    v6 = OUTLINED_FUNCTION_84();
    v7(v6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_297();
      v8 = OUTLINED_FUNCTION_16_1();
      v9 = sub_21B037BC0(v8);
      OUTLINED_FUNCTION_50_0(v9);
    }

    v10 = OUTLINED_FUNCTION_610(*a3);
    *(v11 + 16) = v5;
    a4(v10);
    v12 = OUTLINED_FUNCTION_84();
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_297();
      v13 = OUTLINED_FUNCTION_16_1();
      v14 = sub_21B037BC0(v13);
      OUTLINED_FUNCTION_50_0(v14);
    }

    v12 = OUTLINED_FUNCTION_610(*a3);
    *(v15 + 16) = v5;
  }

  return a4(v12);
}

uint64_t sub_21AFE0FA0(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_611();
  if (!v4 && (v3 & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_52();
    a2(v5);
  }

  return OUTLINED_FUNCTION_52();
}

uint64_t sub_21AFE1008(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Feedback_V2_SearchResultForFeedback.sectionBundleIdentifier.setter(v1, v2, v3, v4);
}

uint64_t sub_21AFE1068(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  v10 = OUTLINED_FUNCTION_233();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v10);
  v12 = OUTLINED_FUNCTION_867(v11);
  v13 = *(v5 + v7);
  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v14 = OUTLINED_FUNCTION_16_1();
    v13 = sub_21B037BC0(v14);
    *(v9 + v7) = v13;
  }

  v15 = v13 + *a3;
  v16 = *v15;
  v17 = *(v15 + 8);
  *v15 = v6;
  *(v15 + 8) = v4;
  v18 = *(v15 + 16);
  *(v15 + 16) = 0;

  return a4(v16, v17, v18);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.sectionBundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664(a1);
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_611();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = OUTLINED_FUNCTION_105();
    sub_21AF83F94(v7, v8, 0);
  }

  *v1 = v5;
  v1[1] = v6;
  return OUTLINED_FUNCTION_545();
}

void sub_21AFE11A0(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_361();
  if (v3 == 255)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = (v3 == 255 || (v3 & 1) == 0) | v5 & 1;
}

uint64_t sub_21AFE121C(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = v3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v10 = OUTLINED_FUNCTION_867(v9);
  v11 = *(v3 + v4);
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v12 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21B037BC0(v12);
    *(v6 + v4) = v11;
  }

  v13 = v11 + *a2;
  v14 = *v13;
  v15 = *(v13 + 8);
  *v13 = v7;
  *(v13 + 8) = v8;
  v16 = *(v13 + 16);
  *(v13 + 16) = 1;

  return a3(v14, v15, v16);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.knownSectionBundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664(a1);
  OUTLINED_FUNCTION_205();
  *(v1 + 12) = v2;
  OUTLINED_FUNCTION_361();
  OUTLINED_FUNCTION_514(v3);
  return OUTLINED_FUNCTION_545();
}

uint64_t sub_21AFE1340(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21B037BC0(v5);
    OUTLINED_FUNCTION_24_1(v6);
  }

  v7 = OUTLINED_FUNCTION_610(*a3);
  *(v8 + 16) = 1;

  return a4(v7);
}

double sub_21AFE13F4@<D0>(void (*a1)(__int128 *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_21AFE143C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void *))
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v11 = v8;
  a5(v10[0]);
  return a6(v10);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.applicationBundleID.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_205();
  *(a1 + 20) = v3;
  OUTLINED_FUNCTION_612(*(v1 + v3));
  return OUTLINED_FUNCTION_545();
}

uint64_t sub_21AFE1558(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Feedback_V2_SearchResultForFeedback.applicationBundleIdentifier.setter(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.applicationBundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664(a1);
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_611();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = OUTLINED_FUNCTION_105();
    sub_21AF83F94(v7, v8, 0);
  }

  *v1 = v5;
  v1[1] = v6;
  return OUTLINED_FUNCTION_545();
}

uint64_t sub_21AFE164C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_84();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_84();
    return a3(v6);
  }
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.knownApplicationBundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664(a1);
  OUTLINED_FUNCTION_205();
  *(v1 + 12) = v2;
  OUTLINED_FUNCTION_361();
  OUTLINED_FUNCTION_514(v3);
  return OUTLINED_FUNCTION_545();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.entityData.modify()
{
  v2 = OUTLINED_FUNCTION_471();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_136(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  OUTLINED_FUNCTION_254(v5);
  OUTLINED_FUNCTION_206();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_21AF99818(v6, v7);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.shouldUseCompactDisplay.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.noGoTakeover.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.preferTopPlatter.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.wasCompact.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.didTakeoverGo.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.usesCompactDisplay.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isInstantAnswer.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.shouldAutoNavigate.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.card.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_535(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_454(v4);
  }

  OUTLINED_FUNCTION_6_9();
  v5 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v5);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_290(v6);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_CardForFeedback.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  v1 = OUTLINED_FUNCTION_517();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v1);
  return OUTLINED_FUNCTION_672(v2);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.card.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_135();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_467(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149(v12);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v13)
  {
    OUTLINED_FUNCTION_513(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_760(v14);
    OUTLINED_FUNCTION_27_4();
    if (!v13)
    {
      sub_21AF99BE0(v0, &qword_27CD44940, &qword_21B118128);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_9();
    v15 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v15);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasCard.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v4);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearCard()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_536(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_20_1(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_274(v5);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.inlineCard.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_535(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_454(v4);
  }

  OUTLINED_FUNCTION_6_9();
  v5 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v5);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_290(v6);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.inlineCard.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_135();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_467(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149(v12);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v13)
  {
    OUTLINED_FUNCTION_513(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_760(v14);
    OUTLINED_FUNCTION_27_4();
    if (!v13)
    {
      sub_21AF99BE0(v0, &qword_27CD44940, &qword_21B118128);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_9();
    v15 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v15);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasInlineCard.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v4);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearInlineCard()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_536(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_20_1(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_274(v5);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t sub_21AFE27DC@<X0>(void *a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_12_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v8);
  v9 = OUTLINED_FUNCTION_525();
  OUTLINED_FUNCTION_28_1(v9, v15);
  OUTLINED_FUNCTION_487();
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    *a2 = MEMORY[0x277D84F90];
    a2[1] = 0;
    OUTLINED_FUNCTION_593();
    OUTLINED_FUNCTION_761(v12);
    result = OUTLINED_FUNCTION_33_4();
    if (!v11)
    {
      return sub_21AF99BE0(v2, &qword_27CD44940, &qword_21B118128);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v13);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.compactCard.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_535(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_454(v4);
  }

  OUTLINED_FUNCTION_6_9();
  v5 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v5);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_290(v6);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.compactCard.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_135();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_467(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149(v12);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v13)
  {
    OUTLINED_FUNCTION_513(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_760(v14);
    OUTLINED_FUNCTION_27_4();
    if (!v13)
    {
      sub_21AF99BE0(v0, &qword_27CD44940, &qword_21B118128);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_9();
    v15 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v15);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasCompactCard.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v4);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearCompactCard()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_536(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_20_1(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_274(v5);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.containsPersonalResult.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.didRerankPersonalResult.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_21AFE2E64@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_482();
  v5 = v3 + v4;
  result = OUTLINED_FUNCTION_269(v6);
  v8 = *(v5 + 8);
  *a2 = *v5;
  *(a2 + 8) = v8;
  return result;
}

void sub_21AFE2F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_623();
  v12 = v11;
  OUTLINED_FUNCTION_451();
  v13 = v7;
  v15 = *v14;
  v16 = *(v14 + 8);
  v18 = v17(0);
  OUTLINED_FUNCTION_706(v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v7 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v21 = OUTLINED_FUNCTION_16_1();
    isUniquelyReferenced_nonNull_native = v8(v21);
    v20 = isUniquelyReferenced_nonNull_native;
    *(v13 + v10) = isUniquelyReferenced_nonNull_native;
  }

  v22 = v20 + *v12;
  OUTLINED_FUNCTION_688(isUniquelyReferenced_nonNull_native);
  *v22 = v15;
  *(v22 + 8) = v16;
  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightIndexUsed.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE303C()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_296();
  v5 = *(v0 + 72);
  v6 = *(v0 + 84);
  v7 = *(v0 + 88);
  v8 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v0 + 84);
    v12 = *(v0 + 88);
    v4(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_16_1();
    isUniquelyReferenced_nonNull_native = v3(v13);
    v10 = isUniquelyReferenced_nonNull_native;
    *(v12 + v11) = isUniquelyReferenced_nonNull_native;
  }

  v14 = 48;
  if (v2)
  {
    v14 = 24;
  }

  v15 = v10 + *v1;
  OUTLINED_FUNCTION_643(isUniquelyReferenced_nonNull_native, v0 + v14);
  *v15 = v5;
  *(v15 + 8) = v8;
  OUTLINED_FUNCTION_77();

  free(v16);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightIndexUsedReason.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightRankingSignals.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v7);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_343();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_29_4(v8);
  if (v9)
  {
    Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.init()(a1);
    result = OUTLINED_FUNCTION_33_4();
    if (!v9)
    {
      return sub_21AF99BE0(v1, &qword_27CD44980, &qword_21B118130);
    }
  }

  else
  {
    OUTLINED_FUNCTION_315();
    v10 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v10);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightRankingSignals.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44980, &qword_21B118130);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_535(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_454(v4);
  }

  OUTLINED_FUNCTION_315();
  v5 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v5);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_290(v6);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 76) = 0;
  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  return sub_21B111EB4();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightRankingSignals.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(v8);
  OUTLINED_FUNCTION_135();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_467(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149(v13);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v14)
  {
    *(v10 + 20) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 40) = 1;
    *(v10 + 44) = 0;
    *(v10 + 48) = 0;
    *(v10 + 52) = 0;
    *(v10 + 56) = 0;
    *(v10 + 60) = 0;
    *(v10 + 64) = 0;
    *(v10 + 72) = 1;
    *(v10 + 76) = 0;
    sub_21B111EB4();
    OUTLINED_FUNCTION_27_4();
    if (!v14)
    {
      sub_21AF99BE0(v0, &qword_27CD44980, &qword_21B118130);
    }
  }

  else
  {
    OUTLINED_FUNCTION_315();
    v15 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v15);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasCoreSpotlightRankingSignals.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v4);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearCoreSpotlightRankingSignals()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44980, &qword_21B118130);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_536(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_20_1(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_274(v5);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailRankingSignals.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v7);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_343();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_29_4(v8);
  if (v9)
  {
    sub_21B111EB4();
    if (qword_27CD42748 != -1)
    {
      OUTLINED_FUNCTION_607(&qword_27CD42748);
    }

    result = OUTLINED_FUNCTION_194();
    if (a1 != 1)
    {
      return sub_21AF99BE0(v1, &qword_27CD44990, &qword_21B118138);
    }
  }

  else
  {
    OUTLINED_FUNCTION_314();
    v10 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v10);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailRankingSignals.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44990, &qword_21B118138);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_535(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_454(v4);
  }

  OUTLINED_FUNCTION_314();
  v5 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v5);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_290(v6);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailRankingSignals.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_469();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_223(v3);
  v4 = OUTLINED_FUNCTION_455();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_222(v8);
  type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v9);
  OUTLINED_FUNCTION_135();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_467(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149(v13);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v14)
  {
    sub_21B111EB4();
    if (qword_27CD42748 != -1)
    {
      OUTLINED_FUNCTION_607(&qword_27CD42748);
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD44990, &qword_21B118138);
    }
  }

  else
  {
    OUTLINED_FUNCTION_314();
    v15 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v15);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasMailRankingSignals.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v4);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearMailRankingSignals()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44990, &qword_21B118138);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_536(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_20_1(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_274(v5);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailResultDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_111();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v8);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_343();
  type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  OUTLINED_FUNCTION_635();
  v9 = OUTLINED_FUNCTION_33_4();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = v1;
    *(a1 + 12) = 0;
    OUTLINED_FUNCTION_827(v9);
    result = OUTLINED_FUNCTION_33_4();
    if (!v10)
    {
      return sub_21AF99BE0(v2, &unk_27CD449A0, &qword_21B118140);
    }
  }

  else
  {
    OUTLINED_FUNCTION_313();
    v11 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v11);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailResultDetails.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD449A0, &qword_21B118140);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_535(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_454(v4);
  }

  OUTLINED_FUNCTION_313();
  v5 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v5);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  OUTLINED_FUNCTION_290(v6);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_336(a1);
  *(v1 + 12) = 0;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  return OUTLINED_FUNCTION_674(v2);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailResultDetails.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(v8);
  OUTLINED_FUNCTION_135();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_467(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149(v13);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v14)
  {
    *v10 = 0;
    *(v10 + 8) = 1;
    *(v10 + 12) = 0;
    sub_21B111EB4();
    OUTLINED_FUNCTION_27_4();
    if (!v14)
    {
      sub_21AF99BE0(v0, &unk_27CD449A0, &qword_21B118140);
    }
  }

  else
  {
    OUTLINED_FUNCTION_313();
    v15 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v15);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasMailResultDetails.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v4);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearMailResultDetails()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD449A0, &qword_21B118140);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_536(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_20_1(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  OUTLINED_FUNCTION_274(v5);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isVideoAssetFromPhotos.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isMailInstantAnswerUpdated.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.indexOfSectionWhenRanked.modify()
{
  v1 = OUTLINED_FUNCTION_22_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_42_2(v2);
  *(v0 + 84) = v3;
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.indexOfResultInSectionWhenRanked.modify()
{
  v1 = OUTLINED_FUNCTION_22_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_42_2(v2);
  *(v0 + 84) = v3;
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_465();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.safariAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_111();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v8);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_343();
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  OUTLINED_FUNCTION_635();
  OUTLINED_FUNCTION_33_4();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = v1;
    sub_21B111EB4();
    result = OUTLINED_FUNCTION_33_4();
    if (!v9)
    {
      return sub_21AF99BE0(v2, &qword_27CD449D0, &qword_21B118148);
    }
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v10 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v10);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.safariAttributes.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449D0, &qword_21B118148);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_535(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_454(v4);
  }

  OUTLINED_FUNCTION_312();
  v5 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v5);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  OUTLINED_FUNCTION_290(v6);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SafariAttributes.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_336(a1);
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  return OUTLINED_FUNCTION_747(v1);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.safariAttributes.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(v8);
  OUTLINED_FUNCTION_135();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_467(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149(v13);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v14)
  {
    *v10 = 0;
    *(v10 + 8) = 1;
    sub_21B111EB4();
    OUTLINED_FUNCTION_27_4();
    if (!v14)
    {
      sub_21AF99BE0(v0, &qword_27CD449D0, &qword_21B118148);
    }
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v15 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v15);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasSafariAttributes.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v4);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearSafariAttributes()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449D0, &qword_21B118148);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_536(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_20_1(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  OUTLINED_FUNCTION_274(v5);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasAppTopHitShortcut_p.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAttributes.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_535(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_454(v4);
  }

  OUTLINED_FUNCTION_209();
  v5 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v5);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_290(v6);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAttributes.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  OUTLINED_FUNCTION_752();
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  return OUTLINED_FUNCTION_723(v1);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAttributes.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(v8);
  OUTLINED_FUNCTION_135();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_467(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149(v12);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  v13 = OUTLINED_FUNCTION_27_4();
  if (v14)
  {
    OUTLINED_FUNCTION_740(v13);
    OUTLINED_FUNCTION_27_4();
    if (!v14)
    {
      sub_21AF99BE0(v0, &qword_27CD449E8, &qword_21B118150);
    }
  }

  else
  {
    OUTLINED_FUNCTION_209();
    v15 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v15);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasPhotosAttributes.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v4);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearPhotosAttributes()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_536(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_20_1(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_274(v5);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAggregatedInfo.getter()
{
  v1 = OUTLINED_FUNCTION_111();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v5);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_343();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_635();
  OUTLINED_FUNCTION_33_4();
  if (v6)
  {
    OUTLINED_FUNCTION_704();
    OUTLINED_FUNCTION_827(v7);
    result = OUTLINED_FUNCTION_33_4();
    if (!v6)
    {
      return sub_21AF99BE0(v0, &qword_27CD449F8, &qword_21B118158);
    }
  }

  else
  {
    OUTLINED_FUNCTION_311();
    v8 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v8);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAggregatedInfo.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449F8, &qword_21B118158);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_535(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_454(v4);
  }

  OUTLINED_FUNCTION_311();
  v5 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v5);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_290(v6);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAggregatedInfo.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_336(a1);
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_724(v2);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  return OUTLINED_FUNCTION_674(v3);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAggregatedInfo.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(v8);
  OUTLINED_FUNCTION_135();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_467(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149(v12);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v13)
  {
    OUTLINED_FUNCTION_702();
    sub_21B111EB4();
    OUTLINED_FUNCTION_27_4();
    if (!v13)
    {
      sub_21AF99BE0(v0, &qword_27CD449F8, &qword_21B118158);
    }
  }

  else
  {
    OUTLINED_FUNCTION_311();
    v14 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v14);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasPhotosAggregatedInfo.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_251(v4);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearPhotosAggregatedInfo()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449F8, &qword_21B118158);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  if ((OUTLINED_FUNCTION_536(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v3 = OUTLINED_FUNCTION_16_1();
    v4 = sub_21B037BC0(v3);
    OUTLINED_FUNCTION_20_1(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_274(v5);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.thirdPartyQueryCompletionMatched.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

float Apple_Parsec_Feedback_V2_SearchResultForFeedback.thirdPartyNavigationIntentScore.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_205();
  v4 = *(v1 + v3) + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore;
  OUTLINED_FUNCTION_269(v2);
  return *v4;
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.thirdPartyNavigationIntentScore.setter()
{
  OUTLINED_FUNCTION_859();
  v3 = OUTLINED_FUNCTION_235();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B037BC0(v7);
    v5 = OUTLINED_FUNCTION_637(v8);
  }

  v9 = (v6 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore);
  OUTLINED_FUNCTION_688(v5);
  *v9 = v2;
  OUTLINED_FUNCTION_858();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.thirdPartyNavigationIntentScore.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42_2(v3);
  *(v1 + 84) = v4;
  OUTLINED_FUNCTION_206();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE5438(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_856();
  OUTLINED_FUNCTION_52_0();
  v7 = OUTLINED_FUNCTION_743();
  v8 = *(v5 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21B037BC0(v9);
    v7 = OUTLINED_FUNCTION_597(v10);
  }

  v11 = 48;
  if (v4)
  {
    v11 = 24;
  }

  v12 = (v8 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore);
  OUTLINED_FUNCTION_643(v7, v2 + v11);
  *v12 = v6;
  OUTLINED_FUNCTION_860();

  free(v13);
}

void sub_21AFE557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_623();
  v11 = v10;
  v12 = v9;
  v14 = *v7;
  v13 = v7[1];
  if (v7[2])
  {
    if (*(v8 + 16))
    {
      v15 = OUTLINED_FUNCTION_413();
      v11(v15);
      v16 = OUTLINED_FUNCTION_48_1();
      v17 = (v11)(v16);
      v18 = Apple_Parsec_Feedback_V2_SearchSuggestionType.rawValue.getter(v17);
      Apple_Parsec_Feedback_V2_SearchSuggestionType.rawValue.getter(v18);
      goto LABEL_7;
    }

LABEL_6:
    v19 = OUTLINED_FUNCTION_48_1();
    v12(v19);
    v20 = OUTLINED_FUNCTION_413();
    v11(v20);
    v21 = OUTLINED_FUNCTION_48_1();
    v11(v21);
    goto LABEL_7;
  }

  if (*(v8 + 16))
  {

    goto LABEL_6;
  }

  v22 = *v7;
  if (v14 == *v8 && v13 == *(v8 + 8))
  {
    (v9)(v22, v13, 0);
    v28 = OUTLINED_FUNCTION_413();
    v12(v28);
    v29 = OUTLINED_FUNCTION_413();
    v11(v29);
    v27 = OUTLINED_FUNCTION_413();
  }

  else
  {
    sub_21B112D04();
    v24 = OUTLINED_FUNCTION_48_1();
    v12(v24);
    v25 = OUTLINED_FUNCTION_413();
    v12(v25);
    v26 = OUTLINED_FUNCTION_413();
    v11(v26);
    v27 = OUTLINED_FUNCTION_48_1();
  }

  v11(v27);
LABEL_7:
  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAggregatedInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAttributes.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_SafariAttributes.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t sub_21AFE5A68()
{
  v0 = OUTLINED_FUNCTION_338();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_68();

  return v3(v2);
}

uint64_t sub_21AFE5AEC()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_163();
  v2 = OUTLINED_FUNCTION_110();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.wasReorderedByRecency.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 16, v1);
  return *(v0 + 16);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.wasReorderedByRecency.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 16, v4);
  *(v5 + 16) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.wasReorderedByRecency.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_8(v3);
  *(v1 + 80) = v4;
  OUTLINED_FUNCTION_249();
  *(v1 + 84) = *(v0 + 16);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE5C8C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 16) = v3;

  free(v1);
}

uint64_t sub_21AFE5D28()
{
  v1 = OUTLINED_FUNCTION_450();
  v2(v1);
  OUTLINED_FUNCTION_402();
  OUTLINED_FUNCTION_13_3(v0 + 24, v3);
  return *(v0 + 24);
}

void sub_21AFE5DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_623();
  OUTLINED_FUNCTION_271();
  v12 = OUTLINED_FUNCTION_187();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_687(v14);
  v17 = *(v8 + v11);
  if ((v15 & 1) == 0)
  {
    v18 = v10(0);
    OUTLINED_FUNCTION_693(v18);
    v19 = OUTLINED_FUNCTION_16_1();
    v20 = v9(v19);
    OUTLINED_FUNCTION_662(v20);
  }

  OUTLINED_FUNCTION_14_4(v17 + 24, v16);
  *(v17 + 24) = v7;
  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.numEngagements.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_137(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v4);
  OUTLINED_FUNCTION_225(v5);
  OUTLINED_FUNCTION_12_4(v0 + 24);
  *(v1 + 72) = *(v0 + 24);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE5EB4()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_168();
  v5 = OUTLINED_FUNCTION_592();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_613();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693(v8);
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529(v10);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 24) = v3;
  OUTLINED_FUNCTION_77();

  free(v11);
}

uint64_t sub_21AFE5F58()
{
  v1 = OUTLINED_FUNCTION_450();
  v2(v1);
  OUTLINED_FUNCTION_402();
  OUTLINED_FUNCTION_13_3(v0 + 32, v3);
  return *(v0 + 32);
}

void sub_21AFE5FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_623();
  OUTLINED_FUNCTION_271();
  v12 = OUTLINED_FUNCTION_187();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_687(v14);
  v17 = *(v8 + v11);
  if ((v15 & 1) == 0)
  {
    v18 = v10(0);
    OUTLINED_FUNCTION_693(v18);
    v19 = OUTLINED_FUNCTION_16_1();
    v20 = v9(v19);
    OUTLINED_FUNCTION_662(v20);
  }

  OUTLINED_FUNCTION_14_4(v17 + 32, v16);
  *(v17 + 32) = v7;
  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.numDaysEngagedLast30Days.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_137(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v4);
  OUTLINED_FUNCTION_225(v5);
  OUTLINED_FUNCTION_371();
  *(v1 + 72) = *(v0 + 32);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE60E0()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_168();
  v5 = OUTLINED_FUNCTION_592();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_613();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693(v8);
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529(v10);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 32) = v3;
  OUTLINED_FUNCTION_77();

  free(v11);
}

uint64_t sub_21AFE6184()
{
  v1 = OUTLINED_FUNCTION_450();
  v2(v1);
  OUTLINED_FUNCTION_402();
  OUTLINED_FUNCTION_13_3(v0 + 40, v3);
  return *(v0 + 40);
}

void sub_21AFE6208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_623();
  OUTLINED_FUNCTION_271();
  v12 = OUTLINED_FUNCTION_187();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_687(v14);
  v17 = *(v8 + v11);
  if ((v15 & 1) == 0)
  {
    v18 = v10(0);
    OUTLINED_FUNCTION_693(v18);
    v19 = OUTLINED_FUNCTION_16_1();
    v20 = v9(v19);
    OUTLINED_FUNCTION_662(v20);
  }

  OUTLINED_FUNCTION_14_4(v17 + 40, v16);
  *(v17 + 40) = v7;
  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast7Days.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 40);
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE6308()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_168();
  v5 = OUTLINED_FUNCTION_520();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_519();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693(v8);
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529(v10);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 40) = v3;
  OUTLINED_FUNCTION_77();

  free(v11);
}

uint64_t sub_21AFE63AC()
{
  v1 = OUTLINED_FUNCTION_450();
  v2(v1);
  OUTLINED_FUNCTION_402();
  OUTLINED_FUNCTION_13_3(v0 + 44, v3);
  return *(v0 + 44);
}

void sub_21AFE6430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_623();
  OUTLINED_FUNCTION_271();
  v12 = OUTLINED_FUNCTION_187();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_687(v14);
  v17 = *(v8 + v11);
  if ((v15 & 1) == 0)
  {
    v18 = v10(0);
    OUTLINED_FUNCTION_693(v18);
    v19 = OUTLINED_FUNCTION_16_1();
    v20 = v9(v19);
    OUTLINED_FUNCTION_662(v20);
  }

  OUTLINED_FUNCTION_14_4(v17 + 44, v16);
  *(v17 + 44) = v7;
  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast14Days.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 44);
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE6530()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_168();
  v5 = OUTLINED_FUNCTION_520();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_519();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693(v8);
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529(v10);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 44) = v3;
  OUTLINED_FUNCTION_77();

  free(v11);
}

uint64_t sub_21AFE65D4()
{
  v1 = OUTLINED_FUNCTION_450();
  v3 = v2(v1);
  OUTLINED_FUNCTION_354(v3, v4);
  return *(v0 + 48);
}

void sub_21AFE6650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_623();
  OUTLINED_FUNCTION_271();
  v12 = OUTLINED_FUNCTION_187();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_687(v14);
  v17 = *(v8 + v11);
  if ((v15 & 1) == 0)
  {
    v18 = v10(0);
    OUTLINED_FUNCTION_693(v18);
    v19 = OUTLINED_FUNCTION_16_1();
    v20 = v9(v19);
    OUTLINED_FUNCTION_662(v20);
  }

  OUTLINED_FUNCTION_14_4(v17 + 48, v16);
  *(v17 + 48) = v7;
  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast21Days.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 48);
  *(v1 + 80) = *(v0 + 48);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE6750()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_168();
  v5 = OUTLINED_FUNCTION_520();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_519();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693(v8);
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529(v10);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 48) = v3;
  OUTLINED_FUNCTION_77();

  free(v11);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast30Days.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 52, v1);
  return *(v0 + 52);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast30Days.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 52, v4);
  *(v5 + 52) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast30Days.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 52);
  *(v1 + 80) = *(v0 + 52);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE68CC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 52) = v3;

  free(v1);
}

uint64_t sub_21AFE6968()
{
  v1 = OUTLINED_FUNCTION_450();
  v2(v1);
  OUTLINED_FUNCTION_402();
  OUTLINED_FUNCTION_13_3(v0 + 56, v3);
  return *(v0 + 56);
}

void sub_21AFE69EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_623();
  OUTLINED_FUNCTION_271();
  v12 = OUTLINED_FUNCTION_187();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_687(v14);
  v17 = *(v8 + v11);
  if ((v15 & 1) == 0)
  {
    v18 = v10(0);
    OUTLINED_FUNCTION_693(v18);
    v19 = OUTLINED_FUNCTION_16_1();
    v20 = v9(v19);
    OUTLINED_FUNCTION_662(v20);
  }

  OUTLINED_FUNCTION_14_4(v17 + 56, v16);
  *(v17 + 56) = v7;
  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.daysSinceReceipt.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_137(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v4);
  OUTLINED_FUNCTION_225(v5);
  OUTLINED_FUNCTION_12_4(v0 + 56);
  *(v1 + 72) = *(v0 + 56);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE6AF4()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_168();
  v5 = OUTLINED_FUNCTION_592();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_613();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693(v8);
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529(v10);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 56) = v3;
  OUTLINED_FUNCTION_77();

  free(v11);
}

void Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.l1Score.setter()
{
  OUTLINED_FUNCTION_859();
  v3 = OUTLINED_FUNCTION_235();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_16_1();
    v9 = sub_21B042DF8(v8);
    OUTLINED_FUNCTION_637(v9);
  }

  OUTLINED_FUNCTION_14_4(v7 + 64, v6);
  *(v7 + 64) = v2;
  OUTLINED_FUNCTION_858();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.l1Score.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 64);
  *(v1 + 80) = *(v0 + 64);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE6C5C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_856();
  OUTLINED_FUNCTION_52_0();
  v5 = OUTLINED_FUNCTION_743();
  v6 = *(v3 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_360();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_597(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 64) = v4;
  OUTLINED_FUNCTION_860();

  free(v9);
}

void Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.l2Score.setter()
{
  OUTLINED_FUNCTION_859();
  v3 = OUTLINED_FUNCTION_235();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_16_1();
    v9 = sub_21B042DF8(v8);
    OUTLINED_FUNCTION_637(v9);
  }

  OUTLINED_FUNCTION_14_4(v7 + 68, v6);
  *(v7 + 68) = v2;
  OUTLINED_FUNCTION_858();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.l2Score.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 68);
  *(v1 + 80) = *(v0 + 68);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE6DC0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_856();
  OUTLINED_FUNCTION_52_0();
  v5 = OUTLINED_FUNCTION_743();
  v6 = *(v3 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_360();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_597(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 68) = v4;
  OUTLINED_FUNCTION_860();

  free(v9);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isFlagged.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 72, v1);
  return *(v0 + 72);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isFlagged.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 72, v4);
  *(v5 + 72) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isFlagged.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_8(v3);
  OUTLINED_FUNCTION_441(v4);
  OUTLINED_FUNCTION_12_4(v0 + 72);
  *(v1 + 84) = *(v0 + 72);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE6F40(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 72) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isRepliedTo.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 73, v4);
  *(v5 + 73) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isRepliedTo.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_8(v3);
  OUTLINED_FUNCTION_441(v4);
  OUTLINED_FUNCTION_12_4(v0 + 73);
  *(v1 + 84) = *(v0 + 73);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE70A0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 73) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSemanticMatch.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 74, v1);
  return *(v0 + 74);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSemanticMatch.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 74, v4);
  *(v5 + 74) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSemanticMatch.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_8(v3);
  OUTLINED_FUNCTION_441(v4);
  OUTLINED_FUNCTION_12_4(v0 + 74);
  *(v1 + 84) = *(v0 + 74);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE721C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 74) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSyntacticMatch.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 75, v1);
  return *(v0 + 75);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSyntacticMatch.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 75, v4);
  *(v5 + 75) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSyntacticMatch.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_8(v3);
  OUTLINED_FUNCTION_441(v4);
  OUTLINED_FUNCTION_12_4(v0 + 75);
  *(v1 + 84) = *(v0 + 75);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE7398(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 75) = v3;

  free(v1);
}

void Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.semanticScore.setter()
{
  OUTLINED_FUNCTION_859();
  v3 = OUTLINED_FUNCTION_235();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_16_1();
    v9 = sub_21B042DF8(v8);
    OUTLINED_FUNCTION_637(v9);
  }

  OUTLINED_FUNCTION_14_4(v7 + 76, v6);
  *(v7 + 76) = v2;
  OUTLINED_FUNCTION_858();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.semanticScore.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 76);
  *(v1 + 80) = *(v0 + 76);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE74F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_856();
  OUTLINED_FUNCTION_52_0();
  v5 = OUTLINED_FUNCTION_743();
  v6 = *(v3 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_360();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_597(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 76) = v4;
  OUTLINED_FUNCTION_860();

  free(v9);
}

void Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.syntacticScore.setter()
{
  OUTLINED_FUNCTION_859();
  v3 = OUTLINED_FUNCTION_235();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_16_1();
    v9 = sub_21B042DF8(v8);
    OUTLINED_FUNCTION_637(v9);
  }

  OUTLINED_FUNCTION_14_4(v7 + 80, v6);
  *(v7 + 80) = v2;
  OUTLINED_FUNCTION_858();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.syntacticScore.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 80);
  *(v1 + 80) = *(v0 + 80);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE765C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_856();
  OUTLINED_FUNCTION_52_0();
  v5 = OUTLINED_FUNCTION_743();
  v6 = *(v3 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_360();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_597(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 80) = v4;
  OUTLINED_FUNCTION_860();

  free(v9);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 84, v4);
  *(v5 + 84) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 84);
  *(v1 + 80) = *(v0 + 84);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE77B8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 84) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 88, v1);
  return *(v0 + 88);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 88, v4);
  *(v5 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 88);
  *(v1 + 80) = *(v0 + 88);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE792C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 88) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 92, v1);
  return *(v0 + 92);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 92, v4);
  *(v5 + 92) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 92);
  *(v1 + 80) = *(v0 + 92);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE7AA0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 92) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 96, v1);
  return *(v0 + 96);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 96, v4);
  *(v5 + 96) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 96);
  *(v1 + 80) = *(v0 + 96);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE7C14(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 96) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 100, v1);
  return *(v0 + 100);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 100, v4);
  *(v5 + 100) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 100);
  *(v1 + 80) = *(v0 + 100);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE7D88(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 100) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 104, v1);
  return *(v0 + 104);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 104, v4);
  *(v5 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 104);
  *(v1 + 80) = *(v0 + 104);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE7EFC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 104) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 108, v1);
  return *(v0 + 108);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 108, v4);
  *(v5 + 108) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 108);
  *(v1 + 80) = *(v0 + 108);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE8070(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 108) = v3;

  free(v1);
}

uint64_t sub_21AFE810C()
{
  v1 = OUTLINED_FUNCTION_450();
  v2(v1);
  OUTLINED_FUNCTION_402();
  OUTLINED_FUNCTION_13_3(v0 + 112, v3);
  return *(v0 + 112);
}

void sub_21AFE8190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_623();
  OUTLINED_FUNCTION_271();
  v12 = OUTLINED_FUNCTION_187();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_687(v14);
  v17 = *(v8 + v11);
  if ((v15 & 1) == 0)
  {
    v18 = v10(0);
    OUTLINED_FUNCTION_693(v18);
    v19 = OUTLINED_FUNCTION_16_1();
    v20 = v9(v19);
    OUTLINED_FUNCTION_662(v20);
  }

  OUTLINED_FUNCTION_14_4(v17 + 112, v16);
  *(v17 + 112) = v7;
  OUTLINED_FUNCTION_621();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 112);
  *(v1 + 80) = *(v0 + 112);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE8290()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_168();
  v5 = OUTLINED_FUNCTION_520();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_519();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693(v8);
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529(v10);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 112) = v3;
  OUTLINED_FUNCTION_77();

  free(v11);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 116, v1);
  return *(v0 + 116);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 116, v4);
  *(v5 + 116) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 116);
  *(v1 + 80) = *(v0 + 116);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE840C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 116) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 120, v1);
  return *(v0 + 120);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 120, v4);
  *(v5 + 120) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 120);
  *(v1 + 80) = *(v0 + 120);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE8580(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 120) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 124, v1);
  return *(v0 + 124);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 124, v4);
  *(v5 + 124) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 124);
  *(v1 + 80) = *(v0 + 124);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE86F4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 124) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 128, v1);
  return *(v0 + 128);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 128, v4);
  *(v5 + 128) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 128);
  *(v1 + 80) = *(v0 + 128);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE8868(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 128) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInSubject.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 132, v1);
  return *(v0 + 132);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 132, v4);
  *(v5 + 132) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 132);
  *(v1 + 80) = *(v0 + 132);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE89DC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 132) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInSubject.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 136, v1);
  return *(v0 + 136);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 136, v4);
  *(v5 + 136) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 136);
  *(v1 + 80) = *(v0 + 136);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE8B50(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 136) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInSubject.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 140, v1);
  return *(v0 + 140);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 140, v4);
  *(v5 + 140) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 140);
  *(v1 + 80) = *(v0 + 140);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE8CC4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 140) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInSubject.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 144, v1);
  return *(v0 + 144);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 144, v4);
  *(v5 + 144) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 144);
  *(v1 + 80) = *(v0 + 144);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE8E38(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 144) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInSubject.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 148, v1);
  return *(v0 + 148);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 148, v4);
  *(v5 + 148) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 148);
  *(v1 + 80) = *(v0 + 148);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE8FAC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 148) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInSubject.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 152, v1);
  return *(v0 + 152);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 152, v4);
  *(v5 + 152) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 152);
  *(v1 + 80) = *(v0 + 152);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE9120(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 152) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 156, v1);
  return *(v0 + 156);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 156, v4);
  *(v5 + 156) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 156);
  *(v1 + 80) = *(v0 + 156);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE9294(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 156) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 160, v1);
  return *(v0 + 160);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 160, v4);
  *(v5 + 160) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 160);
  *(v1 + 80) = *(v0 + 160);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE9408(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 160) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 164, v1);
  return *(v0 + 164);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 164, v4);
  *(v5 + 164) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 164);
  *(v1 + 80) = *(v0 + 164);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE957C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 164) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 168, v1);
  return *(v0 + 168);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 168, v4);
  *(v5 + 168) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 168);
  *(v1 + 80) = *(v0 + 168);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE96F0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 168) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 172, v1);
  return *(v0 + 172);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 172, v4);
  *(v5 + 172) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 172);
  *(v1 + 80) = *(v0 + 172);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE9864(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 172) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 176, v1);
  return *(v0 + 176);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 176, v4);
  *(v5 + 176) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 176);
  *(v1 + 80) = *(v0 + 176);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE99D8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 176) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 180, v1);
  return *(v0 + 180);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 180, v4);
  *(v5 + 180) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 180);
  *(v1 + 80) = *(v0 + 180);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE9B4C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 180) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 184, v1);
  return *(v0 + 184);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 184, v4);
  *(v5 + 184) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 184);
  *(v1 + 80) = *(v0 + 184);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE9CC0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 184) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 188, v1);
  return *(v0 + 188);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 188, v4);
  *(v5 + 188) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 188);
  *(v1 + 80) = *(v0 + 188);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE9E34(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 188) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 192, v1);
  return *(v0 + 192);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 192, v4);
  *(v5 + 192) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 192);
  *(v1 + 80) = *(v0 + 192);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFE9FA8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 192) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 196, v1);
  return *(v0 + 196);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 196, v4);
  *(v5 + 196) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 196);
  *(v1 + 80) = *(v0 + 196);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEA11C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 196) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 200, v1);
  return *(v0 + 200);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 200, v4);
  *(v5 + 200) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 200);
  *(v1 + 80) = *(v0 + 200);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEA290(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 200) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 204, v1);
  return *(v0 + 204);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 204, v4);
  *(v5 + 204) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 204);
  *(v1 + 80) = *(v0 + 204);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEA404(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 204) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 208, v1);
  return *(v0 + 208);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 208, v4);
  *(v5 + 208) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 208);
  *(v1 + 80) = *(v0 + 208);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEA578(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 208) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 212, v1);
  return *(v0 + 212);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 212, v4);
  *(v5 + 212) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 212);
  *(v1 + 80) = *(v0 + 212);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEA6EC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 212) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 216, v1);
  return *(v0 + 216);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 216, v4);
  *(v5 + 216) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 216);
  *(v1 + 80) = *(v0 + 216);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEA860(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 216) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 220, v1);
  return *(v0 + 220);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 220, v4);
  *(v5 + 220) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 220);
  *(v1 + 80) = *(v0 + 220);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEA9D4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 220) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 224, v1);
  return *(v0 + 224);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 224, v4);
  *(v5 + 224) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 224);
  *(v1 + 80) = *(v0 + 224);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEAB48(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 224) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 228, v1);
  return *(v0 + 228);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 228, v4);
  *(v5 + 228) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 228);
  *(v1 + 80) = *(v0 + 228);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEACBC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 228) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 232, v1);
  return *(v0 + 232);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 232, v4);
  *(v5 + 232) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 232);
  *(v1 + 80) = *(v0 + 232);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEAE30(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 232) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 236, v1);
  return *(v0 + 236);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 236, v4);
  *(v5 + 236) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 236);
  *(v1 + 80) = *(v0 + 236);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEAFA4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 236) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 240, v1);
  return *(v0 + 240);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 240, v4);
  *(v5 + 240) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 240);
  *(v1 + 80) = *(v0 + 240);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEB118(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 240) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 244, v1);
  return *(v0 + 244);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 244, v4);
  *(v5 + 244) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 244);
  *(v1 + 80) = *(v0 + 244);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEB28C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 244) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 248, v1);
  return *(v0 + 248);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 248, v4);
  *(v5 + 248) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 248);
  *(v1 + 80) = *(v0 + 248);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEB400(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 248) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 252, v1);
  return *(v0 + 252);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 252, v4);
  *(v5 + 252) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 252);
  *(v1 + 80) = *(v0 + 252);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEB574(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 252) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 256, v1);
  return *(v0 + 256);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 256, v4);
  *(v5 + 256) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 256);
  *(v1 + 80) = *(v0 + 256);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEB6E8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 256) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 260, v1);
  return *(v0 + 260);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 260, v4);
  *(v5 + 260) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 260);
  *(v1 + 80) = *(v0 + 260);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEB85C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 260) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 264, v1);
  return *(v0 + 264);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 264, v4);
  *(v5 + 264) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 264);
  *(v1 + 80) = *(v0 + 264);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEB9D0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 264) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 268, v1);
  return *(v0 + 268);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 268, v4);
  *(v5 + 268) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 268);
  *(v1 + 80) = *(v0 + 268);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEBB44(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 268) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 272, v1);
  return *(v0 + 272);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 272, v4);
  *(v5 + 272) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 272);
  *(v1 + 80) = *(v0 + 272);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEBCB8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 272) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentNames.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 276, v1);
  return *(v0 + 276);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentNames.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 276, v4);
  *(v5 + 276) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentNames.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 276);
  *(v1 + 80) = *(v0 + 276);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEBE2C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 276) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentNames.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 280, v1);
  return *(v0 + 280);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentNames.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 280, v4);
  *(v5 + 280) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentNames.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 280);
  *(v1 + 80) = *(v0 + 280);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEBFA0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 280) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentNames.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 284, v1);
  return *(v0 + 284);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentNames.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 284, v4);
  *(v5 + 284) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentNames.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 284);
  *(v1 + 80) = *(v0 + 284);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEC114(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 284) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentNames.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 288, v1);
  return *(v0 + 288);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentNames.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 288, v4);
  *(v5 + 288) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentNames.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 288);
  *(v1 + 80) = *(v0 + 288);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEC288(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 288) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentNames.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 292, v1);
  return *(v0 + 292);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentNames.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 292, v4);
  *(v5 + 292) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentNames.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 292);
  *(v1 + 80) = *(v0 + 292);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEC3FC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 292) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentNames.getter()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_13_3(v0 + 296, v1);
  return *(v0 + 296);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentNames.setter()
{
  v3 = OUTLINED_FUNCTION_151();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B042DF8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 296, v4);
  *(v5 + 296) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentNames.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_13(v3);
  OUTLINED_FUNCTION_12_4(v0 + 296);
  *(v1 + 80) = *(v0 + 296);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEC570(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B042DF8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 296) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_100();
  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_68();

  return v2(v1);
}

uint64_t Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_163();
  v1 = OUTLINED_FUNCTION_110();

  return v2(v1);
}

uint64_t Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t sub_21AFEC9C0()
{
  v0 = OUTLINED_FUNCTION_338();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_68();

  return v3(v2);
}

uint64_t sub_21AFECA44()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_163();
  v2 = OUTLINED_FUNCTION_110();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_Feedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.viewAppearEvent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.preexistingInput.setter()
{
  OUTLINED_FUNCTION_99();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.originatingApp.setter()
{
  OUTLINED_FUNCTION_99();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_100();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_68();

  return v2(v1);
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_163();
  v1 = OUTLINED_FUNCTION_110();

  return v2(v1);
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_376(a1);
  *(v1 + 17) = 0;
  *(v1 + 19) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 56) = 0;
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(0);
  return sub_21B111EB4();
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_RankingFeedback.sections.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_RankingFeedback.hiddenResults.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_RankingFeedback.spotlightQueryIntent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_RankingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_RankingFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
  return OUTLINED_FUNCTION_694(v3);
}

uint64_t Apple_Parsec_Feedback_V2_SectionRankingFeedback.section.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v7);
  OUTLINED_FUNCTION_307();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  OUTLINED_FUNCTION_29_4(v8);
  if (v9)
  {
    Apple_Parsec_Feedback_V2_ResultSectionForFeedback.init()(a1);
    result = OUTLINED_FUNCTION_33_4();
    if (!v9)
    {
      return sub_21AF99BE0(v1, &unk_27CD434E8, &unk_21B116AC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_8();
    v10 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v10);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SectionRankingFeedback.section.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 36), &unk_27CD434E8, &unk_21B116AC0);
  OUTLINED_FUNCTION_12_8();
  v3 = OUTLINED_FUNCTION_415();
  sub_21B03179C(v3);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v4 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Feedback_V2_SectionRankingFeedback.section.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_499();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_294(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v8);
  OUTLINED_FUNCTION_140(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_497(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_93(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v14);
  OUTLINED_FUNCTION_256(*(v15 + 36));
  OUTLINED_FUNCTION_27_4();
  if (v16)
  {
    OUTLINED_FUNCTION_609(MEMORY[0x277D84F90]);
    type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
    OUTLINED_FUNCTION_755();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_27_4();
    if (!v16)
    {
      sub_21AF99BE0(v0, &unk_27CD434E8, &unk_21B116AC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_8();
    v21 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v21);
  }

  OUTLINED_FUNCTION_114();
}

void sub_21AFED388()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_75();
    sub_21B0317EC(v6);
    sub_21AF99BE0(v4 + v3, &unk_27CD434E8, &unk_21B116AC0);
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_156();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &unk_27CD434E8, &unk_21B116AC0);
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t sub_21AFED52C()
{
  v0 = OUTLINED_FUNCTION_338();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_68();

  return v3(v2);
}

uint64_t sub_21AFED5B0()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_163();
  v2 = OUTLINED_FUNCTION_110();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_SectionRankingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_SectionRankingFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  OUTLINED_FUNCTION_690(v3);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v4 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Feedback_V2_ResultRankingFeedback.result.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_499();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_294(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(v15);
  OUTLINED_FUNCTION_256(*(v16 + 40));
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    sub_21B111EB4();
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2(&qword_27CD42718);
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    v18 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v18);
  }

  OUTLINED_FUNCTION_114();
}

uint64_t Apple_Parsec_Feedback_V2_ResultRankingFeedback.hiddenResults.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_21AFED97C()
{
  v0 = OUTLINED_FUNCTION_338();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_68();

  return v3(v2);
}

uint64_t sub_21AFEDA00()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_163();
  v2 = OUTLINED_FUNCTION_110();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_ResultRankingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ResultRankingFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  OUTLINED_FUNCTION_638(v3);
  v4 = OUTLINED_FUNCTION_659();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  v5 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_ResultFeedback.result.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v7);
  OUTLINED_FUNCTION_307();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_4(v8);
  if (v9)
  {
    sub_21B111EB4();
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2(&qword_27CD42718);
    }

    result = OUTLINED_FUNCTION_194();
    if (a1 != 1)
    {
      return sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    v10 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v10);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultFeedback.result.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 24), &qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_2_17();
  v3 = OUTLINED_FUNCTION_415();
  sub_21B03179C(v3);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v4 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Feedback_V2_ResultFeedback.result.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_499();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_294(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v15);
  OUTLINED_FUNCTION_256(*(v16 + 24));
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    sub_21B111EB4();
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2(&qword_27CD42718);
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    v18 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v18);
  }

  OUTLINED_FUNCTION_114();
}

void sub_21AFEDDCC()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_75();
    sub_21B0317EC(v6);
    sub_21AF99BE0(v4 + v3, &qword_27CD434D8, &qword_21B116AB0);
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_13_6();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &qword_27CD434D8, &qword_21B116AB0);
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_ResultFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.actionTarget.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.result.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v7);
  OUTLINED_FUNCTION_307();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_4(v8);
  if (v9)
  {
    sub_21B111EB4();
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2(&qword_27CD42718);
    }

    result = OUTLINED_FUNCTION_194();
    if (a1 != 1)
    {
      return sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    v10 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v10);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.result.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 48), &qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_2_17();
  v3 = OUTLINED_FUNCTION_415();
  sub_21B03179C(v3);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v4 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Feedback_V2_ResultEngagementFeedback.result.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_499();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_294(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v15);
  OUTLINED_FUNCTION_256(*(v16 + 48));
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    sub_21B111EB4();
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2(&qword_27CD42718);
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    v18 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v18);
  }

  OUTLINED_FUNCTION_114();
}

uint64_t sub_21AFEE340()
{
  OUTLINED_FUNCTION_250();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_263();
  v1(0);
  OUTLINED_FUNCTION_259();
  sub_21B0AA940();
  v6 = v0(0);
  OUTLINED_FUNCTION_220(v6);
  return OUTLINED_FUNCTION_682();
}

uint64_t sub_21AFEE408()
{
  v1 = OUTLINED_FUNCTION_218();
  v2(v1);
  OUTLINED_FUNCTION_452();
  sub_21AF99BE0(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_277();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.titleText.setter()
{
  OUTLINED_FUNCTION_99();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_585(a1);
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_724(1);
  *(v1 + 48) = 0;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
  sub_21B111EB4();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v4 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandType.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_798();
  v7 = OUTLINED_FUNCTION_275();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v7);
  v9 = OUTLINED_FUNCTION_651(v8);
  v11 = *(v3 + v6);
  if ((v9 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_16_1();
    v13 = sub_21B04D148(v12);
    OUTLINED_FUNCTION_34_1(v13);
  }

  OUTLINED_FUNCTION_14_4(v11 + 16, v10);
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandType.modify()
{
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_147(v2);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v3);
  OUTLINED_FUNCTION_182(v4);
  OUTLINED_FUNCTION_344();
  OUTLINED_FUNCTION_49_0(*(v0 + 16));
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEE6E4()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_159();
  v4 = OUTLINED_FUNCTION_460();
  v5 = *(v3 + v0);
  if ((v4 & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_425();
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(v6);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B04D148(v7);
    OUTLINED_FUNCTION_50_0(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_114();

  free(v9);
}

void sub_21AFEE788(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandDetail.setter(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandDetail.modify()
{
  v2 = OUTLINED_FUNCTION_471();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_136(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  OUTLINED_FUNCTION_281(v5);
  OUTLINED_FUNCTION_371();
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_109();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.uniqueButtonID.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  OUTLINED_FUNCTION_354(v1, v2);
  return *(v0 + 48);
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.uniqueButtonID.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_187();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  v6 = OUTLINED_FUNCTION_650(v5);
  v8 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21B04D148(v9);
    OUTLINED_FUNCTION_20_1(v10);
  }

  result = OUTLINED_FUNCTION_14_4(v8 + 48, v7);
  *(v8 + 48) = v1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.uniqueButtonID.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_137(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  OUTLINED_FUNCTION_225(v5);
  OUTLINED_FUNCTION_12_4(v0 + 48);
  *(v1 + 72) = *(v0 + 48);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEE9B0()
{
  OUTLINED_FUNCTION_159();
  v4 = OUTLINED_FUNCTION_500();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_279();
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(v6);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B04D148(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v5 + 48) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.getter()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_13_3(v0 + 56, v1);

  return OUTLINED_FUNCTION_52();
}

void sub_21AFEEA80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.setter(v1, v2);
}

void Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_798();
  v6 = OUTLINED_FUNCTION_213();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v6);
  v8 = OUTLINED_FUNCTION_651(v7);
  v10 = *(v3 + v5);
  if ((v8 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_16_1();
    v12 = sub_21B04D148(v11);
    OUTLINED_FUNCTION_454(v12);
  }

  OUTLINED_FUNCTION_14_4(v10 + 56, v9);
  *(v10 + 56) = v4;
  *(v10 + 64) = v2;

  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.modify()
{
  v2 = OUTLINED_FUNCTION_471();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_136(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  OUTLINED_FUNCTION_281(v5);
  OUTLINED_FUNCTION_12_4(v0 + 56);
  v6 = *(v0 + 64);
  *(v1 + 48) = *(v0 + 56);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_109();
}

void sub_21AFEEB9C()
{
  OUTLINED_FUNCTION_186();
  if (v5)
  {
    OUTLINED_FUNCTION_716();
    v6 = OUTLINED_FUNCTION_84();
    Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_528();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_353();
      type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(v10);
      OUTLINED_FUNCTION_391();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_16_1();
      v12 = sub_21B04D148(v11);
      OUTLINED_FUNCTION_24_1(v12);
    }

    OUTLINED_FUNCTION_504(v9 + 56);
    *(v9 + 56) = v3;
    *(v9 + 64) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.result.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v7);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_343();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_4(v8);
  if (v9)
  {
    sub_21B111EB4();
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2(&qword_27CD42718);
    }

    result = OUTLINED_FUNCTION_194();
    if (a1 != 1)
    {
      return sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    v10 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v10);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.result.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_651(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_16_1();
    v5 = sub_21B04D148(v4);
    OUTLINED_FUNCTION_454(v5);
  }

  OUTLINED_FUNCTION_2_17();
  v6 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v6);
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_290(v7);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_CommandEngagementFeedback.result.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_469();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_223(v3);
  v4 = OUTLINED_FUNCTION_455();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_222(v8);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_135();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_467(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224(v13);
  type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v14);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v15)
  {
    sub_21B111EB4();
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2(&qword_27CD42718);
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    v16 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v16);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.hasResult.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_CommandEngagementFeedback.clearResult()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_650(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_16_1();
    v5 = sub_21B04D148(v4);
    OUTLINED_FUNCTION_20_1(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_274(v6);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_137(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_225(v3);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_839();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.resultSectionID.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.triggerEvent.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.contactActionType.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.didDisplayHandleOptions.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_54_0(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_200(v3);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.didSelectFromOptionsMenu.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_54_0(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_200(v3);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEF784()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_522();
  v4 = OUTLINED_FUNCTION_455();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_73();
  v8 = v2(0);
  OUTLINED_FUNCTION_308(v8);
  OUTLINED_FUNCTION_433();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_635();
  OUTLINED_FUNCTION_26_2(v3);
  if (v9)
  {
    *(v0 + 16) = 0;
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 24) = v1;
    sub_21B111EB4();
    OUTLINED_FUNCTION_26_2(v3);
    if (!v9)
    {
      sub_21AF99BE0(v3, &qword_27CD449E8, &qword_21B118150);
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_625();
    sub_21B03179C(v10);
  }

  OUTLINED_FUNCTION_114();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.photosAttributes.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_651(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_16_1();
    v5 = sub_21B04D148(v4);
    OUTLINED_FUNCTION_454(v5);
  }

  OUTLINED_FUNCTION_209();
  v6 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v6);
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_290(v7);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_CommandEngagementFeedback.photosAttributes.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(v8);
  OUTLINED_FUNCTION_135();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_467(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224(v12);
  type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v13);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  v14 = OUTLINED_FUNCTION_27_4();
  if (v15)
  {
    OUTLINED_FUNCTION_740(v14);
    OUTLINED_FUNCTION_27_4();
    if (!v15)
    {
      sub_21AF99BE0(v0, &qword_27CD449E8, &qword_21B118150);
    }
  }

  else
  {
    OUTLINED_FUNCTION_209();
    v16 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v16);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.hasPhotosAttributes.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_CommandEngagementFeedback.clearPhotosAttributes()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_650(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_16_1();
    v5 = sub_21B04D148(v4);
    OUTLINED_FUNCTION_20_1(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_274(v6);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t sub_21AFEFCE8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, int a2@<W8>)
{
  v5 = OUTLINED_FUNCTION_12_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_18_2();
  a1(v9);
  OUTLINED_FUNCTION_487();
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    sub_21B111EB4();
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2(&qword_27CD42718);
    }

    result = OUTLINED_FUNCTION_194();
    if (a2 != 1)
    {
      return sub_21AF99BE0(v2, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v12);
  }

  return result;
}

uint64_t sub_21AFEFE1C()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v3 = v2(v1);
  sub_21AF99BE0(v0 + *(v3 + 40), &qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_2_17();
  v4 = OUTLINED_FUNCTION_415();
  sub_21B03179C(v4);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v5 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Feedback_V2_VisibleResultsFeedback.goTakeoverResult.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_499();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_294(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(v15);
  OUTLINED_FUNCTION_256(*(v16 + 40));
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    sub_21B111EB4();
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2(&qword_27CD42718);
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    v18 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v18);
  }

  OUTLINED_FUNCTION_114();
}

uint64_t sub_21AFF0004()
{
  OUTLINED_FUNCTION_250();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_263();
  v1(0);
  OUTLINED_FUNCTION_259();
  sub_21B0AA940();
  v6 = v0(0);
  OUTLINED_FUNCTION_220(v6);
  return OUTLINED_FUNCTION_682();
}

uint64_t sub_21AFF00CC()
{
  v1 = OUTLINED_FUNCTION_218();
  v2(v1);
  OUTLINED_FUNCTION_452();
  sub_21AF99BE0(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_277();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Feedback_V2_VisibleResultsFeedback.uniqueIdentifiersOfVisibleCardSections.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_VisibleResultsFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_VisibleResultsFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_841(MEMORY[0x277D84F90]);
  *(a1 + 24) = 1;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
  OUTLINED_FUNCTION_638(v3);
  v4 = OUTLINED_FUNCTION_659();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  v5 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_300(a1);
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
  return OUTLINED_FUNCTION_674(v4);
}

uint64_t Apple_Parsec_Feedback_V2_CounterfactualInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_CounterfactualInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
  return OUTLINED_FUNCTION_674(v1);
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.counterfactual.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_111();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v8);
  OUTLINED_FUNCTION_307();
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
  OUTLINED_FUNCTION_635();
  v9 = OUTLINED_FUNCTION_33_4();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = v1;
    OUTLINED_FUNCTION_827(v9);
    result = OUTLINED_FUNCTION_33_4();
    if (!v10)
    {
      return sub_21AF99BE0(v2, &qword_27CD44A58, &qword_21B118160);
    }
  }

  else
  {
    OUTLINED_FUNCTION_51();
    v11 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v11);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.counterfactual.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 32), &qword_27CD44A58, &qword_21B118160);
  OUTLINED_FUNCTION_51();
  v3 = OUTLINED_FUNCTION_415();
  sub_21B03179C(v3);
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
  v4 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.counterfactual.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_499();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v8);
  OUTLINED_FUNCTION_150(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v15);
  OUTLINED_FUNCTION_299(*(v16 + 32));
  OUTLINED_FUNCTION_12_5();
  if (v17)
  {
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    sub_21B111EB4();
    OUTLINED_FUNCTION_12_5();
    if (!v17)
    {
      sub_21AF99BE0(v0, &qword_27CD44A58, &qword_21B118160);
    }
  }

  else
  {
    OUTLINED_FUNCTION_51();
    v18 = OUTLINED_FUNCTION_84();
    sub_21B03179C(v18);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_114();
}

void sub_21AFF071C()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_75();
    sub_21B0317EC(v6);
    sub_21AF99BE0(v4 + v3, &qword_27CD44A58, &qword_21B118160);
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_333();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &qword_27CD44A58, &qword_21B118160);
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_300(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  OUTLINED_FUNCTION_544(v3);
  v4 = OUTLINED_FUNCTION_658();
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v4);
  v5 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.cardSections.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.cardSectionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 104) = *result;
  *(v1 + 112) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.buttons.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.leadingSwipeButtonItems.setter(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.trailingSwipeButtonItems.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276();
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = v2;
  v3 = MEMORY[0x277D84F90];
  *(a1 + 96) = MEMORY[0x277D84F90];
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = v2;
  *(a1 + 136) = v3;
  *(a1 + 144) = v3;
  *(a1 + 152) = v3;
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  return sub_21B111EB4();
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.commandType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_336(a1);
  v2 = OUTLINED_FUNCTION_518();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback(v2);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  return OUTLINED_FUNCTION_690(v3);
}

uint64_t Apple_Parsec_Feedback_V2_ButtonForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_CardForFeedback.cardSections.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_21AFF0EC0()
{
  v0 = OUTLINED_FUNCTION_338();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_68();

  return v3(v2);
}

uint64_t sub_21AFF0F44()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_163();
  v2 = OUTLINED_FUNCTION_110();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_CardForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionFeedback.cardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v7);
  OUTLINED_FUNCTION_307();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_29_4(v8);
  if (v9)
  {
    Apple_Parsec_Feedback_V2_CardSectionForFeedback.init()(a1);
    result = OUTLINED_FUNCTION_33_4();
    if (!v9)
    {
      return sub_21AF99BE0(v1, &qword_27CD44A60, &qword_21B118168);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_8();
    v10 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v10);
  }

  return result;
}