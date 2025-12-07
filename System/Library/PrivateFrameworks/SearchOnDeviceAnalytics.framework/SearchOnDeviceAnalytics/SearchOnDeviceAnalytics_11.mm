uint64_t sub_21B08FFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD468E0, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B09005C(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD46060, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0900CC(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD46060, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);

  return sub_21B112114();
}

uint64_t sub_21B090158()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD446C0);
  __swift_project_value_buffer(v0, qword_27CD446C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_21B1180F0;
  v4 = v53 + v3;
  v5 = v53 + v3 + v1[14];
  *(v53 + v3) = 1;
  *v5 = "appLaunch";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21B112234();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "onDeviceAddressBookData";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "onDeviceOtherPersonalData";
  *(v11 + 1) = 25;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "punchout";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "thirdPartyInAppContent";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "parsec";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "querySuggestion";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "other";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "totalEngagements";
  *(v23 + 1) = 16;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "siriSuggestions";
  *(v25 + 1) = 15;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 14;
  *v27 = "parsecWeb";
  *(v27 + 1) = 9;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 15;
  *v29 = "parsecAppStore";
  *(v29 + 1) = 14;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 16;
  *v31 = "parsecMaps";
  *(v31 + 1) = 10;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 17;
  *v33 = "parsecWiki";
  *(v33 + 1) = 10;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 18;
  *v35 = "parsecNews";
  *(v35 + 1) = 10;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 19;
  *v37 = "parsecStocks";
  *(v37 + 1) = 12;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 20;
  *v39 = "parsecWeather";
  *(v39 + 1) = 13;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 21;
  *v41 = "parsecOther";
  *(v41 + 1) = 11;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 22;
  *v43 = "webSuggestions";
  *(v43 + 1) = 14;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 11;
  *v45 = "topHitTriggerRatio";
  *(v45 + 1) = 18;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 12;
  *v47 = "querySuggestionTriggerRatio";
  *(v47 + 1) = 27;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 13;
  *v49 = "totalTopHitEngagements";
  *(v49 + 1) = 22;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "engagementShareRatio";
  *(v51 + 1) = 20;
  v51[16] = 2;
  v8();
  return sub_21B112244();
}

_OWORD *sub_21B09088C()
{
  *(v0 + 76) = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  v1 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__topHitTriggerRatio;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__querySuggestionTriggerRatio, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements) = 0;
  v3 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__engagementShareRatio;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t sub_21B090938(_DWORD *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CB8, &qword_21B118250);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CA0, &qword_21B118248);
  MEMORY[0x28223BE20](v5 - 8);
  v33[0] = v33 - v6;
  *(v1 + 76) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v7 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__topHitTriggerRatio;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v33[1] = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__querySuggestionTriggerRatio;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__querySuggestionTriggerRatio, 1, 1, v8);
  v34 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements) = 0;
  v9 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__engagementShareRatio;
  v35 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__engagementShareRatio;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  swift_beginAccess();
  v11 = a1[4];
  swift_beginAccess();
  *(v1 + 16) = v11;
  swift_beginAccess();
  v12 = a1[5];
  swift_beginAccess();
  *(v1 + 20) = v12;
  swift_beginAccess();
  v13 = a1[6];
  swift_beginAccess();
  *(v1 + 24) = v13;
  swift_beginAccess();
  v14 = a1[7];
  swift_beginAccess();
  *(v1 + 28) = v14;
  swift_beginAccess();
  v15 = a1[8];
  swift_beginAccess();
  *(v1 + 32) = v15;
  swift_beginAccess();
  v16 = a1[9];
  swift_beginAccess();
  *(v1 + 36) = v16;
  swift_beginAccess();
  v17 = a1[10];
  swift_beginAccess();
  *(v1 + 40) = v17;
  swift_beginAccess();
  v18 = a1[11];
  swift_beginAccess();
  *(v1 + 44) = v18;
  swift_beginAccess();
  v19 = a1[12];
  swift_beginAccess();
  *(v1 + 48) = v19;
  swift_beginAccess();
  v20 = a1[13];
  swift_beginAccess();
  *(v1 + 52) = v20;
  swift_beginAccess();
  v21 = a1[14];
  swift_beginAccess();
  *(v1 + 56) = v21;
  swift_beginAccess();
  v22 = a1[15];
  swift_beginAccess();
  *(v1 + 60) = v22;
  swift_beginAccess();
  v23 = a1[16];
  swift_beginAccess();
  *(v1 + 64) = v23;
  swift_beginAccess();
  v24 = a1[17];
  swift_beginAccess();
  *(v1 + 68) = v24;
  swift_beginAccess();
  v25 = a1[18];
  swift_beginAccess();
  *(v1 + 72) = v25;
  swift_beginAccess();
  v26 = a1[19];
  swift_beginAccess();
  *(v1 + 76) = v26;
  swift_beginAccess();
  v27 = a1[20];
  swift_beginAccess();
  *(v1 + 80) = v27;
  swift_beginAccess();
  v28 = a1[21];
  swift_beginAccess();
  *(v1 + 84) = v28;
  swift_beginAccess();
  v29 = a1[22];
  swift_beginAccess();
  *(v1 + 88) = v29;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  LODWORD(v30) = *(a1 + v30);
  v31 = v34;
  swift_beginAccess();
  *(v1 + v31) = v30;
  swift_beginAccess();
  sub_21B0AA940();

  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  return v1;
}

uint64_t sub_21B091004()
{
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__topHitTriggerRatio, &qword_27CD44CA0, &qword_21B118248);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__querySuggestionTriggerRatio, &qword_27CD44CA0, &qword_21B118248);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__engagementShareRatio, &qword_27CD44CB8, &qword_21B118250);
  return v0;
}

uint64_t sub_21B0910A4(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_21B09150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v21 = v20();
  OUTLINED_FUNCTION_666(v21);
  OUTLINED_FUNCTION_820();
}

void sub_21B091564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111FE4();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

void sub_21B0915B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111FE4();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

void sub_21B09160C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111FE4();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

void sub_21B091660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111FE4();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

void sub_21B0916B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111FE4();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

void sub_21B091708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v21 = v20();
  OUTLINED_FUNCTION_666(v21);
  OUTLINED_FUNCTION_820();
}

void sub_21B091760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v21 = v20();
  OUTLINED_FUNCTION_666(v21);
  OUTLINED_FUNCTION_820();
}

void sub_21B0917B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v21 = v20();
  OUTLINED_FUNCTION_666(v21);
  OUTLINED_FUNCTION_820();
}

void sub_21B091810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v21 = v20();
  OUTLINED_FUNCTION_666(v21);
  OUTLINED_FUNCTION_820();
}

uint64_t sub_21B091868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  sub_21B099CBC(&qword_27CD460C0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B091944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  sub_21B099CBC(&qword_27CD460C0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
  sub_21B1120B4();
  return swift_endAccess();
}

void sub_21B091A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_817();
  v23 = v22;
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v24 = v23();
  OUTLINED_FUNCTION_666(v24);
  OUTLINED_FUNCTION_816();
}

void sub_21B091A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111FE4();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

void sub_21B091AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111FE4();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

void sub_21B091B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111FE4();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

void sub_21B091B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111FE4();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

void sub_21B091BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111FE4();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

void sub_21B091C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111FE4();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

void sub_21B091C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B111FE4();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

void sub_21B091CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v21 = v20();
  OUTLINED_FUNCTION_666(v21);
  OUTLINED_FUNCTION_820();
}

void sub_21B091D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_169();
  v21 = v20();
  OUTLINED_FUNCTION_666(v21);
  OUTLINED_FUNCTION_820();
}

