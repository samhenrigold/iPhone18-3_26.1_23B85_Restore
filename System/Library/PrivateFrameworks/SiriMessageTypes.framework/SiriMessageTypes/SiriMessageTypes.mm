uint64_t sub_2230CFD50(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2230CFD84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t type metadata accessor for SessionConfiguration(uint64_t a1)
{
  result = qword_280FCE790;
  if (!qword_280FCE790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionConfiguration.init(sessionId:mafConfiguration:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for SessionConfiguration(0) + 52);
  v7 = sub_2231FFDA4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a3 + v6, a1, v7);
  v9 = [a2 assistantId];
  v10 = sub_2232000C4();
  v12 = v11;

  *a3 = v10;
  *(a3 + 8) = v12;
  v13 = [a2 languageCode];
  v14 = sub_2232000C4();
  v16 = v15;

  *(a3 + 16) = v14;
  *(a3 + 24) = v16;
  *(a3 + 32) = [a2 understandingOnDevice];
  v17 = sub_2230D0814(a2);
  v19 = 0x80000002232216F0;
  v20 = 0xD000000000000024;
  if (v18)
  {
    v20 = v17;
    v19 = v18;
  }

  *(a3 + 40) = v20;
  *(a3 + 48) = v19;
  [a2 clientAuditToken];
  v21 = v25;
  *(a3 + 56) = v24;
  *(a3 + 72) = v21;
  *(a3 + 88) = 0;
  *(a3 + 89) = [a2 isSystemAssistantExperienceEnabled];
  *(a3 + 90) = [a2 isFullPlannerEnabled];
  *(a3 + 91) = [a2 isPQAEnabled];
  v22 = [a2 deferIntelligenceFlowSessionCreation];

  result = (*(v8 + 8))(a1, v7);
  *(a3 + 92) = v22;
  return result;
}

uint64_t sub_2230D0000(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1, uint64_t a2)
{

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_0()
{
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2232005C4();
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return sub_223200654();
}

void OUTLINED_FUNCTION_2_3(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = *(a1 + 64);

  sub_22311DD98(v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return type metadata accessor for GestureBasedResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_9()
{

  return type metadata accessor for IFQueryGeneratedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1, uint64_t a2)
{

  return sub_223200554();
}

unint64_t OUTLINED_FUNCTION_6_13()
{
  v3 = *(v2 - 144);
  *(v3 + 16) = v0;
  return v3 + ((*(*(v2 - 168) + 80) + 32) & ~*(*(v2 - 168) + 80)) + *(*(v2 - 168) + 72) * v1;
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return type metadata accessor for NLTRPCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return type metadata accessor for PommesResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_17(uint64_t a1, _BYTE *a2)
{
  *a2 = 5;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_6_28()
{

  return type metadata accessor for StartRootSpeechRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_30()
{

  return type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_32()
{

  return type metadata accessor for TTResponseMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_33()
{

  return type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_10_2()
{
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_10_10()
{
  *(v0 - 96) = 0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;

  return sub_2231FFF94();
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1)
{

  return sub_2232004C4();
}

uint64_t OUTLINED_FUNCTION_10_13()
{

  return sub_22317F048();
}

void OUTLINED_FUNCTION_10_15(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_10_17()
{

  return type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_10_18()
{

  return type metadata accessor for StartChildTextRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_10_19()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_10_20(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_223200124();
}

void OUTLINED_FUNCTION_10_21(uint64_t a1@<X8>)
{
  v2 = v1 - a1;
  *v2 = 15;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_10_22(uint64_t a1, uint64_t a2)
{

  return sub_2232005B4();
}

void OUTLINED_FUNCTION_10_24(uint64_t a1, unint64_t a2)
{

  sub_2230D9D28(a1, a2, v2, v3);
}

uint64_t sub_2230D078C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2231FFDA4();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2230D0814(void *a1)
{
  v1 = [a1 sharedUserId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2232000C4();

  return v3;
}

id SessionStartedMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v119 = a2;
  v120 = a1;
  ObjectType = swift_getObjectType();
  sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v112 = v3;
  v113 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v111 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A060, &unk_223218840);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  v114 = &v106 - v7;
  v8 = type metadata accessor for SessionConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v110 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v106 - v13;
  v15 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v118 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v117 = v19 - v18;
  v20 = type metadata accessor for SessionStartedMessage.Builder(0);
  v21 = (v20 - 8);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v24 = (v23 - v22);
  *v24 = 15;
  *(v24 + 1) = 0;
  *(v24 + 2) = 0;
  v25 = v21[8];
  __swift_storeEnumTagSinglePayload(v23 - v22 + v25, 1, 1, v15);
  v26 = &v24[v21[9]];
  *v26 = 0;
  v26[1] = 0;
  v107 = v21[10];
  v24[v107] = 2;
  v108 = v21[11];
  v24[v108] = 2;
  v27 = &v24[v21[12]];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v24[v21[13]];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v28[32] = 1;
  v109 = v21[14];
  v24[v109] = 2;
  v29 = v21[15];
  v115 = v8;
  __swift_storeEnumTagSinglePayload(&v24[v29], 1, 1, v8);
  v120(v24);
  v30 = *v24;
  if (v30 != 15)
  {
    sub_2230D3008(&v24[v25], v14, &qword_27D0575C0, &qword_2232035E0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
    {
      (*(v118 + 32))(v117, v14, v15);
      v43 = v114;
      sub_2230D3008(&v24[v29], v114, &qword_27D05A060, &unk_223218840);
      if (__swift_getEnumTagSinglePayload(v43, 1, v115) == 1)
      {
        sub_2230D40E0(v43, &qword_27D05A060, &unk_223218840);
        v44 = *(v24 + 2);
        v45 = v121;
        if (!v44 || (v46 = v26[1]) == 0)
        {
          if (qword_280FCA778 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v70 = sub_223200014();
          __swift_project_value_buffer(v70, qword_280FCE830);
          v71 = sub_223200004();
          v72 = sub_223200254();
          if (OUTLINED_FUNCTION_24_5(v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v122 = v74;
            *v73 = 136446210;
            v75 = sub_2230F7898(ObjectType);
            v77 = sub_2231A5D38(v75, v76, &v122);

            *(v73 + 4) = v77;
            OUTLINED_FUNCTION_20_12(&dword_2230CE000, v78, v79, "Could not build %{public}s: Builder has missing required fields");
            __swift_destroy_boxed_opaque_existential_1(v74);
            OUTLINED_FUNCTION_12_0();
            MEMORY[0x223DD6780]();
            OUTLINED_FUNCTION_12_0();
            MEMORY[0x223DD6780]();
          }

          OUTLINED_FUNCTION_1_29();
          sub_2230D3E14();
          (*(v118 + 8))(v117, v15);
          goto LABEL_10;
        }

        LODWORD(v119) = v30;
        v120 = v15;
        v47 = *(v24 + 1);
        ObjectType = *v26;
        v122 = ObjectType;
        v123 = v46;

        v48 = v46;
        v49 = v111;
        sub_2231FFC74();
        sub_2230D1D30();
        sub_2232002E4();
        OUTLINED_FUNCTION_19_7();
        v50(v49);
        OUTLINED_FUNCTION_18_12();
        if (!v51)
        {

          if (qword_280FCA778 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v85 = sub_223200014();
          __swift_project_value_buffer(v85, qword_280FCE830);
          v86 = sub_223200004();
          v87 = sub_223200254();
          if (OUTLINED_FUNCTION_24_5(v87))
          {
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_21_10(&dword_2230CE000, v88, v89, "languageCode is empty, can't create message");
            OUTLINED_FUNCTION_12_0();
            MEMORY[0x223DD6780]();
          }

          OUTLINED_FUNCTION_1_29();
          sub_2230D3E14();
          (*(v118 + 8))(v117, v120);
          goto LABEL_10;
        }

        v114 = v48;
        v52 = (v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_languageCode);
        *v52 = v43;
        v52[1] = &v122;
        v53 = (v24[v107] == 2) | v24[v107] & 1;
        *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_understandingOnDevice) = v53;
        v54 = v24[v108] & 1;
        *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_isSystemAssistantExperienceEnabled) = v54;
        v55 = v27[1];
        v110 = v47;
        if (v55)
        {
          v56 = *v27;
          v57 = v55;
        }

        else
        {
          v57 = 0x80000002232216F0;
          v56 = 0xD000000000000024;
        }

        v90 = (v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId);
        *v90 = v56;
        v90[1] = v57;
        v91 = v28[32];
        v92 = (v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken);
        v93 = *(v28 + 1);
        *v92 = *v28;
        v92[1] = v93;
        v94 = v24[v109];
        *(v92 + 32) = v91;
        v95 = v94 & 1;
        *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_deferWarmup) = v94 & 1;
        v96 = v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_sessionConfiguration;
        (*(v118 + 16))(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_sessionConfiguration + *(v115 + 52), v117, v120);
        v97 = *v90;
        v98 = v90[1];
        v99 = *(v92 + 32);
        v100 = *v92;
        v101 = v92[1];
        *v96 = v110;
        *(v96 + 8) = v44;
        v102 = v114;
        *(v96 + 16) = ObjectType;
        *(v96 + 24) = v102;
        *(v96 + 40) = v97;
        *(v96 + 48) = v98;
        *(v96 + 56) = v100;
        *(v96 + 72) = v101;
        *(v96 + 88) = v99;
        *(v96 + 32) = v53;
        *(v96 + 92) = v95;
        *(v96 + 89) = v54;
        *(v96 + 90) = 0;
      }

      else
      {
        LODWORD(v119) = v30;
        v120 = v15;
        v58 = v110;
        sub_2230D3C1C(v43, v110);
        v45 = v121;
        sub_2230D3844(v58, v121 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_sessionConfiguration);
        v59 = *(v58 + 24);
        v122 = *(v58 + 16);
        v123 = v59;

        v60 = v111;
        sub_2231FFC74();
        sub_2230D1D30();
        sub_2232002E4();
        OUTLINED_FUNCTION_19_7();
        v61(v60);

        OUTLINED_FUNCTION_18_12();
        if (!v62)
        {

          if (qword_280FCA778 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v80 = sub_223200014();
          __swift_project_value_buffer(v80, qword_280FCE830);
          v81 = sub_223200004();
          v82 = sub_223200254();
          if (OUTLINED_FUNCTION_24_5(v82))
          {
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_21_10(&dword_2230CE000, v83, v84, "languageCode is empty, can't create message");
            OUTLINED_FUNCTION_12_0();
            MEMORY[0x223DD6780]();
          }

          sub_2230D3E14();
          OUTLINED_FUNCTION_1_29();
          sub_2230D3E14();
          (*(v118 + 8))(v117, v120);
          goto LABEL_9;
        }

        v63 = (v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_languageCode);
        *v63 = v43;
        v63[1] = &v122;
        *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_understandingOnDevice) = *(v58 + 32);
        *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_isSystemAssistantExperienceEnabled) = *(v58 + 89);
        v64 = *(v58 + 48);
        v65 = (v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId);
        *v65 = *(v58 + 40);
        v65[1] = v64;
        LOBYTE(v63) = *(v58 + 88);
        v66 = v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken;
        v67 = *(v58 + 72);
        *v66 = *(v58 + 56);
        *(v66 + 16) = v67;
        *(v66 + 32) = v63;
        v68 = *(v58 + 92);

        OUTLINED_FUNCTION_2_38();
        v69 = sub_2230D3E14();
        *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_deferWarmup) = v68;
      }

      v103 = *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_sessionConfiguration + 8);
      MEMORY[0x28223BE20](v69);
      *(&v106 - 32) = v119;
      *(&v106 - 3) = v104;
      *(&v106 - 2) = v103;
      v105 = v117;
      *(&v106 - 1) = v117;

      v41 = SessionMessageBase.init(build:)(sub_2230D3FF4);

      OUTLINED_FUNCTION_1_29();
      sub_2230D3E14();
      (*(v118 + 8))(v105, v120);
      return v41;
    }

    sub_2230D40E0(v14, &qword_27D0575C0, &qword_2232035E0);
  }

  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v31 = sub_223200014();
  __swift_project_value_buffer(v31, qword_280FCE830);
  v32 = sub_223200004();
  v33 = sub_223200254();
  if (OUTLINED_FUNCTION_24_5(v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v122 = v35;
    *v34 = 136446210;
    v36 = sub_2230F7898(ObjectType);
    v38 = sub_2231A5D38(v36, v37, &v122);

    *(v34 + 4) = v38;
    OUTLINED_FUNCTION_20_12(&dword_2230CE000, v39, v40, "Could not build %{public}s: Builder has missing required fields");
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_12_0();
    MEMORY[0x223DD6780]();
    OUTLINED_FUNCTION_12_0();
    MEMORY[0x223DD6780]();
  }

  OUTLINED_FUNCTION_1_29();
LABEL_9:
  sub_2230D3E14();
LABEL_10:
  type metadata accessor for SessionStartedMessage(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2230D1480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MessageBase(uint64_t a1)
{
  result = qword_280FCB0C0;
  if (!qword_280FCB0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2)
{

  return sub_2232005B4();
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1)
{

  return MEMORY[0x2821FDA60](a1, v1);
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return sub_223200494();
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1)
{

  return sub_223200514();
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1)
{

  return sub_2231FFFD4();
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_1_28@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;

  return sub_223200504();
}

uint64_t OUTLINED_FUNCTION_1_30()
{

  return type metadata accessor for ShimToolInvokedMessage.Builder(0);
}

id OUTLINED_FUNCTION_1_31()
{

  return sub_2231AD7C4(v2 + 9, v1 | 0x8000000000000000, -1, v0);
}

uint64_t OUTLINED_FUNCTION_1_32()
{

  return type metadata accessor for SiriWillAskForConfirmationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_1_33()
{

  return type metadata accessor for SiriWillPromptMessage.Builder(0);
}

id SessionMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v14 = v13 - v12;
  v15 = type metadata accessor for SessionMessageBase.Builder(0);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_2_2();
  v18 = (v17 - v16);
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v20 = *(v19 + 32);
  __swift_storeEnumTagSinglePayload(v17 - v16 + v20, 1, 1, v8);
  a1(v18);
  v21 = *v18;
  if (v21 == 15)
  {
    goto LABEL_5;
  }

  v22 = *(v18 + 2);
  if (!v22)
  {
    goto LABEL_5;
  }

  v34 = *(v18 + 1);
  sub_2230D1480(&v18[v20], v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2230D69D4(v7);
LABEL_5:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v23 = sub_223200014();
    __swift_project_value_buffer(v23, qword_280FCE830);
    v24 = sub_223200004();
    v25 = sub_223200254();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136446210;
      v28 = sub_2230F7898(ObjectType);
      v30 = sub_2231A5D38(v28, v29, &v35);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2230CE000, v24, v25, "Could not build %{public}s: Builder has missing required fields", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223DD6780](v27, -1, -1);
      MEMORY[0x223DD6780](v26, -1, -1);
    }

    sub_2230D20CC(v18);
    type metadata accessor for SessionMessageBase(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v10 + 32))(v14, v7, v8);
  (*(v10 + 16))(v2 + OBJC_IVAR____TtC16SiriMessageTypes18SessionMessageBase_sessionId, v14, v8);

  v31 = sub_2230D20C4(v2, v21, v34, v22);
  (*(v10 + 8))(v14, v8);
  v33 = v31;
  sub_2230D20CC(v18);
  if (v31)
  {
  }

  return v31;
}

unint64_t sub_2230D1D30()
{
  result = qword_280FCA540;
  if (!qword_280FCA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA540);
  }

  return result;
}

void *sub_2230D1D84(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v9 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v33 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v14 = v13 - v12;
  v15 = sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  v21 = v20 - v19;
  *(a1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_postedOnTheBus) = 0;
  if (v8 == 15)
  {
LABEL_11:
    type metadata accessor for MessageBase(0);
    swift_deallocPartialClassInstance();

    return 0;
  }

  v35 = a3;
  v36 = a4;
  sub_2231FFC74();
  sub_2230D1D30();
  v22 = sub_2232002E4();
  v24 = v23;
  (*(v17 + 8))(v21, v15);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v28 = sub_223200014();
    __swift_project_value_buffer(v28, qword_280FCE830);
    v29 = sub_223200004();
    v30 = sub_223200254();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2230CE000, v29, v30, "assistantId is empty, can't create message", v31, 2u);
      MEMORY[0x223DD6780](v31, -1, -1);
    }

    goto LABEL_11;
  }

  *(a1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_source) = a2;
  v26 = (a1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_assistantId);
  *v26 = v22;
  v26[1] = v24;
  sub_2231FFD94();
  (*(v33 + 32))(a1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_messageId, v14, v9);
  v34.receiver = a1;
  v34.super_class = type metadata accessor for MessageBase(0);
  v27 = objc_msgSendSuper2(&v34, sel_init);

  return v27;
}

uint64_t sub_2230D2098@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22312BEC4(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2230D20CC(uint64_t a1)
{
  v2 = type metadata accessor for SessionMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2230D21A0(uint64_t result)
{
  if ((*(v1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_postedOnTheBus) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_postedOnTheBus) = result & 1;
  }

  return result;
}

void OUTLINED_FUNCTION_4_0()
{

  sub_2230D9D28(0, 1uLL, 0, 0);
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return type metadata accessor for ASRReadyForNewTurnMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return sub_2230D94DC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return type metadata accessor for CancelRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2232006B4();
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return type metadata accessor for IntelligenceFlowSessionInformationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_17@<X0>(char a1@<W8>)
{
  *(v1 - 120) = a1;

  return sub_223200504();
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return type metadata accessor for NLResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_23(uint64_t a1, uint64_t a2)
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_4_24()
{

  return type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return sub_2232004F4();
}

uint64_t OUTLINED_FUNCTION_4_27()
{

  return sub_2232000A4();
}

uint64_t OUTLINED_FUNCTION_4_30()
{

  return type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_32(uint64_t a1, uint64_t a2)
{

  return sub_2232005F4();
}

uint64_t OUTLINED_FUNCTION_4_33(uint64_t a1, uint64_t a2)
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_4_34()
{

  return type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_36()
{

  return type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_37()
{

  return type metadata accessor for StartChildTextRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_38()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_4_40()
{

  return type metadata accessor for StartRootTextRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_41()
{

  return type metadata accessor for StartSpeechDictationSessionMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_42()
{

  return type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_43()
{

  return type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_9_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_2232004F4();
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return type metadata accessor for FallbackToPommesMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return sub_2232004F4();
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return type metadata accessor for MUXDirectActionResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_9_11(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_9_17(uint64_t a1)
{

  return sub_2231FFFE4();
}

uint64_t OUTLINED_FUNCTION_9_20()
{

  return type metadata accessor for PommesTRPCandidateMessage.Builder(0);
}

id OUTLINED_FUNCTION_9_21()
{

  return [v0 (v3 + 888)];
}

uint64_t OUTLINED_FUNCTION_9_23@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  result = *v3;
  v5 = *(v3 + 8);
  *v1 = *v3;
  *(v1 + 8) = v5;
  *(v1 + 16) = *(v3 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_24(uint64_t a1, _BYTE *a2)
{
  *a2 = 5;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_9_27()
{

  return sub_2232004F4();
}

uint64_t OUTLINED_FUNCTION_9_29(uint64_t a1)
{

  return sub_2232004C4();
}

uint64_t OUTLINED_FUNCTION_9_30()
{

  return type metadata accessor for TTResponseMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_9_31()
{

  return type metadata accessor for UserIdentificationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_9_33()
{

  return type metadata accessor for VoiceCommandContextMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1, uint64_t a2)
{

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2)
{

  return sub_223200674();
}

uint64_t OUTLINED_FUNCTION_2_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2232006B4();
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return type metadata accessor for IFGestureBasedCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_14()
{
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1)
{

  return sub_223200614();
}

uint64_t OUTLINED_FUNCTION_2_19()
{

  return type metadata accessor for MultiUserTRPCandidateRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return type metadata accessor for MultiUserTRPCandidateRequestMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_21()
{

  return type metadata accessor for MUXAsrResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, uint64_t a18)
{
  a11 = a15;
  a12 = a16;
  a13 = a17;
  a14 = a18;

  return sub_223146834(&a11);
}

uint64_t OUTLINED_FUNCTION_2_23()
{

  return type metadata accessor for MUXSpeechPackageMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_24()
{

  return type metadata accessor for NLRepetitionMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_25(uint64_t a1, uint64_t a2)
{

  return sub_223200474();
}

id OUTLINED_FUNCTION_2_28(uint64_t a1)
{

  return [v1 (v3 + 3842)];
}

uint64_t OUTLINED_FUNCTION_2_31()
{
}

uint64_t OUTLINED_FUNCTION_2_32()
{

  return type metadata accessor for RootTRPCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_33(uint64_t a1)
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_2_35(uint64_t a1)
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_2_44()
{

  return type metadata accessor for StartRootLocalRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_45()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_2_46()
{

  return type metadata accessor for StartSpeechDictationRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_48()
{

  return type metadata accessor for TRPCandidateForPlannerMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_49()
{

  return type metadata accessor for TRPCandidateRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_50()
{

  return type metadata accessor for TypingStartedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_52()
{

  return type metadata accessor for VoiceIdScoreCardMessage.Builder(0);
}

uint64_t SessionStartedMessage.Builder.sessionId.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = type metadata accessor for SessionStartedMessage.Builder(v2);
  return sub_2230D2E1C(v0, v1 + *(v3 + 24), &qword_27D0575C0, &qword_2232035E0);
}

uint64_t sub_2230D2E1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_18_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_2_1();
  v6(v5);
  return v4;
}

uint64_t sub_2230D2E68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_18_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18();
  v5 = OUTLINED_FUNCTION_2_1();
  v6(v5);
  return v4;
}

uint64_t SessionStartedMessage.Builder.sessionConfiguration.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = type metadata accessor for SessionStartedMessage.Builder(v2);
  return sub_2230D2E1C(v0, v1 + *(v3 + 52), &qword_27D05A060, &unk_223218840);
}

_BYTE *storeEnumTagSinglePayload for MessageSource(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230D2FE0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2230D3008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_18_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_2_1();
  v6(v5);
  return v4;
}

uint64_t sub_2230D3054(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_2_1();
  v6(v5);
  return a2;
}

uint64_t sub_2230D30B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_18_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18();
  v5 = OUTLINED_FUNCTION_2_1();
  v6(v5);
  return v4;
}

uint64_t sub_2230D3100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_2_1();
  v6(v5);
  return a2;
}

uint64_t sub_2230D315C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2231628B4(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2230D319C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2231FFDA4();
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

unint64_t sub_2230D3224@<X0>(unint64_t *a1@<X8>)
{
  result = ConversationSessionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t ConversationSessionType.rawValue.getter()
{
  v1 = 0x6F69746174636964;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E61747369737361;
  }
}

uint64_t MessageBase.messageId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_messageId;
  v4 = sub_2231FFDA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2230D33C0()
{
  result = qword_280FCDCC0;
  if (!qword_280FCDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDCC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionStartedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230D34E8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2230D3510(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A078, &qword_223218858);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D33C0();
  sub_2232007A4();
  LOBYTE(v23[0]) = 0;
  OUTLINED_FUNCTION_8_2();
  sub_2232005F4();
  if (!v2)
  {
    OUTLINED_FUNCTION_11_14(1);
    OUTLINED_FUNCTION_11_14(2);
    v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId + 8);
    *&v23[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId);
    *(&v23[0] + 1) = v11;
    v25 = 3;
    v12 = sub_2230D37F0();

    OUTLINED_FUNCTION_8_2();
    sub_223200654();

    if (!v12)
    {
      v16 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken + 32);
      v17 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken + 16);
      v23[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken);
      v23[1] = v17;
      v24 = v16;
      v25 = 4;
      type metadata accessor for audit_token_t(0, v13, v14, v15);
      OUTLINED_FUNCTION_8_20();
      sub_2231A76A8(v18, v19, MEMORY[0x277D85158]);
      OUTLINED_FUNCTION_8_2();
      sub_2232005E4();
      OUTLINED_FUNCTION_11_14(5);
      LOBYTE(v23[0]) = 6;
      type metadata accessor for SessionConfiguration(0);
      OUTLINED_FUNCTION_7_26();
      sub_2231A76A8(v20, v21, &protocol conformance descriptor for SessionConfiguration);
      OUTLINED_FUNCTION_8_2();
      sub_223200654();
      sub_2230D46B0(a1);
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2230D37F0()
{
  result = qword_280FCA758;
  if (!qword_280FCA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA758);
  }

  return result;
}

uint64_t sub_2230D3844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ServerFallbackReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_2230D3930(char a1)
{
  result = 0x65676175676E616CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 3:
      result = 0x644972657375;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7261577265666564;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2)
{

  return sub_2232004C4();
}

void OUTLINED_FUNCTION_11_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_11_14@<X0>(char a2@<W8>)
{
  *(v2 - 128) = a2;

  return sub_223200604();
}

uint64_t sub_2230D3C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_18_5@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2230D30B8(v4 + a3, v3, a1, a2);
}

void OUTLINED_FUNCTION_18_6(uint64_t a1@<X8>)
{
  *(v2 - 152) = a1;
  *(v2 - 168) = v1;
  *(v2 - 160) = v1 + 32;
}

uint64_t OUTLINED_FUNCTION_18_14(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_223200124();
}

uint64_t OUTLINED_FUNCTION_18_15()
{

  return type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
}

uint64_t sub_2230D3E14()
{
  v1 = OUTLINED_FUNCTION_8_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return type metadata accessor for FlowOutputMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1, uint64_t a2)
{

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1)
{

  return sub_223200394();
}

uint64_t OUTLINED_FUNCTION_17_3@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2230D2E68(v3, v4 + a3, a1, a2);
}

void OUTLINED_FUNCTION_17_7()
{

  JUMPOUT(0x223DD5AA0);
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return sub_2231B278C();
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return sub_223200744();
}

void OUTLINED_FUNCTION_17_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2230D4004(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v9 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);
  sub_2230D40E0(a1 + v9, &qword_27D0575C0, &qword_2232035E0);
  v10 = sub_2231FFDA4();
  (*(*(v10 - 8) + 16))(a1 + v9, a5, v10);

  return __swift_storeEnumTagSinglePayload(a1 + v9, 0, 1, v10);
}

uint64_t sub_2230D40E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2230D4138(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2230D4198(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_14();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2230D423C()
{
  v1 = v0;
  v2 = sub_2232000F4();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_2();
  v15.receiver = v0;
  v15.super_class = type metadata accessor for MessageBase(0);
  v3 = objc_msgSendSuper2(&v15, sel_debugDescription);
  sub_2232000C4();

  sub_2231FFC64();
  swift_allocObject();
  sub_2231FFC54();
  v13 = v1;
  sub_2230D462C(&qword_280FCB0D8, type metadata accessor for MessageBase, &protocol conformance descriptor for MessageBase);
  v4 = sub_2231FFC44();
  v6 = v5;

  sub_2232000E4();
  v7 = sub_2232000D4();
  v9 = v8;
  sub_2230D94DC(v4, v6);
  if (!v9)
  {
    v7 = 0xD00000000000001FLL;
    v9 = 0x8000000223223320;
  }

  OUTLINED_FUNCTION_7_12();
  MEMORY[0x223DD5AA0](v7, v9);

  v10 = sub_2230D8DA8(500, v13, v14);
  v11 = MEMORY[0x223DD5A70](v10);

  return v11;
}

uint64_t getEnumTagSinglePayload for DictationAsrResultMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes16UserSessionStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_2230D4578(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2232000A4();

  return v5;
}

uint64_t sub_2230D45E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2231FFDA4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2230D462C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2230D4674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2230D46B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A040, &qword_2232186C8);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D8878();
  sub_2232007A4();
  sub_2231FFDA4();
  sub_2230D45E8(&qword_280FCE688, MEMORY[0x277CC95F8]);
  sub_223200654();
  if (!v1)
  {
    sub_2230D8F5C(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t SessionMessageBase.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes18SessionMessageBase_sessionId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return type metadata accessor for AsrResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return type metadata accessor for ConversationMitigationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1, ...)
{

  return sub_2230D4C88(&v4, &v3);
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return type metadata accessor for EndCandidateRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_13()
{

  return type metadata accessor for FlowOutputResponseMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return type metadata accessor for FlowPluginInfoMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return type metadata accessor for MitigationDecisionFinalizedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return type metadata accessor for MUXResultSelectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_25()
{

  return type metadata accessor for ResultSelectedMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_27()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_3_29()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_3_31()
{

  return sub_223200554();
}

void *OUTLINED_FUNCTION_3_32@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result[9] = a2;
  result[6] = 0xD000000000000015;
  result[7] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_33()
{

  return type metadata accessor for SpeechEndpointDetectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_34()
{

  return type metadata accessor for StartAttendingRequestedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_35()
{

  return type metadata accessor for StartCandidateRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_36()
{

  return type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_37()
{

  return type metadata accessor for StartChildLocalRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_38()
{

  return type metadata accessor for StartRequestMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_40()
{

  return type metadata accessor for StartSpeechRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_42()
{

  return type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0);
}

uint64_t sub_2230D4C88(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2230D4CD8()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_223200374();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MessageBase(0);
  v1 = objc_msgSendSuper2(&v9, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v10 = v2;
  v11 = v4;
  MEMORY[0x223DD5AA0](0x617373656D3C202CLL, 0xEE00203A64496567);
  sub_2231FFDA4();
  OUTLINED_FUNCTION_1_15();
  sub_2230D462C(v5, v6, MEMORY[0x277CC9628]);
  v7 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v10;
}

uint64_t sub_2230D4E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UserID.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC50, &qword_22321F938);
  OUTLINED_FUNCTION_0_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D4FD8();
  sub_2232007A4();
  sub_2232005F4();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_2230D4FD8()
{
  result = qword_280FCA770;
  if (!qword_280FCA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA770);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{

  return sub_2232006B4();
}

double OUTLINED_FUNCTION_0_6@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{

  return sub_2232006B4();
}

uint64_t OUTLINED_FUNCTION_0_12@<X0>(char a2@<W8>)
{
  *(v2 - 112) = a2;

  return sub_223200604();
}

void sub_2230D520C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2230D525C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2230D52B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t audit_token_t.encode(to:)(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057888, &qword_223204A68);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D54E0();
  sub_2232007A4();
  v28 = 0;
  OUTLINED_FUNCTION_2_8(a2, &v28);
  if (!v5)
  {
    v15 = a3;
    v16 = v19;
    v17 = v20;
    v27 = 1;
    OUTLINED_FUNCTION_2_8(HIDWORD(a2), &v27);
    v26 = 2;
    OUTLINED_FUNCTION_2_8(v15, &v26);
    v25 = 3;
    OUTLINED_FUNCTION_2_8(HIDWORD(v15), &v25);
    v24 = 4;
    OUTLINED_FUNCTION_2_8(v16, &v24);
    v23 = 5;
    OUTLINED_FUNCTION_2_8(HIDWORD(v16), &v23);
    v22 = 6;
    OUTLINED_FUNCTION_2_8(v17, &v22);
    v21 = 7;
    OUTLINED_FUNCTION_2_8(HIDWORD(v17), &v21);
  }

  return (*(v11 + 8))(v14, v9);
}

unint64_t sub_2230D54E0()
{
  result = qword_280FCA400;
  if (!qword_280FCA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA400);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1)
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1, uint64_t a2)
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return type metadata accessor for IFGestureBasedCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_8_7(uint64_t a1, uint64_t a2)
{

  return sub_2232005F4();
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage.Builder(0);
}

void OUTLINED_FUNCTION_8_12()
{
  v2 = *(v0 + 16);
  *(v1 - 104) = *(v0 + 24);
  *(v1 - 96) = v2;
}

uint64_t OUTLINED_FUNCTION_8_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_223200794();
}

uint64_t OUTLINED_FUNCTION_8_16(uint64_t a1, uint64_t a2)
{

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2232005F4();
}

uint64_t OUTLINED_FUNCTION_8_22@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_8_23(uint64_t a1, uint64_t a2)
{

  return sub_2232005B4();
}

uint64_t OUTLINED_FUNCTION_8_24()
{

  return type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_8_25()
{

  return type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_8_26()
{

  return type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
}

uint64_t SessionConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A020, &qword_2232184B0);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D5AEC();
  sub_2232007A4();
  LOBYTE(v23[0]) = 0;
  OUTLINED_FUNCTION_8_2();
  sub_2232005F4();
  if (!v2)
  {
    LOBYTE(v23[0]) = 1;
    OUTLINED_FUNCTION_8_2();
    sub_2232005F4();
    OUTLINED_FUNCTION_0_12(2);
    v11 = *(v3 + 48);
    *&v23[0] = *(v3 + 40);
    *(&v23[0] + 1) = v11;
    v25 = 3;
    v12 = sub_2230D37F0();

    OUTLINED_FUNCTION_8_2();
    sub_223200654();
    if (v12)
    {
    }

    else
    {

      v13 = *(v3 + 88);
      v14 = *(v3 + 72);
      v23[0] = *(v3 + 56);
      v23[1] = v14;
      v24 = v13;
      v25 = 4;
      type metadata accessor for audit_token_t(0, v15, v16, v17);
      OUTLINED_FUNCTION_2_37();
      sub_2231A5280(v18, v19, MEMORY[0x277D85158]);
      OUTLINED_FUNCTION_8_2();
      sub_2232005E4();
      OUTLINED_FUNCTION_0_12(5);
      OUTLINED_FUNCTION_0_12(6);
      OUTLINED_FUNCTION_0_12(7);
      OUTLINED_FUNCTION_0_12(8);
      type metadata accessor for SessionConfiguration(0);
      LOBYTE(v23[0]) = 9;
      sub_2231FFDA4();
      OUTLINED_FUNCTION_3_30();
      sub_2231A5280(v20, v21, MEMORY[0x277CC95F8]);
      OUTLINED_FUNCTION_8_2();
      sub_223200654();
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2230D5AEC()
{
  result = qword_280FCA810;
  if (!qword_280FCA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA810);
  }

  return result;
}

unint64_t sub_2230D5B48(char a1)
{
  result = 0x6E61747369737361;
  switch(a1)
  {
    case 1:
      result = 0x65676175676E616CLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x644972657375;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x616E454151507369;
      break;
    case 8:
      result = 0xD000000000000024;
      break;
    case 9:
      result = 0x496E6F6973736573;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230D5D90);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowOutputMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t SessionMessageBase.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230D4E04(a1, v3);
}

uint64_t sub_2230D5F18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_18_10();
  result = type metadata accessor for PromptId(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 24)) = a2 + 3;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return sub_2232003C4();
}

double OUTLINED_FUNCTION_15_5()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t a1, uint64_t a2)
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_15_7()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;
}

uint64_t OUTLINED_FUNCTION_15_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_223200794();
}

uint64_t StopAttendingRequestedMessage.Builder.attendingStopReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StopAttendingRequestedMessage.Builder(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

_BYTE *sub_2230D6154(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230D6220);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2230D627C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A928, &qword_22321D528);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D63D8();
  sub_2232007A4();
  sub_2230D6A98();
  sub_223200654();
  if (!v1)
  {
    sub_2230D46B0(a1);
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_2230D63D8()
{
  result = qword_280FCC688;
  if (!qword_280FCC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC688);
  }

  return result;
}

uint64_t sub_2230D642C(uint64_t a1)
{
  v2 = type metadata accessor for RequestMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id StopAttendingRequestedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StopAttendingRequestedMessage.Builder(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = 15;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  v16 = *(v13 + 32);
  __swift_storeEnumTagSinglePayload(&v15[v16], 1, 1, v6);
  v17 = *(v13 + 36);
  v15[v17] = 6;
  a1(v15);
  v18 = *v15;
  if (v18 == 15)
  {
    goto LABEL_7;
  }

  v19 = *(v15 + 2);
  if (!v19)
  {
    goto LABEL_7;
  }

  v34 = *(v15 + 1);
  sub_2230D1480(&v15[v16], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_2230D69D4(v2);
LABEL_7:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v22 = sub_223200014();
    __swift_project_value_buffer(v22, qword_280FCE830);
    v23 = sub_223200004();
    v24 = sub_223200254();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136446210;
      v27 = sub_2230F7898(ObjectType);
      v29 = sub_2231A5D38(v27, v28, &v36);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2230CE000, v23, v24, "Could not build %{public}s: Builder has missing required fields", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x223DD6780](v26, -1, -1);
      MEMORY[0x223DD6780](v25, -1, -1);
    }

    sub_2230D6A3C(v15);
    type metadata accessor for StopAttendingRequestedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v20 = (*(v8 + 32))(v11, v2, v6);
  v21 = v15[v17];
  if (v21 == 6)
  {
    (*(v8 + 8))(v11, v6);
    goto LABEL_7;
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes29StopAttendingRequestedMessage_attendingStopReason) = v21;
  MEMORY[0x28223BE20](v20);
  *(&v33 - 32) = v18;
  *(&v33 - 3) = v34;
  *(&v33 - 2) = v19;
  *(&v33 - 1) = v11;
  v30 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v32 = v30;
  sub_2230D6A3C(v15);
  if (v30)
  {
  }

  (*(v8 + 8))(v11, v6);
  return v30;
}

uint64_t StopAttendingRequestedMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StopAttendingRequestedMessage.Builder(0) + 24);

  return sub_2230D4E04(a1, v3);
}

uint64_t sub_2230D68F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v9 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);
  sub_2230D69D4(a1 + v9);
  v10 = sub_2231FFDA4();
  (*(*(v10 - 8) + 16))(a1 + v9, a5, v10);

  return __swift_storeEnumTagSinglePayload(a1 + v9, 0, 1, v10);
}

uint64_t sub_2230D69D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2230D6A3C(uint64_t a1)
{
  v2 = type metadata accessor for StopAttendingRequestedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2230D6A98()
{
  result = qword_280FCA868;
  if (!qword_280FCA868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA868);
  }

  return result;
}

uint64_t AttendingStopReason.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0577D0, &qword_2232041C0);
  OUTLINED_FUNCTION_9();
  v52 = v4;
  v53 = v3;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_3();
  v51 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0577D8, &qword_2232041C8);
  OUTLINED_FUNCTION_9();
  v49 = v8;
  v50 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_3();
  v48 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0577E0, &qword_2232041D0);
  OUTLINED_FUNCTION_9();
  v46 = v12;
  v47 = v11;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_3();
  v45 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0577E8, &qword_2232041D8);
  OUTLINED_FUNCTION_9();
  v43 = v16;
  v44 = v15;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_3();
  v42 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0577F0, &qword_2232041E0);
  OUTLINED_FUNCTION_9();
  v40 = v20;
  v41 = v19;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0577F8, &qword_2232041E8);
  OUTLINED_FUNCTION_9();
  v38 = v25;
  v39 = v24;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v38 - v27;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057800, &qword_2232041F0);
  OUTLINED_FUNCTION_9();
  v30 = v29;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v38 - v32;
  v34 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D75BC();
  sub_2232007A4();
  switch(v34)
  {
    case 1:
      v55[1] = 1;
      sub_2230FE720();
      v34 = v54;
      sub_2232005B4();
      (*(v40 + 8))(v23, v41);
      return (*(v30 + 8))(v33, v34);
    case 2:
      v56 = 2;
      sub_2230FE6CC();
      v28 = v42;
      OUTLINED_FUNCTION_1_3(&type metadata for AttendingStopReason.TimeoutCodingKeys, &v56);
      v36 = v43;
      v35 = v44;
      goto LABEL_8;
    case 3:
      v57 = 3;
      sub_2230D7008();
      v28 = v45;
      OUTLINED_FUNCTION_1_3(&type metadata for AttendingStopReason.SrdSessionTimeoutCodingKeys, &v57);
      v36 = v46;
      v35 = v47;
      goto LABEL_8;
    case 4:
      v58 = 4;
      sub_2230FE678();
      v28 = v48;
      OUTLINED_FUNCTION_1_3(&type metadata for AttendingStopReason.SpeechErrorCodingKeys, &v58);
      v36 = v49;
      v35 = v50;
      goto LABEL_8;
    case 5:
      v59 = 5;
      sub_2230FE624();
      v28 = v51;
      OUTLINED_FUNCTION_1_3(&type metadata for AttendingStopReason.UiProcessCrashedCodingKeys, &v59);
      v36 = v52;
      v35 = v53;
      goto LABEL_8;
    default:
      v55[0] = 0;
      sub_2230FE774();
      OUTLINED_FUNCTION_1_3(&type metadata for AttendingStopReason.NotSetCodingKeys, v55);
      v36 = v38;
      v35 = v39;
LABEL_8:
      (*(v36 + 8))(v28, v35);
      return (*(v30 + 8))(v33, v34);
  }
}

unint64_t sub_2230D7008()
{
  result = qword_280FCA880;
  if (!qword_280FCA880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA880);
  }

  return result;
}

unint64_t sub_2230D7064(char a1)
{
  result = 0x746553746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x74696E4972657375;
      break;
    case 2:
      result = 0x74756F656D6974;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x7245686365657073;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenAIPartner(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return type metadata accessor for FinalTRPStateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return sub_223200504();
}

uint64_t OUTLINED_FUNCTION_5_14()
{

  return type metadata accessor for IntermediateTRPStateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_21()
{
  v3 = *(v1 - 136);

  return sub_2230D94DC(v0, v3);
}

uint64_t OUTLINED_FUNCTION_5_22()
{

  return sub_223200494();
}

uint64_t OUTLINED_FUNCTION_5_25(uint64_t a1, uint64_t a2)
{

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_5_26()
{

  return type metadata accessor for SiriXToolInvokedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_27()
{

  return type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_28()
{

  return type metadata accessor for StartIFRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_30()
{

  return type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_32()
{

  return type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0);
}

uint64_t sub_2230D7548(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O(uint64_t a1)
{
  if (((*(a1 + 40) >> 60) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 40) >> 60) & 7;
  }
}

unint64_t sub_2230D75BC()
{
  result = qword_280FCA8F8;
  if (!qword_280FCA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA8F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StopAttendingRequestedMessage.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2230D76ACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2230D7754()
{
  result = qword_280FCE6A0;
  if (!qword_280FCE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE6A0);
  }

  return result;
}

uint64_t sub_2230D77A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059940, &unk_223214790);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DCF70();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    sub_2230D46B0(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

_BYTE *sub_2230D78F8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2230D7994);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t NLRoutingDecisionMessage.SiriXQueryRewrite.Builder.rewrittenUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_2230D79F0(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 40) = *(result + 40) & 0x8000000000000001 | (a2 << 60);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 40) = 0x4000000000000000;
    *(result + 64) = 0;
  }

  return result;
}

double NLRoutingDecisionMessage.SiriXQueryRewrite.init(build:)()
{
  v1 = OUTLINED_FUNCTION_74();
  v18 = 1;
  v2(&v15, v1);
  v3 = v16;
  if (v16)
  {
    v4 = v18;
    v5 = v17;
    *v0 = v15;
    *(v0 + 8) = v3;
    *(v0 + 16) = v5;
    *(v0 + 32) = v4;
  }

  else
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v6 = sub_223200014();
    __swift_project_value_buffer(v6, qword_280FCE830);
    v7 = sub_223200004();
    v8 = sub_223200254();
    if (OUTLINED_FUNCTION_61(v8))
    {
      *OUTLINED_FUNCTION_72() = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_51_0();
    }

    *(v0 + 32) = 0;
    *&v5 = 0;
    *v0 = 0u;
    *(v0 + 16) = 0u;
  }

  return *&v5;
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void *sub_2230D7B94(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2230D7BB4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2230D7C34(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_2230D7C48()
{
  result = qword_280FCAC98;
  if (!qword_280FCAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAC98);
  }

  return result;
}

void OUTLINED_FUNCTION_45_1()
{

  JUMPOUT(0x223DD5AA0);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return sub_2231FFEC4();
}

_BYTE *sub_2230D7D50(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2230D7DECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return type metadata accessor for RequestContextData.Builder(0);
}

void AjaxRewrite.init(build:)(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  v12 = 0;
  v13 = 0;
  a1(&v12);
  v3 = v13;
  if (v13)
  {
    *a2 = v12;
    a2[1] = v3;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v4 = sub_223200014();
    __swift_project_value_buffer(v4, qword_280FCE830);
    v5 = sub_223200004();
    v6 = sub_223200254();
    if (OUTLINED_FUNCTION_61(v6))
    {
      v7 = OUTLINED_FUNCTION_72();
      *v7 = 0;
      OUTLINED_FUNCTION_62_0();
      _os_log_impl(v8, v9, v10, v11, v7, 2u);
      OUTLINED_FUNCTION_14();
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t AjaxRewrite.Builder.rewrittenUtterance.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AjaxMetadata.Builder.queryType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2230D7BB4(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_2230D8030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_2230D8084(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_47(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_45_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230D8140);
      case 4:
        result = OUTLINED_FUNCTION_46_1(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_68(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes9QueryTypeOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes12AjaxMetadataV0D5QueryOSg(uint64_t a1)
{
  if ((*(a1 + 16) >> 1) > 0x80000000)
  {
    return -(*(a1 + 16) >> 1);
  }

  else
  {
    return 0;
  }
}

__n128 AjaxMetadata.AjaxQuery.ImplicitQuery.init(_:)@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *a2 = v4;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a2 + 16) = v4.n128_u8[0];
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  result = v4;
  *(a2 + 24) = v4;
  return result;
}

unint64_t sub_2230D827C()
{
  result = qword_280FCACA0;
  if (!qword_280FCACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCACA0);
  }

  return result;
}

uint64_t AjaxMetadata.AjaxQuery.ExplicitQuery.init(_:)@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *a2 = v4;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a2 + 16) = v4;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a2 + 24) = v4;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a2 + 40) = v4;
  return result;
}

uint64_t sub_2230D83C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void AjaxMetadata.init(build:)(uint64_t (*a1)(char *)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v35[0] = 4;
  v36 = xmmword_223211C20;
  v37 = 0;
  v38 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0x1FFFFFFFELL;
  v42 = 0;
  a1(v35);
  v6 = v35[0];
  if (v35[0] == 4)
  {
    OUTLINED_FUNCTION_43_1();
    sub_2230D8168(v34);
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v7 = sub_223200014();
    __swift_project_value_buffer(v7, qword_280FCE830);
    v8 = sub_223200004();
    v9 = sub_223200254();
    if (!OUTLINED_FUNCTION_61(v9))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = v39;
  if (v39 >> 1 == 0xFFFFFFFF)
  {
    v17 = *(&v36 + 1);
    v16 = v36;
    OUTLINED_FUNCTION_43_1();
    sub_2230D7C34(v16, v17);
    v18 = sub_2230D8168(v34);
    if (v17)
    {
      if (v17 == 1)
      {
        if (qword_280FCA778 != -1)
        {
          OUTLINED_FUNCTION_1_0(&qword_280FCA778);
        }

        v19 = sub_223200014();
        __swift_project_value_buffer(v19, qword_280FCE830);
        v8 = sub_223200004();
        v20 = sub_223200254();
        if (!OUTLINED_FUNCTION_61(v20))
        {
          goto LABEL_6;
        }

LABEL_5:
        v10 = OUTLINED_FUNCTION_72();
        *v10 = 0;
        OUTLINED_FUNCTION_62_0();
        _os_log_impl(v11, v12, v13, v14, v10, 2u);
        OUTLINED_FUNCTION_14();
LABEL_6:

        *a3 = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0x1FFFFFFFELL;
        *(a3 + 48) = 0;
        *(a3 + 56) = 0;
        *(a3 + 64) = 0;
        return;
      }

      MEMORY[0x28223BE20](v18);
      a2 = v30;
      v30[2] = v16;
      v30[3] = v17;
      v3 = sub_2230D827C();

      OUTLINED_FUNCTION_67(sub_2230D7FE4);
      sub_2230D7BB4(v16, v17);
      OUTLINED_FUNCTION_41_0();
      v21 = v31;
      v22 = v32;
      v23 = v33;
      v15 = *(v29 - 256) | 0x8000000000000000;
    }

    else
    {
      sub_2230D7C48();
      v27 = OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_49_1(v27);
      v23 = 0;
      OUTLINED_FUNCTION_41_0();
      v15 = *(v28 - 256);
      v21 = v31;
      v22 = v32;
    }
  }

  else
  {
    a2 = v37;
    v3 = v38;
    v21 = v40;
    v22 = v41;
    v23 = v42;
    v17 = *(&v36 + 1);
    v16 = v36;
    OUTLINED_FUNCTION_43_1();
    OUTLINED_FUNCTION_20();
    sub_223179434(v24, v25, v26);
    sub_2230D7C34(v16, v17);
    sub_2230D8168(v34);
    if (v17 == 1)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        if (v3)
        {
          v16 = a2;
        }

        else
        {
          v16 = 0;
        }

        if (v3)
        {
          v17 = v3;
        }

        else
        {
          v17 = 0xE000000000000000;
        }
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }
    }
  }

  *a3 = v6;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = a2;
  *(a3 + 32) = v3;
  *(a3 + 40) = v15;
  *(a3 + 48) = v21;
  *(a3 + 56) = v22;
  *(a3 + 64) = v23;
}

uint64_t sub_2230D871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();

  return sub_2231FFED4();
}

_BYTE *storeEnumTagSinglePayload for GenAIPartner(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230D8850);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2230D8878()
{
  result = qword_280FCB568;
  if (!qword_280FCB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB568);
  }

  return result;
}

unint64_t sub_2230D88D0()
{
  result = qword_280FCB0F0[0];
  if (!qword_280FCB0F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FCB0F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionMessageBase.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2230D89C8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceNotificationHandlingStateUpdatedMessage.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t sub_2230D8A5C(char a1)
{
  result = 0x496567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x6E4F646574736F70;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0x6E61747369737361;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2230D8B04()
{
  result = qword_280FCB0B8;
  if (!qword_280FCB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB0B8);
  }

  return result;
}

unint64_t sub_2230D8B58@<X0>(unint64_t *a1@<X8>)
{
  result = MessageSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2230D8BD0()
{
  result = qword_280FCB0B0;
  if (!qword_280FCB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB0B0);
  }

  return result;
}

unint64_t MessageSource.rawValue.getter()
{
  result = 7500641;
  switch(*v0)
  {
    case 1:
      result = 7892078;
      break;
    case 2:
      result = 0x6F69747563657865;
      break;
    case 3:
      result = 0x6E61747369737361;
      break;
    case 4:
      result = 0x73656D6D6F70;
      break;
    case 5:
      result = 6447986;
      break;
    case 6:
      result = 0x6C66726574747562;
      break;
    case 7:
      result = 7894381;
      break;
    case 8:
      result = 26997;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0x776F6C466669;
      break;
    case 0xB:
      result = 0x726574756F526C6ELL;
      break;
    case 0xC:
      result = 7171180;
      break;
    case 0xD:
      result = 0x65727574736567;
      break;
    case 0xE:
      result = 6582899;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2230D8DA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_223200134();
    v3 = sub_223200164();

    return v3;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230D8F34);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2230D8F5C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0586F8, &qword_22320B9E8);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D88D0();
  sub_2232007A4();
  v14[15] = 0;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_1_15();
  sub_2230D462C(v11, v12, MEMORY[0x277CC95F8]);
  OUTLINED_FUNCTION_6_10();
  sub_223200654();
  if (!v2)
  {
    v14[14] = 1;
    OUTLINED_FUNCTION_6_10();
    sub_223200604();
    v14[13] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_source);
    v14[12] = 2;
    sub_2230D8B04();
    OUTLINED_FUNCTION_6_10();
    sub_223200654();
    v14[11] = 3;
    OUTLINED_FUNCTION_6_10();
    sub_2232005F4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return type metadata accessor for ActiveUserSessionDetectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return type metadata accessor for ExecutionFinalizedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return type metadata accessor for FallbackToIFRequestedMessage.Builder(0);
}

void OUTLINED_FUNCTION_7_9(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];

  sub_223129F10(v2, v3, v4, v5, v6, v7, v8, v9);
}

void OUTLINED_FUNCTION_7_12()
{
  *(v2 - 104) = v1;
  *(v2 - 96) = v0;

  JUMPOUT(0x223DD5AA0);
}

uint64_t OUTLINED_FUNCTION_7_13(uint64_t a1, uint64_t a2)
{

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return type metadata accessor for MUXFlowOutputCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return type metadata accessor for MUXNLTRPCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_21()
{

  return type metadata accessor for ResumeDictationRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_24()
{

  return type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_29()
{

  return type metadata accessor for SpeechStopDetectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_31()
{

  return type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_32()
{

  return type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_34()
{

  return type metadata accessor for TRPDetectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_35()
{

  return type metadata accessor for TRPFinalizedMessage.Builder(0);
}

uint64_t sub_2230D94DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void sub_2230D954C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
  }
}

uint64_t sub_2230D9594@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2230D95C0(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2230D95E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 33))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t static InputOrigin.from(aceInputOrigin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  v9 = v9 && v8 == a2;
  if (v9)
  {
    v11 = 0;
LABEL_13:

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_0_7(v7);
  result = OUTLINED_FUNCTION_2_14();
  v11 = 0;
  if (v3)
  {
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v13 == a2)
  {
    v11 = 1;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v12);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 1;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v16 == a2)
  {
    v11 = 2;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v15);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 2;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v19 == a2)
  {
    v11 = 3;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v18);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 3;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v22 == a2)
  {
    v11 = 4;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v21);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 4;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v25 == a2)
  {
    v11 = 5;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v24);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 5;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v28 == a2)
  {
    v11 = 6;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v27);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 6;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v31 == a2)
  {
    v11 = 7;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v30);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 7;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v34 == a2)
  {
    v11 = 8;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v33);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 8;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v37 == a2)
  {
    v11 = 9;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v36);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 9;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v40 == a2)
  {
    v11 = 10;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v39);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 10;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v43 == a2)
  {
    v11 = 11;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v42);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 11;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v46 == a2)
  {
    v11 = 12;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v45);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 12;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v49 == a2)
  {
    v11 = 13;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v48);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 13;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v52 == a2)
  {
    v11 = 14;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v51);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 14;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v55 == a2)
  {
    v11 = 15;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v54);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 15;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v58 == a2)
  {
    v11 = 16;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v57);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 16;
    goto LABEL_14;
  }

  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v61 == a2)
  {
    v11 = 17;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7(v60);
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 17;
    goto LABEL_14;
  }

  v63 = sub_2232000C4();
  v11 = 18;
  if (v63 == a1 && v64 == a2)
  {
    goto LABEL_13;
  }

  v66 = OUTLINED_FUNCTION_0_7(v63);

  if (v66)
  {
    v11 = 18;
  }

  else
  {
    v11 = 19;
  }

LABEL_14:
  *a3 = v11;
  return result;
}

uint64_t getEnumTagSinglePayload for InputOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2230D9C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void UserSessionState.activeUserAccessLevel.getter(char *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (v3)
  {
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_12_18();
      sub_2230D9D28(v6, v7, v8, v9);
      OUTLINED_FUNCTION_4_0();
      v10 = 0;
    }

    else
    {
      v10 = v5 & 1;
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_9_32();
    sub_2230D954C(v11, v12, v13, v4);
    v14 = OUTLINED_FUNCTION_9_32();
    sub_2230D9D28(v14, v15, v16, v4);
    OUTLINED_FUNCTION_4_0();
    v10 = 2;
  }

  *a1 = v10;
}

void sub_2230D9D28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
  }
}

id StartRootLocalRequestMessage.init(build:)(uint64_t (*a1)(char *))
{
  ObjectType = swift_getObjectType();
  started = type metadata accessor for StartRootLocalRequestMessage.Builder(0);
  v5 = (started - 8);
  MEMORY[0x28223BE20](started);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 15;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = v5[8];
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[v5[9]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = v5[10];
  v7[v11] = 19;
  v12 = v5[11];
  *&v7[v12] = 0;
  v13 = a1(v7);
  v14 = v7[v11];
  if (v14 == 19)
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v15 = sub_223200014();
    __swift_project_value_buffer(v15, qword_280FCE830);
    v16 = sub_223200004();
    v17 = sub_223200254();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136446210;
      v20 = sub_2230F7898(ObjectType);
      v22 = sub_2231A5D38(v20, v21, &v28);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2230CE000, v16, v17, "Could not build %{public}s: Builder has missing required fields", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223DD6780](v19, -1, -1);
      MEMORY[0x223DD6780](v18, -1, -1);
    }

    sub_2230DAF60(v7);
    type metadata accessor for StartRootLocalRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_inputOrigin) = v14;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_optionalRequestContextData) = *&v7[v12];
    MEMORY[0x28223BE20](v13);
    *(&v27 - 2) = v7;
    v25 = v24;
    v23 = RequestMessageBase.init(build:)(sub_2230DAF58);
    sub_2230DAF60(v7);
  }

  return v23;
}

uint64_t StartRootLocalRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_44() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartRootLocalRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRootLocalRequestMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for InputOrigin(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230DA1B0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

uint64_t StartRootLocalRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartRootLocalRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DirectActionResultCandidateMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

id RequestContextData.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v7 = sub_2230DA67C(a1, &selRef_audioSource);
  v8 = &v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioSource];
  *v8 = v7;
  v8[1] = v9;
  v10 = sub_2230DA67C(a1, &selRef_audioDestination);
  v11 = &v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioDestination];
  *v11 = v10;
  v11[1] = v12;
  v13 = sub_2230DA67C(a1, &selRef_responseMode);
  v14 = &v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode];
  *v14 = v13;
  v14[1] = v15;
  v16 = [a1 isEyesFree];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isEyesFree] = v16;
  v17 = [a1 isVoiceTriggerEnabled];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isVoiceTriggerEnabled] = v17;
  v18 = [a1 isTextToSpeechEnabled];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTextToSpeechEnabled] = v18;
  v19 = [a1 isTriggerlessFollowup];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTriggerlessFollowup] = v19;
  v20 = [a1 bargeInModes];
  v21 = sub_2232001D4();

  *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_bargeInModes] = v21;
  v22 = [a1 approximatePreviousTTSInterval];
  if (v22)
  {
    v23 = v22;
    sub_2231FFCB4();

    v24 = sub_2231FFCC4();
    v25 = 0;
  }

  else
  {
    v24 = sub_2231FFCC4();
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v25, 1, v24);
  sub_2230DA700(v6, &v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval]);
  v26 = [a1 deviceRestrictions];
  v27 = sub_2232001D4();

  *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_deviceRestrictions] = v27;
  *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo] = sub_2230DA778(a1);
  v28 = [a1 voiceAudioSessionId];
  *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceAudioSessionId] = v28;
  v29 = [a1 isSystemApertureEnabled];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isSystemApertureEnabled] = v29;
  v30 = [a1 isLiveActivitiesSupported];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isLiveActivitiesSupported] = v30;
  v31 = [a1 isInAmbient];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isInAmbient] = v31;
  *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo] = 0;
  v32 = [a1 isDeviceShowingLockScreen];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceShowingLockScreen] = v32;
  v33 = [a1 isDeviceLocked];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceLocked] = v33;
  v34 = [a1 userProfileMetadata];
  *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_userProfileMetadata] = v34;
  v35 = [a1 activationTime];
  v36 = &v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime];
  *v36 = v35;
  v36[8] = 0;
  v37 = [a1 suggestionRequestType];
  v38 = &v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType];
  *v38 = v37;
  v38[8] = 0;
  v39 = type metadata accessor for RequestContextData(0);
  v42.receiver = v1;
  v42.super_class = v39;
  v40 = objc_msgSendSuper2(&v42, sel_init);

  return v40;
}

uint64_t sub_2230DA67C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_2232000C4();
  }

  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2230DA700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230DA778(void *a1)
{
  v1 = [a1 voiceTriggerEventInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_223200044();

  return v3;
}

void StartRootLocalRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_44() + 36);

  *(v1 + v2) = v0;
}

id RequestMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v59 = v1;
  ObjectType = swift_getObjectType();
  v3 = sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v55 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54 - v10;
  v12 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v57 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v56 = v16 - v15;
  v17 = type metadata accessor for RequestMessageBase.Builder(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v21 = (v20 - v19);
  *v21 = 15;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  v22 = *(v18 + 32);
  __swift_storeEnumTagSinglePayload(v20 - v19 + v22, 1, 1, v12);
  v23 = &v21[*(v18 + 36)];
  *v23 = 0;
  v23[1] = 0;
  a1(v21);
  v24 = *v21;
  if (v24 == 15)
  {
    goto LABEL_13;
  }

  v25 = *(v21 + 2);
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = *(v21 + 1);
  sub_2230D1480(&v21[v22], v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2230D69D4(v11);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v39 = sub_223200014();
    __swift_project_value_buffer(v39, qword_280FCE830);
    v40 = sub_223200004();
    v41 = sub_223200254();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v60[0] = v43;
      *v42 = 136446210;
      v44 = sub_2230F7898(ObjectType);
      v46 = sub_2231A5D38(v44, v45, v60);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_2230CE000, v40, v41, "Could not build %{public}s: Builder has missing required fields", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x223DD6780](v43, -1, -1);
      MEMORY[0x223DD6780](v42, -1, -1);
    }

    sub_2230D642C(v21);