uint64_t sub_21B091D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  sub_21B099CBC(&qword_27CD460D8, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B091E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CB8, &qword_21B118250);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v22 - v8;
  v24 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  MEMORY[0x28223BE20](v24);
  v22[2] = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CA0, &qword_21B118248);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v26 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - v13;
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  v16 = MEMORY[0x28223BE20](v15);
  v25 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  swift_beginAccess();
  if (*(a1 + 16) == 0.0 || (result = sub_21B112194(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 20) == 0.0 || (result = sub_21B112194(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 24) == 0.0 || (result = sub_21B112194(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 28) == 0.0 || (result = sub_21B112194(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 32) == 0.0 || (result = sub_21B112194(), !v4))
          {
            swift_beginAccess();
            if (*(a1 + 36) == 0.0 || (result = sub_21B112194(), !v4))
            {
              swift_beginAccess();
              if (*(a1 + 40) == 0.0 || (result = sub_21B112194(), !v4))
              {
                swift_beginAccess();
                if (*(a1 + 44) == 0.0 || (result = sub_21B112194(), !v4))
                {
                  swift_beginAccess();
                  if (!*(a1 + 48) || (result = sub_21B1121A4(), !v4))
                  {
                    swift_beginAccess();
                    if (*(a1 + 52) == 0.0 || (result = sub_21B112194(), !v4))
                    {
                      v22[1] = a4;
                      swift_beginAccess();
                      sub_21B0AA940();
                      if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
                      {
                        sub_21AF99BE0(v14, &qword_27CD44CA0, &qword_21B118248);
                      }

                      else
                      {
                        sub_21B03179C(v14);
                        sub_21B099CBC(&qword_27CD460C0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
                        sub_21B112224();
                        result = sub_21B03183C();
                        if (v4)
                        {
                          return result;
                        }
                      }

                      swift_beginAccess();
                      v19 = v26;
                      sub_21B0AA940();
                      if (__swift_getEnumTagSinglePayload(v19, 1, v15) == 1)
                      {
                        sub_21AF99BE0(v19, &qword_27CD44CA0, &qword_21B118248);
                      }

                      else
                      {
                        sub_21B03179C(v19);
                        sub_21B099CBC(&qword_27CD460C0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
                        sub_21B112224();
                        result = sub_21B03183C();
                        if (v4)
                        {
                          return result;
                        }
                      }

                      v20 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements;
                      swift_beginAccess();
                      if (!*(a1 + v20) || (result = sub_21B1121A4(), !v4))
                      {
                        swift_beginAccess();
                        if (*(a1 + 56) == 0.0 || (result = sub_21B112194(), !v4))
                        {
                          swift_beginAccess();
                          if (*(a1 + 60) == 0.0 || (result = sub_21B112194(), !v4))
                          {
                            swift_beginAccess();
                            if (*(a1 + 64) == 0.0 || (result = sub_21B112194(), !v4))
                            {
                              swift_beginAccess();
                              if (*(a1 + 68) == 0.0 || (result = sub_21B112194(), !v4))
                              {
                                swift_beginAccess();
                                if (*(a1 + 72) == 0.0 || (result = sub_21B112194(), !v4))
                                {
                                  swift_beginAccess();
                                  if (*(a1 + 76) == 0.0 || (result = sub_21B112194(), !v4))
                                  {
                                    swift_beginAccess();
                                    if (*(a1 + 80) == 0.0 || (result = sub_21B112194(), !v4))
                                    {
                                      swift_beginAccess();
                                      if (*(a1 + 84) == 0.0 || (result = sub_21B112194(), !v4))
                                      {
                                        swift_beginAccess();
                                        if (*(a1 + 88) == 0.0 || (result = sub_21B112194(), !v4))
                                        {
                                          swift_beginAccess();
                                          v21 = v23;
                                          sub_21B0AA940();
                                          if (__swift_getEnumTagSinglePayload(v21, 1, v24) == 1)
                                          {
                                            return sub_21AF99BE0(v21, &qword_27CD44CB8, &qword_21B118250);
                                          }

                                          else
                                          {
                                            sub_21B03179C(v21);
                                            sub_21B099CBC(&qword_27CD460D8, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);
                                            sub_21B112224();
                                            return sub_21B03183C();
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
    }
  }

  return result;
}

BOOL sub_21B09289C(uint64_t a1, uint64_t a2)
{
  v78 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  MEMORY[0x28223BE20](v78);
  v74 = (v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D90, &qword_21B127D10);
  MEMORY[0x28223BE20](v75);
  v6 = v71 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CB8, &qword_21B118250);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v76 = (v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v77 = v71 - v10;
  v82 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  v11 = MEMORY[0x28223BE20](v82);
  v79 = (v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = (v71 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D98, &qword_21B127D18);
  v16 = MEMORY[0x28223BE20](v15);
  v81 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v71 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CA0, &qword_21B118248);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v80 = (v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v71 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (v71 - v27);
  MEMORY[0x28223BE20](v26);
  v30 = v71 - v29;
  swift_beginAccess();
  v31 = *(a1 + 16);
  swift_beginAccess();
  if (v31 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v32 = *(a1 + 20);
  swift_beginAccess();
  if (v32 != *(a2 + 20))
  {
    return 0;
  }

  swift_beginAccess();
  v33 = *(a1 + 24);
  swift_beginAccess();
  if (v33 != *(a2 + 24))
  {
    return 0;
  }

  swift_beginAccess();
  v34 = *(a1 + 28);
  swift_beginAccess();
  if (v34 != *(a2 + 28))
  {
    return 0;
  }

  swift_beginAccess();
  v35 = *(a1 + 32);
  swift_beginAccess();
  if (v35 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v36 = *(a1 + 36);
  swift_beginAccess();
  if (v36 != *(a2 + 36))
  {
    return 0;
  }

  swift_beginAccess();
  v37 = *(a1 + 40);
  swift_beginAccess();
  if (v37 != *(a2 + 40))
  {
    return 0;
  }

  swift_beginAccess();
  v38 = *(a1 + 44);
  swift_beginAccess();
  if (v38 != *(a2 + 44))
  {
    return 0;
  }

  v73 = v6;
  swift_beginAccess();
  v39 = *(a1 + 48);
  swift_beginAccess();
  if (v39 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v40 = *(a1 + 52);
  swift_beginAccess();
  if (v40 != *(a2 + 52))
  {
    return 0;
  }

  swift_beginAccess();
  v41 = *(a1 + 56);
  swift_beginAccess();
  if (v41 != *(a2 + 56))
  {
    return 0;
  }

  swift_beginAccess();
  v42 = *(a1 + 60);
  swift_beginAccess();
  if (v42 != *(a2 + 60))
  {
    return 0;
  }

  swift_beginAccess();
  v43 = *(a1 + 64);
  swift_beginAccess();
  if (v43 != *(a2 + 64))
  {
    return 0;
  }

  swift_beginAccess();
  v44 = *(a1 + 68);
  swift_beginAccess();
  if (v44 != *(a2 + 68))
  {
    return 0;
  }

  swift_beginAccess();
  v45 = *(a1 + 72);
  swift_beginAccess();
  if (v45 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v46 = *(a1 + 76);
  swift_beginAccess();
  if (v46 != *(a2 + 76))
  {
    return 0;
  }

  swift_beginAccess();
  v47 = *(a1 + 80);
  swift_beginAccess();
  if (v47 != *(a2 + 80))
  {
    return 0;
  }

  swift_beginAccess();
  v48 = *(a1 + 84);
  swift_beginAccess();
  if (v48 != *(a2 + 84))
  {
    return 0;
  }

  swift_beginAccess();
  v49 = *(a1 + 88);
  swift_beginAccess();
  if (v49 != *(a2 + 88))
  {
    return 0;
  }

  swift_beginAccess();
  sub_21B0AA940();
  v72 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__topHitTriggerRatio;
  swift_beginAccess();
  v50 = *(v15 + 48);
  sub_21B0AA940();
  v72 = v50;
  sub_21B0AA940();
  v51 = v82;
  if (__swift_getEnumTagSinglePayload(v19, 1, v82) == 1)
  {

    sub_21AF99BE0(v30, &qword_27CD44CA0, &qword_21B118248);
    if (__swift_getEnumTagSinglePayload(&v19[v72], 1, v51) == 1)
    {
      sub_21AF99BE0(v19, &qword_27CD44CA0, &qword_21B118248);
      goto LABEL_23;
    }

    goto LABEL_33;
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(&v19[v72], 1, v51) == 1)
  {

    sub_21AF99BE0(v30, &qword_27CD44CA0, &qword_21B118248);
    sub_21B03183C();
LABEL_33:
    v59 = &qword_27CD46D98;
    v60 = &qword_21B127D18;
    v61 = v19;
LABEL_49:
    sub_21AF99BE0(v61, v59, v60);
    goto LABEL_50;
  }

  sub_21B03179C(&v19[v72]);
  if (*v28 != *v14 || v28[1] != v14[1] || *(v28 + 2) != *(v14 + 2))
  {

    sub_21B03183C();
    sub_21AF99BE0(v30, &qword_27CD44CA0, &qword_21B118248);
    sub_21B03183C();
    v61 = v19;
    v59 = &qword_27CD44CA0;
    v60 = &qword_21B118248;
    goto LABEL_49;
  }

  v72 = *(v82 + 28);
  sub_21B111EC4();
  v71[1] = sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);

  LODWORD(v72) = sub_21B1123C4();
  sub_21B03183C();
  sub_21AF99BE0(v30, &qword_27CD44CA0, &qword_21B118248);
  sub_21B03183C();
  sub_21AF99BE0(v19, &qword_27CD44CA0, &qword_21B118248);
  if ((v72 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_23:
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  v52 = *(v15 + 48);
  v53 = v81;
  sub_21B0AA940();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v53, 1, v82) == 1)
  {
    sub_21AF99BE0(v25, &qword_27CD44CA0, &qword_21B118248);
    if (__swift_getEnumTagSinglePayload(v81 + v52, 1, v82) == 1)
    {
      sub_21AF99BE0(v81, &qword_27CD44CA0, &qword_21B118248);
      goto LABEL_26;
    }

    goto LABEL_42;
  }

  v62 = v81;
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v62 + v52, 1, v82) == 1)
  {
    sub_21AF99BE0(v25, &qword_27CD44CA0, &qword_21B118248);
    sub_21B03183C();
LABEL_42:
    v59 = &qword_27CD46D98;
    v60 = &qword_21B127D18;
    v61 = v81;
    goto LABEL_49;
  }

  v63 = v79;
  sub_21B03179C(v81 + v52);
  if (*v80 != *v63 || v80[1] != v79[1] || *(v80 + 2) != *(v79 + 2))
  {
    sub_21B03183C();
    sub_21AF99BE0(v25, &qword_27CD44CA0, &qword_21B118248);
    sub_21B03183C();
    v61 = v81;
    v59 = &qword_27CD44CA0;
    v60 = &qword_21B118248;
    goto LABEL_49;
  }

  sub_21B111EC4();
  sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v64 = sub_21B1123C4();
  sub_21B03183C();
  sub_21AF99BE0(v25, &qword_27CD44CA0, &qword_21B118248);
  sub_21B03183C();
  sub_21AF99BE0(v81, &qword_27CD44CA0, &qword_21B118248);
  if ((v64 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_26:
  v54 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  LODWORD(v54) = *(a1 + v54);
  v55 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  if (v54 != *(a2 + v55))
  {
LABEL_50:

    return 0;
  }

  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  v56 = *(v75 + 48);
  v57 = v73;
  sub_21B0AA940();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v57, 1, v78) == 1)
  {

    sub_21AF99BE0(v77, &qword_27CD44CB8, &qword_21B118250);
    if (__swift_getEnumTagSinglePayload(&v73[v56], 1, v78) == 1)
    {
      sub_21AF99BE0(v73, &qword_27CD44CB8, &qword_21B118250);
      return 1;
    }

    goto LABEL_54;
  }

  v65 = v73;
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v65 + v56, 1, v78) == 1)
  {

    sub_21AF99BE0(v77, &qword_27CD44CB8, &qword_21B118250);
    sub_21B03183C();
LABEL_54:
    v66 = &qword_27CD46D90;
    v67 = &qword_21B127D10;
    v68 = v73;
LABEL_60:
    sub_21AF99BE0(v68, v66, v67);
    return 0;
  }

  v69 = v74;
  sub_21B03179C(&v73[v56]);
  if (*v76 != *v69 || v76[1] != v74[1])
  {

    sub_21B03183C();
    sub_21AF99BE0(v77, &qword_27CD44CB8, &qword_21B118250);
    sub_21B03183C();
    v68 = v73;
    v66 = &qword_27CD44CB8;
    v67 = &qword_21B118250;
    goto LABEL_60;
  }

  sub_21B111EC4();
  sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v70 = sub_21B1123C4();

  sub_21B03183C();
  sub_21AF99BE0(v77, &qword_27CD44CB8, &qword_21B118250);
  sub_21B03183C();
  sub_21AF99BE0(v73, &qword_27CD44CB8, &qword_21B118250);
  return (v70 & 1) != 0;
}

uint64_t sub_21B093A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD468D8, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B093AC4(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD46078, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B093B34(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD46078, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);

  return sub_21B112114();
}

uint64_t sub_21B093BC0()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD446E0);
  __swift_project_value_buffer(v0, qword_27CD446E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "zkw";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "recentResult";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "other";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "querySuggestion";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "image";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 4;
  *v18 = "totalEngagements";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_ImagesUsagePropensity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 5:
      case 6:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FE4();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FF4();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_ImagesUsagePropensity.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_749();
  if (v3 || (OUTLINED_FUNCTION_143(), result = sub_21B112194(), !v1))
  {
    OUTLINED_FUNCTION_847();
    if (v3 || (OUTLINED_FUNCTION_143(), result = sub_21B112194(), !v1))
    {
      if (*(v2 + 8) == 0.0 || (OUTLINED_FUNCTION_143(), result = sub_21B112194(), !v1))
      {
        if (!*(v2 + 20) || (OUTLINED_FUNCTION_36_1(), result = sub_21B1121A4(), !v1))
        {
          if (*(v2 + 12) == 0.0 || (OUTLINED_FUNCTION_143(), result = sub_21B112194(), !v1))
          {
            if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_143(), result = sub_21B112194(), !v1))
            {
              type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(0);
              return OUTLINED_FUNCTION_27_2();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21B0940FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD468D0, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B09417C(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD46090, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0941EC(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD46090, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity);

  return sub_21B112114();
}

uint64_t sub_21B094278()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD446F8);
  __swift_project_value_buffer(v0, qword_27CD446F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalEngagements";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_NewsUsagePropensity.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_749();
  if (v3 || (OUTLINED_FUNCTION_143(), result = sub_21B112194(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_36_1(), result = sub_21B1121A4(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
      v4 = OUTLINED_FUNCTION_184();
      return OUTLINED_FUNCTION_652(v4, v5);
    }
  }

  return result;
}

uint64_t sub_21B0945B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD468C8, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B094638(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD460A8, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0946A8(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD460A8, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);

  return sub_21B112114();
}

uint64_t sub_21B094734()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44710);
  __swift_project_value_buffer(v0, qword_27CD44710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "go";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tap";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalEngagements";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_EngagementTriggerRatio.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_318();
      sub_21B111FF4();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_49_1();
      sub_21B111FE4();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EngagementTriggerRatio.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_749();
  if (v3 || (OUTLINED_FUNCTION_143(), result = sub_21B112194(), !v1))
  {
    OUTLINED_FUNCTION_847();
    if (v3 || (OUTLINED_FUNCTION_143(), result = sub_21B112194(), !v1))
    {
      if (!*(v2 + 8) || (OUTLINED_FUNCTION_36_1(), result = sub_21B1121A4(), !v1))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
        return OUTLINED_FUNCTION_27_2();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_EngagementTriggerRatio.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_516(a1);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_373(v3);
  if (!v4 || *(v2 + 8) != *(v1 + 8))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_15();
  v7 = sub_21B099CBC(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v7) & 1;
}

uint64_t sub_21B094BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD468C0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B094C20(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD460C0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B094C90(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD460C0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);

  return sub_21B112114();
}

uint64_t sub_21B094D28()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44728);
  __swift_project_value_buffer(v0, qword_27CD44728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shareOfEngagements";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shareOfInternetEngagements";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B094F40()
{
  OUTLINED_FUNCTION_515();
  while (1)
  {
    OUTLINED_FUNCTION_30_2();
    result = sub_21B111F64();
    if (v1 || (v6 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v0(v2 + 4, v4, v3);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_430();
      sub_21B111FE4();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EngagementShareRatio.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_749();
  if (v2 || (OUTLINED_FUNCTION_143(), result = sub_21B112194(), !v1))
  {
    OUTLINED_FUNCTION_847();
    if (v2 || (OUTLINED_FUNCTION_143(), result = sub_21B112194(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
      v3 = OUTLINED_FUNCTION_184();
      return OUTLINED_FUNCTION_652(v3, v4);
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_EngagementShareRatio.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_516(a1);
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_373(v1);
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_0_15();
  v5 = sub_21B099CBC(v3, v4, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v5) & 1;
}

uint64_t sub_21B095160(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD468B8, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0951E0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD460D8, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B095250(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD460D8, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_EngagementShareRatio);

  return sub_21B112114();
}

uint64_t sub_21B0952DC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44740);
  __swift_project_value_buffer(v0, qword_27CD44740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_21B117F50;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "usageSinceLookback";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "safariUsagePropensity";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "spotlightUsagePropensity";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "imagesUsagePropensity";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "newsUsagePropensity";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "collectionStartTimestamp";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "collectionEndTimestamp";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "configuredLookbackTimeInDays";
  *(v20 + 1) = 28;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 13;
  *v22 = "totalSessions";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "context";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 15;
  *v26 = "uuidBytes";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_129();
        sub_21B095828(v3, v4, v5, v6);
        break;
      case 2:
        v25 = OUTLINED_FUNCTION_129();
        sub_21B095D20(v25, v26, v27, v28);
        break;
      case 3:
        v15 = OUTLINED_FUNCTION_129();
        sub_21B096218(v15, v16, v17, v18);
        break;
      case 4:
        v19 = OUTLINED_FUNCTION_129();
        sub_21B096710(v19, v20, v21, v22);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_129();
        sub_21B096C08(v7, v8, v9, v10);
        break;
      case 10:
        v29 = OUTLINED_FUNCTION_10_2();
        sub_21B097100(v29, v30, v31, v32, v33, v34);
        break;
      case 11:
        v35 = OUTLINED_FUNCTION_10_2();
        sub_21B097154(v35, v36);
        break;
      case 12:
        v23 = OUTLINED_FUNCTION_10_2();
        sub_21B0971B8(v23, v24);
        break;
      case 13:
        v41 = OUTLINED_FUNCTION_10_2();
        sub_21B09721C(v41, v42);
        break;
      case 14:
        v11 = OUTLINED_FUNCTION_10_2();
        sub_21B097280(v11, v12, v13, v14);
        break;
      case 15:
        v37 = OUTLINED_FUNCTION_10_2();
        sub_21B097334(v37, v38, v39, v40);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B095828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44BA0, &qword_21B118220);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD44CE8, &qword_21B118258);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21B03183C();
    }

    else
    {
      sub_21AF99BE0(v24, &qword_27CD44BA0, &qword_21B118220);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_21B099CBC(&qword_27CD46048, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD44BA0, &qword_21B118220);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD44BA0, &qword_21B118220);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD44BA0, &qword_21B118220);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD44BA0, &qword_21B118220);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD44CE8, &qword_21B118258);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B095D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46BF0, &qword_21B127B70);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD44CE8, &qword_21B118258);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21AF99BE0(v24, &qword_27CD46BF0, &qword_21B127B70);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD46060, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46BF0, &qword_21B127B70);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46BF0, &qword_21B127B70);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46BF0, &qword_21B127B70);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46BF0, &qword_21B127B70);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD44CE8, &qword_21B118258);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B096218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46BF8, &qword_21B127B78);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD44CE8, &qword_21B118258);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21AF99BE0(v24, &qword_27CD46BF8, &qword_21B127B78);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD46078, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46BF8, &qword_21B127B78);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46BF8, &qword_21B127B78);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46BF8, &qword_21B127B78);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46BF8, &qword_21B127B78);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD44CE8, &qword_21B118258);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B096710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C00, &qword_21B127B80);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD44CE8, &qword_21B118258);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_21AF99BE0(v24, &qword_27CD46C00, &qword_21B127B80);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD46090, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C00, &qword_21B127B80);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C00, &qword_21B127B80);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C00, &qword_21B127B80);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C00, &qword_21B127B80);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD44CE8, &qword_21B118258);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B096C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C08, &qword_21B127B88);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD44CE8, &qword_21B118258);
  }

  else
  {
    sub_21B03179C(v12);
    sub_21B03179C(v18);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_21AF99BE0(v24, &qword_27CD46C08, &qword_21B127B88);
      sub_21B03179C(v16);
      sub_21B03179C(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD460A8, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);
  v25 = v36;
  sub_21B1120B4();
  if (v25)
  {
    v26 = v24;
    return sub_21AF99BE0(v26, &qword_27CD46C08, &qword_21B127B88);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_21AF99BE0(v24, &qword_27CD46C08, &qword_21B127B88);
    v26 = v22;
    return sub_21AF99BE0(v26, &qword_27CD46C08, &qword_21B127B88);
  }

  v28 = v35;
  sub_21B03179C(v22);
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v29 = v34;
  sub_21AF99BE0(v24, &qword_27CD46C08, &qword_21B127B88);
  v30 = v32;
  sub_21AF99BE0(v32, &qword_27CD44CE8, &qword_21B118258);
  sub_21B03179C(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_21B097100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  OUTLINED_FUNCTION_132();
  v7(0);
  OUTLINED_FUNCTION_169();
  return a6();
}

uint64_t sub_21B097280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  sub_21B099CBC(&qword_27CD45128, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_423();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44C38, &qword_21B118240);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_212();
  v40 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_67_1();
  v39[1] = v8;
  v9 = OUTLINED_FUNCTION_90();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_25(v11);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v12);
  v14 = v39 - v13;
  OUTLINED_FUNCTION_198();
  sub_21B0AA940();
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_37_1(v14, 1, v15);
  if (!v16)
  {
    OUTLINED_FUNCTION_35_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v34 = OUTLINED_FUNCTION_242();
        sub_21B097940(v34, v35, v36, v37);
        goto LABEL_11;
      case 2:
        v26 = OUTLINED_FUNCTION_242();
        sub_21B097B54(v26, v27, v28, v29);
        goto LABEL_11;
      case 3:
        v30 = OUTLINED_FUNCTION_242();
        sub_21B097D68(v30, v31, v32, v33);
        goto LABEL_11;
      case 4:
        v22 = OUTLINED_FUNCTION_242();
        sub_21B097F7C(v22, v23, v24, v25);
        v0 = v1;
        if (v1)
        {
          OUTLINED_FUNCTION_48_2();
          sub_21B03183C();
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_48_2();
        sub_21B03183C();
        break;
      default:
        v18 = OUTLINED_FUNCTION_242();
        sub_21B097730(v18, v19, v20, v21);
LABEL_11:
        v0 = v1;
        OUTLINED_FUNCTION_48_2();
        sub_21B03183C();
        if (!v1)
        {
          break;
        }

        goto LABEL_29;
    }
  }

  v38 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  if (!*(v2 + v38[5]) || (OUTLINED_FUNCTION_480(), sub_21B1121B4(), (v0 = v1) == 0))
  {
    if (!*(v2 + v38[6]) || (OUTLINED_FUNCTION_480(), sub_21B1121B4(), (v0 = v1) == 0))
    {
      if (!*(v2 + v38[7]) || (OUTLINED_FUNCTION_480(), sub_21B1121A4(), (v0 = v1) == 0))
      {
        if (!*(v2 + v38[8]) || (OUTLINED_FUNCTION_480(), sub_21B1121A4(), (v0 = v1) == 0))
        {
          OUTLINED_FUNCTION_715();
          OUTLINED_FUNCTION_37_1(v3, 1, v40);
          if (v16)
          {
            sub_21AF99BE0(v3, &qword_27CD44C38, &qword_21B118240);
          }

          else
          {
            OUTLINED_FUNCTION_16_8();
            sub_21B03179C(v3);
            sub_21B099CBC(&qword_27CD45128, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_DeviceContext);
            OUTLINED_FUNCTION_680();
            sub_21B112224();
            OUTLINED_FUNCTION_324();
            sub_21B03183C();
            if (v0)
            {
              goto LABEL_29;
            }
          }

          if (sub_21AFD45D8(*(v2 + v38[9]), *(v2 + v38[9] + 8)) || (sub_21B112184(), !v0))
          {
            sub_21B111EA4();
          }
        }
      }
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B097730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD44CE8, &qword_21B118258);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD46048, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B097940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD44CE8, &qword_21B118258);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD46060, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B097B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD44CE8, &qword_21B118258);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD46078, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B097D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD44CE8, &qword_21B118258);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD46090, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B097F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
  MEMORY[0x28223BE20](v7);
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_21AF99BE0(v6, &qword_27CD44CE8, &qword_21B118258);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_21B03179C(v6);
      sub_21B099CBC(&qword_27CD460A8, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Feedback_V2_UsageEnvelope.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v46 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_67_1();
  v44[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44C38, &qword_21B118240);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_83();
  v44[2] = v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD45130, &qword_21B118280);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_83();
  v47 = v10;
  v11 = OUTLINED_FUNCTION_33_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(v11);
  OUTLINED_FUNCTION_126();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_177();
  v13 = OUTLINED_FUNCTION_12_7();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_25(v15);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD45138, &qword_21B118288);
  OUTLINED_FUNCTION_25(v17);
  OUTLINED_FUNCTION_6_3();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v44 - v20;
  v22 = *(v19 + 56);
  v23 = v3;
  OUTLINED_FUNCTION_654();
  sub_21B0AA940();
  OUTLINED_FUNCTION_654();
  sub_21B0AA940();
  OUTLINED_FUNCTION_26_2(v21);
  if (v24)
  {
    OUTLINED_FUNCTION_26_2(&v21[v22]);
    if (v24)
    {
      sub_21AF99BE0(v21, &qword_27CD44CE8, &qword_21B118258);
      goto LABEL_12;
    }

LABEL_9:
    v25 = &qword_27CD45138;
    v26 = &qword_21B118288;
    v27 = v21;
LABEL_10:
    sub_21AF99BE0(v27, v25, v26);
LABEL_28:
    v43 = 0;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_748();
  sub_21B0AA940();
  OUTLINED_FUNCTION_26_2(&v21[v22]);
  if (v24)
  {
    OUTLINED_FUNCTION_48_2();
    sub_21B03183C();
    goto LABEL_9;
  }

  sub_21B03179C(&v21[v22]);
  OUTLINED_FUNCTION_636();
  static Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind.== infix(_:_:)();
  v29 = v28;
  sub_21B03183C();
  sub_21B03183C();
  sub_21AF99BE0(v21, &qword_27CD44CE8, &qword_21B118258);
  if ((v29 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  v30 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  if (*(v3 + v30[5]) != *(v1 + v30[5]))
  {
    goto LABEL_28;
  }

  v31 = v30;
  if (*(v3 + v30[6]) != *(v1 + v30[6]) || *(v3 + v30[7]) != *(v1 + v30[7]) || *(v3 + v30[8]) != *(v1 + v30[8]))
  {
    goto LABEL_28;
  }

  v32 = *(v45 + 48);
  v33 = v47;
  OUTLINED_FUNCTION_452();
  sub_21B0AA940();
  sub_21B0AA940();
  v34 = v46;
  OUTLINED_FUNCTION_37_1(v33, 1, v46);
  if (v24)
  {
    OUTLINED_FUNCTION_37_1(v33 + v32, 1, v34);
    if (v24)
    {
      sub_21AF99BE0(v33, &qword_27CD44C38, &qword_21B118240);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_21B0AA940();
  OUTLINED_FUNCTION_37_1(v33 + v32, 1, v34);
  if (v35)
  {
    OUTLINED_FUNCTION_324();
    sub_21B03183C();
LABEL_24:
    v25 = &qword_27CD45130;
    v26 = &qword_21B118280;
    v27 = v33;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_16_8();
  sub_21B03179C(v33 + v32);
  v36 = OUTLINED_FUNCTION_703();
  v37 = static Apple_Parsec_Feedback_V2_DeviceContext.== infix(_:_:)(v36);
  sub_21B03183C();
  sub_21B03183C();
  sub_21AF99BE0(v33, &qword_27CD44C38, &qword_21B118240);
  if ((v37 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  if ((MEMORY[0x21CEE80C0](*(v23 + v31[9]), *(v23 + v31[9] + 8), *(v1 + v31[9]), *(v1 + v31[9] + 8)) & 1) == 0)
  {
    goto LABEL_28;
  }

  v38 = v31[10];
  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  v41 = sub_21B099CBC(v39, v40, MEMORY[0x277D216D0]);
  v43 = OUTLINED_FUNCTION_653(v23 + v38, v1 + v38, v42, v41);
LABEL_29:
  OUTLINED_FUNCTION_498(v43);
  OUTLINED_FUNCTION_77();
}

uint64_t sub_21B0986CC()
{
  OUTLINED_FUNCTION_250();
  sub_21B112EC4();
  v1(0);
  v2 = OUTLINED_FUNCTION_84();
  sub_21B099CBC(v2, v3, v0);
  sub_21B112374();
  return sub_21B112F14();
}

uint64_t sub_21B0987A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD468B0, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageEnvelope);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B098820(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD460F0, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageEnvelope);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B098890(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD460F0, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageEnvelope);

  return sub_21B112114();
}

uint64_t sub_21B098910(uint64_t a1, uint64_t a2)
{
  v70 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  MEMORY[0x28223BE20](v70);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v55 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D0, &qword_21B116AA8);
  MEMORY[0x28223BE20](v63);
  v9 = &v55 - v8;
  v62 = type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
  v68 = *(v62 - 8);
  v10 = MEMORY[0x28223BE20](v62);
  v69 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v61 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DB0, &qword_21B127D30);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v17);
  v22 = (&v55 - v21);
  v65 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v65 + 16))
  {
    return 0;
  }

  v64 = v9;
  v23 = 0;
  v59 = a1;
  v60 = v19;
  v24 = *(a1 + 64);
  v55 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v56 = (v25 + 63) >> 6;
  v57 = v7;
  while (1)
  {
    if (!v27)
    {
      while (1)
      {
        v29 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v29 >= v56)
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DB8, &qword_21B127D38);
          __swift_storeEnumTagSinglePayload(v19, 1, 1, v54);
          v67 = 0;
          goto LABEL_13;
        }

        v30 = *(v55 + 8 * v29);
        ++v23;
        if (v30)
        {
          v67 = (v30 - 1) & v30;
          v28 = __clz(__rbit64(v30)) | (v29 << 6);
          v23 = v29;
          goto LABEL_12;
        }
      }

      __break(1u);
      return result;
    }

    v67 = (v27 - 1) & v27;
    v28 = __clz(__rbit64(v27)) | (v23 << 6);