LABEL_18:
    type metadata accessor for RequestMessageBase(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v54 = v26;
  v28 = v56;
  v27 = v57;
  (*(v57 + 32))(v56, v11, v12);
  v29 = v23[1];
  if (!v29)
  {
    (*(v27 + 8))(v28, v12);
    goto LABEL_13;
  }

  v60[0] = *v23;
  v60[1] = v29;
  sub_2231FFC74();
  sub_2230D1D30();
  v30 = sub_2232002E4();
  v32 = v31;
  v33 = (*(v55 + 8))(v8, v3);
  v34 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v34 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v48 = sub_223200014();
    __swift_project_value_buffer(v48, qword_280FCE830);
    v49 = sub_223200004();
    v50 = sub_223200254();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v57;
    if (v51)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2230CE000, v49, v50, "requestId is empty, can't create message", v53, 2u);
      MEMORY[0x223DD6780](v53, -1, -1);
    }

    sub_2230D642C(v21);
    (*(v52 + 8))(v56, v12);
    goto LABEL_18;
  }

  v35 = (v59 + OBJC_IVAR____TtC16SiriMessageTypes18RequestMessageBase_requestId);
  *v35 = v30;
  v35[1] = v32;
  MEMORY[0x28223BE20](v33);
  *(&v54 - 32) = v24;
  *(&v54 - 3) = v54;
  *(&v54 - 2) = v25;
  v36 = v56;
  *(&v54 - 1) = v56;
  v37 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v38 = v37;
  sub_2230D642C(v21);
  if (v37)
  {
  }

  (*(v57 + 8))(v36, v12);
  return v37;
}

uint64_t sub_2230DAE18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartRootLocalRequestMessage.Builder(0);
  v7 = *(started + 24);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(started + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

uint64_t sub_2230DAEC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230DAF60(uint64_t a1)
{
  started = type metadata accessor for StartRootLocalRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2230DB0BC()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RequestMessageBase(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0x65757165723C202CLL, 0xEE00203A64497473);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes18RequestMessageBase_requestId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes18RequestMessageBase_requestId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t sub_2230DB1A4(void *a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A798, &unk_22321C5B8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DB430();
  sub_2232007A4();
  LOBYTE(v23[0]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_inputOrigin);
  v22 = 0;
  sub_2230DB484();
  OUTLINED_FUNCTION_4_38();
  if (!v2)
  {
    v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_optionalRequestContextData);
    if (!v10)
    {
LABEL_6:
      sub_2230D77A8(a1);
      return (*(v6 + 8))(v9, v4);
    }

    v11 = objc_opt_self();
    v23[0] = 0;
    v12 = v10;
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v23];
    v14 = v23[0];
    if (v13)
    {
      v21 = v12;
      v15 = sub_2231FFD24();
      v17 = v16;

      v23[0] = v15;
      v23[1] = v17;
      v22 = 1;
      sub_2230D7754();
      OUTLINED_FUNCTION_4_38();

      sub_2230D94DC(v15, v17);
      goto LABEL_6;
    }

    v18 = v14;
    sub_2231FFD04();

    swift_willThrow();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_2230DB430()
{
  result = qword_27D05A790;
  if (!qword_27D05A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A790);
  }

  return result;
}

unint64_t sub_2230DB484()
{
  result = qword_280FCACD0;
  if (!qword_280FCACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCACD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartRootLocalRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230DB5A4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_2230DB5E8()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  OUTLINED_FUNCTION_9_13(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v7 = v61 - v6;
  v8 = sub_2231FFCC4();
  OUTLINED_FUNCTION_9();
  v61[0] = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v13 = (v12 - v11);
  v14 = sub_2232000A4();
  OUTLINED_FUNCTION_9_21();

  v15 = OUTLINED_FUNCTION_4_27();
  OUTLINED_FUNCTION_9_21();

  v16 = OUTLINED_FUNCTION_4_27();
  OUTLINED_FUNCTION_9_21();

  v17 = OUTLINED_FUNCTION_4_27();
  OUTLINED_FUNCTION_9_21();

  v18 = sub_2232001C4();
  v19 = sub_2232000A4();
  v20 = OUTLINED_FUNCTION_8_15();
  [v20 v21];

  v22 = sub_2232001C4();
  v23 = sub_2232000A4();
  v24 = OUTLINED_FUNCTION_8_15();
  [v24 v25];

  v26 = sub_223200774();
  v61[1] = 0xD000000000000013;
  v27 = sub_2232000A4();
  OUTLINED_FUNCTION_2_28(v27);

  v28 = sub_2232000A4();
  OUTLINED_FUNCTION_31_2(v28);

  v29 = sub_2232000A4();
  OUTLINED_FUNCTION_31_2(v29);

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioSource + 8))
  {
    v30 = sub_2232000A4();
    v31 = sub_2232000A4();
    OUTLINED_FUNCTION_2_28(v31);
  }

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioDestination + 8))
  {
    v32 = sub_2232000A4();
    OUTLINED_FUNCTION_12_11();
    v33 = sub_2232000A4();
    OUTLINED_FUNCTION_2_28(v33);
  }

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode + 8))
  {
    v34 = sub_2232000A4();
    v35 = sub_2232000A4();
    OUTLINED_FUNCTION_2_28(v35);
  }

  sub_2230D3100(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval, v7, &qword_27D059858, &qword_223214370);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2230D40E0(v7, &qword_27D059858, &qword_223214370);
  }

  else
  {
    v36 = v61[0];
    (*(v61[0] + 32))(v13, v7, v8);
    v37 = sub_2231FFCA4();
    OUTLINED_FUNCTION_12_11();
    v38 = sub_2232000A4();
    v39 = OUTLINED_FUNCTION_8_15();
    [v39 v40];

    (*(v36 + 8))(v13, v8);
  }

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo))
  {
    v13 = sub_223200034();
    v41 = OUTLINED_FUNCTION_4_27();
    v42 = OUTLINED_FUNCTION_8_15();
    [v42 v43];
  }

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isSystemApertureEnabled) != 2)
  {
    OUTLINED_FUNCTION_12_11();
    v44 = sub_2232000A4();
    OUTLINED_FUNCTION_13_9(v44);
  }

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isLiveActivitiesSupported) != 2)
  {
    OUTLINED_FUNCTION_12_11();
    v45 = sub_2232000A4();
    OUTLINED_FUNCTION_13_9(v45);
  }

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isInAmbient) != 2)
  {
    v46 = sub_2232000A4();
    OUTLINED_FUNCTION_13_9(v46);
  }

  v47 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo);
  if (v47)
  {
    v48 = v47;
    v49 = sub_2232000A4();
    v50 = OUTLINED_FUNCTION_8_15();
    [v50 v51];
  }

  v52 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_userProfileMetadata);
  if (v52)
  {
    v53 = v52;
    v54 = sub_2232000A4();
    v55 = OUTLINED_FUNCTION_8_15();
    [v55 v56];
  }

  if ((*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime + 8) & 1) == 0)
  {
    v57 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime);
    v58 = sub_2232000A4();
    [v3 encodeInt64:v57 forKey:v58];
  }

  if ((*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType + 8) & 1) == 0)
  {
    v59 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType);
    v60 = OUTLINED_FUNCTION_4_27();
    [v3 encodeInteger:v59 forKey:v60];
  }

  OUTLINED_FUNCTION_40();
}