LABEL_12:
    v31 = (*(v59 + 48) + 16 * v28);
    v33 = *v31;
    v32 = v31[1];
    v34 = v61;
    sub_21B0317EC(*(v59 + 56) + *(v68 + 72) * v28);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DB8, &qword_21B127D38);
    *v19 = v33;
    v19[1] = v32;
    sub_21B03179C(v34);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v35);

LABEL_13:
    sub_21B0AA994();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DB8, &qword_21B127D38);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v36);
    v66 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v66;
    }

    v38 = v70;
    v39 = *(v36 + 48);
    v40 = *v22;
    v41 = v22[1];
    v42 = v22;
    sub_21B03179C(v22 + v39);
    v43 = v14;
    v44 = v65;
    v45 = sub_21AF98B58(v40, v41);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      goto LABEL_29;
    }

    sub_21B0317EC(*(v44 + 56) + *(v68 + 72) * v45);
    v48 = *(v63 + 48);
    v49 = v64;
    sub_21B0AA940();
    sub_21B0AA940();
    v14 = v43;
    if (__swift_getEnumTagSinglePayload(v49, 1, v38) != 1)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v49 + v48, 1, v70) != 1)
    {
      sub_21B03183C();
      goto LABEL_27;
    }

    v22 = v42;
    sub_21AF99BE0(v49, &qword_27CD434C8, &qword_21B116AA0);
LABEL_20:
    sub_21B111EC4();
    sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v53 = sub_21B1123C4();
    sub_21B03183C();
    result = sub_21B03183C();
    v19 = v60;
    v27 = v67;
    if ((v53 & 1) == 0)
    {
      return v66;
    }
  }

  v50 = v43;
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v49 + v48, 1, v70) == 1)
  {
    sub_21B03183C();
    sub_21B03183C();
LABEL_27:
    sub_21B03183C();
    sub_21AF99BE0(v49, &qword_27CD434D0, &qword_21B116AA8);
    return 0;
  }

  v22 = v42;
  sub_21B03179C(v49 + v48);
  static Apple_Parsec_Feedback_V2_Value.OneOf_Kind.== infix(_:_:)();
  v52 = v51;
  sub_21B03183C();
  sub_21B03183C();
  sub_21AF99BE0(v64, &qword_27CD434C8, &qword_21B116AA0);
  v14 = v50;
  if (v52)
  {
    goto LABEL_20;
  }

  sub_21B03183C();
LABEL_29:
  sub_21B03183C();
  return 0;
}

uint64_t sub_21B0990C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  MEMORY[0x28223BE20](v4);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v47 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D0, &qword_21B116AA8);
  MEMORY[0x28223BE20](v56);
  v9 = &v47 - v8;
  v55 = type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
  v10 = *(v55 - 8);
  v11 = MEMORY[0x28223BE20](v55);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v54 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DA0, &qword_21B127D20);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v58 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v15);
  v19 = (&v47 - v18);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = v4;
  v20 = 0;
  v51 = a1;
  v60 = a2;
  v61 = v10;
  v21 = *(a1 + 64);
  v48 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v57 = &v47 - v18;
  v52 = v25;
  while (1)
  {
    if (!v24)
    {
      v27 = v53;
      v28 = v58;
      while (1)
      {
        v29 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v29 >= v25)
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DA8, &qword_21B127D28);
          __swift_storeEnumTagSinglePayload(v28, 1, 1, v46);
          v62 = 0;
          goto LABEL_14;
        }

        v30 = *(v48 + 8 * v29);
        ++v20;
        if (v30)
        {
          v62 = (v30 - 1) & v30;
          v26 = __clz(__rbit64(v30)) | (v29 << 6);
          v20 = v29;
          goto LABEL_13;
        }
      }

      __break(1u);
      return result;
    }

    v62 = (v24 - 1) & v24;
    v26 = __clz(__rbit64(v24)) | (v20 << 6);
    v27 = v53;
LABEL_13:
    v31 = *(*(v51 + 48) + 4 * v26);
    v32 = v54;
    sub_21B0317EC(*(v51 + 56) + *(v61 + 72) * v26);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DA8, &qword_21B127D28);
    v34 = v58;
    *v58 = v31;
    v35 = v34;
    sub_21B03179C(v32);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v33);
    a2 = v60;
    v19 = v57;
LABEL_14:
    sub_21B0AA994();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DA8, &qword_21B127D28);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v36);
    v59 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v59;
    }

    v38 = *(v36 + 48);
    v39 = *v19;
    sub_21B03179C(v19 + v38);
    v40 = sub_21B0B5B34(v39);
    if ((v41 & 1) == 0)
    {
      goto LABEL_30;
    }

    sub_21B0317EC(*(a2 + 56) + *(v61 + 72) * v40);
    v42 = *(v56 + 48);
    sub_21B0AA940();
    sub_21B0AA940();
    if (__swift_getEnumTagSinglePayload(v9, 1, v27) != 1)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(&v9[v42], 1, v27) != 1)
    {
      sub_21B03183C();
      goto LABEL_28;
    }

    sub_21AF99BE0(v9, &qword_27CD434C8, &qword_21B116AA0);
LABEL_21:
    sub_21B111EC4();
    sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v45 = sub_21B1123C4();
    sub_21B03183C();
    result = sub_21B03183C();
    a2 = v60;
    v25 = v52;
    v24 = v62;
    if ((v45 & 1) == 0)
    {
      return v59;
    }
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(&v9[v42], 1, v27) == 1)
  {
    sub_21B03183C();
    sub_21B03183C();
LABEL_28:
    sub_21B03183C();
    sub_21AF99BE0(v9, &qword_27CD434D0, &qword_21B116AA8);
    return 0;
  }

  sub_21B03179C(&v9[v42]);
  static Apple_Parsec_Feedback_V2_Value.OneOf_Kind.== infix(_:_:)();
  v44 = v43;
  sub_21B03183C();
  v19 = v57;
  sub_21B03183C();
  sub_21AF99BE0(v9, &qword_27CD434C8, &qword_21B116AA0);
  if (v44)
  {
    goto LABEL_21;
  }

  sub_21B03183C();
LABEL_30:
  sub_21B03183C();
  return 0;
}

uint64_t sub_21B09984C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v24 = (v7 - 1) & v7;
LABEL_13:
    v12 = result;
    v13 = (*(result + 56) + 16 * (v9 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];

    v16 = OUTLINED_FUNCTION_12_7();
    v18 = sub_21AF98B58(v16, v17);
    v20 = v19;

    if ((v20 & 1) == 0)
    {

      return 0;
    }

    v21 = (*(a2 + 56) + 16 * v18);
    if (*v21 == v15 && v21[1] == v14)
    {

      result = v12;
      v7 = v24;
    }

    else
    {
      v23 = sub_21B112D04();

      result = v12;
      v7 = v24;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v24 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B099C68()
{
  OUTLINED_FUNCTION_81();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_163();
  v3 = OUTLINED_FUNCTION_52();
  v4(v3);
  return v0;
}

uint64_t sub_21B099CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B099D04()
{
  result = qword_27CD44D38;
  if (!qword_27CD44D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44D38);
  }

  return result;
}

unint64_t sub_21B099D58()
{
  result = qword_27CD44D58;
  if (!qword_27CD44D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44D58);
  }

  return result;
}

unint64_t sub_21B099DAC()
{
  result = qword_27CD44D68;
  if (!qword_27CD44D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44D68);
  }

  return result;
}

unint64_t sub_21B099E00()
{
  result = qword_27CD44D78;
  if (!qword_27CD44D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44D78);
  }

  return result;
}

unint64_t sub_21B099E54()
{
  result = qword_27CD44D88;
  if (!qword_27CD44D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44D88);
  }

  return result;
}

unint64_t sub_21B099EA8()
{
  result = qword_27CD44DA0;
  if (!qword_27CD44DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44DA0);
  }

  return result;
}

unint64_t sub_21B099EFC()
{
  result = qword_27CD44DA8;
  if (!qword_27CD44DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44DA8);
  }

  return result;
}

unint64_t sub_21B099F50()
{
  result = qword_27CD44DC8;
  if (!qword_27CD44DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44DC8);
  }

  return result;
}

unint64_t sub_21B099FA4()
{
  result = qword_27CD44DE0;
  if (!qword_27CD44DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44DE0);
  }

  return result;
}

unint64_t sub_21B099FF8()
{
  result = qword_27CD44E18;
  if (!qword_27CD44E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44E18);
  }

  return result;
}