void OUTLINED_FUNCTION_14()
{

  JUMPOUT(0x223DD6780);
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1, uint64_t a2)
{

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_14_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;

  return sub_2231FFFA4();
}

uint64_t OUTLINED_FUNCTION_14_7(uint64_t a1, uint64_t a2)
{

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_14_10(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_14_14()
{

  JUMPOUT(0x223DD5AA0);
}

unint64_t sub_2230DBEFC()
{
  result = qword_280FCACC8;
  if (!qword_280FCACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCACC8);
  }

  return result;
}

uint64_t sub_2230DBF50@<X0>(uint64_t *a1@<X8>)
{
  result = InputOrigin.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t InputOrigin.rawValue.getter()
{
  result = 0x6547746E65696C63;
  switch(*v0)
  {
    case 1:
      return 0xD000000000000012;
    case 2:
      return 0xD000000000000011;
    case 3:
      return 0xD000000000000012;
    case 5:
      return result;
    case 6:
      v2 = 0x676F6C616964;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
    case 7:
      return 0x74747542656D6F68;
    case 8:
      v3 = 0x6E6F69746F6DLL;
      goto LABEL_21;
    case 9:
      return 0x716552726F697270;
    case 0xA:
      return 0x536F546573696172;
    case 0xB:
      return 0x704165746F6D6572;
    case 0xC:
      v2 = 0x65746F6D6572;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
    case 0xD:
      v3 = 0x726576726573;
LABEL_21:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
      break;
    case 0xE:
      result = 0x6665526F54706174;
      break;
    case 0xF:
      result = 0xD000000000000013;
      break;
    case 0x10:
      result = 0x6972546563696F76;
      break;
    case 0x11:
      result = 0x6C6F46737567616DLL;
      break;
    case 0x12:
      result = 0x54676E6974697277;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_2230DC224(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x69724F7475706E69;
  }
}

uint64_t OUTLINED_FUNCTION_72()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_27_2()
{
  v2 = *(v1 - 160);
  *(v1 - 128) = *(v1 - 168);
  *(v1 - 120) = v2;
  *(v1 - 112) = v0 & 1;
  v3 = *(v1 - 144);
  *(v1 - 104) = *(v1 - 152);
  *(v1 - 96) = v3;
}

void OUTLINED_FUNCTION_27_3(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *(v2 - 128) = v4;
  *(v2 - 120) = v3;
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_223200124();
}

_BYTE *storeEnumTagSinglePayload for RequestType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230DC4A0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2230DC4C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioRecordType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230DC5F0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void RequestContextData.init(build:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v55 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for RequestContextData.Builder(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v7 = v6 - v5;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = 0u;
  *(v7 + 48) = 33686018;
  *(v7 + 56) = 0;
  v8 = v4[14];
  v9 = sub_2231FFCC4();
  v49 = v8;
  __swift_storeEnumTagSinglePayload(v7 + v8, 1, 1, v9);
  v10 = v4[15];
  *(v7 + v10) = 0;
  v45 = v4[16];
  *(v7 + v45) = 0;
  v11 = v7 + v4[17];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v4[18];
  *(v7 + v12) = 2;
  v46 = v4[19];
  *(v7 + v46) = 2;
  v47 = v4[20];
  *(v7 + v47) = 2;
  v48 = v4[21];
  *(v7 + v48) = 0;
  v50 = v4[22];
  *(v7 + v50) = 2;
  v13 = v4[23];
  *(v7 + v13) = 2;
  v51 = v13;
  v52 = v4[24];
  *(v7 + v52) = 0;
  v14 = v7 + v4[25];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v7 + v4[26];
  *v15 = 0;
  *(v15 + 8) = 1;
  v2(v7);
  v16 = *(v7 + 48);
  if (v16 == 2 || (v17 = *(v7 + 49), v17 == 2) || (v18 = *(v7 + 50), v18 == 2) || (v19 = *(v7 + 51), v19 == 2) || (v20 = *(v7 + 56)) == 0 || (v21 = *(v7 + v10)) == 0 || (*(v11 + 4) & 1) != 0)
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v22 = sub_223200014();
    __swift_project_value_buffer(v22, qword_280FCE830);
    v23 = sub_223200004();
    v24 = sub_223200254();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v57 = v26;
      *v25 = 136446210;
      v27 = sub_2230F7898(ObjectType);
      v29 = sub_2231A5D38(v27, v28, &v57);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2230CE000, v23, v24, "Could not build %{public}s: Builder has missing required fields", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x223DD6780](v26, -1, -1);
      MEMORY[0x223DD6780](v25, -1, -1);
    }

    sub_2230DD08C(v7);
    type metadata accessor for RequestContextData(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v54 = *(v7 + 8);
    v30 = &v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioSource];
    *v30 = *v7;
    v30[1] = v54;
    v44 = *(v7 + 24);
    v31 = &v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioDestination];
    *v31 = *(v7 + 16);
    v31[1] = v44;
    v43 = *(v7 + 40);
    v32 = &v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode];
    *v32 = *(v7 + 32);
    v32[1] = v43;
    v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isEyesFree] = v16 & 1;
    v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isVoiceTriggerEnabled] = v17 & 1;
    v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTextToSpeechEnabled] = v18 & 1;
    v33 = *v11;
    v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTriggerlessFollowup] = v19 & 1;
    *&v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_bargeInModes] = v20;
    sub_2230D3100(v7 + v49, &v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval], &qword_27D059858, &qword_223214370);
    *&v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_deviceRestrictions] = v21;
    *&v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo] = *(v7 + v45);
    *&v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceAudioSessionId] = v33;
    v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isSystemApertureEnabled] = *(v7 + v12);
    v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isLiveActivitiesSupported] = *(v7 + v46);
    v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isInAmbient] = *(v7 + v47);
    v34 = *(v7 + v48);
    *&v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo] = v34;
    v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceShowingLockScreen] = *(v7 + v50) & 1;
    v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceLocked] = *(v7 + v51) & 1;
    v35 = *(v7 + v52);
    *&v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_userProfileMetadata] = v35;
    v36 = *(v14 + 8);
    v37 = &v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime];
    *v37 = *v14;
    v37[8] = v36;
    v38 = *v15;
    v39 = *(v15 + 8);
    v40 = v35;

    v41 = v34;
    sub_2230DD08C(v7);
    v42 = &v55[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType];
    *v42 = v38;
    v42[8] = v39;
    v56.receiver = v55;
    v56.super_class = type metadata accessor for RequestContextData(0);
    objc_msgSendSuper2(&v56, sel_init);
  }

  OUTLINED_FUNCTION_40();
}

uint64_t OUTLINED_FUNCTION_40_0()
{
  v3 = *(v1 - 128);

  return sub_22310A610(v3, v0);
}

void sub_2230DCBD0(uint64_t a1@<X8>)
{
  sub_2230DCE48(a1);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioSource);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioSource + 8);

  *a1 = v4;
  *(a1 + 8) = v3;
  v6 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioDestination);
  v5 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioDestination + 8);

  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  v8 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode);
  v7 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode + 8);

  *(a1 + 32) = v8;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isEyesFree);
  v9 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTextToSpeechEnabled);
  *(a1 + 49) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isVoiceTriggerEnabled);
  *(a1 + 50) = v9;
  *(a1 + 51) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTriggerlessFollowup);
  v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_bargeInModes);

  *(a1 + 56) = v10;
  v11 = OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval;
  v12 = type metadata accessor for RequestContextData.Builder(0);
  sub_2230DCFC4(v1 + v11, a1 + v12[12]);
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_deviceRestrictions);
  v14 = v12[13];

  *(a1 + v14) = v13;
  v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo);
  v16 = v12[14];

  *(a1 + v16) = v15;
  v17 = a1 + v12[15];
  *v17 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceAudioSessionId);
  v18 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isSystemApertureEnabled);
  *(v17 + 4) = 0;
  *(a1 + v12[16]) = v18;
  *(a1 + v12[18]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isInAmbient);
  v19 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo);
  v20 = v12[19];
  v21 = *(a1 + v20);
  v22 = v19;

  *(a1 + v20) = v19;
  *(a1 + v12[20]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceShowingLockScreen);
  *(a1 + v12[21]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceLocked);
  v23 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_userProfileMetadata);
  v24 = v12[22];
  v25 = *(a1 + v24);
  v26 = v23;

  *(a1 + v24) = v23;
  v27 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime + 8);
  v28 = a1 + v12[23];
  *v28 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime);
  *(v28 + 8) = v27;
  v29 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType + 8);
  v30 = a1 + v12[24];
  *v30 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType);
  *(v30 + 8) = v29;
}

uint64_t sub_2230DCE48@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 33686018;
  *(a1 + 56) = 0;
  v2 = type metadata accessor for RequestContextData.Builder(0);
  v3 = v2[12];
  v4 = sub_2231FFCC4();
  result = __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  *(a1 + v2[13]) = 0;
  *(a1 + v2[14]) = 0;
  v6 = a1 + v2[15];
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a1 + v2[16]) = 2;
  *(a1 + v2[17]) = 2;
  *(a1 + v2[18]) = 2;
  *(a1 + v2[19]) = 0;
  *(a1 + v2[20]) = 2;
  *(a1 + v2[21]) = 2;
  *(a1 + v2[22]) = 0;
  v7 = a1 + v2[23];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v2[24];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

unint64_t sub_2230DCF70()
{
  result = qword_280FCB628;
  if (!qword_280FCB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB628);
  }

  return result;
}

uint64_t sub_2230DCFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void RequestContextData.Builder.conjunctionInfo.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_1() + 76);

  *(v1 + v2) = v0;
}

uint64_t sub_2230DD08C(uint64_t a1)
{
  v2 = type metadata accessor for RequestContextData.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t storeEnumTagSinglePayload for RequestSummary.ExecutionSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65410 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65410 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7D)
  {
    v6 = ((a2 - 126) >> 16) + 1;
    *result = a2 - 126;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230DD1C0);
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = (((-a2 >> 2) & 0x1F) - 32 * a2) << 9;
        }

        break;
    }
  }

  return result;
}

id StartChildLocalRequestMessage.init(build:)(void (*a1)(char *))
{
  ObjectType = swift_getObjectType();
  started = type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  v5 = (started - 8);
  MEMORY[0x28223BE20](started);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 15;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = v5[8];
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[v5[9]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v7[v5[10]] = 19;
  *&v7[v5[11]] = 0;
  v11 = &v7[v5[12]];
  *v11 = 0;
  *(v11 + 1) = 0;
  a1(v7);
  v12 = *(v11 + 1);
  if (v12)
  {
    v13 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartChildLocalRequestMessage_rootRequestId);
    *v13 = *v11;
    v13[1] = v12;
    MEMORY[0x28223BE20](v12);
    *(&v24 - 2) = v7;

    v14 = StartRequestMessageBase.init(build:)(sub_2230DDD30);
    sub_2230DDE9C(v7);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v15 = sub_223200014();
    __swift_project_value_buffer(v15, qword_280FCE830);
    v16 = sub_223200004();
    v17 = sub_223200254();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136446210;
      v20 = sub_2230F7898(ObjectType);
      v22 = sub_2231A5D38(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2230CE000, v16, v17, "Could not build %{public}s: Builder has missing required fields", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223DD6780](v19, -1, -1);
      MEMORY[0x223DD6780](v18, -1, -1);
    }

    sub_2230DDE9C(v7);
    type metadata accessor for StartChildLocalRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v14;
}

uint64_t StartChildLocalRequestMessage.Builder.rootRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildLocalRequestMessage.Builder(0) + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildLocalRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildLocalRequestMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildLocalRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_37() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartChildLocalRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

_BYTE *sub_2230DD610(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230DD6D8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_68(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_63()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_223200744();
}

id StartRequestMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v46 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v44 = v7;
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartRequestMessageBase.Builder(0);
  v11 = (started - 8);
  MEMORY[0x28223BE20](started);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = v11[10];
  v13[v16] = 19;
  v17 = v11[11];
  *&v13[v17] = 0;
  a1(v13);
  v18 = *v13;
  if (v18 == 15)
  {
    goto LABEL_8;
  }

  v19 = *(v13 + 2);
  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D69D4(v5);
LABEL_8:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v25 = sub_223200014();
    __swift_project_value_buffer(v25, qword_280FCE830);
    v26 = sub_223200004();
    v27 = sub_223200254();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136446210;
      v30 = sub_2230F7898(ObjectType);
      v32 = sub_2231A5D38(v30, v31, &v47);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2230CE000, v26, v27, "Could not build %{public}s: Builder has missing required fields", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x223DD6780](v29, -1, -1);
      MEMORY[0x223DD6780](v28, -1, -1);
    }

    sub_2230DDE40(v13);
    type metadata accessor for StartRequestMessageBase(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v42 = v20;
  v22 = v43;
  v21 = v44;
  v23 = (*(v44 + 32))(v43, v5, v6);
  if (!*(v15 + 1) || (v24 = v13[v16], v24 == 19))
  {
    (*(v21 + 8))(v22, v6);
    goto LABEL_8;
  }

  v35 = v22;
  v36 = v46;
  *(v46 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_inputOrigin) = v24;
  *(v36 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_optionalRequestContextData) = *&v13[v17];
  MEMORY[0x28223BE20](v23);
  *(&v42 - 48) = v18;
  *(&v42 - 5) = v42;
  *(&v42 - 4) = v19;
  *(&v42 - 3) = v35;
  *(&v42 - 2) = v37;
  *(&v42 - 1) = v38;
  v40 = v39;
  v33 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v41 = v33;
  sub_2230DDE40(v13);
  if (v33)
  {
  }

  (*(v44 + 8))(v35, v6);
  return v33;
}

void StartChildLocalRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_37() + 36);

  *(v1 + v2) = v0;
}

uint64_t StartChildLocalRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void sub_2230DDC4C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  v7 = started[6];
  v8 = type metadata accessor for StartRequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + v8[6]);
  v9 = (a2 + started[7]);
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + v8[7]);

  *v12 = v11;
  v12[1] = v10;
  *(a1 + v8[8]) = *(a2 + started[8]);
  v13 = *(a2 + started[9]);
  v14 = v8[9];
  v15 = *(a1 + v14);
  v16 = v13;

  *(a1 + v14) = v13;
}