unint64_t sub_21B09A04C()
{
  result = qword_27CD44E20;
  if (!qword_27CD44E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44E20);
  }

  return result;
}

unint64_t sub_21B09A0A0()
{
  result = qword_27CD44E28;
  if (!qword_27CD44E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44E28);
  }

  return result;
}

unint64_t sub_21B09A0F4()
{
  result = qword_27CD44E40;
  if (!qword_27CD44E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44E40);
  }

  return result;
}

unint64_t sub_21B09A148()
{
  result = qword_27CD44E58;
  if (!qword_27CD44E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44E58);
  }

  return result;
}

unint64_t sub_21B09A19C()
{
  result = qword_27CD44E78;
  if (!qword_27CD44E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44E78);
  }

  return result;
}

unint64_t sub_21B09A1F0()
{
  result = qword_27CD44E88;
  if (!qword_27CD44E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44E88);
  }

  return result;
}

unint64_t sub_21B09A244()
{
  result = qword_27CD44EC0;
  if (!qword_27CD44EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44EC0);
  }

  return result;
}

unint64_t sub_21B09A298()
{
  result = qword_27CD44EC8;
  if (!qword_27CD44EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44EC8);
  }

  return result;
}

unint64_t sub_21B09A2EC()
{
  result = qword_27CD44EE0;
  if (!qword_27CD44EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44EE0);
  }

  return result;
}

unint64_t sub_21B09A340()
{
  result = qword_27CD44EE8;
  if (!qword_27CD44EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44EE8);
  }

  return result;
}

unint64_t sub_21B09A394()
{
  result = qword_27CD44F00;
  if (!qword_27CD44F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44F00);
  }

  return result;
}

unint64_t sub_21B09A3E8()
{
  result = qword_27CD44F20;
  if (!qword_27CD44F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44F20);
  }

  return result;
}

unint64_t sub_21B09A43C()
{
  result = qword_27CD44F60;
  if (!qword_27CD44F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44F60);
  }

  return result;
}

unint64_t sub_21B09A490()
{
  result = qword_27CD44F88;
  if (!qword_27CD44F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44F88);
  }

  return result;
}

unint64_t sub_21B09A4E4()
{
  result = qword_27CD44FA8;
  if (!qword_27CD44FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44FA8);
  }

  return result;
}

unint64_t sub_21B09A538()
{
  result = qword_27CD44FE0;
  if (!qword_27CD44FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44FE0);
  }

  return result;
}

unint64_t sub_21B09A58C()
{
  result = qword_27CD44FF0;
  if (!qword_27CD44FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD44FF0);
  }

  return result;
}

unint64_t sub_21B09A5E0()
{
  result = qword_27CD45000;
  if (!qword_27CD45000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45000);
  }

  return result;
}

unint64_t sub_21B09A634()
{
  result = qword_27CD45030;
  if (!qword_27CD45030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45030);
  }

  return result;
}

unint64_t sub_21B09A688()
{
  result = qword_27CD45048;
  if (!qword_27CD45048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45048);
  }

  return result;
}

unint64_t sub_21B09A6DC()
{
  result = qword_27CD45068;
  if (!qword_27CD45068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45068);
  }

  return result;
}

unint64_t sub_21B09A730()
{
  result = qword_27CD45088;
  if (!qword_27CD45088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45088);
  }

  return result;
}

unint64_t sub_21B09A784()
{
  result = qword_27CD450D0;
  if (!qword_27CD450D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD450D0);
  }

  return result;
}

unint64_t sub_21B09A7DC()
{
  result = qword_27CD45148;
  if (!qword_27CD45148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45148);
  }

  return result;
}

unint64_t sub_21B09A834()
{
  result = qword_27CD45150;
  if (!qword_27CD45150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45150);
  }

  return result;
}

unint64_t sub_21B09A88C()
{
  result = qword_27CD45158;
  if (!qword_27CD45158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45158);
  }

  return result;
}

unint64_t sub_21B09A914()
{
  result = qword_27CD45170;
  if (!qword_27CD45170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45170);
  }

  return result;
}

unint64_t sub_21B09A96C()
{
  result = qword_27CD45178;
  if (!qword_27CD45178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45178);
  }

  return result;
}

unint64_t sub_21B09A9C4()
{
  result = qword_27CD45180;
  if (!qword_27CD45180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45180);
  }

  return result;
}

unint64_t sub_21B09AA4C()
{
  result = qword_27CD45198;
  if (!qword_27CD45198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45198);
  }

  return result;
}

unint64_t sub_21B09AAA4()
{
  result = qword_27CD451A0;
  if (!qword_27CD451A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD451A0);
  }

  return result;
}

unint64_t sub_21B09AAFC()
{
  result = qword_27CD451A8;
  if (!qword_27CD451A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD451A8);
  }

  return result;
}

unint64_t sub_21B09AB84()
{
  result = qword_27CD451C0;
  if (!qword_27CD451C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD451C0);
  }

  return result;
}

unint64_t sub_21B09ABDC()
{
  result = qword_27CD451C8;
  if (!qword_27CD451C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD451C8);
  }

  return result;
}

unint64_t sub_21B09AC34()
{
  result = qword_27CD451D0;
  if (!qword_27CD451D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD451D0);
  }

  return result;
}

unint64_t sub_21B09ACBC()
{
  result = qword_27CD451E8;
  if (!qword_27CD451E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD451E8);
  }

  return result;
}

unint64_t sub_21B09AD14()
{
  result = qword_27CD451F0;
  if (!qword_27CD451F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD451F0);
  }

  return result;
}

unint64_t sub_21B09AD6C()
{
  result = qword_27CD451F8;
  if (!qword_27CD451F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD451F8);
  }

  return result;
}

unint64_t sub_21B09ADF4()
{
  result = qword_27CD45210;
  if (!qword_27CD45210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45210);
  }

  return result;
}

unint64_t sub_21B09AE4C()
{
  result = qword_27CD45218;
  if (!qword_27CD45218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45218);
  }

  return result;
}

unint64_t sub_21B09AEA4()
{
  result = qword_27CD45220;
  if (!qword_27CD45220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45220);
  }

  return result;
}

unint64_t sub_21B09AF2C()
{
  result = qword_27CD45238;
  if (!qword_27CD45238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45238);
  }

  return result;
}

unint64_t sub_21B09AF84()
{
  result = qword_27CD45240;
  if (!qword_27CD45240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45240);
  }

  return result;
}

unint64_t sub_21B09AFDC()
{
  result = qword_27CD45248;
  if (!qword_27CD45248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45248);
  }

  return result;
}

unint64_t sub_21B09B064()
{
  result = qword_27CD45260;
  if (!qword_27CD45260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45260);
  }

  return result;
}

unint64_t sub_21B09B0BC()
{
  result = qword_27CD45268;
  if (!qword_27CD45268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45268);
  }

  return result;
}

unint64_t sub_21B09B114()
{
  result = qword_27CD45270;
  if (!qword_27CD45270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45270);
  }

  return result;
}

unint64_t sub_21B09B19C()
{
  result = qword_27CD45288;
  if (!qword_27CD45288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45288);
  }

  return result;
}

unint64_t sub_21B09B1F4()
{
  result = qword_27CD45290;
  if (!qword_27CD45290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45290);
  }

  return result;
}

unint64_t sub_21B09B24C()
{
  result = qword_27CD45298;
  if (!qword_27CD45298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45298);
  }

  return result;
}

unint64_t sub_21B09B2D4()
{
  result = qword_27CD452B0;
  if (!qword_27CD452B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD452B0);
  }

  return result;
}

unint64_t sub_21B09B32C()
{
  result = qword_27CD452B8;
  if (!qword_27CD452B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD452B8);
  }

  return result;
}

unint64_t sub_21B09B384()
{
  result = qword_27CD452C0;
  if (!qword_27CD452C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD452C0);
  }

  return result;
}

unint64_t sub_21B09B40C()
{
  result = qword_27CD452D8;
  if (!qword_27CD452D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD452D8);
  }

  return result;
}

unint64_t sub_21B09B464()
{
  result = qword_27CD452E0;
  if (!qword_27CD452E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD452E0);
  }

  return result;
}

unint64_t sub_21B09B4BC()
{
  result = qword_27CD452E8;
  if (!qword_27CD452E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD452E8);
  }

  return result;
}

unint64_t sub_21B09B544()
{
  result = qword_27CD45300;
  if (!qword_27CD45300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45300);
  }

  return result;
}

unint64_t sub_21B09B59C()
{
  result = qword_27CD45308;
  if (!qword_27CD45308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45308);
  }

  return result;
}

unint64_t sub_21B09B5F4()
{
  result = qword_27CD45310;
  if (!qword_27CD45310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45310);
  }

  return result;
}

unint64_t sub_21B09B67C()
{
  result = qword_27CD45328;
  if (!qword_27CD45328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45328);
  }

  return result;
}

unint64_t sub_21B09B6D4()
{
  result = qword_27CD45330;
  if (!qword_27CD45330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45330);
  }

  return result;
}

unint64_t sub_21B09B72C()
{
  result = qword_27CD45338;
  if (!qword_27CD45338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45338);
  }

  return result;
}

unint64_t sub_21B09B7B4()
{
  result = qword_27CD45350;
  if (!qword_27CD45350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45350);
  }

  return result;
}

unint64_t sub_21B09B80C()
{
  result = qword_27CD45358;
  if (!qword_27CD45358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45358);
  }

  return result;
}

unint64_t sub_21B09B864()
{
  result = qword_27CD45360;
  if (!qword_27CD45360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45360);
  }

  return result;
}

unint64_t sub_21B09B8EC()
{
  result = qword_27CD45378;
  if (!qword_27CD45378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45378);
  }

  return result;
}

unint64_t sub_21B09B944()
{
  result = qword_27CD45380;
  if (!qword_27CD45380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45380);
  }

  return result;
}

unint64_t sub_21B09B99C()
{
  result = qword_27CD45388;
  if (!qword_27CD45388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45388);
  }

  return result;
}

unint64_t sub_21B09BA24()
{
  result = qword_27CD453A0;
  if (!qword_27CD453A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD453A0);
  }

  return result;
}

unint64_t sub_21B09BA7C()
{
  result = qword_27CD453A8;
  if (!qword_27CD453A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD453A8);
  }

  return result;
}

unint64_t sub_21B09BAD4()
{
  result = qword_27CD453B0;
  if (!qword_27CD453B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD453B0);
  }

  return result;
}

unint64_t sub_21B09BB5C()
{
  result = qword_27CD453C8;
  if (!qword_27CD453C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD453C8);
  }

  return result;
}

unint64_t sub_21B09BBB4()
{
  result = qword_27CD453D0;
  if (!qword_27CD453D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD453D0);
  }

  return result;
}

unint64_t sub_21B09BC0C()
{
  result = qword_27CD453D8;
  if (!qword_27CD453D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD453D8);
  }

  return result;
}

unint64_t sub_21B09BC94()
{
  result = qword_27CD453F0;
  if (!qword_27CD453F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD453F0);
  }

  return result;
}

unint64_t sub_21B09BCEC()
{
  result = qword_27CD453F8;
  if (!qword_27CD453F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD453F8);
  }

  return result;
}

unint64_t sub_21B09BD44()
{
  result = qword_27CD45400;
  if (!qword_27CD45400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45400);
  }

  return result;
}

unint64_t sub_21B09BDCC()
{
  result = qword_27CD45418;
  if (!qword_27CD45418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45418);
  }

  return result;
}

unint64_t sub_21B09BE24()
{
  result = qword_27CD45420;
  if (!qword_27CD45420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45420);
  }

  return result;
}

unint64_t sub_21B09BE7C()
{
  result = qword_27CD45428;
  if (!qword_27CD45428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45428);
  }

  return result;
}

unint64_t sub_21B09BF04()
{
  result = qword_27CD45440;
  if (!qword_27CD45440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45440);
  }

  return result;
}

unint64_t sub_21B09BF5C()
{
  result = qword_27CD45448;
  if (!qword_27CD45448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45448);
  }

  return result;
}

unint64_t sub_21B09BFB4()
{
  result = qword_27CD45450;
  if (!qword_27CD45450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45450);
  }

  return result;
}

unint64_t sub_21B09C03C()
{
  result = qword_27CD45468;
  if (!qword_27CD45468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45468);
  }

  return result;
}

unint64_t sub_21B09C094()
{
  result = qword_27CD45470;
  if (!qword_27CD45470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45470);
  }

  return result;
}

unint64_t sub_21B09C0EC()
{
  result = qword_27CD45478;
  if (!qword_27CD45478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45478);
  }

  return result;
}

unint64_t sub_21B09C174()
{
  result = qword_27CD45490;
  if (!qword_27CD45490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45490);
  }

  return result;
}

unint64_t sub_21B09C1CC()
{
  result = qword_27CD45498;
  if (!qword_27CD45498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45498);
  }

  return result;
}

unint64_t sub_21B09C224()
{
  result = qword_27CD454A0;
  if (!qword_27CD454A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD454A0);
  }

  return result;
}

unint64_t sub_21B09C2AC()
{
  result = qword_27CD454B8;
  if (!qword_27CD454B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD454B8);
  }

  return result;
}

unint64_t sub_21B09C304()
{
  result = qword_27CD454C0;
  if (!qword_27CD454C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD454C0);
  }

  return result;
}

unint64_t sub_21B09C35C()
{
  result = qword_27CD454C8;
  if (!qword_27CD454C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD454C8);
  }

  return result;
}

unint64_t sub_21B09C3E4()
{
  result = qword_27CD454E0;
  if (!qword_27CD454E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD454E0);
  }

  return result;
}

unint64_t sub_21B09C43C()
{
  result = qword_27CD454E8;
  if (!qword_27CD454E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD454E8);
  }

  return result;
}

unint64_t sub_21B09C494()
{
  result = qword_27CD454F0;
  if (!qword_27CD454F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD454F0);
  }

  return result;
}

unint64_t sub_21B09C51C()
{
  result = qword_27CD45508;
  if (!qword_27CD45508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45508);
  }

  return result;
}

unint64_t sub_21B09C574()
{
  result = qword_27CD45510;
  if (!qword_27CD45510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45510);
  }

  return result;
}

unint64_t sub_21B09C5CC()
{
  result = qword_27CD45518;
  if (!qword_27CD45518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45518);
  }

  return result;
}

unint64_t sub_21B09C654()
{
  result = qword_27CD45530;
  if (!qword_27CD45530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45530);
  }

  return result;
}

unint64_t sub_21B09C6AC()
{
  result = qword_27CD45538;
  if (!qword_27CD45538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45538);
  }

  return result;
}

unint64_t sub_21B09C704()
{
  result = qword_27CD45540;
  if (!qword_27CD45540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45540);
  }

  return result;
}

unint64_t sub_21B09C78C()
{
  result = qword_27CD45558;
  if (!qword_27CD45558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45558);
  }

  return result;
}

unint64_t sub_21B09C7E4()
{
  result = qword_27CD45560;
  if (!qword_27CD45560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45560);
  }

  return result;
}

unint64_t sub_21B09C83C()
{
  result = qword_27CD45568;
  if (!qword_27CD45568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45568);
  }

  return result;
}

unint64_t sub_21B09C8C4()
{
  result = qword_27CD45580;
  if (!qword_27CD45580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45580);
  }

  return result;
}

unint64_t sub_21B09C91C()
{
  result = qword_27CD45588;
  if (!qword_27CD45588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45588);
  }

  return result;
}

unint64_t sub_21B09C974()
{
  result = qword_27CD45590;
  if (!qword_27CD45590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45590);
  }

  return result;
}

unint64_t sub_21B09C9FC()
{
  result = qword_27CD455A8;
  if (!qword_27CD455A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD455A8);
  }

  return result;
}

unint64_t sub_21B09CA54()
{
  result = qword_27CD455B0;
  if (!qword_27CD455B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD455B0);
  }

  return result;
}