uint64_t sub_2230DDD38(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v13 = type metadata accessor for RequestMessageBase.Builder(0);
  v14 = *(v13 + 24);
  sub_2230D69D4(a1 + v14);
  v15 = sub_2231FFDA4();
  (*(*(v15 - 8) + 16))(a1 + v14, a5, v15);
  __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v15);
  v16 = (a1 + *(v13 + 28));

  *v16 = a6;
  v16[1] = a7;
  return result;
}

uint64_t sub_2230DDE40(uint64_t a1)
{
  started = type metadata accessor for StartRequestMessageBase.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2230DDE9C(uint64_t a1)
{
  started = type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

id RunSiriKitExecutorMessage.init(build:)(void (*a1)(char *))
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for RunSiriKitExecutorMessage.Builder(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 15;
  *(v7 + 5) = 0;
  *(v7 + 6) = 0;
  v8 = *(v5 + 44);
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[*(v5 + 48)];
  *v10 = 0;
  *(v10 + 1) = 0;
  a1(v7);
  v11 = *(v7 + 2);
  if (v11 && (v12 = *(v7 + 3)) != 0)
  {
    v13 = *(v7 + 1);
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_invocationId);
    *v14 = *v7;
    v14[1] = v13;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_command) = v11;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_commandExecutionInfo) = v12;
    MEMORY[0x28223BE20](v13);
    *(&v30 - 2) = v7;

    v15 = v12;
    v16 = v11;
    v17 = v15;
    v18 = v16;
    v19 = RequestMessageBase.init(build:)(sub_2230DE348);
    v20 = v19;

    if (v19)
    {
    }

    sub_2230DE40C(v7);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v21 = sub_223200014();
    __swift_project_value_buffer(v21, qword_280FCE830);
    v22 = sub_223200004();
    v23 = sub_223200254();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136446210;
      v26 = sub_2230F7898(ObjectType);
      v28 = sub_2231A5D38(v26, v27, &v31);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_2230CE000, v22, v23, "Could not build %{public}s: Builder has missing required fields", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x223DD6780](v25, -1, -1);
      MEMORY[0x223DD6780](v24, -1, -1);
    }

    sub_2230DE40C(v7);
    type metadata accessor for RunSiriKitExecutorMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v19;
}

uint64_t RunSiriKitExecutorMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RunSiriKitExecutorMessage.Builder(0) + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t RunSiriKitExecutorMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t RunSiriKitExecutorMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RunSiriKitExecutorMessage.Builder(0) + 36);

  return sub_2230D4E04(a1, v3);
}

uint64_t sub_2230DE350(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 32);
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for RunSiriKitExecutorMessage.Builder(0);
  v7 = *(v6 + 36);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 40));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

uint64_t sub_2230DE40C(uint64_t a1)
{
  v2 = type metadata accessor for RunSiriKitExecutorMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for RequestSummary.ExecutionSource(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7E)
  {
    if (a2 + 65410 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65410 < 0xFF0000)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65411;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 7) & 0x7C | (*a1 >> 14)) ^ 0x7F;
  if (v5 >= 0x7D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes14RequestSummaryV9UserInputO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSg(uint64_t a1)
{
  if ((*(a1 + 40) >> 1) > 0x80000000)
  {
    return -(*(a1 + 40) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2230DE534(uint64_t a1)
{
  sub_223200744();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2230DE5FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_10(v4, v8, v7);
  }

  return v10 & 1;
}

unint64_t RequestType.rawValue.getter()
{
  result = 0x686365657073;
  switch(*v0)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0x6574636572726F63;
      break;
    case 3:
      result = 0x6341746365726964;
      break;
    case 4:
      result = 0x6C61636F6CLL;
      break;
    case 5:
      result = 7565173;
      break;
    case 6:
      result = 0x74786554736F75;
      break;
    case 7:
      result = 0x65746F6D6572;
      break;
    case 8:
      result = 0x6F69746174636964;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 7171180;
      break;
    case 0xC:
      result = 0x65727574736567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2230DE994(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A640, &unk_22321B758);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DEAE4();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    sub_2230DEEE4(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_2230DEAE4()
{
  result = qword_27D05A638;
  if (!qword_27D05A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A638);
  }

  return result;
}

uint64_t sub_2230DEB48(void *a1)
{
  v3 = v1;
  v32 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059FB8, &qword_223217CF0);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DEE58();
  sub_2232007A4();
  if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_invocationId + 8) || (LOBYTE(v30) = 0, sub_2232005F4(), !v2))
  {
    v11 = objc_opt_self();
    v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_command);
    v30 = 0;
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v30];
    v14 = v30;
    if (v13)
    {
      v28 = v3;
      v15 = sub_2231FFD24();
      v17 = v16;

      v30 = v15;
      v31 = v17;
      v29 = 1;
      sub_2230D7754();
      OUTLINED_FUNCTION_3_29();
      sub_2230D94DC(v30, v31);
      if (v2)
      {
        return (*(v7 + 8))(v10, v5);
      }

      v18 = *(v28 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_commandExecutionInfo);
      v30 = 0;
      v19 = [v11 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v30];
      v20 = v30;
      if (v19)
      {
        v21 = sub_2231FFD24();
        v23 = v22;

        v30 = v21;
        v31 = v23;
        v29 = 2;
        OUTLINED_FUNCTION_3_29();
        sub_2230D94DC(v30, v31);
        sub_2230D77A8(a1);
        return (*(v7 + 8))(v10, v5);
      }

      v26 = v20;
      sub_2231FFD04();
    }

    else
    {
      v24 = v14;
      sub_2231FFD04();
    }

    swift_willThrow();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2230DEE58()
{
  result = qword_280FCB8C0;
  if (!qword_280FCB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB8C0);
  }

  return result;
}

uint64_t sub_2230DEEE4(void *a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A730, &unk_22321C210);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DF198();
  sub_2232007A4();
  LOBYTE(v23[0]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_inputOrigin);
  v22 = 0;
  sub_2230DB484();
  OUTLINED_FUNCTION_4_38();
  if (!v2)
  {
    v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_optionalRequestContextData);
    if (!v10)
    {
LABEL_6:
      sub_2230D77A8(a1);
      return (*(v6 + 8))(v9, v4);
    }

    v11 = objc_opt_self();
    v23[0] = 0;
    v12 = v10;
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v23];
    v14 = v23[0];
    if (v13)
    {
      v21 = v12;
      v15 = sub_2231FFD24();
      v17 = v16;

      v23[0] = v15;
      v23[1] = v17;
      v22 = 1;
      sub_2230D7754();
      OUTLINED_FUNCTION_4_38();

      sub_2230D94DC(v15, v17);
      goto LABEL_6;
    }

    v18 = v14;
    sub_2231FFD04();

    swift_willThrow();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_2230DF170@<X0>(unint64_t *a1@<X8>)
{
  result = RequestType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2230DF198()
{
  result = qword_280FCE2C0;
  if (!qword_280FCE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE2C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunSiriKitExecutorMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230DF2B8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_WORD *sub_2230DF2E0(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0x1FF | (a2 << 14);
  }

  else
  {
    v2 = (a2 + 510) & 0x1FF | 0x8000;
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for StartRequestMessageBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230DF3D8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2230DF454(char a1)
{
  if (!a1)
  {
    return 0x697461636F766E69;
  }

  if (a1 == 1)
  {
    return 0x646E616D6D6F63;
  }

  return 0xD000000000000014;
}

void RequestSummary.ExecutionSource.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_8_1();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A28, &qword_2232149F0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A30, &qword_2232149F8);
  OUTLINED_FUNCTION_9();
  v58 = v33;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A38, &qword_223214A00);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A40, &qword_223214A08);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_3();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A48, &qword_223214A10);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_11();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A50, &qword_223214A18);
  OUTLINED_FUNCTION_9();
  v57 = v40;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A58, &qword_223214A20);
  OUTLINED_FUNCTION_9();
  v59 = v42;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4_3();
  v44 = *v26;
  OUTLINED_FUNCTION_29(v31, v31[3]);
  sub_2230DFC28();
  sub_2232007A4();
  if (!(v44 >> 14))
  {
    sub_22318E4F8();
    sub_2232005B4();
    sub_22318E54C();
    sub_223200654();
    v50 = OUTLINED_FUNCTION_29_6();
    v51(v50, v37);
    v47 = OUTLINED_FUNCTION_38_2();
    v49 = v59;
    goto LABEL_5;
  }

  if (v44 >> 14 == 1)
  {
    a15 = 4;
    sub_22318E3FC();
    OUTLINED_FUNCTION_13_10(&type metadata for RequestSummary.ExecutionSource.GenAICodingKeys, &a15);
    a14 = v44;
    sub_22318E300();
    sub_223200654();
    v45 = OUTLINED_FUNCTION_29_6();
    v46(v45, v58);
    v47 = OUTLINED_FUNCTION_38_2();
    v49 = v37;
LABEL_5:
    v48(v47, v49);
    goto LABEL_13;
  }

  switch(v44)
  {
    case 0x8001u:
      a12 = 2;
      sub_22318E4A4();
      OUTLINED_FUNCTION_13_10(&type metadata for RequestSummary.ExecutionSource.PlannerCodingKeys, &a12);
      goto LABEL_11;
    case 0x8002u:
      a13 = 3;
      sub_22318E450();
      OUTLINED_FUNCTION_13_10(&type metadata for RequestSummary.ExecutionSource.SearchToolCodingKeys, &a13);
      goto LABEL_11;
    case 0x8003u:
      a16 = 5;
      sub_22318E3A8();
      OUTLINED_FUNCTION_13_10(&type metadata for RequestSummary.ExecutionSource.UnknownCodingKeys, &a16);
LABEL_11:
      v52 = OUTLINED_FUNCTION_42_2();
      v54(v52, v53);
      break;
    default:
      v60 = 0;
      sub_2230DFCF8();
      OUTLINED_FUNCTION_13_10(&type metadata for RequestSummary.ExecutionSource.SiriXCodingKeys, &v60);
      (*(v57 + 8))(v27, v39);
      break;
  }

  v55 = OUTLINED_FUNCTION_38_2();
  v56(v55, v37);
LABEL_13:
  OUTLINED_FUNCTION_9_0();
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2232004C4();
}

uint64_t OUTLINED_FUNCTION_30_2()
{
  *(v0 - 65) = 0;

  return sub_2232005C4();
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1)
{

  return sub_223200104();
}

uint64_t OUTLINED_FUNCTION_30_4(uint64_t a1)
{

  return sub_223200554();
}

uint64_t SessionConfiguration.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionConfiguration(0) + 52);
  v4 = sub_2231FFDA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OUTLINED_FUNCTION_29_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

void OUTLINED_FUNCTION_29_5()
{

  JUMPOUT(0x223DD5AA0);
}

unint64_t sub_2230DFC28()
{
  result = qword_280FCE800;
  if (!qword_280FCE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE800);
  }

  return result;
}

id OUTLINED_FUNCTION_28_0(uint64_t a1)
{

  return [v1 (v2 + 858)];
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return swift_getWitnessTable();
}

unint64_t sub_2230DFCF8()
{
  result = qword_280FCE808;
  if (!qword_280FCE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE808);
  }

  return result;
}

unint64_t sub_2230DFD54(char a1)
{
  result = 0x5869726973;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x72656E6E616C70;
      break;
    case 3:
      result = 0x6F54686372616573;
      break;
    case 4:
      result = 0x49416E6567;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_2230DFE24(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_47(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_45_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230DFEE0);
      case 4:
        result = OUTLINED_FUNCTION_46_1(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_68(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2230DFF08(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_48_0(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 6);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_48_0(v8);
}

uint64_t OUTLINED_FUNCTION_44_1@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2230D3008(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_44_3@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = *(v1 + a1);

  return sub_223200104();
}

uint64_t OUTLINED_FUNCTION_52()
{
}

uint64_t sub_2230E0020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2230E0048(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2230E0048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5869726973 && a2 == 0xE500000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000223221490 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656E6E616C70 && a2 == 0xE700000000000000;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F54686372616573 && a2 == 0xEA00000000006C6FLL;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x49416E6567 && a2 == 0xE500000000000000;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_2232006B4();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

void RequestSummary.ExecutionSource.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, char a11, char a12, char a13, char a14, unsigned __int8 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_8_1();
  a26 = v28;
  a27 = v29;
  v31 = v30;
  v89 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A90, &qword_223214A28);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_3();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A98, &qword_223214A30);
  OUTLINED_FUNCTION_9();
  v91 = v34;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_3();
  v93 = v36;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AA0, &qword_223214A38);
  OUTLINED_FUNCTION_9();
  v90 = v37;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_3();
  v92 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AA8, &qword_223214A40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_4_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AB0, &qword_223214A48);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4_11();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AB8, &qword_223214A50);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AC0, &qword_223214A58);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_34();
  v94 = v31;
  OUTLINED_FUNCTION_29(v31, v31[3]);
  sub_2230DFC28();
  OUTLINED_FUNCTION_33_4();
  sub_223200794();
  if (v27)
  {
    goto LABEL_8;
  }

  v45 = sub_223200594();
  sub_2230E0B80(v45, 0);
  if (v47 == v46 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_32();
  if (v51 >= (v50 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2230E0B28);
  }

  v52 = *(v49 + v48);
  sub_2230E0B40(v48 + 1);
  v54 = v53;
  v56 = v55;
  swift_unknownObjectRelease();
  if (v54 != v56 >> 1)
  {
LABEL_7:
    sub_2232003A4();
    swift_allocError();
    v64 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v64 = &type metadata for RequestSummary.ExecutionSource;
    v65 = sub_223200484();
    OUTLINED_FUNCTION_48(v65);
    OUTLINED_FUNCTION_5_0();
    (*(v66 + 104))(v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    v67 = OUTLINED_FUNCTION_22_7();
    v68(v67);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v94);
    goto LABEL_9;
  }

  switch(v52)
  {
    case 1:
      v57 = v89;
      a12 = 1;
      sub_22318E4F8();
      OUTLINED_FUNCTION_8_16(&type metadata for RequestSummary.ExecutionSource.IntelligenceFlowCodingKeys, &a12);
      sub_22318E5A0();
      sub_223200554();
      swift_unknownObjectRelease();
      v82 = OUTLINED_FUNCTION_59_0();
      v83(v82);
      v84 = OUTLINED_FUNCTION_39_3();
      v85(v84);
      if (a11)
      {
        v86 = 256;
      }

      else
      {
        v86 = 0;
      }

      v62 = v86 | a10;
      goto LABEL_19;
    case 2:
      v57 = v89;
      a13 = 2;
      sub_22318E4A4();
      OUTLINED_FUNCTION_8_16(&type metadata for RequestSummary.ExecutionSource.PlannerCodingKeys, &a13);
      swift_unknownObjectRelease();
      v69 = OUTLINED_FUNCTION_29_6();
      v70(v69);
      v71 = OUTLINED_FUNCTION_1_23();
      v72(v71);
      v62 = -32767;
      goto LABEL_19;
    case 3:
      a14 = 3;
      sub_22318E450();
      OUTLINED_FUNCTION_8_16(&type metadata for RequestSummary.ExecutionSource.SearchToolCodingKeys, &a14);
      swift_unknownObjectRelease();
      (*(v90 + 8))(v92, v87);
      v73 = OUTLINED_FUNCTION_1_23();
      v74(v73);
      v62 = -32766;
      v81 = v94;
      v57 = v89;
      goto LABEL_20;
    case 4:
      a16 = 4;
      sub_22318E3FC();
      OUTLINED_FUNCTION_8_16(&type metadata for RequestSummary.ExecutionSource.GenAICodingKeys, &a16);
      sub_22318E354();
      sub_223200554();
      swift_unknownObjectRelease();
      (*(v91 + 8))(v93, v88);
      v79 = OUTLINED_FUNCTION_39_3();
      v80(v79);
      v62 = a15 | 0x4000;
      v81 = v94;
      v57 = v89;
      goto LABEL_20;
    case 5:
      v57 = v89;
      a17 = 5;
      sub_22318E3A8();
      OUTLINED_FUNCTION_8_16(&type metadata for RequestSummary.ExecutionSource.UnknownCodingKeys, &a17);
      swift_unknownObjectRelease();
      v75 = OUTLINED_FUNCTION_29_6();
      v76(v75);
      v77 = OUTLINED_FUNCTION_1_23();
      v78(v77);
      v62 = -32765;
      goto LABEL_19;
    default:
      v57 = v89;
      v95 = 0;
      sub_2230DFCF8();
      OUTLINED_FUNCTION_8_16(&type metadata for RequestSummary.ExecutionSource.SiriXCodingKeys, &v95);
      swift_unknownObjectRelease();
      v58 = OUTLINED_FUNCTION_29_6();
      v59(v58, v42);
      v60 = OUTLINED_FUNCTION_1_23();
      v61(v60);
      v62 = 0x8000;
LABEL_19:
      v81 = v94;
LABEL_20:
      *v57 = v62;
      __swift_destroy_boxed_opaque_existential_1(v81);
      break;
  }

LABEL_9:
  OUTLINED_FUNCTION_9_0();
}

void sub_2230E0B48(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_2();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_2230E0B88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void FlowOutputMessage.InAppResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E58, &unk_223207A80);
  OUTLINED_FUNCTION_9();
  v29 = v28;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_2230E0EB4();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (!v20)
  {
    v33 = sub_2232004F4();
    v35 = v34;
    (*(v29 + 8))(v32, v27);
    *v26 = v33;
    v26[1] = v35;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_9_0();
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1, uint64_t a2)
{

  return sub_2232004C4();
}

unint64_t sub_2230E0EB4()
{
  result = qword_280FCE590;
  if (!qword_280FCE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE590);
  }

  return result;
}

void UserSessionState.activeUserSharedUserId.getter(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (v4)
  {
    if (v4 == 1)
    {
      OUTLINED_FUNCTION_10_24(*v1, 1uLL);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_18_16("00000000-0000-0000-0000-000000000000");
    }

    else
    {

      OUTLINED_FUNCTION_10_24(v3, v4);
      OUTLINED_FUNCTION_4_0();
      *a1 = v5;
      a1[1] = v6;
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_9_32();
    sub_2230D9D28(v7, v8, v9, v6);
    OUTLINED_FUNCTION_4_0();
    *a1 = 0;
    a1[1] = 0;
  }
}

uint64_t sub_2230E1000(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_25_5(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_10_20(v3, v4, v5);

  return sub_223200764();
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t a1)
{

  return swift_willThrow();
}

id OUTLINED_FUNCTION_24_4(uint64_t a1)
{

  return [v1 (v2 + 858)];
}

BOOL OUTLINED_FUNCTION_24_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

_BYTE *storeEnumTagSinglePayload for ConversationSessionKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230E11B4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

id OUTLINED_FUNCTION_31_2(uint64_t a1)
{

  return [v1 (v3 + 888)];
}

uint64_t OUTLINED_FUNCTION_31_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return sub_2232003C4();
}

uint64_t sub_2230E1404(unsigned __int16 *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 14;
  }

  else
  {
    return (v1 & 0x1FFu) + 2;
  }
}

id FlowOutputMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  v4 = type metadata accessor for FlowOutputMessage.Builder(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 6) = 0;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *v7 = 0u;
  v27 = v5[12];
  v8 = sub_2231FFE54();
  OUTLINED_FUNCTION_29_1(v8);
  v9 = v5[13];
  v7[v9] = 2;
  v26 = v5[14];
  *&v7[v26] = -512;
  v7[v5[15]] = 15;
  v10 = &v7[v5[16]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = sub_2231FFDA4();
  OUTLINED_FUNCTION_29_1(v11);
  v12 = &v7[v5[18]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v7[v5[19]];
  *v13 = 0;
  *(v13 + 1) = 0;
  a1(v7);
  v14 = *(v7 + 1);
  v15 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_invocationId);
  *v15 = *v7;
  v15[1] = v14;
  v16 = *(v7 + 2);
  v17 = *(v7 + 3);
  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_command) = v16;
  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_commandExecutionInfo) = v17;
  v18 = *(v7 + 5);
  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_systemDialogActs) = *(v7 + 4);
  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_activeTasks) = v18;
  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_completedTasks) = *(v7 + 6);
  sub_2230D30B8(v27 + v7, v2 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_legacyContext, &qword_27D057E48, &qword_223207A50);
  v27 = &v26;
  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_listenAfterSpeaking) = v7[v9];
  v19 = *&v7[v26];
  if (v19 >> 9 > 0x7E)
  {
    LOWORD(v19) = 0x8000;
  }

  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_executionSource) = v19;
  v20 = *(v13 + 1);
  v21 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_inAppResponse);
  *v21 = *v13;
  v21[1] = v20;
  v28 = v7;

  v22 = v16;
  v23 = v17;

  v24 = RequestMessageBase.init(build:)(sub_2230E19A4);
  sub_2230E1BC8(v7);
  return v24;
}

uint64_t FlowOutputMessage.Builder.source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FlowOutputMessage.Builder(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t FlowOutputMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FlowOutputMessage.Builder(0) + 56));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FlowOutputMessage.Builder.sessionId.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = type metadata accessor for FlowOutputMessage.Builder(v2);
  return sub_2230D2E68(v0, v1 + *(v3 + 60), &qword_27D0575C0, &qword_2232035E0);
}

uint64_t FlowOutputMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FlowOutputMessage.Builder(0) + 64));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FlowOutputMessage.Builder.invocationId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t FlowOutputMessage.Builder.listenAfterSpeaking.setter(char a1)
{
  result = type metadata accessor for FlowOutputMessage.Builder(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t FlowOutputMessage.Builder.executionSource.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for FlowOutputMessage.Builder(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t FlowOutputMessage.Builder.inAppResponse.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for FlowOutputMessage.Builder(0) + 68));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t UserID.sharedUserId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2230E18E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowOutputMessage.Builder(0);
  *a1 = *(a2 + v4[13]);
  v5 = (a2 + v4[14]);
  v7 = *v5;
  v6 = v5[1];

  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  v8 = v4[15];
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + v4[16]);
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));

  *v13 = v12;
  v13[1] = v11;
  return result;
}

id DialogEngineOutputMessage.init(build:)(void (*a1)(_BYTE *))
{
  v2 = v1;
  v4 = type metadata accessor for DialogEngineOutputMessage.Builder(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 32) = -512;
  v7[66] = 15;
  *(v7 + 9) = 0;
  *(v7 + 10) = 0;
  v8 = *(v5 + 52);
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[*(v5 + 56)];
  *v10 = 0;
  v10[1] = 0;
  a1(v7);
  v11 = *(v7 + 1);
  v12 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes25DialogEngineOutputMessage_fullPrint);
  *v12 = *v7;
  v12[1] = v11;
  v13 = *(v7 + 3);
  v14 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes25DialogEngineOutputMessage_fullSpeak);
  *v14 = *(v7 + 2);
  v14[1] = v13;
  v15 = *(v7 + 5);
  v16 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes25DialogEngineOutputMessage_redactedFullPrint);
  *v16 = *(v7 + 4);
  v16[1] = v15;
  v17 = *(v7 + 7);
  v18 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes25DialogEngineOutputMessage_redactedFullSpeak);
  *v18 = *(v7 + 6);
  v18[1] = v17;
  v19 = *(v7 + 32);
  if (v19 >> 9 > 0x7E)
  {
    LOWORD(v19) = 0x8000;
  }

  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes25DialogEngineOutputMessage_executionSource) = v19;
  v23 = v7;

  v20 = RequestMessageBase.init(build:)(sub_2230E244C);
  sub_2230E2550(v7);
  return v20;
}

uint64_t DialogEngineOutputMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t sub_2230E1BC8(uint64_t a1)
{
  v2 = type metadata accessor for FlowOutputMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DialogEngineOutputMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DialogEngineOutputMessage.Builder(0) + 44);

  return sub_2230D4E04(a1, v3);
}

uint64_t DialogEngineOutputMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for DialogEngineOutputMessage.Builder(0) + 48));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t DialogEngineOutputMessage.Builder.fullPrint.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DialogEngineOutputMessage.Builder.fullSpeak.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DialogEngineOutputMessage.Builder.redactedFullSpeak.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t DialogEngineOutputMessage.Builder.redactedFullPrint.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void sub_2230E1D7C()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v0;
  v4 = v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057EA8, &qword_223207AA8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = v4[3];
  v36 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v10);
  sub_2230E23F8();
  OUTLINED_FUNCTION_20();
  sub_2232007A4();
  if (*(v2 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_invocationId + 8))
  {
    LOBYTE(v39) = 0;
    sub_2232005F4();
    if (v1)
    {
      (*(v6 + 8))(v9, v38);
      goto LABEL_23;
    }
  }

  v37 = v6;
  v11 = *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_command);
  v12 = MEMORY[0x277CCA308];
  v35 = v2;
  if (v11)
  {
    v13 = MEMORY[0x277CCA308];
    v14 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
    v15 = v11;
    v16 = [v14 initRequiringSecureCoding_];
    [v16 0x1FA948F02];
    v17 = [v16 encodedData];
    v18 = sub_2231FFD24();
    v20 = v19;

    v39 = v18;
    v40 = v20;
    sub_2230D7754();
    OUTLINED_FUNCTION_4_9();
    v21 = v9;
    sub_223200654();
    if (v1)
    {

LABEL_12:
      sub_2230D94DC(v39, v40);
      (*(v37 + 8))(v21, v38);
      goto LABEL_23;
    }

    sub_2230D94DC(v39, v40);

    v2 = v35;
    v12 = MEMORY[0x277CCA308];
  }

  else
  {
    v21 = v9;
  }

  v22 = *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_commandExecutionInfo);
  if (v22)
  {
    v23 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
    v24 = v22;
    v16 = [v23 initRequiringSecureCoding_];
    [v16 0x1FA948F02];
    v25 = [v16 &_OBJC_LABEL_PROTOCOL___SMTSiriIntendedInfoMutating];
    v26 = sub_2231FFD24();
    v28 = v27;

    v39 = v26;
    v40 = v28;
    sub_2230D7754();
    OUTLINED_FUNCTION_12();
    sub_223200654();
    if (v1)
    {

      goto LABEL_12;
    }

    sub_2230D94DC(v39, v40);
  }

  v29 = v37;
  v30 = v35;
  v39 = *(v35 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_systemDialogActs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E68, &qword_223207A98);
  sub_2230E2B44(&qword_280FCA4A8, &qword_280FCE5F8, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12();
  sub_2232005E4();
  if (!v1)
  {
    v39 = *(v30 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_activeTasks);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E80, &qword_223207AA0);
    sub_2230E2BD8(&qword_280FCA4C0, &qword_280FCE670, &protocol conformance descriptor for Siri_Nlu_External_Task);
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_12();
    sub_2232005E4();
    v39 = *(v30 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_completedTasks);
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_12();
    sub_2232005E4();
    LOBYTE(v39) = 6;
    sub_2231FFE54();
    OUTLINED_FUNCTION_7_8();
    sub_2230E2D2C(v31, v32);
    OUTLINED_FUNCTION_12();
    sub_2232005E4();
    LOBYTE(v39) = 7;
    OUTLINED_FUNCTION_12();
    sub_2232005D4();
    LOWORD(v39) = *(v30 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_executionSource);
    sub_2230E2D70();
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_12();
    sub_223200654();
    v33 = *(v30 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_inAppResponse + 8);
    v39 = *(v30 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_inAppResponse);
    v40 = v33;
    v34 = sub_2230E2EB8();

    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_12();
    sub_2232005E4();

    if (!v34)
    {
      sub_2230D77A8(v36);
    }
  }

  (*(v29 + 8))(v21, v38);
LABEL_23:
  OUTLINED_FUNCTION_9_0();
}