unint64_t sub_21B09CAAC()
{
  result = qword_27CD455B8;
  if (!qword_27CD455B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD455B8);
  }

  return result;
}

unint64_t sub_21B09CB34()
{
  result = qword_27CD455D0;
  if (!qword_27CD455D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD455D0);
  }

  return result;
}

unint64_t sub_21B09CB8C()
{
  result = qword_27CD455D8;
  if (!qword_27CD455D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD455D8);
  }

  return result;
}

unint64_t sub_21B09CBE4()
{
  result = qword_27CD455E0;
  if (!qword_27CD455E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD455E0);
  }

  return result;
}

unint64_t sub_21B09CC6C()
{
  result = qword_27CD455F8;
  if (!qword_27CD455F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD455F8);
  }

  return result;
}

unint64_t sub_21B09CCC4()
{
  result = qword_27CD45600;
  if (!qword_27CD45600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45600);
  }

  return result;
}

unint64_t sub_21B09CD1C()
{
  result = qword_27CD45608;
  if (!qword_27CD45608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45608);
  }

  return result;
}

unint64_t sub_21B09CDA4()
{
  result = qword_27CD45620;
  if (!qword_27CD45620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45620);
  }

  return result;
}

unint64_t sub_21B09CDFC()
{
  result = qword_27CD45628;
  if (!qword_27CD45628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45628);
  }

  return result;
}

unint64_t sub_21B09CE54()
{
  result = qword_27CD45630;
  if (!qword_27CD45630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45630);
  }

  return result;
}

unint64_t sub_21B09CEDC()
{
  result = qword_27CD45648;
  if (!qword_27CD45648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45648);
  }

  return result;
}

unint64_t sub_21B09CF34()
{
  result = qword_27CD45650;
  if (!qword_27CD45650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45650);
  }

  return result;
}

unint64_t sub_21B09CF8C()
{
  result = qword_27CD45658;
  if (!qword_27CD45658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45658);
  }

  return result;
}

unint64_t sub_21B09D014()
{
  result = qword_27CD45670;
  if (!qword_27CD45670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45670);
  }

  return result;
}

unint64_t sub_21B09D06C()
{
  result = qword_27CD45678;
  if (!qword_27CD45678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45678);
  }

  return result;
}

unint64_t sub_21B09D0C4()
{
  result = qword_27CD45680;
  if (!qword_27CD45680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45680);
  }

  return result;
}

unint64_t sub_21B09D14C()
{
  result = qword_27CD45698;
  if (!qword_27CD45698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45698);
  }

  return result;
}

unint64_t sub_21B09D1A4()
{
  result = qword_27CD456A0;
  if (!qword_27CD456A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD456A0);
  }

  return result;
}

unint64_t sub_21B09D1FC()
{
  result = qword_27CD456A8;
  if (!qword_27CD456A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD456A8);
  }

  return result;
}

unint64_t sub_21B09D284()
{
  result = qword_27CD456C0;
  if (!qword_27CD456C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD456C0);
  }

  return result;
}

unint64_t sub_21B09D2DC()
{
  result = qword_27CD456C8;
  if (!qword_27CD456C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD456C8);
  }

  return result;
}

unint64_t sub_21B09D334()
{
  result = qword_27CD456D0;
  if (!qword_27CD456D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD456D0);
  }

  return result;
}

unint64_t sub_21B09D3BC()
{
  result = qword_27CD456E8;
  if (!qword_27CD456E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD456E8);
  }

  return result;
}

unint64_t sub_21B09D414()
{
  result = qword_27CD456F0;
  if (!qword_27CD456F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD456F0);
  }

  return result;
}

unint64_t sub_21B09D46C()
{
  result = qword_27CD456F8;
  if (!qword_27CD456F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD456F8);
  }

  return result;
}

unint64_t sub_21B09D4F4()
{
  result = qword_27CD45710;
  if (!qword_27CD45710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45710);
  }

  return result;
}

unint64_t sub_21B09D54C()
{
  result = qword_27CD45718;
  if (!qword_27CD45718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45718);
  }

  return result;
}

unint64_t sub_21B09D5A4()
{
  result = qword_27CD45720;
  if (!qword_27CD45720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45720);
  }

  return result;
}

unint64_t sub_21B09D62C()
{
  result = qword_27CD45738;
  if (!qword_27CD45738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45738);
  }

  return result;
}

unint64_t sub_21B09D684()
{
  result = qword_27CD45740;
  if (!qword_27CD45740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45740);
  }

  return result;
}

unint64_t sub_21B09D6DC()
{
  result = qword_27CD45748;
  if (!qword_27CD45748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45748);
  }

  return result;
}

unint64_t sub_21B09D764()
{
  result = qword_27CD45760;
  if (!qword_27CD45760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45760);
  }

  return result;
}

unint64_t sub_21B09D7BC()
{
  result = qword_27CD45768;
  if (!qword_27CD45768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45768);
  }

  return result;
}

unint64_t sub_21B09D814()
{
  result = qword_27CD45770;
  if (!qword_27CD45770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45770);
  }

  return result;
}

unint64_t sub_21B09D89C()
{
  result = qword_27CD45788;
  if (!qword_27CD45788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45788);
  }

  return result;
}

unint64_t sub_21B09D8F4()
{
  result = qword_27CD45790;
  if (!qword_27CD45790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45790);
  }

  return result;
}

unint64_t sub_21B09D94C()
{
  result = qword_27CD45798;
  if (!qword_27CD45798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45798);
  }

  return result;
}

unint64_t sub_21B09D9D4()
{
  result = qword_27CD457B0;
  if (!qword_27CD457B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD457B0);
  }

  return result;
}

unint64_t sub_21B09DA2C()
{
  result = qword_27CD457B8;
  if (!qword_27CD457B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD457B8);
  }

  return result;
}

unint64_t sub_21B09DA84()
{
  result = qword_27CD457C0;
  if (!qword_27CD457C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD457C0);
  }

  return result;
}

unint64_t sub_21B09DB0C()
{
  result = qword_27CD457D8;
  if (!qword_27CD457D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD457D8);
  }

  return result;
}

unint64_t sub_21B09DB64()
{
  result = qword_27CD457E0;
  if (!qword_27CD457E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD457E0);
  }

  return result;
}

unint64_t sub_21B09DBBC()
{
  result = qword_27CD457E8;
  if (!qword_27CD457E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD457E8);
  }

  return result;
}

unint64_t sub_21B09DC44()
{
  result = qword_27CD45800;
  if (!qword_27CD45800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45800);
  }

  return result;
}

unint64_t sub_21B09DC9C()
{
  result = qword_27CD45808;
  if (!qword_27CD45808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45808);
  }

  return result;
}

unint64_t sub_21B09DCF4()
{
  result = qword_27CD45810;
  if (!qword_27CD45810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45810);
  }

  return result;
}

unint64_t sub_21B09DD7C()
{
  result = qword_27CD45828;
  if (!qword_27CD45828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45828);
  }

  return result;
}

unint64_t sub_21B09DDD4()
{
  result = qword_27CD45830;
  if (!qword_27CD45830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45830);
  }

  return result;
}

unint64_t sub_21B09DE2C()
{
  result = qword_27CD45838;
  if (!qword_27CD45838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45838);
  }

  return result;
}

unint64_t sub_21B09DEB4()
{
  result = qword_27CD45850;
  if (!qword_27CD45850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45850);
  }

  return result;
}

unint64_t sub_21B09DF0C()
{
  result = qword_27CD45858;
  if (!qword_27CD45858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45858);
  }

  return result;
}

unint64_t sub_21B09DF64()
{
  result = qword_27CD45860;
  if (!qword_27CD45860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45860);
  }

  return result;
}

unint64_t sub_21B09DFEC()
{
  result = qword_27CD45878;
  if (!qword_27CD45878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45878);
  }

  return result;
}

unint64_t sub_21B09E044()
{
  result = qword_27CD45880;
  if (!qword_27CD45880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45880);
  }

  return result;
}

unint64_t sub_21B09E09C()
{
  result = qword_27CD45888;
  if (!qword_27CD45888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45888);
  }

  return result;
}

unint64_t sub_21B09E124()
{
  result = qword_27CD458A0;
  if (!qword_27CD458A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD458A0);
  }

  return result;
}

unint64_t sub_21B09E17C()
{
  result = qword_27CD458A8;
  if (!qword_27CD458A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD458A8);
  }

  return result;
}

unint64_t sub_21B09E1D4()
{
  result = qword_27CD458B0;
  if (!qword_27CD458B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD458B0);
  }

  return result;
}

unint64_t sub_21B09E25C()
{
  result = qword_27CD458C8;
  if (!qword_27CD458C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD458C8);
  }

  return result;
}

unint64_t sub_21B09E2B4()
{
  result = qword_27CD458D0;
  if (!qword_27CD458D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD458D0);
  }

  return result;
}

unint64_t sub_21B09E30C()
{
  result = qword_27CD458D8;
  if (!qword_27CD458D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD458D8);
  }

  return result;
}

unint64_t sub_21B09E394()
{
  result = qword_27CD458F0;
  if (!qword_27CD458F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD458F0);
  }

  return result;
}

unint64_t sub_21B09E3EC()
{
  result = qword_27CD458F8;
  if (!qword_27CD458F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD458F8);
  }

  return result;
}

unint64_t sub_21B09E444()
{
  result = qword_27CD45900;
  if (!qword_27CD45900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45900);
  }

  return result;
}

unint64_t sub_21B09E4CC()
{
  result = qword_27CD45918;
  if (!qword_27CD45918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45918);
  }

  return result;
}

unint64_t sub_21B09E524()
{
  result = qword_27CD45920;
  if (!qword_27CD45920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45920);
  }

  return result;
}

unint64_t sub_21B09E57C()
{
  result = qword_27CD45928;
  if (!qword_27CD45928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45928);
  }

  return result;
}

unint64_t sub_21B09E604()
{
  result = qword_27CD45940;
  if (!qword_27CD45940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45940);
  }

  return result;
}

unint64_t sub_21B09E65C()
{
  result = qword_27CD45948;
  if (!qword_27CD45948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45948);
  }

  return result;
}

unint64_t sub_21B09E6B4()
{
  result = qword_27CD45950;
  if (!qword_27CD45950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45950);
  }

  return result;
}

unint64_t sub_21B09E73C()
{
  result = qword_27CD45968;
  if (!qword_27CD45968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45968);
  }

  return result;
}

unint64_t sub_21B09E794()
{
  result = qword_27CD45970;
  if (!qword_27CD45970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45970);
  }

  return result;
}

unint64_t sub_21B09E7EC()
{
  result = qword_27CD45978;
  if (!qword_27CD45978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD45978);
  }

  return result;
}

void sub_21B0A4C08(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46130, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21B0A6560(319, &qword_27CD46138, &type metadata for Apple_Parsec_Feedback_V2_ResultSectionForFeedback.OneOf_BundleID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21B111EC4();
      if (v3 <= 0x3F)
      {
        sub_21B0A4D74(319, &qword_27CD46140, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21B0A4D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21B0A4E1C(uint64_t a1)
{
  sub_21B111EC4();
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46158, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21B0A4EF8(uint64_t a1)
{
  result = sub_21B111EC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21B0A4FC0(uint64_t a1)
{
  sub_21B0A6560(319, &qword_27CD46180, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21B0A6560(319, &qword_27CD46188, &type metadata for Apple_Parsec_Feedback_V2_PunchoutForFeedback.OneOf_BundleID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21B111EC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21B0A528C(uint64_t a1)
{
  result = sub_21B111EC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B0A5398(uint64_t a1)
{
  result = sub_21B111EC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21B0A54A0(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46240, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46130, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_21B111EC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B0A55E4(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46258, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21B111EC4();
    if (v2 <= 0x3F)
    {
      sub_21B0A4D74(319, &qword_27CD46260, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B0A5730(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46130, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21B111EC4();
    if (v2 <= 0x3F)
    {
      sub_21B0A4D74(319, &qword_27CD46278, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B0A58C0(uint64_t a1)
{
  sub_21B111EC4();
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46278, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1698Tm()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 8));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_708();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
    OUTLINED_FUNCTION_676();
  }

  v6 = OUTLINED_FUNCTION_78(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void __swift_store_extra_inhabitant_index_1699Tm()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_663();
  }

  else
  {
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_681();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
      OUTLINED_FUNCTION_679();
    }

    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_21B0A5B74(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46130, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21B0A6560(319, &qword_27CD462C0, MEMORY[0x277D84D38], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_21B0A6560(319, &qword_27CD46180, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_21B111EC4();
        if (v4 <= 0x3F)
        {
          sub_21B0A4D74(319, &qword_27CD46278, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21B0A5D28(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD462D8, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21B111EC4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B0A5EAC(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46318, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD462D8, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_21B111EC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B0A618C(uint64_t a1)
{
  sub_21B111EC4();
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46158, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21B0A6308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_21B111EC4();
  if (v8 <= 0x3F)
  {
    OUTLINED_FUNCTION_280();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_5_0();
  }

  return result;
}

void sub_21B0A63EC(uint64_t a1)
{
  sub_21B0A6504();
  if (v1 <= 0x3F)
  {
    sub_21B0A6560(319, &qword_27CD463D0, &type metadata for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.OneOf_Trigger, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21B111EC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B0A6504()
{
  if (!qword_27CD463C8)
  {
    v0 = sub_21B112344();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD463C8);
    }
  }
}

void sub_21B0A6560(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.OneOf_Trigger(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

void sub_21B0A6660(uint64_t a1)
{
  sub_21B111EC4();
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD463E8, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B0A688C(uint64_t a1)
{
  sub_21B111EC4();
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46440, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21B0A4D74(319, &qword_27CD46448, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1894Tm()
{
  OUTLINED_FUNCTION_81();
  sub_21B111EC4();
  v0 = OUTLINED_FUNCTION_523();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t __swift_store_extra_inhabitant_index_1895Tm()
{
  OUTLINED_FUNCTION_81();
  sub_21B111EC4();
  v0 = OUTLINED_FUNCTION_367();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_21B0A6AF0(uint64_t a1)
{
  sub_21B111EC4();
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46480, type metadata accessor for Apple_Parsec_Feedback_V2_Error, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1707Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_81();
  sub_21B111EC4();
  OUTLINED_FUNCTION_80();
  if (*(v5 + 84) == v3)
  {
    v6 = *(a3 + 20);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_48_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_677();
  }

  v9 = OUTLINED_FUNCTION_78(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

uint64_t __swift_store_extra_inhabitant_index_1708Tm()
{
  OUTLINED_FUNCTION_707();
  OUTLINED_FUNCTION_80();
  if (*(v1 + 84) != v0)
  {
    v2 = OUTLINED_FUNCTION_48_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  }

  OUTLINED_FUNCTION_447();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_21B0A6D74()
{
  sub_21B111EC4();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_339();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_280();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_5_0();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1761Tm()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 24));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_594();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_48_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_624();
  }

  v8 = OUTLINED_FUNCTION_78(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_1762Tm()
{
  OUTLINED_FUNCTION_34_2();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_21B111EC4();
    OUTLINED_FUNCTION_80();
    if (*(v5 + 84) == v4)
    {
      OUTLINED_FUNCTION_626();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_48_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      OUTLINED_FUNCTION_627();
    }

    v9 = OUTLINED_FUNCTION_64(v6);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t __swift_get_extra_inhabitant_index_1975Tm()
{
  OUTLINED_FUNCTION_81();
  sub_21B111EC4();
  OUTLINED_FUNCTION_80();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_677();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_48_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_594();
  }

  v5 = OUTLINED_FUNCTION_78(v2);

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t __swift_store_extra_inhabitant_index_1976Tm()
{
  OUTLINED_FUNCTION_707();
  OUTLINED_FUNCTION_80();
  if (*(v1 + 84) != v0)
  {
    v2 = OUTLINED_FUNCTION_48_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  }

  OUTLINED_FUNCTION_447();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_21B0A7260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B111EC4();
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_339();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_280();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_5_0();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1743Tm()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 16));
  }

  OUTLINED_FUNCTION_86();
  v3 = OUTLINED_FUNCTION_351();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1744Tm()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_626();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t __swift_get_extra_inhabitant_index_1885Tm()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_677();
  v4 = OUTLINED_FUNCTION_78(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_1994Tm()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_663();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_710();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_21B0A7590()
{
  OUTLINED_FUNCTION_735();
  sub_21B0A4D74(319, v0, v1, MEMORY[0x277D83940]);
  if (v2 <= 0x3F)
  {
    sub_21B111EC4();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_280();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_5_0();
    }
  }
}

void sub_21B0A767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B111EC4();
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_339();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_280();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_5_0();
    }
  }
}

void sub_21B0A7780(uint64_t a1)
{
  sub_21B111EC4();
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD465B8, type metadata accessor for Apple_Parsec_Feedback_V2_Range, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1617Tm()
{
  OUTLINED_FUNCTION_81();
  sub_21B111EC4();
  v0 = OUTLINED_FUNCTION_523();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t __swift_store_extra_inhabitant_index_1618Tm()
{
  OUTLINED_FUNCTION_81();
  sub_21B111EC4();
  v0 = OUTLINED_FUNCTION_367();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21B0A7920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21B111EC4();
  if (v5 <= 0x3F)
  {
    OUTLINED_FUNCTION_280();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_5_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1680Tm()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 16));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_708();
  v4 = OUTLINED_FUNCTION_78(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21B0A7ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_735();
  sub_21B0A4D74(319, v7, v8, v9);
  if (v10 <= 0x3F)
  {
    sub_21B111EC4();
    if (v11 <= 0x3F)
    {
      OUTLINED_FUNCTION_280();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_5_0();
    }
  }
}

uint64_t sub_21B0A7B4C(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(319);
                                          if (v22 <= 0x3F)
                                          {
                                            result = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(319);
                                            if (v23 <= 0x3F)
                                            {
                                              result = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(319);
                                              if (v24 <= 0x3F)
                                              {
                                                result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(319);
                                                if (v25 <= 0x3F)
                                                {
                                                  result = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(319);
                                                  if (v26 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(319);
                                                    if (v27 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(319);
                                                      if (v28 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(319);
                                                        if (v29 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(319);
                                                          if (v30 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(319);
                                                            if (v31 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(319);
                                                              if (v32 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(319);
                                                                if (v33 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(319);
                                                                  if (v34 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(319);
                                                                    if (v35 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(319);
                                                                      if (v36 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(319);
                                                                        if (v37 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(319);
                                                                          if (v38 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(319);
                                                                            if (v39 <= 0x3F)
                                                                            {
                                                                              result = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(319);
                                                                              if (v40 <= 0x3F)
                                                                              {
                                                                                result = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(319);
                                                                                if (v41 <= 0x3F)
                                                                                {
                                                                                  result = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(319);
                                                                                  if (v42 <= 0x3F)
                                                                                  {
                                                                                    result = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(319);
                                                                                    if (v43 <= 0x3F)
                                                                                    {
                                                                                      result = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(319);
                                                                                      if (v44 <= 0x3F)
                                                                                      {
                                                                                        result = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(319);
                                                                                        if (v45 <= 0x3F)
                                                                                        {
                                                                                          result = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(319);
                                                                                          if (v46 <= 0x3F)
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

uint64_t __swift_get_extra_inhabitant_index_1842Tm()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 16));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_676();
  v4 = OUTLINED_FUNCTION_78(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_1843Tm()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_679();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21B0A8020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_21B111EC4();
  if (v8 <= 0x3F)
  {
    OUTLINED_FUNCTION_280();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_5_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_2056Tm()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 16));
  }

  OUTLINED_FUNCTION_86();
  v3 = OUTLINED_FUNCTION_362();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_2057Tm()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_627();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21B0A81DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_21B111EC4();
  if (v8 <= 0x3F)
  {
    OUTLINED_FUNCTION_280();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_5_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1797Tm()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*v0);
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_677();
  v4 = OUTLINED_FUNCTION_78(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_1798Tm()
{
  OUTLINED_FUNCTION_34_2();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_710();
    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_21B0A8378(uint64_t a1)
{
  sub_21B0A8444(319, &qword_27CD46668, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v1 <= 0x3F)
  {
    sub_21B0A8444(319, &qword_27CD46670, MEMORY[0x277D849A8], MEMORY[0x277D849B8]);
    if (v2 <= 0x3F)
    {
      sub_21B111EC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B0A8444(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_Value(255);
    OUTLINED_FUNCTION_84();
    v5 = sub_21B112344();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21B0A8504(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21B0A8604()
{
  OUTLINED_FUNCTION_735();
  sub_21B0A4D74(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    sub_21B111EC4();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_280();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_5_0();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1545Tm()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_86();
  v3 = OUTLINED_FUNCTION_362();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1546Tm()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_663();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_627();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21B0A8804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_21B111EC4();
  if (v8 <= 0x3F)
  {
    OUTLINED_FUNCTION_280();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_5_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_36_0();
  sub_21B111EC4();
  OUTLINED_FUNCTION_80();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_35_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void __swift_store_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_365();
  sub_21B111EC4();
  OUTLINED_FUNCTION_80();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_485();
    OUTLINED_FUNCTION_447();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_21B0A8A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_21B111EC4();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_280();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_5_0();
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1599Tm()
{
  OUTLINED_FUNCTION_81();
  sub_21B111EC4();
  v0 = OUTLINED_FUNCTION_523();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t __swift_store_extra_inhabitant_index_1600Tm()
{
  OUTLINED_FUNCTION_81();
  sub_21B111EC4();
  v0 = OUTLINED_FUNCTION_367();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21B0A8C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_21B111EC4();
  if (v7 <= 0x3F)
  {
    OUTLINED_FUNCTION_280();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_5_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1671Tm()
{
  OUTLINED_FUNCTION_81();
  sub_21B111EC4();
  v0 = OUTLINED_FUNCTION_523();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t __swift_store_extra_inhabitant_index_1672Tm()
{
  OUTLINED_FUNCTION_81();
  sub_21B111EC4();
  v0 = OUTLINED_FUNCTION_367();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21B0A8D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_21B111EC4();
  if (v6 <= 0x3F)
  {
    OUTLINED_FUNCTION_280();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_5_0();
  }

  return result;
}

void sub_21B0A8DF0(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46768, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21B111EC4();
    if (v2 <= 0x3F)
    {
      sub_21B0A4D74(319, &qword_27CD46770, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21B0A8F10(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_21B0A8FC8(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46798, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21B0A90FC(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD467B0, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46158, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21B0A4D74(319, &qword_27CD467B8, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21B0A4D74(319, &qword_27CD464C0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21B0A4D74(319, &qword_27CD467C0, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21B0A4D74(319, &qword_27CD467C8, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_21B0A4D74(319, &qword_27CD467D0, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_21B0A4D74(319, &qword_27CD467D8, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_21B0A4D74(319, &qword_27CD467E0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_21B0A4D74(319, &qword_27CD467E8, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      swift_updateClassMetadata2();
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

void sub_21B0A9630(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46278, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD467E0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21B0A97A0(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46158, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46360, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21B0A9904(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46158, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46360, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21B0A9A5C(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46830, type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46838, type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21B0A9BC4(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46850, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46858, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21B0A9D64(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46278, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46158, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21B0A4D74(319, &qword_27CD46360, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21B0A9F3C(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46770, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21B0AA044(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46890, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46898, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21B0AA1A4(uint64_t a1)
{
  sub_21B0A4D74(319, &qword_27CD46890, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21B0A4D74(319, &qword_27CD46898, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_21B0AA304()
{
  result = qword_27CD46B58;
  if (!qword_27CD46B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46B58);
  }

  return result;
}

unint64_t sub_21B0AA358()
{
  result = qword_27CD46B60;
  if (!qword_27CD46B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46B60);
  }

  return result;
}

unint64_t sub_21B0AA3AC()
{
  result = qword_27CD46B68;
  if (!qword_27CD46B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46B68);
  }

  return result;
}

unint64_t sub_21B0AA400()
{
  result = qword_27CD46B70;
  if (!qword_27CD46B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46B70);
  }

  return result;
}

unint64_t sub_21B0AA454()
{
  result = qword_27CD46B78;
  if (!qword_27CD46B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46B78);
  }

  return result;
}

unint64_t sub_21B0AA4A8()
{
  result = qword_27CD46B80;
  if (!qword_27CD46B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46B80);
  }

  return result;
}

unint64_t sub_21B0AA4FC()
{
  result = qword_27CD46B88;
  if (!qword_27CD46B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46B88);
  }

  return result;
}

unint64_t sub_21B0AA550()
{
  result = qword_27CD46B90;
  if (!qword_27CD46B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46B90);
  }

  return result;
}

unint64_t sub_21B0AA5A4()
{
  result = qword_27CD46B98;
  if (!qword_27CD46B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46B98);
  }

  return result;
}

unint64_t sub_21B0AA5F8()
{
  result = qword_27CD46BA0;
  if (!qword_27CD46BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46BA0);
  }

  return result;
}

unint64_t sub_21B0AA64C()
{
  result = qword_27CD46BA8;
  if (!qword_27CD46BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46BA8);
  }

  return result;
}

unint64_t sub_21B0AA6A0()
{
  result = qword_27CD46BB0;
  if (!qword_27CD46BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46BB0);
  }

  return result;
}

unint64_t sub_21B0AA6F4()
{
  result = qword_27CD46BB8;
  if (!qword_27CD46BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46BB8);
  }

  return result;
}

unint64_t sub_21B0AA748()
{
  result = qword_27CD46BC0;
  if (!qword_27CD46BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46BC0);
  }

  return result;
}

unint64_t sub_21B0AA79C()
{
  result = qword_27CD46BC8;
  if (!qword_27CD46BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46BC8);
  }

  return result;
}

unint64_t sub_21B0AA7F0()
{
  result = qword_27CD46BD0;
  if (!qword_27CD46BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46BD0);
  }

  return result;
}

unint64_t sub_21B0AA844()
{
  result = qword_27CD46BD8;
  if (!qword_27CD46BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46BD8);
  }

  return result;
}

unint64_t sub_21B0AA898()
{
  result = qword_27CD46BE0;
  if (!qword_27CD46BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46BE0);
  }

  return result;
}

unint64_t sub_21B0AA8EC()
{
  result = qword_27CD46BE8;
  if (!qword_27CD46BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46BE8);
  }

  return result;
}

uint64_t sub_21B0AA940()
{
  OUTLINED_FUNCTION_81();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_163();
  v3 = OUTLINED_FUNCTION_52();
  v4(v3);
  return v0;
}

uint64_t sub_21B0AA994()
{
  OUTLINED_FUNCTION_81();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_163();
  v3 = OUTLINED_FUNCTION_52();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_3_17()
{
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  *(v1 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_5_13(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_8(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
}

uint64_t OUTLINED_FUNCTION_17_7(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  *(a1 + 80) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  *(a1 + 80) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_4(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 80) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  *(a1 + 88) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_3(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_21AF99BE0(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_40_2(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
}

uint64_t OUTLINED_FUNCTION_41_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_2(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
}

uint64_t OUTLINED_FUNCTION_54_0(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_136(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_137(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 80) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 88) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_148(uint64_t a1)
{
  *(v1 + 24) = a1;

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_151()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_178()
{
  v2 = *(v0 + 8);
  *(v1 + 72) = *v0;
  *(v1 + 80) = v2;
}

uint64_t OUTLINED_FUNCTION_185()
{
  *(v1 + v4) = v0;
  __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_194()
{
  *(v0 + v4) = v1;
  __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_206()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_220(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_21AF99BE0(v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_223(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

void OUTLINED_FUNCTION_241()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_244()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_249()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_255()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_256@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_261()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_262(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_264(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_269(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_270()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_274(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_276()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
}

void OUTLINED_FUNCTION_283(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
}

uint64_t OUTLINED_FUNCTION_284()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_285()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_286()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_287()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_288()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_289()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_290(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_297()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_299@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_307()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_308(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_309(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_310@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = a2;
  *(v2 + 56) = -1;

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_337()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_339()
{
  v3 = MEMORY[0x277D83D88];

  sub_21B0A4D74(319, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_342()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_343()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_344()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_346()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_348(uint64_t a1)
{

  return sub_21B1123C4();
}

uint64_t OUTLINED_FUNCTION_349()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback._StorageClass(0);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_350()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
}

uint64_t OUTLINED_FUNCTION_354(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_355()
{

  return sub_21B03183C();
}

uint64_t OUTLINED_FUNCTION_356()
{

  return sub_21B03183C();
}

uint64_t OUTLINED_FUNCTION_357(uint64_t a1)
{

  return sub_21B1123C4();
}

void OUTLINED_FUNCTION_363()
{
  *(v0 + 16) = 0xE000000000000000;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_364()
{
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_369@<X0>(uint64_t a2@<X8>)
{
  *(v4 + 96) = v2;
  *(v4 + 104) = 0;
  *(v4 + 112) = v3;
  *(v4 + 120) = 0;
  *(v4 + 128) = a2;
  *(v4 + 136) = v2;
  *(v4 + 144) = v2;
  *(v4 + 152) = v2;

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_371()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_372()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  return 0;
}

void OUTLINED_FUNCTION_376(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t OUTLINED_FUNCTION_397()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_411()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_422()
{

  return swift_getEnumCaseMultiPayload();
}

void OUTLINED_FUNCTION_424()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v0[3] = 0;
}

void OUTLINED_FUNCTION_426()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v0[3] = 0;
}

uint64_t OUTLINED_FUNCTION_433()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_460()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_461()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_474()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_500()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_504(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_505(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21B1120A4();
}

uint64_t OUTLINED_FUNCTION_508(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_509()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_510(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_513(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_518()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_520()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_521()
{
  result = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_528()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_532@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = a2;
  *(v2 + 56) = -1;

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_535(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_536(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_544(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_586()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_587(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_592()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_601()
{
  *(v0 + 1888) = v2;
  *(v0 + 1896) = v1;
  *(v0 + 1904) = v3;
}

uint64_t OUTLINED_FUNCTION_602(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_603(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_604(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_606(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_607(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_608(uint64_t a1@<X8>)
{
  *(v2 + 64) = 0;
  *(v2 + 72) = v1;
  *(v2 + 80) = 0;
  *(v2 + 88) = a1;
}

uint64_t OUTLINED_FUNCTION_609@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0xE000000000000000;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xC000000000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 255;
  *(v2 + 68) = 0;

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_610@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + a1);
  result = *v4;
  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_612@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 + v1;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  *v2 = *v4;
  *(v2 + 8) = v6;
  *(v2 + 16) = v7;

  return sub_21AF83F7C(v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_614(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_615(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_616(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_620(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_630(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_638(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_643(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_650(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_651(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_652(uint64_t a1, uint64_t a2)
{

  return sub_21B111EA4();
}

uint64_t OUTLINED_FUNCTION_653(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_21B1123C4();
}

uint64_t OUTLINED_FUNCTION_661@<X0>(unint64_t a1@<X8>)
{
  v1 = a1 >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_665(uint64_t a1)
{

  return sub_21B03179C(a1);
}

uint64_t OUTLINED_FUNCTION_666(uint64_t a1, ...)
{

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_667()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_668@<X0>(uint64_t a2@<X8>)
{
  *v2 = 0;
  v2[1] = a2;

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_672(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_673()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_674(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_685()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_686(uint64_t a1)
{
  *v1 = 0;
  *(v1 + 8) = 0;

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_687(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_688(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_689(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_690(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_691()
{

  return sub_21B03179C(v0);
}

uint64_t OUTLINED_FUNCTION_692()
{

  return sub_21B03179C(v0);
}

uint64_t OUTLINED_FUNCTION_693(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_694(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_695(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_21B1123C4();
}

uint64_t OUTLINED_FUNCTION_700(uint64_t a1)
{
  *v1 = 0;

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_701@<X0>(uint64_t a1@<X8>)
{
  *v1 = 0;
  v1[1] = a1;
  return 0;
}

void OUTLINED_FUNCTION_702()
{
  *v1 = 0;
  *(v1 + 8) = v0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v0;
  *(v1 + 32) = 0;
  *(v1 + 40) = v0;
}

void OUTLINED_FUNCTION_704()
{
  *v0 = 0;
  *(v0 + 8) = v1;
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_707()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_712()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_713()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_715()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_716()
{
}

uint64_t OUTLINED_FUNCTION_723(uint64_t a1)
{

  return sub_21B111EB4();
}

void OUTLINED_FUNCTION_724(char a1@<W8>)
{
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
}

uint64_t OUTLINED_FUNCTION_728(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_729(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_21B1123C4();
}

uint64_t OUTLINED_FUNCTION_730()
{

  return sub_21B03183C();
}

uint64_t OUTLINED_FUNCTION_731@<X0>(uint64_t a1@<X8>)
{
  v1[7] = 0;
  v1[8] = a1;
  v1[9] = 0;
  v1[10] = a1;
  return 0;
}

void OUTLINED_FUNCTION_732(char a1@<W8>)
{
  *(v1 + 32) = a1;
  *(v1 + 40) = 0;
  *(v1 + 48) = a1;
}

uint64_t OUTLINED_FUNCTION_736()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_738(uint64_t result)
{
  *v1 = result;
  *(result + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_740(uint64_t a1)
{
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 24) = v1;

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_741()
{

  return sub_21B111EA4();
}

uint64_t OUTLINED_FUNCTION_742()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_743()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_744()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_745(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_747(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_760(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_761(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_762(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_763()
{

  return sub_21B03183C();
}

uint64_t OUTLINED_FUNCTION_764()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_801()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_802()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_803()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

double OUTLINED_FUNCTION_806()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_807()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_824@<X0>(uint64_t a1@<X8>)
{

  return sub_21B03179C(a1 + v1);
}

uint64_t OUTLINED_FUNCTION_825(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_826()
{

  return sub_21B03183C();
}

uint64_t OUTLINED_FUNCTION_827(uint64_t a1)
{

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_828()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_829()
{

  return sub_21B03179C(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_830()
{

  return sub_21B111EC4();
}

void OUTLINED_FUNCTION_841(uint64_t a1@<X8>)
{
  *v1 = 0;
  v1[1] = a1;
  v1[2] = 0;
}

uint64_t OUTLINED_FUNCTION_862@<X0>(uint64_t a2@<X8>)
{
  v2[7] = 0;
  v2[8] = a2;
  v2[9] = 0;
  v2[10] = a2;

  return sub_21B111EB4();
}

uint64_t OUTLINED_FUNCTION_863()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_864()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_865()
{

  return sub_21B0AA940();
}

double OUTLINED_FUNCTION_866()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_867(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_868()
{

  return sub_21B0AA940();
}

uint64_t OUTLINED_FUNCTION_869(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_21B112334();
}

uint64_t OUTLINED_FUNCTION_870()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_873()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_874()
{

  return sub_21B03179C(v0 + v1);
}

uint64_t SODARegisteredHostTaskFactory.__allocating_init(taskNamePrefix:fileManager:userDefaults:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  SODARegisteredHostTaskFactory.init(taskNamePrefix:fileManager:userDefaults:)(a1, a2, a3, a4);
  return v8;
}

void *SODARegisteredHostTaskFactory.init(taskNamePrefix:fileManager:userDefaults:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v5[2] = a1;
  v5[3] = a2;
  type metadata accessor for KnownEnvironmentFactory();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  swift_allocObject();
  v5[4] = sub_21B0D8100(a1, a2, v15, a4);
  v5[5] = &off_282C969C0;
  type metadata accessor for RegisteredRecipeEnvironment(0);
  v10 = a4;

  sub_21B0C8CA0();
  v11 = type metadata accessor for BlocksControllerFactory();
  v12 = swift_allocObject();
  *(v12 + 16) = 64;
  v5[9] = v11;
  v5[10] = &off_282C92948;
  v5[6] = v12;
  v5[11] = a3;
  v13 = a3;
  sub_21B0AF6A8(v15);

  sub_21AFC5ACC(v15, (v5 + 12));
  return v5;
}

unint64_t sub_21B0AF6A8@<X0>(void *a1@<X8>)
{
  v2 = sub_21B111A24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D39D90], v2);
  v6 = sub_21B111A14();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v9 = objc_allocWithZone(MEMORY[0x277D007C8]);
  v10 = sub_21B0AFF3C(v6, v8, 0xD000000000000013, 0x800000021B140650);
  v11 = [objc_opt_self() sessionWithConfiguration_];

  result = sub_21B0AFFDC();
  a1[3] = result;
  a1[4] = &off_282C925F0;
  *a1 = v11;
  return result;
}

void *sub_21B0AF81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v45 = a4;
  v43 = a3;
  v44 = a2;
  v42 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42EC8, &qword_21B114830);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  sub_21B0AFD98(a5, &v40 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_21AFA8918(v13, &qword_27CD42EC8, &qword_21B114830);
    v15 = 1;
  }

  else
  {
    sub_21B1111F4();
    memcpy(__dst, __src, sizeof(__dst));
    if (__dst[1] == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = BYTE2(__dst[7]);
      sub_21AFA8918(__dst, &qword_27CD46E18, &qword_21B1283D0);
    }

    (*(*(v14 - 8) + 8))(v13, v14);
  }

  sub_21B0AFD98(a5, v11);
  v46 = *(v6 + 32);
  sub_21AF92198(v6 + 48, __dst);
  v16 = *(v6 + 88);
  v41 = v11;
  if (v15)
  {
    sub_21AF92198(v6 + 96, __src);
  }

  else
  {
    memset(__src, 0, 40);
  }

  v17 = __swift_mutable_project_boxed_opaque_existential_1(__dst, __dst[3]);
  v40 = &v40;
  MEMORY[0x28223BE20](v17);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v22 = type metadata accessor for BlocksControllerFactory();
  v50[3] = v22;
  v50[4] = &off_282C92948;
  v50[0] = v21;
  type metadata accessor for SODARegisteredHostTask(0);
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v50, v22);
  v25 = *(v22 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = *(v25 + 16);
  v28(&v40 - v27);
  v29 = *(&v40 - v27);
  v49[3] = v22;
  v49[4] = &off_282C92948;
  v49[0] = v29;
  swift_unknownObjectRetain();
  v30 = v16;
  sqlite3_soft_heap_limit64(0x4000000);
  *(v23 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SODARegisteredHostTask_environmentFactory) = v46;
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v49, v22);
  MEMORY[0x28223BE20](v31);
  v28(&v40 - v27);
  v32 = *(&v40 - v27);
  v33 = (v23 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_blocksControllerFactory);
  v33[3] = v22;
  v33[4] = &off_282C92948;
  *v33 = v32;
  v34 = (v23 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_environment);
  *v34 = 0;
  v34[1] = 0;
  v35 = v44;
  v23[2] = v42;
  v23[3] = v35;
  v36 = v45;
  v23[4] = v43;
  v23[5] = v36;
  sub_21B0AFE58(v41, v23 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_hostParams);
  *(v23 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_fileManager) = v30;
  v37 = v23 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_feedbackReporter;
  v38 = __src[1];
  *v37 = __src[0];
  *(v37 + 1) = v38;
  *(v37 + 4) = *&__src[2];

  __swift_destroy_boxed_opaque_existential_0(v49);
  __swift_destroy_boxed_opaque_existential_0(v50);
  __swift_destroy_boxed_opaque_existential_0(__dst);
  return v23;
}

uint64_t SODARegisteredHostTaskFactory.deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  return v0;
}

uint64_t SODARegisteredHostTaskFactory.__deallocating_deinit()
{
  SODARegisteredHostTaskFactory.deinit();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_21B0AFD98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42EC8, &qword_21B114830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_21B0AFE58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42EC8, &qword_21B114830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_21B0AFF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_21B1123D4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_21B1123D4();

LABEL_6:
  v8 = [v4 initWithId:v6 userAgent:v7];

  return v8;
}

unint64_t sub_21B0AFFDC()
{
  result = qword_27CD46E20;
  if (!qword_27CD46E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD46E20);
  }

  return result;
}

uint64_t sub_21B0B0020@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + 24);
  v7 = qword_27CD6E758;
  swift_beginAccess();
  sub_21AFA88A8(v6 + v7, v5);
  v8 = sub_21B111894();
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) != 1)
  {
    return (*(*(v8 - 8) + 32))(a1, v5, v8);
  }

  sub_21B0B04E8(v5);
  result = sub_21B1129C4("Fatal error", 11, 2, 0, 0xE000000000000000, "SearchOnDeviceAnalytics/SessionSchemaTableProvider.swift", 56, 2, 23);
  __break(1u);
  return result;
}

uint64_t sub_21B0B0170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *(v5 + 16) = a1;
  type metadata accessor for SessionSchemaProviderUnwrapped(0);
  swift_allocObject();
  v8 = sub_21B0DB830(a2, a3);
  if (v4)
  {

    type metadata accessor for SessionSchemaTableProvider();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 24) = v8;
  }

  return v5;
}

uint64_t sub_21B0B0228@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = type metadata accessor for SessionSchemaProviderUnwrapped(0);
  v5 = MEMORY[0x277D3E628];
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v3;
}

unint64_t sub_21B0B0278@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21B110F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);

  sub_21B110F74();
  sub_21B110F44();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v10 = type metadata accessor for SessionFilesEnumerator(0);
  swift_allocObject();
  v11 = sub_21B0C2D40(v7, v9);
  a1[3] = v10;
  result = sub_21B0B0490();
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_21B0B03A0()
{

  return v0;
}

uint64_t sub_21B0B03C8()
{
  sub_21B0B03A0();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_21B0B0490()
{
  result = qword_27CD46E28;
  if (!qword_27CD46E28)
  {
    type metadata accessor for SessionFilesEnumerator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46E28);
  }

  return result;
}

uint64_t sub_21B0B04E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B0B0550@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46E30, &unk_21B128550);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  v5 = sub_21B111514();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B111534();
  v9 = sub_21B1114C4();
  (*(v6 + 8))(v8, v5);
  sub_21B0B0760(v9, v4);

  v10 = sub_21B1112A4();
  if (__swift_getEnumTagSinglePayload(v4, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v4, v10);
  }

  sub_21B0B0808(v4);
  sub_21AF94BA0();
  swift_allocError();
  *v11 = 0xD000000000000013;
  *(v11 + 8) = 0x800000021B140710;
  *(v11 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_21B0B0760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_21B1112A4();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_21B0B0808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46E30, &unk_21B128550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B0B0870(uint64_t a1)
{
  v2 = a1;
  result = sub_21B0B1054(a1);
  if (!v1 && !v4)
  {
    OUTLINED_FUNCTION_7_9();

    OUTLINED_FUNCTION_3_18();
    v5 = sub_21B0C0144(v2);
    MEMORY[0x21CEE9770](v5);

    OUTLINED_FUNCTION_2_18();
    sub_21B111294();
    v6 = sub_21B0C00A0();

    v7 = MEMORY[0x21CEE9880](v6, MEMORY[0x277D837D0]);
    v9 = v8;

    MEMORY[0x21CEE9770](v7, v9);

    sub_21AF94BA0();
    v10 = swift_allocError();
    *v11 = v12;
    v11[1] = v13;
    return OUTLINED_FUNCTION_6_10(v10, v11);
  }

  return result;
}

uint64_t sub_21B0B0970(uint64_t a1)
{
  v2 = a1;
  v4 = sub_21B0B0D3C(a1);
  if (!v1 && (v3 & 1) != 0)
  {
    OUTLINED_FUNCTION_7_9();

    OUTLINED_FUNCTION_3_18();
    v5 = sub_21B0C0144(v2);
    MEMORY[0x21CEE9770](v5);

    OUTLINED_FUNCTION_2_18();
    sub_21B111294();
    v6 = sub_21B0C00A0();

    v7 = MEMORY[0x21CEE9880](v6, MEMORY[0x277D837D0]);
    v9 = v8;

    MEMORY[0x21CEE9770](v7, v9);

    sub_21AF94BA0();
    v10 = swift_allocError();
    *v11 = v13;
    v11[1] = v14;
    OUTLINED_FUNCTION_6_10(v10, v11);
  }

  return v4;
}

uint64_t sub_21B0B0A78(uint64_t a1)
{
  v2 = a1;
  v4 = sub_21B0B1688(a1);
  if (!v1 && v3 == 1)
  {
    sub_21B112904();

    v5 = sub_21B0C0144(v2);
    MEMORY[0x21CEE9770](v5);

    MEMORY[0x21CEE9770](0x73696D2073692027, 0xEE000A3A676E6973);
    sub_21B111294();
    v6 = sub_21B0C00A0();

    v7 = MEMORY[0x21CEE9880](v6, MEMORY[0x277D837D0]);
    v9 = v8;

    MEMORY[0x21CEE9770](v7, v9);

    sub_21AF94BA0();
    swift_allocError();
    *v10 = 0x746E6174736E6F43;
    *(v10 + 8) = 0xEA00000000002720;
    *(v10 + 16) = 1;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_21B0B0BE4(uint64_t a1)
{
  v2 = a1;
  result = sub_21B0B1340(a1);
  if (!v1 && (v4 & 0x100) != 0)
  {
    sub_21B112904();

    v5 = sub_21B0C0144(v2);
    MEMORY[0x21CEE9770](v5);

    MEMORY[0x21CEE9770](0x73696D2073692027, 0xEE000A3A676E6973);
    sub_21B111294();
    v6 = sub_21B0C00A0();

    v7 = MEMORY[0x21CEE9880](v6, MEMORY[0x277D837D0]);
    v9 = v8;

    MEMORY[0x21CEE9770](v7, v9);

    sub_21AF94BA0();
    swift_allocError();
    *v10 = 0x746E6174736E6F43;
    *(v10 + 8) = 0xEA00000000002720;
    *(v10 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21B0B0D3C(uint64_t a1)
{
  v1 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_21B111334();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B0C0144(v1);
  v11 = v10;
  v12 = sub_21B111294();
  sub_21B0DF074(v9, v11, v12, v4);

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {

    sub_21AFA8918(v4, &qword_27CD42C48, &qword_21B1141C0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_21B111314();
    if (swift_dynamicCast())
    {
      (*(v6 + 8))(v8, v5);

      return v17[0];
    }

    else
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_21B112904();
      MEMORY[0x21CEE9770](0x746E6174736E6F43, 0xEA00000000002720);
      MEMORY[0x21CEE9770](v9, v11);

      MEMORY[0x21CEE9770](0xD000000000000020, 0x800000021B140770);
      MEMORY[0x21CEE9770](1953384789, 0xE400000000000000);
      MEMORY[0x21CEE9770](0x3A6C61757463410ALL, 0xE900000000000020);
      MEMORY[0x21CEE9770](0x7361746144796E41, 0xEF65756C61567465);
      v14 = v18;
      v15 = v19;
      sub_21AF94BA0();
      swift_allocError();
      *v16 = v14;
      *(v16 + 8) = v15;
      *(v16 + 16) = 1;
      swift_willThrow();
      return (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_21B0B1054(uint64_t a1)
{
  v1 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_21B111334();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = sub_21B0C0144(v1);
  v14 = v13;
  v15 = sub_21B111294();
  sub_21B0DF074(v12, v14, v15, v4);

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {

    sub_21AFA8918(v4, &qword_27CD42C48, &qword_21B1141C0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v11, v4, v5);
    sub_21B111314();
    if (swift_dynamicCast())
    {
      (*(v7 + 8))(v11, v5);

      return v21;
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_21B112904();
      MEMORY[0x21CEE9770](0x746E6174736E6F43, 0xEA00000000002720);
      MEMORY[0x21CEE9770](v12, v14);

      MEMORY[0x21CEE9770](0xD000000000000020, 0x800000021B140770);
      MEMORY[0x21CEE9770](0x676E69727453, 0xE600000000000000);
      MEMORY[0x21CEE9770](0x3A6C61757463410ALL, 0xE900000000000020);
      MEMORY[0x21CEE9770](0x7361746144796E41, 0xEF65756C61567465);
      v17 = v22;
      v18 = v23;
      sub_21AF94BA0();
      v19 = swift_allocError();
      *v20 = v17;
      v20[1] = v18;
      OUTLINED_FUNCTION_6_10(v19, v20);
      return (*(v7 + 8))(v11, v5);
    }
  }
}

uint64_t sub_21B0B1340(uint64_t a1)
{
  v1 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_21B111334();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B0C0144(v1);
  v11 = v10;
  v12 = sub_21B111294();
  sub_21B0DF074(v9, v11, v12, v4);

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {

    sub_21AFA8918(v4, &qword_27CD42C48, &qword_21B1141C0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_21B111314();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46E38, &qword_21B128560);
    if (swift_dynamicCast())
    {
      (*(v6 + 8))(v8, v5);

      return v17;
    }

    else
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_21B112904();
      MEMORY[0x21CEE9770](0x746E6174736E6F43, 0xEA00000000002720);
      MEMORY[0x21CEE9770](v9, v11);

      MEMORY[0x21CEE9770](0xD000000000000020, 0x800000021B140770);
      MEMORY[0x21CEE9770](0x6C616E6F6974704FLL, 0xEE003E746E49553CLL);
      MEMORY[0x21CEE9770](0x3A6C61757463410ALL, 0xE900000000000020);
      MEMORY[0x21CEE9770](0x7361746144796E41, 0xEF65756C61567465);
      v14 = v18;
      v15 = v19;
      sub_21AF94BA0();
      swift_allocError();
      *v16 = v14;
      *(v16 + 8) = v15;
      *(v16 + 16) = 1;
      swift_willThrow();
      return (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_21B0B1688(uint64_t a1)
{
  v1 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_21B111334();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B0C0144(v1);
  v11 = v10;
  v12 = sub_21B111294();
  sub_21B0DF074(v9, v11, v12, v4);

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {

    sub_21AFA8918(v4, &qword_27CD42C48, &qword_21B1141C0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_21B111314();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46E40, &qword_21B128568);
    if (swift_dynamicCast())
    {
      (*(v6 + 8))(v8, v5);

      return v17;
    }

    else
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_21B112904();
      MEMORY[0x21CEE9770](0x746E6174736E6F43, 0xEA00000000002720);
      MEMORY[0x21CEE9770](v9, v11);

      MEMORY[0x21CEE9770](0xD000000000000020, 0x800000021B140770);
      MEMORY[0x21CEE9770](0xD000000000000010, 0x800000021B1407A0);
      MEMORY[0x21CEE9770](0x3A6C61757463410ALL, 0xE900000000000020);
      MEMORY[0x21CEE9770](0x7361746144796E41, 0xEF65756C61567465);
      v14 = v18;
      v15 = v19;
      sub_21AF94BA0();
      swift_allocError();
      *v16 = v14;
      *(v16 + 8) = v15;
      *(v16 + 16) = 1;
      swift_willThrow();
      return (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_21B0B19B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  ObjectType = swift_getObjectType();
  v9 = dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for AggregationEnvironment);
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = 0;
    v10 = 0;
  }

  *(v4 + 40) = v9;
  *(v4 + 48) = v10;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return v4;
}

uint64_t sub_21B0B1A24(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 24);
  if (v5)
  {
    v6 = *(v1 + 32);

    v7 = v5(a1);
    sub_21AF92250(v5, v6);
    if (v2)
    {
      return v7 & 1;
    }
  }

  else
  {
    v7 = 1;
  }

  if (*(v3 + 40))
  {
    v8 = *(v3 + 48);
    swift_unknownObjectRetain();
    sub_21B0BE1EC();
    if (v2)
    {
    }

    else
    {
      v10 = v9;
      ObjectType = swift_getObjectType();
      (*(v8 + 24))(v10, 0, ObjectType, v8);
    }

    swift_unknownObjectRelease();
  }

  *(v3 + 16) = 1;
  sub_21B0B1B44(a1, 1);
  return v7 & 1;
}

void sub_21B0B1B44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46E30, &unk_21B128550);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v52 - v6;
  v8 = sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v15 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  sub_21B110F74();
  sub_21B110F44();
  v23 = v22;
  (*(v17 + 8))(v21, v15);
  if (*(v3 + 40))
  {
    v24 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    v26 = (*(*(v24 + 8) + 32))(ObjectType);
    if (v26)
    {
      v27 = v26;
      v28 = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v27, v28, &protocol descriptor for SODAActivityMonitoring))
      {
        v29 = sub_21B0BE628();
        v38 = sub_21B0BE474();
        sub_21B0B0550(v7);
        __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
        (*(v10 + 32))(v14, v7, v8);
        v39 = sub_21B0B0A78(4);
        v43 = v40;
        if (!v40)
        {
          v41 = OUTLINED_FUNCTION_5_14();
          v42(v41);
LABEL_5:
          if (qword_2811FAAD8 != -1)
          {
            OUTLINED_FUNCTION_0_4(&qword_2811FAAD8);
          }

          v30 = sub_21B1122D4();
          __swift_project_value_buffer(v30, qword_2811FAB28);
          v31 = sub_21B1122B4();
          v32 = sub_21B112704();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_21AF80000, v31, v32, "Failed to find needed information in dataset for interval telemetry", v33, 2u);
            MEMORY[0x21CEEA9A0](v33, -1, -1);
          }

          swift_unknownObjectRelease();

          return;
        }

        v44 = v39;
        v45 = sub_21B0B0BE4(7);
        if (v46)
        {
          v47 = OUTLINED_FUNCTION_5_14();
          v48(v47);

          goto LABEL_5;
        }

        v49 = (v23 - v38) / 86400.0 + -1.0;
        if (COERCE__INT64(fabs(v49)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v49 > -9.22337204e18)
        {
          if (v49 < 9.22337204e18)
          {
            sub_21AFCBD6C(v44, v43, a2, v45, v49, v29, v23);
            swift_unknownObjectRelease();

            v50 = OUTLINED_FUNCTION_5_14();
            v51(v50);
            return;
          }

          goto LABEL_26;
        }

        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      swift_unknownObjectRelease();
    }
  }

  if (qword_2811FAAD8 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_2811FAAD8);
  }

  v34 = sub_21B1122D4();
  __swift_project_value_buffer(v34, qword_2811FAB28);
  v35 = sub_21B1122B4();
  v36 = sub_21B112704();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_21AF80000, v35, v36, "Failed to find sodaActivityMonitor for interval telemetry", v37, 2u);
    MEMORY[0x21CEEA9A0](v37, -1, -1);
  }
}

uint64_t *sub_21B0B2054()
{
  sub_21AF92250(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21B0B207C()
{
  sub_21B0B2054();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void OUTLINED_FUNCTION_2_18()
{

  JUMPOUT(0x21CEE9770);
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return sub_21B112904();
}

uint64_t sub_21B0B21E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t (*a8)(void), uint64_t (*a9)(uint64_t, char *, uint64_t, uint64_t, void, uint64_t))
{
  v26 = a7;
  HIDWORD(v25) = a6;
  v15 = a8(0);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v25 - v19;
  OUTLINED_FUNCTION_3_4();
  *(v9 + *(v21 + 472)) = 0;
  OUTLINED_FUNCTION_3_4();
  sub_21AF93E20(a3, v9 + *(v22 + 464));
  (*(v17 + 16))(v20, a2, v15);
  v23 = a9(a1, v20, a4, a5, HIDWORD(v25), v26);
  sub_21AF93E84(a3);
  (*(v17 + 8))(a2, v15);
  return v23;
}

void sub_21B0B2350(void *a1)
{
  v10 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43840, &unk_21B128610);
  if (swift_dynamicCast())
  {
    sub_21AF81D68(v8, v11);
    v3 = v12;
    v4 = v13;
    __swift_project_boxed_opaque_existential_0(v11, v12);
    (*(v4 + 16))(v3, v4);
    OUTLINED_FUNCTION_8();
    *(v1 + *(v5 + 472)) = v6;
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_21AFD4408(v8);
    OUTLINED_FUNCTION_8();
    *(v1 + *(v7 + 472)) = 6;
  }
}

const char *sub_21B0B2458()
{
  v1 = v0;
  v2 = sub_21B111424();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x277D3E0D0])
  {
    return "engine";
  }

  if (v9 == *MEMORY[0x277D3E0C8])
  {
    return "initialization";
  }

  if (v9 == *MEMORY[0x277D3E0C0])
  {
    return "validation";
  }

  if (v9 == *MEMORY[0x277D3E0B8])
  {
    return "processing";
  }

  (*(v4 + 8))(v8, v2);
  return "unknown";
}

uint64_t sub_21B0B25F4(uint64_t a1)
{
  *(a1 + 8) = sub_21B0B265C(&qword_27CD46E48, MEMORY[0x277D3E0E0]);
  result = sub_21B0B265C(&unk_27CD477C0, MEMORY[0x277D3E0E8]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21B0B265C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21B111424();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B0B26A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecipeIdentifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = sub_21B111424();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  (*(v12 + 16))(v15 - v14, a2, v10);
  sub_21AF93E20(a3, v9);
  v17 = sub_21B0B21E4(a1, v16, v9, "", 0, 2, MEMORY[0x277D84F90], MEMORY[0x277D3E0D8], sub_21B0E9A00);
  sub_21AF93E84(a3);
  (*(v12 + 8))(a2, v10);
  return v17;
}

void *sub_21B0B282C()
{
  OUTLINED_FUNCTION_3_4();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_21B0B2C28();
  }

  v2 = sub_21B0EA484();
  sub_21AF93E84(v2 + *(*v2 + 464));
  return v2;
}

uint64_t sub_21B0B288C()
{
  v0 = sub_21B0B282C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for EngineActivitySpan(uint64_t a1)
{
  result = qword_27CD46E50;
  if (!qword_27CD46E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_21B0B2964()
{
  v1 = type metadata accessor for RecipeIdentifier(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_3_4();
  v7 = *(v0 + *(v6 + 128));
  v8 = sub_21B112704();
  sub_21B112264("LEAKED ENGINE ACTIVITY SPAN: {{{", 32, 2, &dword_21AF80000, v7, v8, MEMORY[0x277D84F90]);
  sub_21B0E7198();
  sub_21B112704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v9 = swift_allocObject();
  *(&v25 + 1) = 2;
  *(v9 + 16) = xmmword_21B113D90;
  OUTLINED_FUNCTION_3_4();
  v10 = sub_21B112454();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x277D837D0];
  v13 = sub_21AF93F18();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_21B112264("Outcome: %s", 1);

  sub_21B112704();
  v14 = swift_allocObject();
  *(v14 + 16) = v25;
  OUTLINED_FUNCTION_3_4();
  v16 = v0 + *(v15 + 464);
  sub_21AF93E20(v16, v5);
  v17 = sub_21AFC9D08();
  v19 = v18;
  sub_21AF93E84(v5);
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = v13;
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  sub_21B112264("Recipe: %s", v25);

  sub_21B112704();
  v20 = swift_allocObject();
  *(v20 + 16) = v25;
  v21 = *(v16 + *(v2 + 28));
  v22 = MEMORY[0x277D83ED0];
  *(v20 + 56) = MEMORY[0x277D83E88];
  *(v20 + 64) = v22;
  *(v20 + 32) = v21;
  sub_21B112264("Recipe Version: %lu", v25);

  v23 = sub_21B112704();
  return sub_21B112264("}}}", 3, 2, &dword_21AF80000, v7, v23, MEMORY[0x277D84F90]);
}

double sub_21B0B2C28()
{
  v1 = v0;
  v2 = sub_21B111424();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  v11 = type metadata accessor for RecipeIdentifier(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v51 - v15;
  v18 = *v1;
  if ((*(v1 + *(*v1 + 120)) & 1) == 0)
  {
    v51 = *(*v1 + 120);
    v19 = v1 + *(v18 + 464);
    sub_21AF93E20(v19, &v51 - v15);
    if (qword_27CD42518 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v11, qword_27CD6E770);
    sub_21AF93E20(v20, v14);
    v21 = static RecipeIdentifier.== infix(_:_:)(v17, v14);
    sub_21AF93E84(v14);
    sub_21AF93E84(v17);
    if (v21 || (OUTLINED_FUNCTION_8(), (*(v4 + 16))(v10, v1 + *(v22 + 112), v2), v23 = (*(v4 + 88))(v10, v2), v24 = *MEMORY[0x277D3E0D0], (*(v4 + 8))(v10, v2), v23 != v24))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_21B113D80;
      sub_21AF93E20(v19, v17);
      v36 = sub_21AFC9D08();
      v38 = v37;
      sub_21AF93E84(v17);
      *(v35 + 56) = MEMORY[0x277D837D0];
      v39 = sub_21AF93F18();
      *(v35 + 64) = v39;
      *(v35 + 32) = v36;
      *(v35 + 40) = v38;
      v40 = *(v19 + *(v11 + 20));
      v41 = MEMORY[0x277D83ED0];
      *(v35 + 96) = MEMORY[0x277D83E88];
      *(v35 + 104) = v41;
      *(v35 + 72) = v40;
      OUTLINED_FUNCTION_8();
      (*(v4 + 16))(v8, v1 + *(v42 + 112), v2);
      v43 = sub_21B112454();
      v44 = MEMORY[0x277D837D0];
      *(v35 + 136) = MEMORY[0x277D837D0];
      *(v35 + 144) = v39;
      *(v35 + 112) = v43;
      *(v35 + 120) = v45;
      OUTLINED_FUNCTION_8();
      v52 = *(v1 + *(v46 + 472));
      v47 = sub_21B112454();
      *(v35 + 176) = v44;
      *(v35 + 184) = v39;
      *(v35 + 152) = v47;
      *(v35 + 160) = v48;
      sub_21B0ED1F4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_21B1141D0;
      sub_21AF93E20(v19, v17);
      v26 = sub_21AFC9D08();
      v28 = v27;
      sub_21AF93E84(v17);
      *(v25 + 56) = MEMORY[0x277D837D0];
      *(v25 + 64) = sub_21AF93F18();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      v29 = *(v19 + *(v11 + 20));
      v30 = MEMORY[0x277D83ED0];
      *(v25 + 96) = MEMORY[0x277D83E88];
      *(v25 + 104) = v30;
      *(v25 + 72) = v29;
      OUTLINED_FUNCTION_8();
      v32 = qword_21B128630[*(v1 + *(v31 + 472))];
      *(v25 + 136) = v33;
      *(v25 + 144) = v34;
      *(v25 + 112) = v32;
      sub_21B0ED1F4();
    }

    OUTLINED_FUNCTION_8();
    v50 = *(*(v1 + *(v49 + 152)) + 16);

    os_unfair_lock_lock(v50);
    if ((*(v1 + v51) & 1) == 0)
    {
      sub_21B0E8B14();
    }

    os_unfair_lock_unlock(v50);
  }

  return result;
}