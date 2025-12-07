uint64_t sub_22C0C1AC4()
{
  v1 = sub_22BE17BC4();
  v2(v1);
  sub_22BE18000();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22C0C1B18()
{
  sub_22BE18378();
  v1(0);
  sub_22BE1834C();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

unint64_t sub_22C0C1B6C()
{
  result = qword_27D9090E0;
  if (!qword_27D9090E0)
  {
    sub_22C2704B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9090E0);
  }

  return result;
}

void TranscriptProtoTranscript.sessionID.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

void TranscriptProtoTranscript.clientSessionID.setter()
{
  sub_22BE1A8A8();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
}

uint64_t TranscriptProtoTranscript.init(sessionID:clientSessionID:events:)()
{
  sub_22BE3852C();
  v6 = sub_22BE367A8();
  v7 = type metadata accessor for TranscriptProtoTranscript(v6);
  result = sub_22C0E9D10(v7);
  *v5 = v4;
  v5[1] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v5[2] = v0;
  return result;
}

uint64_t TranscriptProtoTimepoint.rawDate.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoTimepoint(v0);
  return sub_22BE18504();
}

void TranscriptProtoTimepoint.init(rawDate:suspendingClockInstantNs:continuousClockInstantNs:rawBootSessionUuid:)()
{
  sub_22BE3C358();
  sub_22BE3852C();
  v5 = sub_22BE367A8();
  type metadata accessor for TranscriptProtoTimepoint(v5);
  sub_22C270454();
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v9);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  sub_22BE267B8();
}

uint64_t TranscriptProtoSessionStart.originatingDevice.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSessionStart(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSessionStart.genderSettings.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSessionStart(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSessionStart.shouldExecutePreviousActionsForUserPrompt.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for TranscriptProtoSessionStart(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t TranscriptProtoSessionStart.shouldExecutePreviousActionsForUserPrompt.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSessionStart(v0);
  return sub_22BE18504();
}

void TranscriptProtoSessionStart.init(initialLocaleSettings:originatingDevice:genderSettings:shouldExecutePreviousActionsForUserPrompt:)()
{
  sub_22BE19460();
  v3 = v2;
  sub_22BE48E10();
  v4 = sub_22C0E9824();
  type metadata accessor for TranscriptProtoLocaleSettings(v4);
  v5 = sub_22BE238E8();
  v9 = sub_22C0E966C(v5, v6, v7, v8);
  type metadata accessor for TranscriptProtoSessionStart(v9);
  v10 = sub_22BE23ED8();
  type metadata accessor for TranscriptProtoDeviceDetails(v10);
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v14);
  v15 = sub_22C0E9D7C();
  type metadata accessor for TranscriptProtoGenderSettings(v15);
  sub_22BE1A140();
  sub_22BE19DC4(v16, v17, v18, v19);
  v20 = *(v1 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE431C0();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  *(v0 + v20) = v3;
  sub_22BE1AABC();
}

uint64_t sub_22C0C2214()
{
  v0 = sub_22BE1C364();
  v1(v0);
  return sub_22BE182B4();
}

uint64_t sub_22C0C2274()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoDateTimeContext.dateTime.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoDateTimeContext(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUserTurnStarted.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUserTurnStarted(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0C2400()
{
  v0 = sub_22BE1C364();
  v1(v0);
  return sub_22BE182B4();
}

uint64_t sub_22C0C2460()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoUserTurnStarted.turn.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUserTurnStarted(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0C2500()
{
  v0 = sub_22BE1C364();
  v1(v0);
  return sub_22BE182B4();
}

uint64_t sub_22C0C2560()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoUserTurnStarted.siriRequestContext.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUserTurnStarted(v0);
  return sub_22BE18504();
}

void TranscriptProtoUserTurnStarted.init(statementID:turn:turnID:siriRequestContext:)()
{
  sub_22BE19460();
  sub_22BE3CAC4();
  v3 = sub_22C0E9824();
  type metadata accessor for TranscriptProtoUserTurnStarted(v3);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  type metadata accessor for TranscriptProtoUserTurn(0);
  v8 = sub_22BE409A4();
  sub_22BE19DC4(v8, v9, v10, v11);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE1A140();
  sub_22BE19DC4(v12, v13, v14, v15);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  sub_22BE2343C();
  *v0 = v2;
  v0[1] = v1;
  sub_22BE2343C();
  sub_22BE1AABC();
}

void static TranscriptProtoUserTurnEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE39FFC();
  v2 = type metadata accessor for TranscriptProtoUserTurnText(v1);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  v4 = sub_22BE35598();
  v5 = type metadata accessor for TranscriptProtoUserTurnSpeech(v4);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v7 = sub_22C0E9BB8();
  type metadata accessor for TranscriptProtoUserTurnEnum(v7);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v9);
  sub_22BE26800();
  v10 = sub_22BE5CE4C(&qword_27D911708, &unk_22C2AE4C0);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE1B62C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    if (sub_22C0E9EFC() == 1)
    {
      sub_22BE3D6A0();
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE2BD04();
      sub_22C272FD4();
      sub_22C0C1AC4();
      sub_22BE1B328();
LABEL_8:
      sub_22C0C1AC4();
      sub_22BE26148();
      sub_22C0C1AC4();
      goto LABEL_9;
    }
  }

  else
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    if (sub_22C0E9EFC() != 1)
    {
      sub_22BE3D6A0();
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE25C08();
      sub_22C272FD4();
      sub_22C0C1AC4();
      sub_22BE38970();
      goto LABEL_8;
    }

    sub_22C0E9848();
  }

  sub_22C0C1AC4();
  sub_22BE33928(v0, &qword_27D911708, &unk_22C2AE4C0);
LABEL_9:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

uint64_t sub_22C0C2A68()
{
  sub_22BE18378();
  v1(0);
  sub_22BE1834C();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

uint64_t TranscriptProtoRequest.content.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.prescribedPlan.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.rawRewriteMetadataEventID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.rewriteMetadataInlined.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.siriRequestContext.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.suggestedInvocation.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequest(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0C2E98()
{
  v0 = sub_22BE1C364();
  v1(v0);
  return sub_22BE182B4();
}

uint64_t sub_22C0C2EF8()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoRequest.datetimeContext.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.init(content:safetyMode:prescribedPlan:rawRewriteMetadataEventID:rewriteMetadataInlined:siriRequestContext:suggestedInvocation:datetimeContext:)@<X0>(char a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X4>, _BYTE *a4@<X8>)
{
  type metadata accessor for TranscriptProtoRequest(0);
  v6 = sub_22BFBFC98();
  v7 = type metadata accessor for TranscriptProtoRequestContent(v6);
  sub_22BE1AF78(v7);
  type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v8 = sub_22BE25B20();
  sub_22BE19DC4(v8, v9, v10, v11);
  v12 = &a4[*(v4 + 28)];
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_22BE1A140();
  sub_22BE19DC4(v13, v14, v15, v16);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE1A140();
  sub_22BE19DC4(v17, v18, v19, v20);
  type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  sub_22BE1A140();
  sub_22BE19DC4(v21, v22, v23, v24);
  type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_22BE1A140();
  sub_22BE19DC4(v25, v26, v27, v28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *a4 = a1;
  sub_22BE2343C();
  *v12 = a2;
  v12[1] = a3;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  return sub_22BE2343C();
}

void static TranscriptProtoRequestContentEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE46DA4(v1, v2);
  v4 = type metadata accessor for TranscriptProtoRequestContentStopContent(v3);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v7 = sub_22C0E9724(v6);
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolution(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v11 = sub_22BE28E74(v10);
  v12 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(v11);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v14 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  type metadata accessor for TranscriptProtoRequestContentEnum(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v17);
  sub_22BE18094();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v19);
  sub_22BE25A90();
  v20 = sub_22BE5CE4C(&qword_27D911710, &qword_22C2AE4F8);
  sub_22BE19448(v20);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE2C6E8();
      sub_22C0C2A68();
      if (sub_22C0E9BA0() == 1)
      {
        sub_22C0E9A50();
        sub_22C0C1B18();
        sub_22BE324FC();
        static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_15;
      }

      sub_22C0E99B4();
      goto LABEL_13;
    case 2u:
      sub_22BE2C6E8();
      sub_22C0C2A68();
      if (sub_22C0E9BA0() == 2)
      {
        sub_22C0E9A50();
        sub_22C0C1B18();
        static TranscriptProtoSystemPromptResolution.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_15;
      }

      sub_22BE3E76C();
      goto LABEL_13;
    case 3u:
      sub_22BE2C6E8();
      sub_22C0C2A68();
      if (sub_22C0E9BA0() == 3)
      {
        sub_22C0E9A50();
        sub_22C0C1B18();
        sub_22C2704B4();
        sub_22C0C1B6C();
        sub_22BE2BD04();
        sub_22C272FD4();
        sub_22C0C1AC4();
        goto LABEL_15;
      }

      sub_22BE291DC();
      goto LABEL_13;
    default:
      sub_22BE2C6E8();
      sub_22C0C2A68();
      if (sub_22C0E9BA0())
      {
        sub_22BE379D8();
LABEL_13:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D911710, &qword_22C2AE4F8);
      }

      else
      {
        sub_22C0E9A50();
        sub_22C0C1B18();
        static TranscriptProtoRequestContentTextContent.== infix(_:_:)();
        sub_22BE3C724();
        sub_22C0C1AC4();
LABEL_15:
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
      }

      sub_22BE1AABC();
      return;
  }
}

uint64_t TranscriptProtoRequestContentTextContent.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestContentTextContent(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestContentSpeechContent.speechPackage.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestContentSpeechContent.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestContentSpeechContent.preItnspeechPackage.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(v0);
  return sub_22BE18504();
}

void TranscriptProtoRequestContentSpeechContent.init(text:speechPackage:statementID:preItnspeechPackage:)()
{
  sub_22BE22B9C();
  sub_22BE3CAC4();
  v3 = sub_22C0E9824();
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(v3);
  v4 = sub_22C0E9B88();
  v5 = type metadata accessor for TranscriptProtoSpeechPackage(v4);
  v6 = sub_22BE409A4();
  sub_22BE19DC4(v6, v7, v8, v5);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v9, v10, v11, v12);
  sub_22BE1A140();
  sub_22BE19DC4(v13, v14, v15, v5);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = v2;
  v0[1] = v1;
  sub_22C0E9C9C();
  sub_22BE2343C();
  sub_22C0E9C9C();
  sub_22BE234D8();
}

uint64_t sub_22C0C3A94(uint64_t a1)
{
  v3 = sub_22C0E9824();
  v4(v3);
  sub_22BE38954();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = a1;
  return result;
}

uint64_t TranscriptProtoSpeechPackage.Token.init(text:confidenceScore:startTime:silenceStartTime:endTime:)(double a1, double a2, double a3)
{
  v10 = sub_22BE37898();
  type metadata accessor for TranscriptProtoSpeechPackage.Token(v10);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = v5;
  *(v6 + 8) = v4;
  *(v6 + 16) = v3;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.getter()
{
  type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for TranscriptProtoExternalAgentRequest(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoExternalAgentRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExternalAgentRequest.rewriteMetadataInlined.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoExternalAgentRequest(v0);
  return sub_22BE18504();
}

void TranscriptProtoExternalAgentRequest.init(content:rawRewriteMetadataEventID:rewriteMetadataInlined:)()
{
  sub_22BE3C358();
  v3 = sub_22BE2597C();
  v4 = type metadata accessor for TranscriptProtoRequestContent(v3);
  v7 = sub_22C0E966C(v2, v5, v6, v4);
  v8 = (v2 + *(type metadata accessor for TranscriptProtoExternalAgentRequest(v7) + 20));
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_22BE1A140();
  sub_22C0E9C4C(v9, v10, v11, v12);
  sub_22BE2590C();
  sub_22BE2343C();
  *v8 = v1;
  v8[1] = v0;
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t sub_22C0C3E98()
{
  v4 = sub_22BE37898();
  v5(v4);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  v3[2] = v0;
  return result;
}

void static TranscriptProtoRequestPrescribedPlanEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE46DA4(v2, v3);
  v74[2] = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v81 = v6;
  v7 = sub_22BE183BC();
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v11 = sub_22BE48A8C(v10);
  v12 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(v11);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v80 = v14;
  v15 = sub_22BE183BC();
  v16 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(v15);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v79 = v18;
  v19 = sub_22BE183BC();
  v20 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(v19);
  v21 = sub_22BE19448(v20);
  MEMORY[0x28223BE20](v21);
  sub_22BE17A44();
  v77 = v22;
  v23 = sub_22BE183BC();
  v24 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(v23);
  v25 = sub_22BE19448(v24);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  v76 = v26;
  v27 = sub_22BE183BC();
  v74[3] = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(v27);
  sub_22BE18000();
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  v78 = v29;
  v30 = sub_22BE183BC();
  v74[1] = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(v30);
  sub_22BE18000();
  MEMORY[0x28223BE20](v31);
  sub_22BE17A44();
  v75 = v32;
  v33 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(v33);
  sub_22BE18000();
  MEMORY[0x28223BE20](v34);
  sub_22BE183AC();
  v82 = v35 - v36;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v37);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v38);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v39);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v40);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v41);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v42);
  sub_22BE3C05C(v43, v44, v45, v46, v47, v48, v49, v50, v74[0]);
  MEMORY[0x28223BE20](v51);
  v53 = v74 - v52;
  v54 = sub_22BE5CE4C(&qword_27D911718, &unk_22C2AE510);
  sub_22BE19448(v54);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v55);
  v57 = v74 - v56;
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE324FC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE192FC();
      sub_22C0C2A68();
      if (sub_22C0E9C10() != 1)
      {
        goto LABEL_31;
      }

      sub_22BE39198();
      sub_22C0C1B18();
      sub_22BE33C2C();
      v66 = v66 && v64 == v65;
      if (!v66 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 2u:
      sub_22BE192FC();
      sub_22C0C2A68();
      if (sub_22C0E9C10() != 2)
      {
        goto LABEL_31;
      }

      sub_22BE39198();
      sub_22C0C1B18();
      v60 = sub_22BE25C08();
      static TranscriptProtoRequestPrescribedPlanTextTool.== infix(_:_:)(v60, v61);
      sub_22BE43208();
      sub_22C0C1AC4();
      goto LABEL_49;
    case 3u:
      sub_22BE192FC();
      sub_22C0C2A68();
      if (sub_22C0E9C10() == 3)
      {
        sub_22BE39198();
        sub_22C0C1B18();
        static TranscriptProtoRequestPrescribedPlanConvertTool.== infix(_:_:)(v1);
        sub_22BE43208();
        sub_22C0C1AC4();
        goto LABEL_49;
      }

      sub_22BE291DC();
      goto LABEL_31;
    case 4u:
      sub_22BE192FC();
      sub_22C0C2A68();
      if (sub_22C0E9C10() == 4)
      {
        sub_22BE39198();
        sub_22C0C1B18();
        v58 = sub_22BE33BE8();
        static TranscriptProtoRequestPrescribedPlanDisplayTool.== infix(_:_:)(v58, v59);
        sub_22BE43208();
        sub_22C0C1AC4();
        goto LABEL_49;
      }

      sub_22BE20118();
      goto LABEL_31;
    case 5u:
      sub_22BE192FC();
      sub_22C0C2A68();
      if (sub_22C0E9C10() == 5)
      {
        sub_22BE39198();
        sub_22C0C1B18();
        v67 = sub_22BE2590C();
        static TranscriptProtoRequestPrescribedPlanKnowledgeTool.== infix(_:_:)(v67, v68);
        sub_22BE43208();
        sub_22C0C1AC4();
        goto LABEL_49;
      }

      sub_22BE379D8();
      goto LABEL_31;
    case 6u:
      sub_22BE192FC();
      sub_22C0C2A68();
      if (sub_22C0E9C10() != 6)
      {
        goto LABEL_31;
      }

      sub_22BE39198();
      sub_22BE385CC();
      sub_22C0C1B18();
      v69 = sub_22BE336E8();
      static TranscriptProtoRequestPrescribedPlanOpenTool.== infix(_:_:)(v69);
      sub_22BE43208();
      sub_22C0C1AC4();
      sub_22BE1A8C4();
      goto LABEL_49;
    case 7u:
      sub_22BE192FC();
      v62 = v82;
      sub_22C0C2A68();
      if (sub_22C0E9C10() != 7)
      {
        goto LABEL_31;
      }

      sub_22BE39198();
      sub_22C0E9B7C();
      sub_22C0C1B18();
      v63 = *(v0 + 8);
      if (*(v62 + 8))
      {
        if (!*(v0 + 8))
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      if (*v62 != *v0)
      {
        v63 = 1;
      }

      if ((v63 & 1) == 0)
      {
LABEL_47:
        sub_22BE3FF30();
        sub_22C0C1B6C();
        sub_22C0E9EC4();
      }

LABEL_48:
      sub_22C0C1AC4();
LABEL_49:
      sub_22C0C1AC4();
      sub_22BE36570();
      sub_22C0C1AC4();
LABEL_32:
      sub_22C0E9B70();
      sub_22BE1AABC();
      return;
    default:
      sub_22BE192FC();
      sub_22C0C2A68();
      if (!sub_22C0E9C10())
      {
        sub_22BE39198();
        v70 = v75;
        sub_22C0C1B18();
        sub_22BE33C2C();
        v73 = v66 && v71 == v72;
        if (v73 || (sub_22C274014()) && v53[16] == *(v70 + 16) && v53[17] == *(v70 + 17))
        {
          sub_22C2704B4();
          sub_22C0C1B6C();
          sub_22C272FD4();
        }

        sub_22BE41774();
        sub_22C0C1AC4();
        goto LABEL_49;
      }

      sub_22BE3E76C();
LABEL_31:
      sub_22C0C1AC4();
      sub_22BE33928(v57, &qword_27D911718, &unk_22C2AE510);
      goto LABEL_32;
  }
}

uint64_t sub_22C0C48BC()
{
  v3 = sub_22BE28634();
  v4(v3);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  return result;
}

void TranscriptProtoRequestPrescribedPlanConvertTool.init(query:isExplicit:partner:directInvocationClient:)()
{
  sub_22BE3C358();
  sub_22BE32534();
  v6 = v5;
  v8 = v7;
  sub_22BE44738();
  v10 = v9;
  type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v10 = v4;
  *(v10 + 8) = v3;
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 32) = v2;
  *(v10 + 40) = v1;
  *(v10 + 48) = v0;
  sub_22BE267B8();
}

uint64_t sub_22C0C4A98(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_22BE367A8();
  v13 = v12(v11);
  result = sub_22C0E9D10(v13);
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.elementAtIndex.getter()
{
  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  sub_22BE38954();
  return *v0;
}

void TranscriptProtoRequestPrescribedPlanOpenTool.elementAtIndex.setter(uint64_t a1, char a2)
{
  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  sub_22BE38954();
  *v4 = a1;
  *(v4 + 8) = a2 & 1;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.elementAtIndex.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.init(resultStatementID:elementAtIndex:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  sub_22BE375F8();
  v9 = sub_22C0E966C(a3, v6, v7, v8);
  v10 = a3 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v9) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  result = sub_22BE2343C();
  *v10 = a1;
  *(v10 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.elementAtIndex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init(elementAtIndex:)()
{
  sub_22BE18378();
  v3 = v2;
  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v1;
  *(v3 + 8) = v0 & 1;
  return result;
}

uint64_t TranscriptProtoAction.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAction(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0C4E40()
{
  v0 = sub_22BE2BB48();
  v1(v0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t sub_22C0C4E8C()
{
  v3 = sub_22BE23708();
  v4(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoAction.bundleID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAction(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAction.planEventID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAction(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0C4FA0()
{
  v0 = sub_22BE1C364();
  v1(v0);
  return sub_22BE182B4();
}

uint64_t sub_22C0C5000()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoAction.tool.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAction(v0);
  return sub_22BE18504();
}

void TranscriptProtoAction.init(statementID:bundleID:isConfirmed:parameterValues:planEventID:tool:)()
{
  sub_22C0E9E48();
  v20 = v1;
  v18 = v2;
  v19 = v3;
  v5 = v4;
  v7 = v6;
  sub_22C0E9C34();
  v9 = v8;
  v10 = type metadata accessor for TranscriptProtoAction(0);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v14);
  v15 = (v9 + *(v10 + 28));
  v16 = (v9 + *(v10 + 32));
  v17 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22C0E9744(v17);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v15 = v0;
  v15[1] = v7;
  *v9 = v5;
  *(v9 + 8) = v18;
  *v16 = v19;
  v16[1] = v20;
  sub_22BE2343C();
  sub_22BE3E534();
}

uint64_t TranscriptProtoActionParameterValue.promptSelection.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionParameterValue(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionParameterValue.init(value:promptSelection:)()
{
  v1 = sub_22BE28634();
  v2 = type metadata accessor for TranscriptProtoToolParameterValue(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  type metadata accessor for TranscriptProtoActionParameterValue(v5);
  v6 = sub_22BFBFCD0();
  v7 = type metadata accessor for TranscriptProtoPromptSelection(v6);
  sub_22BE30FA8(v7);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

uint64_t TranscriptProtoActionCancellation.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionCancellation(v0);
  return sub_22BE18504();
}

void TranscriptProtoPromptSelection.promptSelectionValues.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t TranscriptProtoPromptSelection.promptSelectionValues.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t static TranscriptProtoPromptSelectionEnum.== infix(_:_:)()
{
  sub_22BE36330();
  v5 = v4 == 0;
  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v2 = 0;
  }

  if (v0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v2;
  }

  if (v1 == 1)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

uint64_t TranscriptProtoActionConfirmation.systemStyle.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionConfirmation(v0);
  return sub_22BE18504();
}

uint64_t static TranscriptProtoActionConfirmationSystemStyleEnum.== infix(_:_:)()
{
  sub_22BE18378();
  v0 = sub_22BE5CE4C(&qword_27D911720, &unk_22C2AE540);
  sub_22BE19448(v0);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE3607C();
  sub_22C0C2A68();
  sub_22C0E987C();
  sub_22C0C2A68();
  sub_22C0E9C28();
  static TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.== infix(_:_:)();
  sub_22C0C1AC4();
  sub_22BE1804C();
  sub_22C0C1AC4();
  return sub_22BE36384();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.source.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(v0);
  return sub_22BE18504();
}

void TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.init(bundleIdentifier:source:isExplicitRequest:)()
{
  sub_22BE3C358();
  v4 = v3;
  v5 = sub_22BE3E308();
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(v5);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_22BE1A140();
  sub_22C0E9C4C(v6, v7, v8, v9);
  *v2 = v1;
  *(v2 + 8) = v0;
  sub_22BE2343C();
  *(v2 + 16) = v4;
  sub_22BE267B8();
}

uint64_t TranscriptProtoParameterValue.promptSelection.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterValue(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterValue.init(value:promptSelection:)()
{
  sub_22BE28634();
  v1 = sub_22C272594();
  v4 = sub_22C0E966C(v0, v2, v3, v1);
  type metadata accessor for TranscriptProtoParameterValue(v4);
  v5 = sub_22BFBFCD0();
  v6 = type metadata accessor for TranscriptProtoPromptSelection(v5);
  sub_22BE30FA8(v6);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

uint64_t TranscriptProtoExternalAgentOutcome.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoExternalAgentOutcome(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExternalAgentOutcome.statementOutcome.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoExternalAgentOutcome(v0);
  return sub_22BE18504();
}

void TranscriptProtoExternalAgentOutcome.init(responseText:statementID:statementOutcome:)()
{
  sub_22BE3C358();
  v2 = sub_22BE37898();
  type metadata accessor for TranscriptProtoExternalAgentOutcome(v2);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v3, v4, v5, v6);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE1A140();
  sub_22C0E9DE4(v7, v8, v9, v10);
  *v1 = v0;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t TranscriptProtoStatementResultPayload.response.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStatementResultPayload(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementResultPayload.init(outcome:response:)()
{
  v1 = sub_22BE28634();
  v2 = type metadata accessor for TranscriptProtoStatementOutcome(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  type metadata accessor for TranscriptProtoStatementResultPayload(v5);
  v6 = sub_22BFBFCD0();
  v7 = type metadata accessor for TranscriptProtoResponseManifest(v6);
  sub_22BE30FA8(v7);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

void TranscriptProtoStatementResult.actionEventID.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

uint64_t TranscriptProtoStatementResult.payload.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStatementResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementResult.resultStatementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStatementResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementResult.originProgramStatementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStatementResult(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0C5F3C()
{
  v0 = sub_22BE1C364();
  v1(v0);
  return sub_22BE182B4();
}

uint64_t sub_22C0C5F9C()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoStatementResult.originTaskStatementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStatementResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementResult.tool.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStatementResult(v0);
  return sub_22BE18504();
}

void TranscriptProtoStatementResult.init(actionEventID:payload:resultStatementID:originProgramStatementID:originTaskStatementID:tool:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22C0E9E48();
  v9 = v8;
  v11 = v10;
  v12 = sub_22C0E9824();
  type metadata accessor for TranscriptProtoStatementResult(v12);
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_22BE1A140();
  sub_22BE19DC4(v13, v14, v15, v16);
  v17 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v18, v19, v20, v17);
  v21 = sub_22BE3CE14();
  sub_22BE19DC4(v21, v22, v23, v17);
  sub_22BE1A140();
  sub_22BE19DC4(v24, v25, v26, v17);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE1A140();
  sub_22BE19DC4(v27, v28, v29, v30);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v7 = v11;
  v7[1] = v9;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE3E534();
}

uint64_t TranscriptProtoCandidate.value.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoCandidate(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoCandidate.promptStatus.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoCandidate(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoCandidate.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoCandidate(v0);
  return sub_22BE18504();
}

void TranscriptProtoCandidate.init(value:source:promptStatus:statementID:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = *v2;
  type metadata accessor for TranscriptProtoCandidate(0);
  sub_22C272594();
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v11);
  sub_22BE375F8();
  v12 = sub_22BE409A4();
  sub_22BE19DC4(v12, v13, v14, v15);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v1 = v3;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE1AABC();
}

uint64_t static TranscriptProtoCandidatePromptStatusEnum.== infix(_:_:)()
{
  sub_22BE36330();
  v5 = v4 == 0;
  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v2 = 0;
  }

  if (v0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v2;
  }

  if (v1 == 1)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

void TranscriptProtoClientAction.clientQueryID.setter()
{
  sub_22BE1A8A8();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

void TranscriptProtoClientAction.planEventID.setter()
{
  sub_22BE1A8A8();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t TranscriptProtoClientAction.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoClientAction(v0);
  return sub_22BE18504();
}

void TranscriptProtoClientAction.init(toolID:parameters:clientQueryID:planEventID:statementID:shimParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE22B9C();
  sub_22C0E9DA0();
  sub_22BE1B23C();
  v31 = v30;
  type metadata accessor for TranscriptProtoClientAction(0);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v32, v33, v34, v35);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v31 = v29;
  v31[1] = v28;
  v31[2] = v27;
  v31[4] = v26;
  v31[5] = v25;
  v31[6] = v24;
  v31[7] = v23;
  sub_22BE2343C();
  v31[3] = a23;
  sub_22BE234D8();
}

void static TranscriptProtoShimParameterEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE46DA4(v2, v3);
  v5 = type metadata accessor for TranscriptProtoPhotosCandidates(v4);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v36[3] = v7;
  v8 = sub_22BE183BC();
  v9 = type metadata accessor for TranscriptProtoPersonQuery(v8);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v12 = sub_22BE48A8C(v11);
  v36[1] = type metadata accessor for TranscriptProtoShimParameter.StringQuery(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  sub_22BE28E74(v14);
  v15 = sub_22C272594();
  sub_22BE179D8();
  v37 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22BE179EC();
  v18 = sub_22C0E9BB8();
  type metadata accessor for TranscriptProtoShimParameterEnum(v18);
  sub_22BE18000();
  MEMORY[0x28223BE20](v19);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v20);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v21);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v22);
  v24 = v36 - v23;
  v25 = sub_22BE5CE4C(&qword_27D911728, &unk_22C2AE570);
  sub_22BE19448(v25);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1B72C();
  v28 = *(v27 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE20228();
      sub_22C0C2A68();
      if (sub_22C0E9F14() != 1)
      {
        sub_22BE250B0();
        goto LABEL_20;
      }

      sub_22BE47E00();
      sub_22C0E9A68();
      sub_22C0C1B18();
      sub_22BE33C2C();
      v33 = v33 && v31 == v32;
      if (v33 || (sub_22C274014() & 1) != 0)
      {
        sub_22BEC0A84();
        sub_22C0C1B6C();
        sub_22C0E99FC();
        sub_22BE250B0();
        sub_22C0C1AC4();
      }

      else
      {
        sub_22BE250B0();
        sub_22C0C1AC4();
      }

      sub_22BE250B0();
      sub_22C0C1AC4();
      sub_22C0E97B4();
      goto LABEL_24;
    case 2u:
      sub_22BE20228();
      sub_22C0C2A68();
      if (sub_22C0E9F14() == 2)
      {
        sub_22BE28DC8();
        sub_22BE39F80(v0 + v28);
        static TranscriptProtoPersonQuery.== infix(_:_:)();
        sub_22C0C1AC4();
        sub_22BE35838();
        goto LABEL_8;
      }

      sub_22BE291DC();
      goto LABEL_20;
    case 3u:
      sub_22BE20228();
      sub_22C0C2A68();
      if (sub_22C0E9F14() == 3)
      {
        sub_22BE47E00();
        sub_22C0E9D94();
        sub_22C0C1B18();
        v29 = sub_22BE336E8();
        static TranscriptProtoPhotosCandidates.== infix(_:_:)(v29, v30);
        sub_22C0C1AC4();
        sub_22BE1A8C4();
LABEL_8:
        sub_22C0C1AC4();
        goto LABEL_23;
      }

      sub_22C0E9A74();
LABEL_20:
      sub_22C0C1AC4();
      goto LABEL_21;
    default:
      sub_22BE20228();
      sub_22C0C2A68();
      if (sub_22C0E9F14())
      {
        (*(v37 + 8))(v24, v15);
LABEL_21:
        sub_22BE33928(v0, &qword_27D911728, &unk_22C2AE570);
      }

      else
      {
        v34 = v37;
        (*(v37 + 32))(v1, v0 + v28, v15);
        sub_22BE33BE8();
        sub_22C272584();
        v35 = *(v34 + 8);
        v35(v1, v15);
        v35(v24, v15);
LABEL_23:
        sub_22C0E97B4();
      }

LABEL_24:
      sub_22C0E9B70();
      sub_22BE1AABC();
      return;
  }
}

void TranscriptProtoPersonQuery.name.setter()
{
  sub_22BE1A8A8();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
}

uint64_t TranscriptProtoPersonQuery.handle.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPersonQuery(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPersonQuery.id.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPersonQuery(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0C6F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C0B0814();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoPersonQuery.Handle.init(kind:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  *a2 = 3;
  type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  sub_22BE48874();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a2 = v3;
  return result;
}

void TranscriptProtoPersonQuery.init(name:handle:isMe:id:)()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_22BE41300();
  v10 = type metadata accessor for TranscriptProtoPersonQuery(v9);
  type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v14);
  v15 = (v2 + *(v10 + 28));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *(v2 + 8) = v1;
  *(v2 + 16) = v0;
  sub_22BE2343C();
  *v2 = v8;
  *v15 = v6;
  v15[1] = v4;
  sub_22BE1AABC();
}

uint64_t sub_22C0C7104()
{
  v4 = sub_22BE37898();
  v5(v4);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v3[1] = v2;
  v3[2] = v1;
  *v3 = v0;
  return result;
}

uint64_t TranscriptProtoActionParameterContext.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionParameterContext(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionParameterContext.tool.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionParameterContext(v0);
  return sub_22BE18504();
}

void TranscriptProtoActionParameterContext.init(statementID:parameterID:tool:actionClass:)()
{
  sub_22BE19460();
  sub_22BE48E10();
  v3 = v2;
  v5 = *v4;
  type metadata accessor for TranscriptProtoActionParameterContext(0);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v9);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v13);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v3 = v1;
  *(v3 + 8) = v0;
  sub_22BE2343C();
  *(v3 + 16) = v5;
  sub_22BE1AABC();
}

void static TranscriptProtoSessionErrorEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE46DA4(v2, v3);
  v5 = type metadata accessor for TranscriptProtoExecutorError(v4);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v8 = sub_22C0E9724(v7);
  v9 = type metadata accessor for TranscriptProtoPlannerError(v8);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v11 = sub_22C0E9BB8();
  v12 = type metadata accessor for TranscriptProtoSessionCoordinatorError(v11);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v16 = v15 - v14;
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v19 = sub_22BE28E74(v18);
  type metadata accessor for TranscriptProtoSessionErrorEnum(v19);
  sub_22BE18000();
  MEMORY[0x28223BE20](v20);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v21);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v22);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE5CE4C(&qword_27D911730, &qword_22C2AE588);
  sub_22BE19448(v24);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE33A6C();
      sub_22C0C2A68();
      if (sub_22C0E9F74() != 1)
      {
        goto LABEL_13;
      }

      sub_22C0E983C();
      sub_22C0C1B18();
      static TranscriptProtoSessionCoordinatorError.== infix(_:_:)(v1, v16);
      sub_22C0C1AC4();
      goto LABEL_10;
    case 2u:
      sub_22BE33A6C();
      sub_22C0C2A68();
      if (sub_22C0E9F74() == 2)
      {
        sub_22C0E9B94();
        sub_22C0C1B18();
        v26 = sub_22BE1A8C4();
        static TranscriptProtoPlannerError.== infix(_:_:)(v26);
        sub_22C0C1AC4();
        sub_22BE336E8();
        goto LABEL_10;
      }

      sub_22C0E9A74();
      goto LABEL_13;
    case 3u:
      sub_22BE33A6C();
      sub_22C0C2A68();
      if (sub_22C0E9F74() != 3)
      {
        sub_22C0E9830();
        goto LABEL_13;
      }

      sub_22C0E9B94();
      sub_22C0E9A5C();
      sub_22C0C1B18();
      v27 = sub_22BE1B328();
      static TranscriptProtoExecutorError.== infix(_:_:)(v27);
      sub_22C0C1AC4();
LABEL_10:
      sub_22C0C1AC4();
      sub_22BE1BCAC();
      break;
    default:
      sub_22BE33A6C();
      sub_22C0C2A68();
      if (sub_22C0E9F74())
      {
        sub_22BE28F6C();
LABEL_13:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D911730, &qword_22C2AE588);
      }

      else
      {
        sub_22BE1B488();
        sub_22C0E9A68();
        sub_22C0C1B18();
        sub_22BE33C2C();
        v30 = v30 && v28 == v29;
        if (v30 || (sub_22C274014() & 1) != 0)
        {
          sub_22BE3FEBC();
          if (v30)
          {
            sub_22C2704B4();
            v31 = sub_22C0C1B6C();
            sub_22BE3C224(v31);
          }
        }

        sub_22BE18AC0();
        sub_22C0C1AC4();
        sub_22BE35838();
        sub_22C0C1AC4();
        sub_22BE1BCAC();
      }

      break;
  }

  sub_22C0E9B70();
  sub_22BE1AABC();
}

void static TranscriptProtoSessionCoordinatorErrorEnum.== infix(_:_:)()
{
  sub_22BE19460();
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v1);
  sub_22BE183AC();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v2);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v3);
  sub_22BE25A90();
  type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v5);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE5CE4C(&qword_27D911738, &qword_22C2AE598);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0C2A68();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BE37C04();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22BE1B488();
        sub_22C0E9A5C();
        sub_22C0C1B18();
        sub_22BE33C2C();
        v12 = v12 && v10 == v11;
        if (v12 || (sub_22C274014() & 1) != 0)
        {
          sub_22BE3FEBC();
          if (v12)
          {
            sub_22C0E9B14();
            v13 = sub_22C0C1B6C();
            sub_22BE3C224(v13);
          }
        }

LABEL_34:
        sub_22BE18AC0();
        sub_22C0C1AC4();
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
        goto LABEL_35;
      }
    }

    else
    {
      sub_22BE37C04();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22BE1B488();
        sub_22C0C1B18();
        sub_22BE33C2C();
        v16 = v12 && v14 == v15;
        if (v16 || (sub_22C274014() & 1) != 0)
        {
          sub_22BE3FEBC();
          if (v12)
          {
            sub_22C0E9B14();
            v17 = sub_22C0C1B6C();
            sub_22BE39EB8(v17);
          }
        }

        goto LABEL_34;
      }
    }
  }

  else
  {
    sub_22BE37C04();
    sub_22C0C2A68();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22BE1B488();
      sub_22C0C1B18();
      sub_22BE33C2C();
      v20 = v12 && v18 == v19;
      if (v20 || (sub_22C274014() & 1) != 0)
      {
        sub_22BE3FEBC();
        if (v12)
        {
          sub_22C0E9B14();
          v21 = sub_22C0C1B6C();
          sub_22BE32E64(v21);
        }
      }

      goto LABEL_34;
    }
  }

  sub_22BE28F6C();
  sub_22C0C1AC4();
  sub_22BE33928(v0, &qword_27D911738, &qword_22C2AE598);
LABEL_35:
  sub_22BE1AABC();
}

void static TranscriptProtoExecutorErrorEnum.== infix(_:_:)()
{
  sub_22BE3C358();
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v2);
  v3 = sub_22BE35598();
  v4 = type metadata accessor for TranscriptProtoExecutorErrorEnum(v3);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = sub_22BE5CE4C(&qword_27D911740, &qword_22C2AE5A8);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B72C();
  v12 = *(v11 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE181B0(v0);
  if (!v13)
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    sub_22BE181B0(v0 + v12);
    if (!v13)
    {
      sub_22BE1B488();
      sub_22C0C1B18();
      sub_22C0E9854();
      if (v14)
      {
        v17 = v15 == v16;
      }

      else
      {
        v17 = 0;
      }

      if (!v17 && (sub_22C274014() & 1) == 0 || *(v8 + 16) != *(v1 + 16) || (sub_22C2704B4(), sub_22C0C1B6C(), (sub_22C0E9EA4() & 1) == 0))
      {
        sub_22BE18AC0();
        sub_22C0C1AC4();
        sub_22BE3C5E4();
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
        goto LABEL_19;
      }

      sub_22BE18AC0();
      sub_22C0C1AC4();
      sub_22BE3C5E4();
      sub_22C0C1AC4();
      goto LABEL_5;
    }

    sub_22BE28F6C();
    sub_22C0C1AC4();
LABEL_9:
    sub_22BE33928(v0, &qword_27D911740, &qword_22C2AE5A8);
    goto LABEL_19;
  }

  sub_22BE181B0(v0 + v12);
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_22BE26148();
  sub_22C0C1AC4();
LABEL_19:
  sub_22BE267B8();
}

void static TranscriptProtoPlannerErrorEnum.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C0E9C34();
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  sub_22BE41FF4();
  MEMORY[0x28223BE20](v6);
  sub_22BE181E4();
  type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v8);
  sub_22BE26800();
  v9 = sub_22BE5CE4C(&qword_27D911748, &qword_22C2AE5B8);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE1B62C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22BE1B488();
      sub_22C0C1B18();
      v15 = *v4 == *v3 && v4[1] == v3[1];
      if (v15 || (sub_22C274014()) && v4[2] == v3[2])
      {
        sub_22C0E9B14();
        sub_22C0C1B6C();
        if (sub_22C272FD4())
        {
          goto LABEL_24;
        }
      }

      goto LABEL_26;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE1B488();
      sub_22C0C1B18();
      sub_22C0E9854();
      v14 = v14 && v12 == v13;
      if (v14 || (sub_22C274014()) && *(v2 + 16) == *(v1 + 16))
      {
        sub_22C2704B4();
        sub_22C0C1B6C();
        if (sub_22C0E9EA4())
        {
LABEL_24:
          sub_22BE18AC0();
          sub_22C0C1AC4();
          sub_22C0C1AC4();
          goto LABEL_25;
        }
      }

LABEL_26:
      sub_22BE18AC0();
      sub_22C0C1AC4();
      sub_22C0C1AC4();
      sub_22BE26148();
      sub_22C0C1AC4();
      goto LABEL_27;
    }

LABEL_13:
    sub_22BE28F6C();
    sub_22C0C1AC4();
    goto LABEL_15;
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
LABEL_25:
    sub_22BE26148();
    sub_22C0C1AC4();
    goto LABEL_27;
  }

LABEL_15:
  sub_22BE33928(v0, &qword_27D911748, &qword_22C2AE5B8);
LABEL_27:
  sub_22BE1AABC();
}

void static TranscriptProtoActionRequirementEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v20 = v5;
  v6 = sub_22BE183BC();
  v7 = type metadata accessor for TranscriptProtoPermissionRequirement(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE35598();
  v10 = type metadata accessor for TranscriptProtoAppRequirement(v9);
  v11 = sub_22BE19448(v10);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v14 = v13 - v12;
  type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v16);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v17);
  sub_22BE324EC();
  v18 = sub_22BE5CE4C(&qword_27D911750, &qword_22C2AE5C8);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0E9D34();
  sub_22BE1B62C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE390E8();
      sub_22C0C2A68();
      if (sub_22C0E9F5C() != 1)
      {
        goto LABEL_11;
      }

      sub_22BE393F8();
      sub_22C0C1B18();
      static TranscriptProtoPermissionRequirement.== infix(_:_:)();
      sub_22C0C1AC4();
      goto LABEL_14;
    case 2u:
      sub_22BE390E8();
      sub_22C0C2A68();
      if (sub_22C0E9F5C() == 2)
      {
        sub_22BE393F8();
        sub_22C0C1B18();
        static TranscriptProtoSystemRequirementMessage.== infix(_:_:)(v1, v20);
        sub_22C0C1AC4();
        goto LABEL_14;
      }

      sub_22BE3ACD8();
      goto LABEL_11;
    case 3u:
      if (sub_22C0E9F5C() != 3)
      {
        goto LABEL_12;
      }

      sub_22BE26148();
      sub_22C0C1AC4();
      goto LABEL_15;
    default:
      sub_22BE390E8();
      sub_22C0C2A68();
      if (sub_22C0E9F5C())
      {
        sub_22BE3E76C();
LABEL_11:
        sub_22C0C1AC4();
LABEL_12:
        sub_22BE33928(v0, &qword_27D911750, &qword_22C2AE5C8);
      }

      else
      {
        sub_22BE393F8();
        sub_22C0C1B18();
        static TranscriptProtoAppRequirement.== infix(_:_:)(v2, v14);
        sub_22C0C1AC4();
LABEL_14:
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
      }

LABEL_15:
      sub_22BE363EC();
      sub_22BE1AABC();
      return;
  }
}

void static TranscriptProtoSystemRequirementMessageEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v24 = v5;
  v6 = sub_22BE183BC();
  v7 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v9 = sub_22BE37EA4();
  type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(v9);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v11 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(v11);
  sub_22BE18000();
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v17);
  sub_22BE181E4();
  v18 = sub_22BE5CE4C(&qword_27D911758, &qword_22C2AE5D8);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C0E96D4();
      sub_22C0C2A68();
      if (sub_22C0E9BA0() != 1)
      {
        goto LABEL_18;
      }

      sub_22C0E9A50();
      sub_22C0C1B18();
      static TranscriptProtoSystemRequirementAuthenticationRequest.== infix(_:_:)(v1, v2);
      sub_22C0C1AC4();
      sub_22BE3C5E4();
      goto LABEL_12;
    case 2u:
      sub_22C0E96D4();
      sub_22C0C2A68();
      if (sub_22C0E9BA0() != 2)
      {
        sub_22BE3E76C();
        goto LABEL_18;
      }

      sub_22C0E9A50();
      sub_22C0C1B18();
      static TranscriptProtoSystemRequirementUserLocationForSystemRequest.== infix(_:_:)(v15, v24);
      sub_22C0C1AC4();
LABEL_12:
      sub_22C0C1AC4();
      sub_22BE23A1C();
      break;
    case 3u:
      if (sub_22C0E9BA0() == 3)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    case 4u:
      if (sub_22C0E9BA0() == 4)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    case 5u:
      if (sub_22C0E9BA0() == 5)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    case 6u:
      if (sub_22C0E9BA0() == 6)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    default:
      sub_22C0E96D4();
      sub_22C0C2A68();
      if (sub_22C0E9BA0())
      {
        sub_22C0E9830();
LABEL_18:
        sub_22C0C1AC4();
LABEL_19:
        sub_22BE33928(v0, &qword_27D911758, &qword_22C2AE5D8);
      }

      else
      {
        sub_22C0E9A50();
        sub_22C0C1B18();
        sub_22BE33C2C();
        v22 = v22 && v20 == v21;
        if (v22 || (sub_22C274014()) && (sub_22BEC0A84(), v23 = sub_22C0C1B6C(), (sub_22BE39EB8(v23)))
        {
          sub_22C0E98D0();
          sub_22C0C1AC4();
          sub_22BE431C0();
          sub_22C0C1AC4();
LABEL_27:
          sub_22BE23A1C();
        }

        else
        {
          sub_22C0E98D0();
          sub_22C0C1AC4();
          sub_22BE431C0();
          sub_22C0C1AC4();
          sub_22BE23A1C();
        }
      }

      break;
  }

  sub_22C0E9B70();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.timeoutForLocationFetch.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.init(isPreciseLocationRequired:minimumViableLocationAccuracy:timeoutForLocationFetch:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  result = sub_22C0E9D10(v12);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t _s30IntelligenceFlowPlannerSupport053TranscriptProtoSystemRequirementAuthenticationRequestI9LevelEnumO9hashValueSivg_0()
{
  sub_22C0E9D88();
  sub_22C274154();
  sub_22BE290B4();
  return sub_22C2741A4();
}

uint64_t sub_22C0C8FD0()
{
  sub_22C0E9D88();
  sub_22C274154();
  sub_22BE290B4();
  return sub_22C2741A4();
}

uint64_t TranscriptProtoActionFailure.concludesStreamingStatementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionFailure(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionFailure.init(failure:concludesStreamingStatementID:)()
{
  v1 = sub_22BE28634();
  v2 = type metadata accessor for TranscriptProtoActionFailureFailure(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  type metadata accessor for TranscriptProtoActionFailure(v5);
  v6 = sub_22BFBFCD0();
  v7 = type metadata accessor for TranscriptProtoStatementID(v6);
  sub_22BE30FA8(v7);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

void static TranscriptProtoActionFailureFailureEnum.== infix(_:_:)()
{
  sub_22BE19460();
  type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  v23 = v4;
  v5 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v22 = v7;
  v8 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoActionFailureFailureEnum(v8);
  sub_22BE18000();
  MEMORY[0x28223BE20](v9);
  sub_22BE183AC();
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v10);
  sub_22BE181E4();
  v11 = sub_22BE5CE4C(&qword_27D911760, &qword_22C2AE5F8);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE19EBC();
      sub_22C0C2A68();
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_49;
      }

      sub_22C0E9B94();
      sub_22C0C1B18();
      v13 = v2[1];
      v14 = v23[1];
      if (v13)
      {
        if (!v14)
        {
          goto LABEL_71;
        }

        v15 = *v2 == *v23 && v13 == v14;
        if (!v15 && (sub_22C274014() & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else if (v14)
      {
LABEL_71:
        sub_22C0E9888();
        sub_22C0C1AC4();
        goto LABEL_72;
      }

      sub_22C2704B4();
      v21 = sub_22C0C1B6C();
      if (sub_22BE3C224(v21))
      {
        sub_22C0E9888();
        sub_22C0C1AC4();
        goto LABEL_68;
      }

      goto LABEL_71;
    case 2u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 3u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 4u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 5u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 6u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 7u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 8u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 9u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0xAu:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0xBu:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0xCu:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0xDu:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0xEu:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0xFu:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0x10u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0x11u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0x12u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0x13u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    default:
      sub_22BE19EBC();
      sub_22C0C2A68();
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_22C0E9830();
LABEL_49:
        sub_22C0C1AC4();
LABEL_50:
        sub_22BE33928(v0, &qword_27D911760, &qword_22C2AE5F8);
      }

      else
      {
        sub_22C0E9B94();
        sub_22C0C1B18();
        sub_22BE33C2C();
        v18 = v15 && v16 == v17;
        if (v18 || (sub_22C274014()) && (v1[2] == v22[2] ? (v19 = v1[3] == v22[3]) : (v19 = 0), (v19 || (sub_22C274014()) && v1[4] == v22[4] && (sub_22BE27190(), sub_22C2704B4(), v20 = sub_22C0C1B6C(), (sub_22BE39EB8(v20))))
        {
          sub_22C0E98A0();
          sub_22C0C1AC4();
LABEL_68:
          sub_22C0C1AC4();
LABEL_69:
          sub_22BE26148();
          sub_22C0C1AC4();
        }

        else
        {
          sub_22C0E98A0();
          sub_22C0C1AC4();
LABEL_72:
          sub_22C0C1AC4();
          sub_22BE26148();
          sub_22C0C1AC4();
        }
      }

      sub_22BE1AABC();
      return;
  }
}

uint64_t TranscriptProtoActionSuccess.returnValue.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionSuccess(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionSuccess.undoContext.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionSuccess(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionSuccess.followUpAction.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionSuccess(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.getter()
{
  type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for TranscriptProtoActionSuccess(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionSuccess(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0C9AB8()
{
  v0 = sub_22BE1C364();
  v1(v0);
  return sub_22BE182B4();
}

uint64_t sub_22C0C9B18()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoActionSuccess.concludesStreamingStatementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionSuccess(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionSuccess.init(returnValue:undoContext:didShowInAppResult:followUpAction:shouldOpen:inAppSearchString:concludesStreamingStatementID:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  sub_22C0E9C34();
  v9 = v8;
  v10 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_22C272594();
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v14);
  type metadata accessor for TranscriptProtoUndoContext(0);
  sub_22BE1A140();
  sub_22BE19DC4(v15, v16, v17, v18);
  type metadata accessor for TranscriptProtoFollowUpAction(0);
  sub_22BE1A140();
  sub_22BE19DC4(v19, v20, v21, v22);
  v23 = &v9[*(v10 + 36)];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v24, v25, v26, v27);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  sub_22BE2343C();
  *v9 = a3;
  sub_22BE2343C();
  v9[1] = a5;
  *v23 = a6;
  v23[1] = a7;
  return sub_22BE2343C();
}

uint64_t sub_22C0C9DAC()
{
  sub_22BE3852C();
  v2 = v1;
  v4 = v3(0);
  v7 = sub_22C0E966C(v2, v5, v6, v4);
  v0(v7);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2590C();
  return sub_22BE3D598();
}

void static TranscriptProtoFollowUpActionExecutableActionEnum.== infix(_:_:)()
{
  sub_22BE3C358();
  type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v1);
  sub_22BE183AC();
  v4 = (v2 - v3);
  MEMORY[0x28223BE20](v5);
  sub_22C0E9BD8();
  v6 = sub_22BE5CE4C(&qword_27D911768, &unk_22C2AE620);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22C0C1B18();
  sub_22C0C1B18();
  v8 = *v0 == *v4 && v0[1] == v4[1];
  if (v8 || (sub_22C274014()) && (MEMORY[0x2318A6720](v0[2], v0[3], v4[2], v4[3]) & 1) != 0 && v0[4] == v4[4])
  {
    sub_22C2704B4();
    sub_22C0C1B6C();
    sub_22C272FD4();
  }

  sub_22C0C1AC4();
  sub_22C0C1AC4();
  sub_22BE267B8();
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.linkAction.getter()
{
  v0 = sub_22BE19454();
  sub_22BE29D7C(v0, v1);
  return sub_22BE19454();
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.linkAction.setter()
{
  sub_22BE1A8A8();
  result = sub_22BE29DD4(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_22C0CA26C()
{
  sub_22BE3852C();
  v6 = sub_22BE367A8();
  v8 = v7(v6);
  result = sub_22C0E9D10(v8);
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v0;
  return result;
}

uint64_t TranscriptProtoParameterConfirmation.item.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterConfirmation(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterConfirmation.ancestorValue.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterConfirmation(v0);
  return sub_22BE18504();
}

void TranscriptProtoParameterConfirmation.init(parameterID:parameterIndex:item:ancestorValue:)()
{
  sub_22BE22B9C();
  v5 = v4;
  v6 = sub_22BE41300();
  type metadata accessor for TranscriptProtoParameterConfirmation(v6);
  v7 = sub_22C272594();
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v7);
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v7);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v2;
  *(v3 + 8) = v1;
  *(v3 + 16) = v0;
  *(v3 + 24) = v5 & 1;
  sub_22C0E9CCC();
  sub_22C0E9CCC();
  sub_22BE234D8();
}

uint64_t TranscriptProtoParameterDisambiguation.init(parameterID:parameterIndex:items:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = sub_22BE367A8();
  v12 = type metadata accessor for TranscriptProtoParameterDisambiguation(v11);
  result = sub_22C0E9D10(v12);
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 32) = a4 & 1;
  *(v7 + 16) = a5;
  *(v7 + 24) = a3;
  return result;
}

void static TranscriptProtoStatementOutcomeEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v100[19] = v2;
  v101 = v1;
  v3 = type metadata accessor for TranscriptProtoSnippetStream(0);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v100[11] = v5;
  v6 = sub_22BE183BC();
  v100[0] = type metadata accessor for TranscriptProtoValueDisambiguation(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v100[12] = v8;
  v9 = sub_22BE183BC();
  v10 = type metadata accessor for TranscriptProtoActionFailure(v9);
  v11 = sub_22BE19448(v10);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v100[10] = v12;
  v13 = sub_22BE183BC();
  v14 = type metadata accessor for TranscriptProtoToolDisambiguation(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  v100[9] = v16;
  v17 = sub_22BE183BC();
  v18 = type metadata accessor for TranscriptProtoActionRequirement(v17);
  v19 = sub_22BE19448(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v100[8] = v20;
  v21 = sub_22BE183BC();
  v22 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(v21);
  v23 = sub_22BE19448(v22);
  MEMORY[0x28223BE20](v23);
  sub_22BE17A44();
  v100[7] = v24;
  v25 = sub_22BE183BC();
  v26 = type metadata accessor for TranscriptProtoParameterNotAllowed(v25);
  v27 = sub_22BE19448(v26);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v100[6] = v28;
  v29 = sub_22BE183BC();
  v30 = type metadata accessor for TranscriptProtoParameterDisambiguation(v29);
  v31 = sub_22BE19448(v30);
  MEMORY[0x28223BE20](v31);
  sub_22BE17A44();
  v100[5] = v32;
  v33 = sub_22BE183BC();
  v34 = type metadata accessor for TranscriptProtoParameterConfirmation(v33);
  v35 = sub_22BE19448(v34);
  MEMORY[0x28223BE20](v35);
  sub_22BE17A44();
  v100[4] = v36;
  v37 = sub_22BE183BC();
  v38 = type metadata accessor for TranscriptProtoParameterNeedsValue(v37);
  v39 = sub_22BE19448(v38);
  MEMORY[0x28223BE20](v39);
  sub_22BE17A44();
  v100[3] = v40;
  v41 = sub_22BE183BC();
  v42 = type metadata accessor for TranscriptProtoActionConfirmation(v41);
  v43 = sub_22BE19448(v42);
  MEMORY[0x28223BE20](v43);
  sub_22BE17A44();
  v100[2] = v44;
  v45 = sub_22BE183BC();
  v46 = type metadata accessor for TranscriptProtoActionSuccess(v45);
  v47 = sub_22BE19448(v46);
  MEMORY[0x28223BE20](v47);
  sub_22BE17A44();
  v100[1] = v48;
  v49 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoStatementOutcomeEnum(v49);
  sub_22BE18000();
  MEMORY[0x28223BE20](v50);
  sub_22BE183AC();
  sub_22BE389A0();
  MEMORY[0x28223BE20](v51);
  sub_22BE3C05C(v52, v53, v54, v55, v56, v57, v58, v59, v100[0]);
  MEMORY[0x28223BE20](v60);
  sub_22BE23730(v61, v62, v63, v64, v65, v66, v67, v68, v100[0]);
  MEMORY[0x28223BE20](v69);
  sub_22BE19490();
  v100[15] = v70;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v71);
  sub_22BE19490();
  v100[14] = v72;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v73);
  sub_22BE4608C(v74, v75, v76, v77, v78, v79, v80, v81, v100[0]);
  MEMORY[0x28223BE20](v82);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v83);
  sub_22BE23858();
  MEMORY[0x28223BE20](v84);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v85);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v86);
  sub_22BE18094();
  MEMORY[0x28223BE20](v87);
  sub_22BE25A90();
  v88 = sub_22BE5CE4C(&qword_27D911770, &unk_22C2AE630);
  sub_22BE19448(v88);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v89);
  v91 = v100 - v90;
  v93 = *(v92 + 56);
  sub_22C0C2A68();
  v101 = v93;
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() == 1)
      {
        sub_22BE3CF90();
        sub_22C0C1B18();
        static TranscriptProtoActionConfirmation.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_29;
      }

      sub_22BE3E76C();
      goto LABEL_39;
    case 2u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22C0C1B18();
        static TranscriptProtoParameterNeedsValue.== infix(_:_:)();
        sub_22C0C1AC4();
        sub_22BE19454();
        sub_22C0C1AC4();
        sub_22BE311F8();
        goto LABEL_30;
      }

      sub_22BE26148();
      goto LABEL_39;
    case 3u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() == 3)
      {
        sub_22BE3CF90();
        sub_22C0C1B18();
        sub_22BE33BE8();
        static TranscriptProtoParameterConfirmation.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_29;
      }

      sub_22BE20118();
      goto LABEL_39;
    case 4u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() == 4)
      {
        sub_22BE3CF90();
        sub_22C0C1B18();
        static TranscriptProtoParameterDisambiguation.== infix(_:_:)(v0);
        sub_22C0C1AC4();
        goto LABEL_29;
      }

      sub_22BE3ACD8();
      goto LABEL_39;
    case 5u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() == 5)
      {
        sub_22BE3CF90();
        sub_22C0C1B18();
        sub_22BE25C08();
        static TranscriptProtoParameterNotAllowed.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_29;
      }

      sub_22C0E9848();
      goto LABEL_39;
    case 6u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() != 6)
      {
        goto LABEL_39;
      }

      sub_22BE3CF90();
      sub_22C0C1B18();
      sub_22BE1B328();
      static TranscriptProtoParameterCandidatesNotFound.== infix(_:_:)();
      goto LABEL_28;
    case 7u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() != 7)
      {
        goto LABEL_39;
      }

      sub_22BE3CF90();
      sub_22C0C1B18();
      v94 = sub_22BE1B328();
      static TranscriptProtoActionRequirement.== infix(_:_:)(v94);
      goto LABEL_28;
    case 8u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() != 8)
      {
        goto LABEL_39;
      }

      sub_22BE3CF90();
      sub_22C0C1B18();
      v98 = sub_22BE1B328();
      static TranscriptProtoToolDisambiguation.== infix(_:_:)(v98, v99);
      goto LABEL_28;
    case 9u:
      sub_22BE1A75C();
      sub_22BE385CC();
      sub_22C0C2A68();
      if (sub_22BE35D68() != 9)
      {
        goto LABEL_39;
      }

      sub_22BE3CF90();
      sub_22C0C1B18();
      sub_22BE1B328();
      static TranscriptProtoActionFailure.== infix(_:_:)();
      goto LABEL_28;
    case 0xAu:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() != 10)
      {
        goto LABEL_39;
      }

      sub_22BE3CF90();
      sub_22C0C1B18();
      v95 = sub_22C0E9E3C();
      sub_22BE98DD8(v95, v96);
      if (v97)
      {
        sub_22BE3FF30();
        sub_22C0C1B6C();
        sub_22C272FD4();
      }

      sub_22C0E99CC();
      sub_22C0C1AC4();
      sub_22C0C1AC4();
      sub_22BE311F8();
      sub_22C0C1AC4();
      goto LABEL_40;
    case 0xBu:
      sub_22BE1A75C();
      sub_22C0E9D94();
      sub_22C0C2A68();
      if (sub_22BE35D68() != 11)
      {
        goto LABEL_39;
      }

      sub_22BE3CF90();
      sub_22C0C1B18();
      sub_22BE1B328();
      static TranscriptProtoSnippetStream.== infix(_:_:)();
LABEL_28:
      sub_22C0C1AC4();
      goto LABEL_29;
    default:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68())
      {
        sub_22BE379D8();
LABEL_39:
        sub_22C0C1AC4();
        sub_22BE33928(v91, &qword_27D911770, &unk_22C2AE630);
      }

      else
      {
        sub_22BE3CF90();
        sub_22C0C1B18();
        sub_22BE2590C();
        static TranscriptProtoActionSuccess.== infix(_:_:)();
        sub_22C0C1AC4();
LABEL_29:
        sub_22C0C1AC4();
        sub_22BE311F8();
LABEL_30:
        sub_22C0C1AC4();
      }

LABEL_40:
      sub_22C0E9B70();
      sub_22BE1AABC();
      return;
  }
}

uint64_t TranscriptProtoParameterNeedsValue.typeInstance.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterNeedsValue(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterNeedsValue.context.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterNeedsValue(v0);
  return sub_22BE18504();
}

void TranscriptProtoParameterNeedsValue.init(parameterID:typeInstance:context:)()
{
  sub_22BE3C358();
  v3 = sub_22BE2597C();
  type metadata accessor for TranscriptProtoParameterNeedsValue(v3);
  sub_22BE23ED8();
  sub_22C2725A4();
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  v8 = sub_22C0E9D7C();
  type metadata accessor for TranscriptProtoParameterNeedsValueContext(v8);
  sub_22BE1A140();
  sub_22C0E9C4C(v9, v10, v11, v12);
  *v2 = v1;
  v2[1] = v0;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE267B8();
}

BOOL static TranscriptProtoParameterNeedsValueContextEnum.== infix(_:_:)()
{
  v0 = sub_22BE5CE4C(&qword_27D911778, &unk_22C2AE650);
  sub_22BE19448(v0);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22BE18040();
  sub_22C0C2A68();
  sub_22C0E9854();
  v4 = v4 && v2 == v3;
  v5 = 0;
  if (v4 || (sub_22C274014() & 1) != 0)
  {
    type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);
    sub_22BE341A4();
    sub_22C2704B4();
    sub_22C0C1B6C();
    if (sub_22C0E9E84())
    {
      v5 = 1;
    }
  }

  sub_22C0C1AC4();
  sub_22BE260B8();
  sub_22C0C1AC4();
  return v5;
}

uint64_t TranscriptProtoParameterNotAllowed.value.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterNotAllowed(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0CB5E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DB48();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void TranscriptProtoParameterNotAllowed.init(parameterID:value:reason:)()
{
  sub_22BE3C358();
  sub_22BE28798();
  v4 = *v3;
  type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  sub_22C272594();
  sub_22BE1A140();
  sub_22C0E9DE4(v5, v6, v7, v8);
  *v2 = v1;
  *(v2 + 8) = v0;
  sub_22BE2343C();
  *(v2 + 16) = v4;
  sub_22BE267B8();
}

uint64_t TranscriptProtoParameterCandidatesNotFound.value.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterCandidatesNotFound(v0);
  return sub_22BE18504();
}

void sub_22C0CB7B0()
{
  sub_22BE19460();
  sub_22BE32534();
  v4 = sub_22BE41300();
  v5(v4);
  v6 = sub_22C0E9B88();
  v0(v6);
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v10);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  sub_22BE2C278();
  sub_22BE1AABC();
}

void TranscriptProtoPlan.promptResponse.setter()
{
  sub_22BE1A8A8();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

void TranscriptProtoPlan.overrideID.setter()
{
  sub_22BE1A8A8();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
}

void TranscriptProtoPlan.init(prompt:promptResponse:statements:overrideID:planSource:)()
{
  sub_22BE19460();
  sub_22BE32534();
  v6 = v5;
  v8 = v7;
  sub_22BE44738();
  v10 = v9;
  v12 = *v11;
  *(v9 + 56) = 6;
  type metadata accessor for TranscriptProtoPlan(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v10 = v4;
  *(v10 + 8) = v3;
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 32) = v2;
  *(v10 + 40) = v1;
  *(v10 + 48) = v0;
  *(v10 + 56) = v12;
  sub_22BE1AABC();
}

uint64_t static TranscriptProtoRecoverableErrorEnum.== infix(_:_:)()
{
  sub_22BE18378();
  v0 = sub_22BE5CE4C(&qword_27D911780, &unk_22C2AE660);
  sub_22BE19448(v0);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE3607C();
  sub_22C0C2A68();
  sub_22C0E987C();
  sub_22C0C2A68();
  v2 = sub_22C0E9C28();
  static TranscriptProtoPlanGenerationError.== infix(_:_:)(v2);
  sub_22C0C1AC4();
  sub_22BE1804C();
  sub_22C0C1AC4();
  return sub_22BE36384();
}

uint64_t static TranscriptProtoPlanGenerationErrorEnum.== infix(_:_:)()
{
  sub_22BE18378();
  v0 = sub_22BE5CE4C(&qword_27D911788, &unk_22C2AE670);
  sub_22BE19448(v0);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE3607C();
  sub_22C0C2A68();
  sub_22C0E987C();
  sub_22C0C2A68();
  sub_22C0E9C28();
  static TranscriptProtoPlanGenerationModelOutputError.== infix(_:_:)();
  sub_22C0C1AC4();
  sub_22BE1804C();
  sub_22C0C1AC4();
  return sub_22BE36384();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.error.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v0);
  return sub_22BE18504();
}

void TranscriptProtoPlanGenerationModelOutputError.init(rawModelOutput:prompt:error:)()
{
  sub_22BE3C358();
  sub_22BE3852C();
  v5 = sub_22BE367A8();
  type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v5);
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE1A140();
  sub_22C0E9E10(v6, v7, v8, v9);
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t TranscriptProtoQueryStep.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryStep(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryStep.context.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryStep(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryStep.payload.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryStep(v0);
  return sub_22BE18504();
}

void TranscriptProtoQueryStep.init(statementID:context:payload:isAuthenticated:)()
{
  sub_22BE19460();
  v2 = v1;
  sub_22BE48E10();
  v3 = sub_22C0E9824();
  type metadata accessor for TranscriptProtoQueryStep(v3);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  v8 = sub_22C0E9D7C();
  type metadata accessor for TranscriptProtoActionParameterContext(v8);
  sub_22BE1A140();
  sub_22BE19DC4(v9, v10, v11, v12);
  type metadata accessor for TranscriptProtoQueryPayload(0);
  v13 = sub_22BE409A4();
  sub_22BE19DC4(v13, v14, v15, v16);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  *v0 = v2;
  sub_22BE1AABC();
}

uint64_t TranscriptProtoQueryPayload.StringQuery.typeID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryPayload.StringQuery(v0);
  return sub_22BE18504();
}

void sub_22C0CC310()
{
  sub_22BE19460();
  sub_22BE32534();
  v4 = sub_22BE41300();
  v5(v4);
  v6 = sub_22C0E9B88();
  v0(v6);
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v10);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3D598();
  *v3 = v2;
  v3[1] = v1;
  sub_22BE1AABC();
}

uint64_t TranscriptProtoQueryPayload.IdentifierQuery.typeID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(v0);
  return sub_22BE18504();
}

void static TranscriptProtoQueryPayloadEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE46DA4(v1, v2);
  type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v6 = sub_22C0E9724(v5);
  v7 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v10 = sub_22BE28E74(v9);
  v11 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(v10);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  v13 = sub_22BE183BC();
  v14 = type metadata accessor for TranscriptProtoPersonQuery(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  v18 = sub_22BE48A8C(v17);
  type metadata accessor for TranscriptProtoQueryPayloadEnum(v18);
  sub_22BE18000();
  MEMORY[0x28223BE20](v19);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v20);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v21);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v22);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v23);
  sub_22BE181E4();
  v24 = sub_22BE5CE4C(&qword_27D911790, &unk_22C2AE6A0);
  sub_22BE19448(v24);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0E9D34();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1A00C();
      sub_22C0C2A68();
      if (sub_22C0E9D4C() != 1)
      {
        goto LABEL_17;
      }

      sub_22BE28DC8();
      sub_22C0C1B18();
      static TranscriptProtoPersonQuery.== infix(_:_:)();
      sub_22C0C1AC4();
      goto LABEL_23;
    case 2u:
      sub_22BE1A00C();
      sub_22C0C2A68();
      if (sub_22C0E9D4C() == 2)
      {
        sub_22BE32BFC();
        sub_22C0E9D94();
        sub_22C0C1B18();
        sub_22BE2590C();
        static TranscriptProtoQueryPayload.StringQuery.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_23;
      }

      sub_22BE379D8();
      goto LABEL_17;
    case 3u:
      sub_22BE1A00C();
      sub_22C0C2A68();
      if (sub_22C0E9D4C() == 3)
      {
        sub_22BE32BFC();
        sub_22C0E9A68();
        sub_22C0C1B18();
        static TranscriptProtoQueryPayload.IdentifierQuery.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_23;
      }

      sub_22BE291DC();
      goto LABEL_17;
    case 4u:
      sub_22BE1A00C();
      sub_22C0C2A68();
      if (sub_22C0E9D4C() != 4)
      {
        sub_22BE25274();
        goto LABEL_17;
      }

      sub_22BE32BFC();
      sub_22C0E9A5C();
      sub_22C0C1B18();
      sub_22BEA51FC();
      if (v26)
      {
        sub_22BEC0A84();
        v27 = sub_22C0C1B6C();
        sub_22BE32E64(v27);
      }

      sub_22BE25274();
      sub_22C0C1AC4();
      sub_22BE25274();
      goto LABEL_23;
    default:
      sub_22BE1A00C();
      sub_22C0C2A68();
      if (sub_22C0E9D4C())
      {
        sub_22BE35BC8();
LABEL_17:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D911790, &unk_22C2AE6A0);
      }

      else
      {
        v28 = sub_22BE32BFC();
        sub_22BE39F80(v28);
        sub_22C0E9E3C();
        sub_22BEA51FC();
        if (v29)
        {
          sub_22BEC0A84();
          v30 = sub_22C0C1B6C();
          sub_22BE39EB8(v30);
        }

        sub_22BE35BC8();
        sub_22C0C1AC4();
        sub_22BE35BC8();
LABEL_23:
        sub_22C0C1AC4();
        sub_22BE20524();
      }

      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
  }
}

void TranscriptProtoQueryStepResults.rawQueryEventID.setter()
{
  sub_22BE1A8A8();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
}

uint64_t TranscriptProtoQueryStepResults.originStatementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryStepResults(v0);
  return sub_22BE18504();
}

void TranscriptProtoQueryStepResults.init(queryResults:originStatementID:rawQueryEventID:)()
{
  sub_22BE3C358();
  v4 = sub_22BE2597C();
  type metadata accessor for TranscriptProtoQueryStepResults(v4);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22C0E9C4C(v5, v6, v7, v8);
  *v3 = v2;
  sub_22BE2343C();
  v3[1] = v1;
  v3[2] = v0;
  sub_22BE267B8();
}

void TranscriptProtoResponseDialog.fullSpeak.setter()
{
  sub_22BE1A8A8();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

void TranscriptProtoResponseDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)()
{
  sub_22BE19460();
  v8 = v7;
  sub_22C0E9DA0();
  sub_22BE1B23C();
  v10 = v9;
  type metadata accessor for TranscriptProtoResponseDialog(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v4;
  v10[3] = v3;
  v10[4] = v2;
  v10[5] = v1;
  v10[6] = v0;
  v10[7] = v8;
  sub_22BE1AABC();
}

uint64_t TranscriptProtoResponseOutput.printedDialogOutput.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseOutput(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseOutput.spokenDialogOutput.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseOutput(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseOutput.options.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseOutput(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseOutput.attribution.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseOutput(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0CCF80()
{
  v0 = sub_22BE2BB48();
  v1(v0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t sub_22C0CCFCC()
{
  v3 = sub_22BE23708();
  v4(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoResponseOutput.dialogIdentifier.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseOutput(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:responseType:resultStatementIds:options:attribution:dialogIdentifier:entities:)@<X0>(uint64_t a1@<X0>, char *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v27 = *a2;
  v9 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v10 = type metadata accessor for TranscriptProtoDialogType(0);
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v10);
  v14 = sub_22BE3CE14();
  sub_22BE19DC4(v14, v15, v16, v10);
  type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  sub_22BE1A140();
  sub_22BE19DC4(v17, v18, v19, v20);
  type metadata accessor for TranscriptProtoVisualOutput(0);
  sub_22BE1A140();
  sub_22BE19DC4(v21, v22, v23, v24);
  v25 = (a5 + *(v9 + 48));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a5 = a1;
  sub_22BE2343C();
  sub_22BE2343C();
  *(a5 + 8) = v27;
  *(a5 + 16) = a3;
  sub_22BE2343C();
  result = sub_22BE2343C();
  *v25 = a4;
  v25[1] = a6;
  *(a5 + 24) = a7;
  return result;
}

void static TranscriptProtoVisualOutputType.== infix(_:_:)()
{
  sub_22BE19460();
  v8 = sub_22BE46DA4(v6, v7);
  v9 = type metadata accessor for TranscriptProtoAceCommandOutputPayload(v8);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v12 = sub_22BE28E74(v11);
  type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v15 = sub_22C0E9724(v14);
  type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(v15);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  v17 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoInAppResponseOutputPayload(v17);
  sub_22BE18000();
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  v20 = sub_22BE48A8C(v19);
  type metadata accessor for TranscriptProtoLiveActivityOutputPayload(v20);
  sub_22BE18000();
  MEMORY[0x28223BE20](v21);
  v22 = sub_22BE35598();
  type metadata accessor for TranscriptProtoVisualOutputType(v22);
  sub_22BE18000();
  MEMORY[0x28223BE20](v23);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v24);
  sub_22BE23858();
  MEMORY[0x28223BE20](v25);
  sub_22BE18094();
  MEMORY[0x28223BE20](v26);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v27);
  sub_22BE181E4();
  v28 = sub_22BE5CE4C(&qword_27D911798, &qword_22C2AE6C8);
  sub_22BE19448(v28);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE2577C();
      sub_22C0C2A68();
      if (sub_22C0E9D64() != 1)
      {
        goto LABEL_30;
      }

      sub_22C0E9AC4();
      sub_22BE385CC();
      sub_22C0C1B18();
      v33 = *v2 == *v3 && v2[1] == v3[1];
      if (v33 || (sub_22C274014() & 1) != 0)
      {
        sub_22BEC0A84();
        sub_22C0C1B6C();
        sub_22C0E9E64();
      }

      sub_22C0E993C();
      sub_22C0C1AC4();
      goto LABEL_41;
    case 2u:
      sub_22BE2577C();
      sub_22C0C2A68();
      if (sub_22C0E9D64() != 2)
      {
        sub_22BE3E76C();
        goto LABEL_30;
      }

      sub_22C0E9AC4();
      sub_22C0E9B7C();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v5, v5[1], *v2, v2[1]))
      {
        sub_22BEC0A84();
        sub_22C0C1B6C();
        sub_22C0E9A88(v5 + v1);
      }

      sub_22C0E9954();
      sub_22C0C1AC4();
      goto LABEL_41;
    case 3u:
      sub_22BE2577C();
      sub_22C0C2A68();
      if (sub_22C0E9D64() != 3)
      {
        sub_22BE3ACD8();
        goto LABEL_30;
      }

      sub_22C0E9AC4();
      sub_22C0E9A5C();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v4, v4[1], *v2, v2[1]))
      {
        v31 = v4[2] == v2[2] && v4[3] == v2[3];
        if (v31 || (sub_22C274014() & 1) != 0)
        {
          sub_22C2704B4();
          v32 = sub_22C0C1B6C();
          sub_22BE32E64(v32);
        }
      }

      sub_22BE36604();
      sub_22C0C1AC4();
      goto LABEL_41;
    case 4u:
      sub_22BE2577C();
      sub_22C0C2A68();
      if (sub_22C0E9D64() == 4)
      {
        sub_22C0E9AC4();
        sub_22C0C1B18();
        v30 = sub_22BE336E8();
        static TranscriptProtoAceCommandOutputPayload.== infix(_:_:)(v30);
        sub_22C0C1AC4();
        sub_22BE1A8C4();
        sub_22C0C1AC4();
        sub_22BE37730();
        goto LABEL_42;
      }

      sub_22C0E9A74();
      goto LABEL_30;
    default:
      sub_22BE2577C();
      sub_22C0C2A68();
      if (sub_22C0E9D64())
      {
        sub_22C0E9830();
LABEL_30:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D911798, &qword_22C2AE6C8);
      }

      else
      {
        sub_22C0E9AC4();
        sub_22C0C1B18();
        sub_22C0E9854();
        v36 = v31 && v34 == v35;
        if (v36 || (sub_22C274014() & 1) != 0)
        {
          sub_22C0E9F44();
          sub_22C0C1B6C();
          sub_22C272FD4();
        }

        sub_22BE39E7C();
        sub_22C0C1AC4();
LABEL_41:
        sub_22C0C1AC4();
        sub_22BE37730();
      }

LABEL_42:
      sub_22C0E9B70();
      sub_22BE1AABC();
      return;
  }
}

void static TranscriptProtoAceCommandOutputDataEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v9 = sub_22BE46DA4(v7, v8);
  type metadata accessor for TranscriptProtoCommandFailed(v9);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v12 = sub_22C0E9724(v11);
  type metadata accessor for TranscriptProtoRequestCompleted(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v15 = sub_22BE28E74(v14);
  type metadata accessor for TranscriptProtoRepeatIt(v15);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  v17 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoSayIt(v17);
  sub_22BE18000();
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  v20 = sub_22BE48A8C(v19);
  type metadata accessor for TranscriptProtoAddDialogs(v20);
  sub_22BE18000();
  MEMORY[0x28223BE20](v21);
  sub_22BE17A44();
  v42 = v22;
  v23 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoAddViews(v23);
  sub_22BE18000();
  MEMORY[0x28223BE20](v24);
  sub_22BE17A44();
  v41 = v25;
  v26 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(v26);
  sub_22BE18000();
  MEMORY[0x28223BE20](v27);
  sub_22BE183AC();
  sub_22BE41FF4();
  MEMORY[0x28223BE20](v28);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v29);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v30);
  sub_22BE23858();
  MEMORY[0x28223BE20](v31);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v32);
  sub_22BE181E4();
  v33 = sub_22BE5CE4C(&qword_27D9117A0, &unk_22C2AE6E0);
  sub_22BE19448(v33);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1B72C();
  v36 = *(v35 + 56);
  sub_22C0C2A68();
  sub_22C0E9D34();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1A350();
      sub_22C0C2A68();
      if (sub_22BE35F38() != 1)
      {
        sub_22BE25B30();
        goto LABEL_29;
      }

      sub_22BE393F8();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v4, v4[1], *v42, v42[1]))
      {
        sub_22BEC0A84();
        v39 = sub_22C0C1B6C();
        sub_22BE3C224(v39);
      }

      sub_22BE25B30();
      sub_22C0C1AC4();
      sub_22BE25B30();
      goto LABEL_38;
    case 2u:
      sub_22BE1A350();
      sub_22C0C2A68();
      if (sub_22BE35F38() != 2)
      {
        sub_22BE373E4();
        goto LABEL_29;
      }

      v37 = sub_22BE393F8();
      sub_22BE39F80(v37);
      if (MEMORY[0x2318A6720](*v5, v5[1], *v36, v36[1]))
      {
        sub_22BEC0A84();
        v38 = sub_22C0C1B6C();
        sub_22BE32E64(v38);
      }

      sub_22BE373E4();
      sub_22C0C1AC4();
      sub_22BE373E4();
      goto LABEL_38;
    case 3u:
      sub_22BE1A350();
      sub_22C0C2A68();
      if (sub_22BE35F38() != 3)
      {
        sub_22BE2F1EC();
        goto LABEL_29;
      }

      sub_22BE393F8();
      sub_22C0E9B7C();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v3, v3[1], *v36, v36[1]))
      {
        sub_22BEC0A84();
        sub_22C0C1B6C();
        sub_22C0E99FC();
      }

      sub_22BE2F1EC();
      sub_22C0C1AC4();
      sub_22BE2F1EC();
      goto LABEL_38;
    case 4u:
      sub_22BE1A350();
      sub_22C0C2A68();
      if (sub_22BE35F38() != 4)
      {
        sub_22BE2550C();
        goto LABEL_29;
      }

      sub_22BE393F8();
      sub_22C0E9A68();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v6, v6[1], *v36, v36[1]))
      {
        sub_22BEC0A84();
        sub_22C0C1B6C();
        sub_22C0E9A88(v1 + v6);
      }

      sub_22BE2550C();
      sub_22C0C1AC4();
      sub_22BE2550C();
      goto LABEL_38;
    case 5u:
      sub_22BE1A350();
      sub_22C0C2A68();
      if (sub_22BE35F38() != 5)
      {
        sub_22BE22CD4();
        goto LABEL_29;
      }

      sub_22BE393F8();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v1, v1[1], *v43, v43[1]))
      {
        sub_22C0E9F44();
        sub_22C0C1B6C();
        sub_22C0E9AD0();
      }

      sub_22BE22CD4();
      sub_22C0C1AC4();
      sub_22BE22CD4();
      goto LABEL_38;
    default:
      sub_22BE1A350();
      sub_22C0C2A68();
      if (sub_22BE35F38())
      {
        sub_22BE19574();
LABEL_29:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D9117A0, &unk_22C2AE6E0);
      }

      else
      {
        sub_22BE393F8();
        sub_22C0C1B18();
        if (MEMORY[0x2318A6720](*v2, v2[1], *v41, v41[1]))
        {
          sub_22BEC0A84();
          v40 = sub_22C0C1B6C();
          sub_22BE39EB8(v40);
        }

        sub_22BE19574();
        sub_22C0C1AC4();
        sub_22BE19574();
LABEL_38:
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
      }

      sub_22BE1AABC();
      return;
  }
}

uint64_t TranscriptProtoSayIt.serializedAceCommand.getter()
{
  v0 = sub_22BE19454();
  sub_22BE29D7C(v0, v1);
  return sub_22BE19454();
}

uint64_t TranscriptProtoSayIt.serializedAceCommand.setter()
{
  sub_22BE1A8A8();
  result = sub_22BE29DD4(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

void static TranscriptProtoDialogFormat.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = sub_22BE46DA4(v3, v4);
  type metadata accessor for TranscriptProtoCATDialog(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v8 = sub_22C0E9724(v7);
  v9 = type metadata accessor for TranscriptProtoSuppressed(v8);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v12 = sub_22BE28E74(v11);
  v13 = type metadata accessor for TranscriptProtoUnableToGenerate(v12);
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE17A44();
  v16 = sub_22BE48A8C(v15);
  type metadata accessor for TranscriptProtoGeneratedText(v16);
  sub_22BE18000();
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v18 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoSonicText(v18);
  sub_22BE18000();
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v20 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoStaticText(v20);
  sub_22BE18000();
  MEMORY[0x28223BE20](v21);
  sub_22BE17A44();
  v22 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoDialogFormat(v22);
  sub_22BE18000();
  MEMORY[0x28223BE20](v23);
  sub_22BE183AC();
  sub_22BE41FF4();
  MEMORY[0x28223BE20](v24);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v25);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v26);
  sub_22BE18094();
  MEMORY[0x28223BE20](v27);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v28);
  sub_22BE181E4();
  v29 = sub_22BE5CE4C(&qword_27D9117A8, &unk_22C2AE6F0);
  sub_22BE19448(v29);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0E9D34();
  sub_22BE1B62C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1BAE4();
      sub_22C0C2A68();
      if (sub_22BE3CB78() != 1)
      {
        sub_22BE19764();
        goto LABEL_36;
      }

      sub_22C0E9AB8();
      sub_22C0C1B18();
      sub_22BE33C2C();
      v36 = v33 && v34 == v35;
      if (v36 || (sub_22C274014() & 1) != 0)
      {
        sub_22BEC0A84();
        sub_22C0C1B6C();
        sub_22C0E99FC();
        sub_22BE19764();
        sub_22C0C1AC4();
      }

      else
      {
        sub_22BE19764();
        sub_22C0C1AC4();
      }

      sub_22BE19764();
      goto LABEL_49;
    case 2u:
      sub_22BE1BAE4();
      sub_22C0C2A68();
      if (sub_22BE3CB78() != 2)
      {
        sub_22BE3E76C();
        goto LABEL_36;
      }

      sub_22C0E9AB8();
      sub_22C0E9B7C();
      sub_22C0C1B18();
      sub_22BE33C2C();
      v33 = v33 && v31 == v32;
      if (v33 || (sub_22C274014() & 1) != 0)
      {
        sub_22BEC0A84();
        sub_22C0C1B6C();
        sub_22C0E9A88(v1 + v2);
      }

      sub_22BE31724();
      sub_22C0C1AC4();
      goto LABEL_49;
    case 3u:
      sub_22BE1BAE4();
      sub_22C0C2A68();
      if (sub_22BE3CB78() == 3)
      {
        sub_22C0E9AB8();
        sub_22BE385CC();
        sub_22C0C1B18();
        sub_22C2704B4();
        sub_22C0C1B6C();
        sub_22BE2590C();
        sub_22C272FD4();
        sub_22C0C1AC4();
        goto LABEL_49;
      }

      sub_22BE379D8();
      goto LABEL_36;
    case 4u:
      sub_22BE1BAE4();
      sub_22C0C2A68();
      if (sub_22BE3CB78() == 4)
      {
        sub_22C0E9AB8();
        sub_22C0E9A68();
        sub_22C0C1B18();
        sub_22C2704B4();
        sub_22C0C1B6C();
        sub_22BE33BE8();
        sub_22C272FD4();
        sub_22C0C1AC4();
        goto LABEL_49;
      }

      sub_22BE20118();
      goto LABEL_36;
    case 5u:
      sub_22BE1BAE4();
      sub_22C0C2A68();
      if (sub_22BE3CB78() != 5)
      {
        sub_22BE1AC98();
        goto LABEL_36;
      }

      sub_22C0E9AB8();
      sub_22C0C1B18();
      v37 = *v1 == *v42 && v1[1] == v42[1];
      if (v37 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E9F44();
        sub_22C0C1B6C();
        sub_22C0E9AD0();
        sub_22BE1AC98();
        sub_22C0C1AC4();
      }

      else
      {
        sub_22BE1AC98();
        sub_22C0C1AC4();
      }

      sub_22BE1AC98();
      goto LABEL_49;
    default:
      sub_22BE1BAE4();
      sub_22C0C2A68();
      if (sub_22BE3CB78())
      {
        sub_22C0E9830();
LABEL_36:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D9117A8, &unk_22C2AE6F0);
      }

      else
      {
        sub_22C0E9AB8();
        sub_22C0C1B18();
        sub_22BE33C2C();
        v40 = v33 && v38 == v39;
        if (v40 || (sub_22C274014() & 1) != 0)
        {
          sub_22BEC0A84();
          v41 = sub_22C0C1B6C();
          sub_22BE39EB8(v41);
        }

        sub_22C0E9924();
        sub_22C0C1AC4();
LABEL_49:
        sub_22C0C1AC4();
        sub_22BE29300();
      }

      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
  }
}

uint64_t TranscriptProtoResponseManifest.dialog.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseManifest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.visual.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseManifest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.templateID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseManifest(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0CED70()
{
  v0 = sub_22BE2BB48();
  v1(v0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t sub_22C0CEDBC()
{
  v3 = sub_22BE23708();
  v4(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoResponseManifest.templateLocation.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseManifest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.useTemplateAsFallback.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for TranscriptProtoResponseManifest(v2);
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t TranscriptProtoResponseManifest.useTemplateAsFallback.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseManifest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.getter()
{
  v2 = sub_22BE1A5E4();
  result = type metadata accessor for TranscriptProtoResponseManifest(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseManifest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.attribution.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseManifest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.init(parameters:dialog:visual:templateID:templateLocation:useTemplateAsFallback:dialogPresentationHint:attribution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, char a6@<W7>, void *a7@<X8>, char *a8)
{
  v29 = *a8;
  v10 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v11 = sub_22BE341A4();
  type metadata accessor for TranscriptProtoResponseDialog(v11);
  v12 = sub_22BE3CE14();
  sub_22BE19DC4(v12, v13, v14, v15);
  type metadata accessor for TranscriptProtoResponseVisual(0);
  sub_22BE1A140();
  sub_22BE19DC4(v16, v17, v18, v19);
  v20 = (a7 + v10[7]);
  v21 = (a7 + v10[8]);
  v22 = v10[9];
  v23 = v10[10];
  *(a7 + v23) = 2;
  type metadata accessor for TranscriptProtoUIType(0);
  v24 = sub_22BE409A4();
  sub_22BE19DC4(v24, v25, v26, v27);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a7 = a1;
  sub_22BE2343C();
  sub_22BE2343C();
  *v20 = a2;
  v20[1] = a3;
  *v21 = a4;
  v21[1] = a5;
  *(a7 + v22) = a6;
  *(a7 + v23) = v29;
  return sub_22BE2343C();
}

uint64_t TranscriptProtoResponseParameter.value.getter()
{
  v0 = sub_22BE19454();
  sub_22BF1C1E4(v0, v1);
  return sub_22BE19454();
}

uint64_t TranscriptProtoResponseParameter.value.setter()
{
  sub_22BE1A8A8();
  result = sub_22BF158B4(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void TranscriptProtoResponseParameter.format.setter()
{
  sub_22BE1A8A8();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
}

void TranscriptProtoResponseParameter.init(key:value:type:required:format:profanityFilter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_22BE22B9C();
  v36 = v29;
  v31 = v30;
  v33 = v32;
  sub_22BE1B23C();
  v35 = v34;
  *(v34 + 16) = xmmword_22C28E6A0;
  type metadata accessor for TranscriptProtoResponseParameter(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v35 = v28;
  *(v35 + 8) = v27;
  sub_22BF158B4(*(v35 + 16), *(v35 + 24));
  *(v35 + 16) = v26;
  *(v35 + 24) = v25;
  *(v35 + 32) = v24;
  *(v35 + 40) = v33;
  *(v35 + 48) = v31;
  *(v35 + 56) = v36;
  *(v35 + 64) = a23;
  *(v35 + 72) = a24;
  sub_22BE234D8();
}

uint64_t TranscriptProtoResponseVisual.options.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseVisual(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseVisual.init(views:labels:options:)()
{
  v3 = sub_22BE37898();
  type metadata accessor for TranscriptProtoResponseVisual(v3);
  type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  sub_22BE1A140();
  sub_22C0E9DE4(v4, v5, v6, v7);
  *v2 = v1;
  v2[1] = v0;
  return sub_22BE2343C();
}

uint64_t sub_22C0CF4DC(char a1)
{
  v3 = sub_22C0E9824();
  v4(v3);
  sub_22BE38954();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = a1;
  return result;
}

void static TranscriptProtoUitype.== infix(_:_:)()
{
  sub_22BE19460();
  v8 = sub_22BE46DA4(v6, v7);
  type metadata accessor for TranscriptProtoControlPayload(v8);
  sub_22BE18000();
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v11 = sub_22BE28E74(v10);
  type metadata accessor for TranscriptProtoPluginSnippetPayload(v11);
  sub_22BE18000();
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  v14 = sub_22C0E9724(v13);
  type metadata accessor for TranscriptProtoLiveActivityPayload(v14);
  sub_22BE18000();
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  v16 = sub_22BE37EA4();
  v17 = type metadata accessor for TranscriptProtoArchiveViewPayload(v16);
  v18 = sub_22BE19448(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BE179EC();
  v19 = type metadata accessor for TranscriptProtoUitype(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v20);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v21);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v22);
  sub_22BE18094();
  MEMORY[0x28223BE20](v23);
  sub_22C0E9BD8();
  v24 = sub_22BE5CE4C(&qword_27D9117B0, &unk_22C2AE720);
  sub_22BE19448(v24);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0E9D34();
  sub_22BE260B8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE182D4();
      sub_22C0C2A68();
      if (sub_22C0E9F2C() != 1)
      {
        goto LABEL_26;
      }

      sub_22BE47E00();
      sub_22C0C1B18();
      v28 = *v5 == *v2 && v5[1] == v2[1];
      if (v28 || (sub_22C274014() & 1) != 0)
      {
        sub_22BEC0A84();
        sub_22C0C1B6C();
        sub_22C272FD4();
      }

      sub_22BE33B54();
      sub_22C0C1AC4();
      goto LABEL_31;
    case 2u:
      sub_22BE182D4();
      sub_22C0C2A68();
      if (sub_22C0E9F2C() != 2)
      {
        sub_22BE291DC();
        goto LABEL_26;
      }

      sub_22BE47E00();
      sub_22C0E9A5C();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v3, v3[1], *v19, v19[1]))
      {
        v26 = v3[2] == v19[2] && v3[3] == v19[3];
        if (v26 || (sub_22C274014() & 1) != 0)
        {
          sub_22C2704B4();
          v27 = sub_22C0C1B6C();
          sub_22BE3C224(v27);
        }
      }

      sub_22BE406FC();
      sub_22C0C1AC4();
      goto LABEL_31;
    case 3u:
      sub_22BE182D4();
      sub_22C0C2A68();
      if (sub_22C0E9F2C() != 3)
      {
        sub_22BE20118();
        goto LABEL_26;
      }

      sub_22BE47E00();
      sub_22C0E9A68();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v4, v4[1], *v19, v19[1]))
      {
        sub_22BEC0A84();
        sub_22C0C1B6C();
        sub_22C0E9A88(v4 + v1);
      }

      sub_22C0E9900();
      sub_22C0C1AC4();
LABEL_31:
      sub_22C0C1AC4();
      sub_22BE2BAA4();
      break;
    default:
      sub_22BE182D4();
      sub_22C0C2A68();
      if (sub_22C0E9F2C())
      {
        sub_22C0E9918();
LABEL_26:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D9117B0, &unk_22C2AE720);
      }

      else
      {
        sub_22BE47E00();
        sub_22C0C1B18();
        static TranscriptProtoArchiveViewPayload.== infix(_:_:)(v1);
        sub_22C0C1AC4();
        sub_22C0C1AC4();
        sub_22BE2BAA4();
      }

      break;
  }

  sub_22BE1B1B8();
  sub_22BE1AABC();
}

BOOL static TranscriptProtoLabel.== infix(_:_:)()
{
  v1 = sub_22BE5CE4C(&qword_27D9091C8, &qword_22C27FDC0);
  sub_22BE19448(v1);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE1B72C();
  v4 = v0 + *(v3 + 56);
  sub_22C0C2A68();
  sub_22BE18040();
  sub_22C0C2A68();
  sub_22C0E9854();
  v7 = v7 && v5 == v6;
  v9 = 0;
  if (v7 || (sub_22C274014() & 1) != 0)
  {
    v8 = *(v0 + 16) == *(v4 + 16) && *(v0 + 24) == *(v4 + 24);
    if (v8 || (sub_22C274014() & 1) != 0)
    {
      type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
      sub_22C0E9B58();
      sub_22C2704B4();
      sub_22C0C1B6C();
      if (sub_22C0E9E84())
      {
        v9 = 1;
      }
    }
  }

  sub_22C0C1AC4();
  sub_22BE260B8();
  sub_22C0C1AC4();
  return v9;
}

uint64_t sub_22C0CFCB4()
{
  v5 = sub_22BE2597C();
  v6(v5);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  return result;
}

void TranscriptProtoArchiveViewPayload.init(viewData:containerBundleID:targetBundleID:)()
{
  sub_22BE3C358();
  sub_22BE32384();
  v7 = sub_22BE41300();
  type metadata accessor for TranscriptProtoArchiveViewPayload(v7);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = v5;
  v6[1] = v4;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v0;
  sub_22BE267B8();
}

uint64_t TranscriptProtoSystemPromptResolution.userAction.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemPromptResolution(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemPromptResolution.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemPromptResolution(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemPromptResolution.input.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemPromptResolution(v0);
  return sub_22BE18504();
}

void TranscriptProtoSystemPromptResolution.init(actionEventID:userAction:systemResponseEventID:statementID:input:)()
{
  sub_22BE22B9C();
  sub_22BE1B23C();
  v5 = sub_22C0E9824();
  type metadata accessor for TranscriptProtoSystemPromptResolution(v5);
  type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v9);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v13);
  type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  sub_22BE1A140();
  sub_22BE19DC4(v14, v15, v16, v17);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v0[2] = v4;
  v0[3] = v3;
  sub_22BE2343C();
  *v0 = v2;
  v0[1] = v1;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE234D8();
}

void static TranscriptProtoSystemPromptResolutionInputEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE39FFC();
  v2 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(v1);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v4 = sub_22BE36588();
  v5 = type metadata accessor for TranscriptProtoRequestContentTextContent(v4);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE35598();
  type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(v7);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE5CE4C(&qword_27D9117B8, &unk_22C2AE740);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE19EBC();
      sub_22C0C2A68();
      if (sub_22C0E9EE4() == 1)
      {
        sub_22BE3D6A0();
        sub_22C0C1B18();
        sub_22BE3C5E4();
        static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)();
        sub_22C0C1AC4();
        sub_22BE1C2A0();
        goto LABEL_14;
      }

      sub_22C0E99B4();
      goto LABEL_11;
    case 2u:
      if (sub_22C0E9EE4() != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    case 3u:
      if (sub_22C0E9EE4() != 3)
      {
        goto LABEL_12;
      }

LABEL_7:
      sub_22BE26148();
      sub_22C0C1AC4();
      break;
    default:
      sub_22BE19EBC();
      sub_22C0C2A68();
      if (sub_22C0E9EE4())
      {
        sub_22BE291DC();
LABEL_11:
        sub_22C0C1AC4();
LABEL_12:
        sub_22BE33928(v0, &qword_27D9117B8, &unk_22C2AE740);
      }

      else
      {
        sub_22BE3D6A0();
        sub_22C0C1B18();
        static TranscriptProtoRequestContentTextContent.== infix(_:_:)();
        sub_22BE3C724();
        sub_22C0C1AC4();
        sub_22BE35838();
LABEL_14:
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
      }

      break;
  }

  sub_22BE1AABC();
}

uint64_t TranscriptProtoActionResolverRequest.resolvedParameters.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionResolverRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionResolverRequest.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionResolverRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionResolverRequest.tool.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionResolverRequest(v0);
  return sub_22BE18504();
}

void TranscriptProtoActionResolverRequest.init(resolvedParameters:unresolvedParameterSets:isConfirmed:statementID:isAuthenticated:tool:)()
{
  sub_22BE22B9C();
  v3 = v2;
  v5 = v4;
  sub_22BE44738();
  v6 = sub_22C0E9824();
  type metadata accessor for TranscriptProtoActionResolverRequest(v6);
  type metadata accessor for TranscriptProtoParameterSet(0);
  v7 = sub_22BE409A4();
  sub_22BE19DC4(v7, v8, v9, v10);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v14);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE1A140();
  sub_22BE19DC4(v15, v16, v17, v18);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v0 = v1;
  *(v0 + 8) = v5;
  sub_22BE2343C();
  *(v0 + 9) = v3;
  sub_22BE2343C();
  sub_22BE234D8();
}

uint64_t TranscriptProtoContextRetrieved.init(requiredContext:utteranceContext:)()
{
  v3 = sub_22BE28634();
  type metadata accessor for TranscriptProtoContextRetrieved(v3);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  return result;
}

uint64_t TranscriptProtoRetrievedContextStatement.retrievedContext.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRetrievedContextStatement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRetrievedContextStatement.init(statementID:retrievedContext:)()
{
  v1 = sub_22BE28634();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  type metadata accessor for TranscriptProtoRetrievedContextStatement(v5);
  v6 = sub_22BFBFCD0();
  v7 = type metadata accessor for ContextProtoRetrievedContext(v6);
  sub_22BE30FA8(v7);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

uint64_t TranscriptProtoDynamicEnumerationEntityStatement.dynamicEnumerationEntity.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoDynamicEnumerationEntityStatement.init(statementID:dynamicEnumerationEntity:)()
{
  v1 = sub_22BE28634();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(v5);
  v6 = sub_22BFBFCD0();
  v7 = type metadata accessor for ContextProtoDynamicEnumerationEntity(v6);
  sub_22BE30FA8(v7);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

uint64_t TranscriptProtoParameter.collectionIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoParameter.candidate.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameter(v0);
  return sub_22BE18504();
}

void TranscriptProtoParameter.init(key:collectionIndex:candidate:)()
{
  sub_22BE3C358();
  v4 = v3;
  v6 = v5;
  v7 = sub_22BE367A8();
  type metadata accessor for TranscriptProtoParameter(v7);
  type metadata accessor for TranscriptProtoCandidate(0);
  sub_22BE1A140();
  sub_22C0E9E10(v8, v9, v10, v11);
  *v2 = v1;
  *(v2 + 8) = v0;
  *(v2 + 16) = v6;
  *(v2 + 24) = v4 & 1;
  sub_22BE2343C();
  sub_22BE267B8();
}

void static TranscriptProtoSystemPromptResolutionUserActionEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = sub_22BE46DA4(v3, v4);
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v9 = sub_22BE48A8C(v8);
  type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(v9);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v27 = v11;
  sub_22BE183BC();
  sub_22C272594();
  sub_22BE179D8();
  v28 = v13;
  v29 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = sub_22BE35598();
  type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(v14);
  sub_22BE18000();
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v16);
  sub_22BE389A0();
  MEMORY[0x28223BE20](v17);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v18);
  sub_22BE23858();
  MEMORY[0x28223BE20](v19);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v20);
  sub_22BE324EC();
  v21 = sub_22BE5CE4C(&qword_27D9117C0, &unk_22C2AE750);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1B72C();
  v24 = *(v23 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C0E9650();
      sub_22C0C2A68();
      if (sub_22BE482A4() == 1)
      {
        (*(v28 + 32))(v2, v0 + v24, v29);
        sub_22BE18040();
        sub_22C272584();
        v25 = *(v28 + 8);
        v25(v2, v29);
        v25(v1, v29);
        goto LABEL_9;
      }

      (*(v28 + 8))(v1, v29);
      goto LABEL_19;
    case 2u:
      sub_22C0E9650();
      sub_22C0C2A68();
      if (sub_22BE482A4() == 2)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    case 3u:
      sub_22C0E9650();
      sub_22C0C2A68();
      if (sub_22BE482A4() == 3)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    case 4u:
      sub_22C0E9650();
      sub_22C0E9D94();
      sub_22C0C2A68();
      if (sub_22BE482A4() == 4)
      {
        sub_22C0E9AC4();
        sub_22C0C1B18();
        if (*type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum == *v27)
        {
          sub_22BEC0A84();
          v26 = sub_22C0C1B6C();
          sub_22BE39EB8(v26);
        }

        sub_22BE3D4D4();
        sub_22C0C1AC4();
        sub_22BE3D4D4();
        sub_22C0C1AC4();
        sub_22BE3E970();
      }

      else
      {
        sub_22BE3D4D4();
LABEL_18:
        sub_22C0C1AC4();
LABEL_19:
        sub_22BE33928(v0, &qword_27D9117C0, &unk_22C2AE750);
      }

      break;
    case 5u:
      sub_22C0E9650();
      sub_22C0C2A68();
      if (sub_22BE482A4() != 5)
      {
        goto LABEL_18;
      }

      sub_22C0E9AC4();
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE2BD04();
      sub_22C272FD4();
      sub_22C0C1AC4();
      sub_22C0C1AC4();
LABEL_9:
      sub_22BE3E970();
      break;
    default:
      sub_22C0E9650();
      sub_22C0C2A68();
      if (!sub_22BE482A4())
      {
        goto LABEL_9;
      }

      goto LABEL_19;
  }

  sub_22BE363EC();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoVariableSetter.value.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoVariableSetter(v0);
  return sub_22BE18504();
}

void sub_22C0D1328()
{
  sub_22BE3C358();
  sub_22BE32384();
  v3 = sub_22BE367A8();
  v4(v3);
  v0(0);
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3D598();
  *v2 = v1;
  sub_22BE267B8();
}

uint64_t TranscriptProtoVariableStep.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoVariableStep(v0);
  return sub_22BE18504();
}

void sub_22C0D1490()
{
  sub_22BE3C358();
  sub_22BE32384();
  v3 = sub_22BE367A8();
  v4(v3);
  v0(0);
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = v1;
  sub_22BE2C278();
  sub_22BE267B8();
}

uint64_t TranscriptProtoASTFlatExprPickVariant.pickType.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprPickVariant(v0);
  return sub_22BE18504();
}

void TranscriptProtoASTPickType.astpickTypeValues.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t TranscriptProtoASTPickType.astpickTypeValues.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t static TranscriptProtoAstpickTypeEnum.== infix(_:_:)()
{
  sub_22BE36330();
  v4 = v3 ^ v2 ^ 1;
  if ((v5 & 1) == 0)
  {
    v4 = 0;
  }

  if (v0 != 1)
  {
    v4 = v1;
  }

  return v4 & 1;
}

uint64_t sub_22C0D1844(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = sub_22BE3E308();
  v10(v9);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = v5;
  *(v6 + 8) = v4;
  *(v6 + 16) = a3;
  *(v6 + 17) = a4;
  return result;
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.lhs.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.value.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(v0);
  return sub_22BE18504();
}

void TranscriptProtoASTFlatExprUpdateVariant.init(lhs:path:value:kind:)()
{
  sub_22BE19460();
  sub_22BE28798();
  v3 = *v2;
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v4);
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v4);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9C9C();
  *v1 = v0;
  sub_22C0E9C9C();
  *(v1 + 8) = v3;
  sub_22BE1AABC();
}

uint64_t TranscriptProtoASTFlatExprDotVariant.lhs.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprDotVariant(v0);
  return sub_22BE18504();
}

void static TranscriptProtoAstflatExprEnum.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  v215 = v22;
  v216 = v23;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  v25 = sub_22BE19448(MentionedApps);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  v203 = v26;
  v27 = sub_22BE183BC();
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(v27);
  v29 = sub_22BE290A0(updated, &v213);
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  v202 = v30;
  v31 = sub_22BE183BC();
  v32 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(v31);
  v33 = sub_22BE19448(v32);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v200 = v34;
  v35 = sub_22BE183BC();
  v36 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(v35);
  v37 = sub_22BE290A0(v36, &v217);
  MEMORY[0x28223BE20](v37);
  sub_22BE17A44();
  v201 = v38;
  v39 = sub_22BE183BC();
  v40 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(v39);
  v41 = sub_22BE290A0(v40, &v216);
  MEMORY[0x28223BE20](v41);
  sub_22BE17A44();
  v199 = v42;
  v43 = sub_22BE183BC();
  v44 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(v43);
  v45 = sub_22BE290A0(v44, &v212);
  MEMORY[0x28223BE20](v45);
  sub_22BE17A44();
  v197[22] = v46;
  v47 = sub_22BE183BC();
  v48 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(v47);
  v49 = sub_22BE290A0(v48, &v210);
  MEMORY[0x28223BE20](v49);
  sub_22BE17A44();
  v198 = v50;
  v51 = sub_22BE183BC();
  v52 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(v51);
  v53 = sub_22BE290A0(v52, &v215);
  MEMORY[0x28223BE20](v53);
  sub_22BE17A44();
  v55 = sub_22BE18950(v54);
  v56 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(v55);
  v57 = sub_22BE290A0(v56, &v208);
  MEMORY[0x28223BE20](v57);
  sub_22BE17A44();
  v59 = sub_22BE18950(v58);
  v60 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(v59);
  v61 = sub_22BE290A0(v60, &v214);
  MEMORY[0x28223BE20](v61);
  sub_22BE17A44();
  v63 = sub_22BE18950(v62);
  v64 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(v63);
  v65 = sub_22BE19448(v64);
  MEMORY[0x28223BE20](v65);
  sub_22BE17A44();
  v67 = sub_22BE18950(v66);
  v68 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(v67);
  v69 = sub_22BE290A0(v68, &v211);
  MEMORY[0x28223BE20](v69);
  sub_22BE17A44();
  v71 = sub_22BE18950(v70);
  v72 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(v71);
  v73 = sub_22BE290A0(v72, &v209);
  MEMORY[0x28223BE20](v73);
  sub_22BE17A44();
  v75 = sub_22BE18950(v74);
  v76 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(v75);
  v77 = sub_22BE19448(v76);
  MEMORY[0x28223BE20](v77);
  sub_22BE17A44();
  v79 = sub_22BE18950(v78);
  v80 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(v79);
  v81 = sub_22BE19448(v80);
  MEMORY[0x28223BE20](v81);
  sub_22BE17A44();
  v83 = sub_22BE18950(v82);
  v84 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(v83);
  v85 = sub_22BE19448(v84);
  MEMORY[0x28223BE20](v85);
  sub_22BE17A44();
  v87 = sub_22BE18950(v86);
  v88 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(v87);
  v89 = sub_22BE19448(v88);
  MEMORY[0x28223BE20](v89);
  sub_22BE17A44();
  v91 = sub_22BE18950(v90);
  v92 = type metadata accessor for TranscriptProtoASTFlatValue(v91);
  v93 = sub_22BE19448(v92);
  MEMORY[0x28223BE20](v93);
  sub_22BE17A44();
  v95 = sub_22BE18950(v94);
  type metadata accessor for TranscriptProtoAstflatExprEnum(v95);
  sub_22BE18000();
  MEMORY[0x28223BE20](v96);
  sub_22BE183AC();
  v211 = v97 - v98;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v99);
  sub_22BE3C05C(v100, v101, v102, v103, v104, v105, v106, v107, v197[0]);
  MEMORY[0x28223BE20](v108);
  sub_22BE19490();
  v208 = v109;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v110);
  sub_22BE389A0();
  MEMORY[0x28223BE20](v111);
  sub_22BE23730(v112, v113, v114, v115, v116, v117, v118, v119, v197[0]);
  MEMORY[0x28223BE20](v120);
  sub_22BE19490();
  v209 = v121;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v122);
  sub_22BE19490();
  v212 = v123;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v124);
  sub_22BE19490();
  v207 = v125;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v126);
  sub_22BE4608C(v127, v128, v129, v130, v131, v132, v133, v134, v197[0]);
  MEMORY[0x28223BE20](v135);
  sub_22BE19490();
  v206 = v136;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v137);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v138);
  sub_22BE19490();
  v204 = v139;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v140);
  sub_22BE19490();
  v205 = v141;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v142);
  sub_22BE18094();
  MEMORY[0x28223BE20](v143);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v144);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v145);
  sub_22BE23858();
  MEMORY[0x28223BE20](v146);
  v148 = v197 - v147;
  v149 = sub_22BE5CE4C(&qword_27D9117C8, &unk_22C2AE770);
  sub_22BE19448(v149);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v150);
  v152 = v197 - v151;
  v154 = *(v153 + 56);
  sub_22C0C2A68();
  v215 = v154;
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() == 1)
      {
        sub_22BE28E84();
        sub_22C0E9AA0();
        static TranscriptProtoASTFlatExprPrefixVariant.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_112;
      }

      sub_22BE3ACD8();
      goto LABEL_105;
    case 2u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22BE324E0();
        sub_22C0C1B18();
        static TranscriptProtoASTFlatExprInfixVariant.== infix(_:_:)();
        sub_22C0C1AC4();
        sub_22BE19454();
        goto LABEL_112;
      }

      sub_22BE26148();
      goto LABEL_105;
    case 3u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() == 3)
      {
        sub_22BE28E84();
        sub_22C0E9AA0();
        sub_22BE1804C();
        static TranscriptProtoASTFlatExprDotVariant.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_112;
      }

      sub_22C0E9918();
      goto LABEL_105;
    case 4u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() == 4)
      {
        sub_22BE28E84();
        sub_22C0E9AA0();
        static TranscriptProtoASTFlatExprIndexVariant.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_112;
      }

      sub_22BE3E76C();
      goto LABEL_105;
    case 5u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 5)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE46B80();
      v178 = v161 && v176 == v177;
      if (v178 || (sub_22C274014() & 1) != 0)
      {
        sub_22BEA3EAC();
        if (v179)
        {
          sub_22C0E9B3C();
          v180 = sub_22C0C1B6C();
          if (sub_22BE3F474(v180))
          {
            goto LABEL_120;
          }
        }
      }

      goto LABEL_122;
    case 6u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 6)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22BE324E0();
      sub_22C0C1B18();
      v185 = sub_22C0E9B30();
      if (sub_22BE9693C(v185, v186))
      {
        sub_22C0E97EC();
        v187 = sub_22C0C1B6C();
        if (sub_22BE3F474(v187))
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 7u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() == 7)
      {
        sub_22BE28E84();
        sub_22BE324E0();
        sub_22C0C1B18();
        sub_22BE18040();
        static TranscriptProtoASTFlatExprPickVariant.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_112;
      }

      sub_22C0E9A74();
      goto LABEL_105;
    case 8u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 8)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE46B80();
      v194 = v161 && v192 == v193;
      if (v194 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E97EC();
        v195 = sub_22C0C1B6C();
        if (sub_22BE3F474(v195))
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 9u:
      sub_22BE1C000();
      v171 = v210;
      sub_22C0C2A68();
      if (sub_22C0E9808() != 9)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE46B80();
      v174 = v161 && v172 == v173;
      if (v174 || (sub_22C274014()) && *(v171 + 16) == *(v21 + 16) && *(v171 + 17) == *(v21 + 17))
      {
        sub_22C2704B4();
        v175 = sub_22C0C1B6C();
        if (sub_22BE3F474(v175))
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 0xAu:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 10)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE46B80();
      v190 = v161 && v188 == v189;
      if (v190 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E97EC();
        v191 = sub_22C0C1B6C();
        if (sub_22BE3F474(v191))
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 0xBu:
      sub_22BE1C000();
      v163 = v212;
      sub_22C0C2A68();
      if (sub_22C0E9808() != 11)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      v164 = v198;
      sub_22C0C1B18();
      v165 = v163[1];
      v166 = v164[1];
      if (v165)
      {
        if (!v166)
        {
          goto LABEL_122;
        }

        v167 = *v163 == *v164 && v165 == v166;
        if (!v167 && (sub_22C274014() & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      else if (v166)
      {
LABEL_122:
        sub_22C0C1AC4();
        sub_22BE291B0();
        sub_22C0C1AC4();
        sub_22BE3FE20();
        goto LABEL_123;
      }

      sub_22C0E97EC();
      v196 = sub_22C0C1B6C();
      if ((sub_22BE3F474(v196) & 1) == 0)
      {
        goto LABEL_122;
      }

LABEL_120:
      sub_22C0C1AC4();
      sub_22BE291B0();
      sub_22C0C1AC4();
LABEL_121:
      sub_22BE3FE20();
LABEL_123:
      sub_22BE363EC();
      sub_22BE1AABC();
      return;
    case 0xCu:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 12)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22C0C1B18();
      v168 = sub_22C0E9B30();
      if (sub_22BE9693C(v168, v169))
      {
        sub_22C0E97EC();
        v170 = sub_22C0C1B6C();
        if (sub_22BE3F474(v170))
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 0xDu:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 13)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22C0C1B18();
      sub_22BE46B80();
      v183 = v161 && v181 == v182;
      if (v183 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E97EC();
        v184 = sub_22C0C1B6C();
        if (sub_22BE3F474(v184))
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 0xEu:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 14)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22C0C1B18();
      sub_22BE46B80();
      v161 = v161 && v159 == v160;
      if (v161 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E97EC();
        v162 = sub_22C0C1B6C();
        if (sub_22BE3F474(v162))
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 0xFu:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() == 15)
      {
        goto LABEL_52;
      }

      goto LABEL_105;
    case 0x10u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 16)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22C0C1B18();
      v155 = sub_22C0E9B30();
      sub_22BE96788(v155, v156);
      if (v157)
      {
        sub_22C0E97EC();
        v158 = sub_22C0C1B6C();
        if (sub_22BE3F474(v158))
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 0x11u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 17)
      {
        goto LABEL_105;
      }

LABEL_52:
      sub_22BE28E84();
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE38970();
      sub_22C272FD4();
      sub_22C0C1AC4();
      goto LABEL_112;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_121;
      }

      goto LABEL_106;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_121;
      }

      goto LABEL_106;
    default:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808())
      {
        sub_22BE20118();
LABEL_105:
        sub_22C0C1AC4();
LABEL_106:
        sub_22BE33928(v152, &qword_27D9117C8, &unk_22C2AE770);
      }

      else
      {
        sub_22BE28E84();
        sub_22C0E9AA0();
        static TranscriptProtoASTFlatValue.== infix(_:_:)(v148, v20);
        sub_22C0C1AC4();
LABEL_112:
        sub_22C0C1AC4();
        sub_22BE3FE20();
      }

      goto LABEL_123;
  }
}

void static TranscriptProtoAstflatValueEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = sub_22BE46DA4(v3, v4);
  v6 = type metadata accessor for TranscriptProtoStatementID(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v51[3] = v8;
  v9 = sub_22BE183BC();
  v51[1] = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(v9);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v12 = sub_22BE48A8C(v11);
  v51[0] = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v51[2] = v14;
  v15 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoAstflatValueEnum(v15);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  sub_22BE389A0();
  MEMORY[0x28223BE20](v17);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v18);
  sub_22BE23858();
  MEMORY[0x28223BE20](v19);
  sub_22BE19490();
  v51[7] = v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE3C05C(v22, v23, v24, v25, v26, v27, v28, v29, v51[0]);
  MEMORY[0x28223BE20](v30);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v31);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v32);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v33);
  sub_22BE324EC();
  v34 = sub_22BE5CE4C(&qword_27D9117D0, &unk_22C2AE780);
  sub_22BE19448(v34);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  v37 = v51 - v36;
  v39 = (v51 + *(v38 + 56) - v36);
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE36680();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE186A4();
      sub_22C0C2A68();
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    case 2u:
      sub_22BE186A4();
      sub_22C0C2A68();
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    case 3u:
      sub_22BE186A4();
      sub_22C0C2A68();
      v42 = *v0;
      v41 = v0[1];
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_29;
      }

      if (v42 != *v39 || v41 != v39[1])
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    case 4u:
      sub_22BE186A4();
      sub_22C0E9A68();
      sub_22C0C2A68();
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_34;
      }

      sub_22C0C1B18();
      sub_22C0E9B08();
      sub_22BE98ABC();
      if (v40)
      {
        goto LABEL_27;
      }

      goto LABEL_37;
    case 5u:
      sub_22BE186A4();
      sub_22C0E9A5C();
      sub_22C0C2A68();
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_34;
      }

      sub_22C0C1B18();
      sub_22C0E9B08();
      sub_22BEA3EAC();
      if (v47)
      {
LABEL_27:
        sub_22BE3FF30();
        v48 = sub_22C0C1B6C();
        sub_22BE3C4B0(v48);
      }

LABEL_37:
      sub_22C0C1AC4();
      sub_22BE1AB74();
      sub_22C0C1AC4();
      goto LABEL_38;
    case 6u:
      sub_22BE186A4();
      sub_22C0C2A68();
      v45 = *v2;
      v44 = v2[1];
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    case 7u:
      sub_22BE186A4();
      sub_22C0C2A68();
      v45 = *v1;
      v44 = v1[1];
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_29:

        goto LABEL_35;
      }

LABEL_18:
      if (v45 == *v39 && v44 == v39[1])
      {
LABEL_32:
      }

      else
      {
LABEL_22:
        sub_22C274014();
      }

      goto LABEL_38;
    case 8u:
      sub_22BE186A4();
      sub_22C0E9B7C();
      sub_22C0C2A68();
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        sub_22C0E970C();
        sub_22C0C1B18();
        v49 = sub_22BE1C2A0();
        static TranscriptProtoStatementID.== infix(_:_:)(v49, v50);
        sub_22BE3E82C();
        sub_22C0C1AC4();
        sub_22BE1AB74();
        sub_22C0C1AC4();
LABEL_38:
        sub_22BE235D0();
      }

      else
      {
LABEL_34:
        sub_22C0C1AC4();
LABEL_35:
        sub_22BE33928(v37, &qword_27D9117D0, &unk_22C2AE780);
      }

      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
    case 9u:
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    default:
      sub_22BE186A4();
      sub_22C0C2A68();
      sub_22BE1804C();
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_38;
      }

      goto LABEL_35;
  }
}

uint64_t TranscriptProtoASTFlatExprIndexVariant.index.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(v0);
  return sub_22BE18504();
}

void sub_22C0D3760()
{
  sub_22BE3C358();
  sub_22BE32384();
  v1 = sub_22BE367A8();
  v3 = v2(v1);
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v3);
  v0(0);
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v3);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3D598();
  sub_22BE2C278();
  sub_22BE267B8();
}

uint64_t TranscriptProtoASTFlatExprInfixVariant.second.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprInfixVariant.third.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(v0);
  return sub_22BE18504();
}

void static TranscriptProtoExpressionEnum.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  v249 = v22;
  v250 = v23;
  v24 = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
  v25 = sub_22BE19448(v24);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  v27 = sub_22BE18950(v26);
  v28 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(v27);
  v29 = sub_22BE19448(v28);
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  v31 = sub_22BE18950(v30);
  v32 = type metadata accessor for TranscriptProtoUserConfirmExpression(v31);
  v33 = sub_22BE19448(v32);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v35 = sub_22BE18950(v34);
  v36 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(v35);
  v37 = sub_22BE19448(v36);
  MEMORY[0x28223BE20](v37);
  sub_22BE17A44();
  v39 = sub_22BE18950(v38);
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(v39);
  v41 = sub_22BE19448(ToolsExpression);
  MEMORY[0x28223BE20](v41);
  sub_22BE17A44();
  v43 = sub_22BE18950(v42);
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(v43);
  v45 = sub_22BE19448(SpansExpression);
  MEMORY[0x28223BE20](v45);
  sub_22BE17A44();
  v47 = sub_22BE18950(v46);
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(v47);
  v49 = sub_22BE19448(ContextExpression);
  MEMORY[0x28223BE20](v49);
  sub_22BE17A44();
  v51 = sub_22BE18950(v50);
  v52 = type metadata accessor for TranscriptProtoFormatExpression(v51);
  v53 = sub_22BE290A0(v52, v248);
  MEMORY[0x28223BE20](v53);
  sub_22BE17A44();
  v55 = sub_22BE18950(v54);
  v56 = type metadata accessor for TranscriptProtoPayloadExpression(v55);
  v57 = sub_22BE290A0(v56, &v247);
  MEMORY[0x28223BE20](v57);
  sub_22BE17A44();
  v59 = sub_22BE18950(v58);
  v60 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(v59);
  v61 = sub_22BE19448(v60);
  MEMORY[0x28223BE20](v61);
  sub_22BE17A44();
  v63 = sub_22BE18950(v62);
  v64 = type metadata accessor for TranscriptProtoOpenExpression(v63);
  v65 = sub_22BE19448(v64);
  MEMORY[0x28223BE20](v65);
  sub_22BE17A44();
  v67 = sub_22BE18950(v66);
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(v67);
  v69 = sub_22BE19448(MentionedAppsExpression);
  MEMORY[0x28223BE20](v69);
  sub_22BE17A44();
  v71 = sub_22BE18950(v70);
  v72 = type metadata accessor for TranscriptProtoEndOfPlanExpression(v71);
  v73 = sub_22BE19448(v72);
  MEMORY[0x28223BE20](v73);
  sub_22BE17A44();
  v75 = sub_22BE18950(v74);
  v76 = type metadata accessor for TranscriptProtoContinuePlanningExpression(v75);
  v77 = sub_22BE19448(v76);
  MEMORY[0x28223BE20](v77);
  sub_22BE17A44();
  v79 = sub_22BE18950(v78);
  v80 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(v79);
  v81 = sub_22BE19448(v80);
  MEMORY[0x28223BE20](v81);
  sub_22BE17A44();
  v83 = sub_22BE18950(v82);
  v84 = type metadata accessor for TranscriptProtoCancelExpression(v83);
  v85 = sub_22BE19448(v84);
  MEMORY[0x28223BE20](v85);
  sub_22BE17A44();
  v87 = sub_22BE18950(v86);
  v88 = type metadata accessor for TranscriptProtoRejectExpression(v87);
  v89 = sub_22BE19448(v88);
  MEMORY[0x28223BE20](v89);
  sub_22BE17A44();
  v91 = sub_22BE18950(v90);
  v92 = type metadata accessor for TranscriptProtoUndoExpression(v91);
  v93 = sub_22BE19448(v92);
  MEMORY[0x28223BE20](v93);
  sub_22BE17A44();
  v95 = sub_22BE18950(v94);
  v96 = type metadata accessor for TranscriptProtoResolveToolExpression(v95);
  v97 = sub_22BE290A0(v96, &v246);
  MEMORY[0x28223BE20](v97);
  sub_22BE17A44();
  v99 = sub_22BE18950(v98);
  v100 = type metadata accessor for TranscriptProtoPickOneExpression(v99);
  v101 = sub_22BE19448(v100);
  MEMORY[0x28223BE20](v101);
  sub_22BE17A44();
  v103 = sub_22BE18950(v102);
  v104 = type metadata accessor for TranscriptProtoStructuredSearchExpression(v103);
  v105 = sub_22BE19448(v104);
  MEMORY[0x28223BE20](v105);
  sub_22BE17A44();
  v107 = sub_22BE18950(v106);
  v108 = type metadata accessor for TranscriptProtoSearchExpression(v107);
  v109 = sub_22BE19448(v108);
  MEMORY[0x28223BE20](v109);
  sub_22BE17A44();
  v111 = sub_22BE18950(v110);
  v112 = type metadata accessor for TranscriptProtoConfirmExpression(v111);
  v113 = sub_22BE19448(v112);
  MEMORY[0x28223BE20](v113);
  sub_22BE17A44();
  v115 = sub_22BE18950(v114);
  v116 = type metadata accessor for TranscriptProtoPickExpression(v115);
  v117 = sub_22BE19448(v116);
  MEMORY[0x28223BE20](v117);
  sub_22BE17A44();
  v119 = sub_22BE18950(v118);
  v120 = type metadata accessor for TranscriptProtoSayExpression(v119);
  v121 = sub_22BE290A0(v120, &v245);
  MEMORY[0x28223BE20](v121);
  sub_22BE17A44();
  v123 = sub_22BE18950(v122);
  v124 = type metadata accessor for TranscriptProtoCallExpression(v123);
  v125 = sub_22BE19448(v124);
  MEMORY[0x28223BE20](v125);
  sub_22BE17A44();
  v127 = sub_22BE18950(v126);
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(v127);
  v129 = sub_22BE19448(updated);
  MEMORY[0x28223BE20](v129);
  sub_22BE17A44();
  v131 = sub_22BE18950(v130);
  v132 = type metadata accessor for TranscriptProtoIndexExpression(v131);
  v133 = sub_22BE19448(v132);
  MEMORY[0x28223BE20](v133);
  sub_22BE17A44();
  v135 = sub_22BE18950(v134);
  v136 = type metadata accessor for TranscriptProtoInfixExpression(v135);
  v137 = sub_22BE19448(v136);
  MEMORY[0x28223BE20](v137);
  sub_22BE17A44();
  v139 = sub_22BE18950(v138);
  v140 = type metadata accessor for TranscriptProtoPrefixExpression(v139);
  v141 = sub_22BE19448(v140);
  MEMORY[0x28223BE20](v141);
  sub_22BE17A44();
  v143 = sub_22BE18950(v142);
  v144 = type metadata accessor for TranscriptProtoStatementID(v143);
  v145 = sub_22BE19448(v144);
  MEMORY[0x28223BE20](v145);
  sub_22BE17A44();
  v147 = sub_22BE18950(v146);
  v148 = type metadata accessor for TranscriptProtoValueExpression(v147);
  v149 = sub_22BE19448(v148);
  MEMORY[0x28223BE20](v149);
  sub_22BE17A44();
  v151 = sub_22BE18950(v150);
  v248[26] = type metadata accessor for TranscriptProtoExpressionEnum(v151);
  sub_22BE18000();
  MEMORY[0x28223BE20](v152);
  sub_22BE183AC();
  sub_22BE389A0();
  MEMORY[0x28223BE20](v153);
  sub_22BE23730(v154, v155, v156, v157, v158, v159, v160, v161, v244);
  MEMORY[0x28223BE20](v162);
  sub_22BE19490();
  v248[23] = v163;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v164);
  sub_22BE4608C(v165, v166, v167, v168, v169, v170, v171, v172, v244);
  MEMORY[0x28223BE20](v173);
  sub_22BE19490();
  v248[19] = v174;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v175);
  sub_22BE19490();
  v248[17] = v176;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v177);
  sub_22BE19490();
  v248[18] = v178;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v179);
  sub_22BE19490();
  v248[22] = v180;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v181);
  sub_22BE19490();
  v248[20] = v182;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v183);
  sub_22BE19490();
  v248[16] = v184;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v185);
  sub_22BE19490();
  v248[14] = v186;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v187);
  sub_22BE19490();
  v248[15] = v188;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v189);
  sub_22BE19490();
  v248[13] = v190;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v191);
  sub_22BE19490();
  v248[12] = v192;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v193);
  sub_22BE19490();
  v248[11] = v194;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v195);
  sub_22BE19490();
  v248[9] = v196;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v197);
  sub_22BE19490();
  v248[8] = v198;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v199);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v200);
  sub_22BE19490();
  v248[10] = v201;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v202);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v203);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v204);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v205);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v206);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v207);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v208);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v209);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v210);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v211);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v212);
  sub_22BE23858();
  MEMORY[0x28223BE20](v213);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v214);
  v215 = sub_22BE5CE4C(&qword_27D9117D8, &unk_22C2AE790);
  sub_22BE19448(v215);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v216);
  v218 = &v244 - v217;
  v220 = *(v219 + 56);
  sub_22C0C2A68();
  v249 = v220;
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() == 1)
      {
        sub_22C0E970C();
        sub_22C0E9AA0();
        v231 = sub_22BE431C0();
        static TranscriptProtoStatementID.== infix(_:_:)(v231, v232);
        sub_22BE3E82C();
        sub_22C0C1AC4();
        goto LABEL_72;
      }

      sub_22C0E9830();
      goto LABEL_91;
    case 2u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() == 2)
      {
        sub_22BE3F3BC();
        sub_22C0E9AA0();
        static TranscriptProtoPrefixExpression.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_72;
      }

      sub_22BE3ACD8();
      goto LABEL_91;
    case 3u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 3)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      sub_22BE1804C();
      static TranscriptProtoInfixExpression.== infix(_:_:)();
      goto LABEL_71;
    case 4u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() == 4)
      {
        sub_22BE3F3BC();
        sub_22C0E9AA0();
        v224 = sub_22BE36680();
        static TranscriptProtoIndexExpression.== infix(_:_:)(v224, v225);
        sub_22C0C1AC4();
        goto LABEL_72;
      }

      sub_22C0E9848();
      goto LABEL_91;
    case 5u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_22BE324E0();
        sub_22C0C1B18();
        static TranscriptProtoUpdateParametersExpression.== infix(_:_:)(v20, v21);
        sub_22C0C1AC4();
        sub_22BE19454();
        goto LABEL_72;
      }

      sub_22BE26148();
      goto LABEL_91;
    case 6u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 6)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      sub_22BE3C5E4();
      static TranscriptProtoCallExpression.== infix(_:_:)();
      goto LABEL_71;
    case 7u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 7)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22C0E9B08();
      sub_22BE97814();
      if (v230)
      {
        goto LABEL_63;
      }

      goto LABEL_64;
    case 8u:
      sub_22BE17DC8();
      sub_22BE324E0();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 8)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      sub_22BE1804C();
      static TranscriptProtoPickExpression.== infix(_:_:)();
      goto LABEL_71;
    case 9u:
      sub_22BE17DC8();
      sub_22BE324E0();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 9)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      v227 = sub_22BE1804C();
      static TranscriptProtoConfirmExpression.== infix(_:_:)(v227);
      goto LABEL_71;
    case 0xAu:
      sub_22BE17DC8();
      sub_22BE324E0();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 10)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      v235 = sub_22BE1804C();
      static TranscriptProtoSearchExpression.== infix(_:_:)(v235);
      goto LABEL_71;
    case 0xBu:
      sub_22BE17DC8();
      sub_22BE324E0();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 11)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      sub_22BE1804C();
      static TranscriptProtoStructuredSearchExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0xCu:
      sub_22BE17DC8();
      sub_22BE324E0();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 12)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      v226 = sub_22BE1804C();
      static TranscriptProtoPickOneExpression.== infix(_:_:)(v226);
      goto LABEL_71;
    case 0xDu:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 13)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22C0E9B08();
      sub_22BE99FA4();
      if (v234)
      {
        goto LABEL_63;
      }

      goto LABEL_64;
    case 0xEu:
      sub_22BE17DC8();
      sub_22BE324E0();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 14)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      v223 = sub_22BE1804C();
      static TranscriptProtoUndoExpression.== infix(_:_:)(v223);
      goto LABEL_71;
    case 0xFu:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 15)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      v229 = sub_22BE1804C();
      static TranscriptProtoRejectExpression.== infix(_:_:)(v229);
      goto LABEL_71;
    case 0x10u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 16)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      v222 = sub_22BE1804C();
      static TranscriptProtoCancelExpression.== infix(_:_:)(v222);
      goto LABEL_71;
    case 0x11u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() == 17)
      {
        goto LABEL_60;
      }

      goto LABEL_91;
    case 0x12u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() == 18)
      {
        goto LABEL_60;
      }

      goto LABEL_91;
    case 0x13u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() == 19)
      {
        goto LABEL_60;
      }

      goto LABEL_91;
    case 0x14u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() == 20)
      {
        goto LABEL_60;
      }

      goto LABEL_91;
    case 0x15u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 21)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      v233 = sub_22BE1804C();
      static TranscriptProtoOpenExpression.== infix(_:_:)(v233);
      goto LABEL_71;
    case 0x16u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() == 22)
      {
        goto LABEL_60;
      }

      goto LABEL_91;
    case 0x17u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 23)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22C0E9B08();
      sub_22BE97814();
      if (v239)
      {
        goto LABEL_63;
      }

      goto LABEL_64;
    case 0x18u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 24)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22C0E9B08();
      sub_22BE97814();
      if (v228)
      {
LABEL_63:
        sub_22C0E97EC();
        v240 = sub_22C0C1B6C();
        sub_22BE3C4B0(v240);
      }

LABEL_64:
      sub_22C0C1AC4();
      sub_22BE1AB74();
      sub_22C0C1AC4();
      sub_22C0E978C();
      goto LABEL_92;
    case 0x19u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 25)
      {
        goto LABEL_91;
      }

LABEL_60:
      sub_22BE3F3BC();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22C2704B4();
      v238 = sub_22C0C1B6C();
      sub_22BE36258(v238);
      goto LABEL_71;
    case 0x1Au:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 26)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      v242 = sub_22BE1804C();
      static TranscriptProtoRetrieveSpansExpression.== infix(_:_:)(v242);
      goto LABEL_71;
    case 0x1Bu:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 27)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      v221 = sub_22BE1804C();
      static TranscriptProtoRetrieveToolsExpression.== infix(_:_:)(v221);
      goto LABEL_71;
    case 0x1Cu:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 28)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      v241 = sub_22BE1804C();
      static TranscriptProtoSiriXFallbackExpression.== infix(_:_:)(v241);
      goto LABEL_71;
    case 0x1Du:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 29)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      sub_22BE1804C();
      static TranscriptProtoUserConfirmExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0x1Eu:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 30)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      v236 = sub_22BE1804C();
      static TranscriptProtoUserDisambiguateExpression.== infix(_:_:)(v236, v237);
      goto LABEL_71;
    case 0x1Fu:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 31)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0();
      sub_22BE1804C();
      static TranscriptProtoAnswerSynthesisExpression.== infix(_:_:)();
LABEL_71:
      sub_22C0C1AC4();
      goto LABEL_72;
    default:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450())
      {
        sub_22C0E9A74();
LABEL_91:
        sub_22C0C1AC4();
        sub_22BE33928(v218, &qword_27D9117D8, &unk_22C2AE790);
      }

      else
      {
        sub_22BE3F3BC();
        sub_22BE324E0();
        sub_22C0C1B18();
        v243 = sub_22BE18040();
        static TranscriptProtoValueExpression.== infix(_:_:)(v243);
        sub_22C0C1AC4();
LABEL_72:
        sub_22C0C1AC4();
        sub_22C0E978C();
      }

LABEL_92:
      sub_22BE1AABC();
      return;
  }
}

void static TranscriptProtoValueExpressionEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE39FFC();
  type metadata accessor for TranscriptProtoValueExpressionArrayVariant(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v6 = sub_22C0E9724(v5);
  type metadata accessor for TranscriptProtoValueExpressionEnum(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v10);
  sub_22BE18094();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v12);
  sub_22BE25A90();
  v13 = sub_22BE5CE4C(&qword_27D9117E0, &unk_22C2AE7A0);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B72C();
  v16 = (v0 + *(v15 + 56));
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE19454();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE3E658();
      sub_22C0C2A68();
      sub_22BE36680();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    case 2u:
      sub_22BE3E658();
      sub_22C0C2A68();
      sub_22BE36680();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_24;
      }

LABEL_18:
      sub_22C0C1AC4();
      goto LABEL_27;
    case 3u:
      sub_22BE3E658();
      sub_22C0C2A68();
      v20 = *v1;
      v19 = v1[1];
      sub_22BE36680();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    case 4u:
      sub_22BE3E658();
      sub_22C0C2A68();
      sub_22BE36680();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_22C0E9830();
        sub_22C0C1AC4();
        goto LABEL_24;
      }

      sub_22C0E9A5C();
      sub_22C0C1B18();
      sub_22C0E9E3C();
      sub_22BE97814();
      if (v17)
      {
        sub_22BEC0A84();
        v18 = sub_22C0C1B6C();
        sub_22BE39EB8(v18);
      }

      sub_22BE42540();
      sub_22C0C1AC4();
      sub_22BE431C0();
      sub_22C0C1AC4();
      goto LABEL_26;
    case 5u:
      sub_22BE3E658();
      sub_22C0C2A68();
      v20 = *v2;
      v19 = v2[1];
      sub_22BE36680();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
LABEL_11:
        if (v20 != *v16 || v19 != v16[1])
        {
          sub_22BE1C2A0();
          sub_22C274014();
        }

LABEL_26:
        sub_22C0E9764();
      }

      else
      {
LABEL_20:

LABEL_24:
        sub_22BE33928(v0, &qword_27D9117E0, &unk_22C2AE7A0);
      }

LABEL_27:
      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
    case 6u:
      sub_22BE36680();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    default:
      sub_22BE3E658();
      sub_22C0C2A68();
      sub_22BE36680();
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_26;
      }

      goto LABEL_24;
  }
}

uint64_t TranscriptProtoPrefixExpression.value.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPrefixExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInfixExpression.lhs.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoInfixExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInfixExpression.rhs.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoInfixExpression(v0);
  return sub_22BE18504();
}

void sub_22C0D5C94()
{
  sub_22BE19460();
  sub_22BE32534();
  v2 = v1;
  v4 = *v3;
  v5(0);
  v6 = sub_22C0E9B88();
  v7 = v0(v6);
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v7);
  sub_22BE1A140();
  sub_22C0E9E10(v11, v12, v13, v7);
  *v2 = v4;
  sub_22BE3D598();
  sub_22BE2C278();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoASTFlatExprPrefixVariant.second.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(v0);
  return sub_22BE18504();
}

void sub_22C0D5E1C()
{
  sub_22BE3C358();
  sub_22BE32384();
  v2 = v1;
  v4 = *v3;
  v5(0);
  v0(0);
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v9);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = v4;
  sub_22BE2C278();
  sub_22BE267B8();
}

uint64_t TranscriptProtoIndexExpression.index.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoIndexExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUpdateParametersExpression.callStatementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUpdateParametersExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.value.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.parameterIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.parameterIndex.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v0);
  return sub_22BE18504();
}

void TranscriptProtoUpdateParameterExpression_UpdateParameter.init(parameterID:kind:value:parameterIndex:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = *v10;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v13, v14, v15, v16);
  v17 = v9 + *(updated + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v9 = v7;
  *(v9 + 8) = v5;
  *(v9 + 16) = v11;
  sub_22BE2343C();
  *v17 = v3;
  *(v17 + 8) = v1 & 1;
  sub_22BE1AABC();
}

uint64_t TranscriptProtoGlobalToolIdentifier.init(toolID:deviceIdsID:representsBuiltInTool:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = sub_22BE367A8();
  v12 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v11);
  result = sub_22C0E9D10(v12);
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a5;
  return result;
}

uint64_t TranscriptProtoCallExpression.tool.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoCallExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPickExpression.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPickExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSearchExpression.init(query:isLowConfidenceKnowledge:pickOne:shouldOpenResultIfApplicable:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  v11 = sub_22BE367A8();
  type metadata accessor for TranscriptProtoSearchExpression(v11);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 16) = a3;
  *(v7 + 17) = a4;
  *(v7 + 18) = a5;
  return result;
}

uint64_t TranscriptProtoStructuredSearchExpression.returnType.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStructuredSearchExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.previousAnswerReference.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(v0);
  return sub_22BE18504();
}

void TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.init(name:type:previousAnswerReference:)()
{
  sub_22BE3C358();
  sub_22BE3852C();
  v5 = sub_22BE367A8();
  type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(v5);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22C0E9E10(v6, v7, v8, v9);
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t TranscriptProtoStructuredSearchExpression.init(parameters:returnType:properties:)()
{
  v3 = sub_22BE37898();
  type metadata accessor for TranscriptProtoStructuredSearchExpression(v3);
  sub_22C2725A4();
  sub_22BE1A140();
  sub_22C0E9DE4(v4, v5, v6, v7);
  *v2 = v1;
  result = sub_22BE2343C();
  v2[1] = v0;
  return result;
}

uint64_t TranscriptProtoUserConfirmExpression.confirmOption.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUserConfirmExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUserConfirmExpression.dismissOption.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUserConfirmExpression(v0);
  return sub_22BE18504();
}

void TranscriptProtoUserConfirmExpression.init(promptForUser:confirmOption:dismissOption:)()
{
  sub_22BE3C358();
  v0 = sub_22C0E9824();
  v1 = type metadata accessor for TranscriptProtoStatementID(v0);
  sub_22BE1A140();
  sub_22BE19DC4(v2, v3, v4, v1);
  type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v1);
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v1);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3C5E4();
  sub_22C0E9C9C();
  sub_22C0E9C9C();
  sub_22C0E9C9C();
  sub_22BE267B8();
}

uint64_t TranscriptProtoUserDisambiguateExpression.promptForUser.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUserDisambiguateExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAnswerSynthesisExpression.query.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAnswerSynthesisExpression(v0);
  return sub_22BE18504();
}

void static TranscriptProtoAnswerSynthesisExtractionCandidateEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v4 = sub_22BE36588();
  type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v6);
  sub_22C0E9BD8();
  v7 = sub_22BE5CE4C(&qword_27D909150, &unk_22C2AE7B0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B72C();
  v10 = (v0 + *(v9 + 56));
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE260B8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    sub_22BE25C08();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22C0E970C();
      sub_22BE36680();
      sub_22C0C1B18();
      v14 = sub_22BE1804C();
      static TranscriptProtoStatementID.== infix(_:_:)(v14, v15);
      sub_22C0C1AC4();
      sub_22BE324FC();
      sub_22C0C1AC4();
      sub_22BE41E10();
      goto LABEL_14;
    }

    sub_22C0E9918();
    sub_22C0C1AC4();
    goto LABEL_11;
  }

  sub_22BE19EBC();
  sub_22C0C2A68();
  v12 = *v1;
  v11 = v1[1];
  sub_22BE25C08();
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_11:
    sub_22BE33928(v0, &qword_27D909150, &unk_22C2AE7B0);
    goto LABEL_14;
  }

  if (v12 != *v10 || v11 != v10[1])
  {
    sub_22BE1804C();
    sub_22C274014();
  }

  sub_22BE41E10();
LABEL_14:
  sub_22BE363EC();
  sub_22BE1AABC();
}

uint64_t static TranscriptProtoToolParameterValueEnum.== infix(_:_:)()
{
  sub_22BE18378();
  v2 = sub_22BE5CE4C(&qword_27D9117E8, &unk_22C2AE7C0);
  sub_22BE19448(v2);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE3607C();
  sub_22C0C2A68();
  sub_22C0E987C();
  sub_22C0C2A68();
  sub_22C0E9C28();
  sub_22C272584();
  sub_22BE17BC4();
  v4 = sub_22C272594();
  sub_22BE18000();
  v6 = *(v5 + 8);
  v6(v0 + v1, v4);
  v7 = sub_22BE1804C();
  (v6)(v7);
  return sub_22BE36384();
}

uint64_t TranscriptProtoSpanMatchedEntityStatement.entity.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSpanMatchedEntityStatement.init(statementID:entity:)()
{
  v1 = sub_22BE28634();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(v5);
  v6 = sub_22BFBFCD0();
  v7 = type metadata accessor for ContextProtoSpanMatchedEntity(v6);
  sub_22BE30FA8(v7);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

uint64_t TranscriptProtoToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_22BE41300();
  type metadata accessor for TranscriptProtoToolRetrievalResponse(v15);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v10 = v9;
  *(v10 + 8) = v8;
  *(v10 + 16) = v7;
  *(v10 + 24) = a5;
  *(v10 + 32) = a1;
  *(v10 + 40) = a6;
  *(v10 + 48) = a7;
  return result;
}

uint64_t TranscriptProtoSystemResponse.responseOutput.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemResponse(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemResponse.clientQueryID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemResponse(v0);
  return sub_22BE18504();
}

void TranscriptProtoSystemResponse.init(responseOutput:clientQueryID:interpretedStatementResults:)()
{
  sub_22BE3C358();
  v5 = sub_22BE2597C();
  type metadata accessor for TranscriptProtoSystemResponse(v5);
  v6 = sub_22BE23ED8();
  type metadata accessor for TranscriptProtoResponseOutput(v6);
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v10);
  v11 = (v3 + *(v4 + 24));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v11 = v2;
  v11[1] = v1;
  *v3 = v0;
  sub_22BE267B8();
}

uint64_t TranscriptProtoInterpretedStatementResult.resultStatementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoInterpretedStatementResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInterpretedStatementResult.originProgramStatementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoInterpretedStatementResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInterpretedStatementResult.actionEventID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoInterpretedStatementResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInterpretedStatementResult.toolID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoInterpretedStatementResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInterpretedStatementResult.originTaskStatementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoInterpretedStatementResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInterpretedStatementResult.init(outcome:resultStatementID:originProgramStatementID:actionEventID:toolID:originTaskStatementID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22C0E9C34();
  v8 = sub_22BE3C4D0();
  v9 = type metadata accessor for TranscriptProtoStatementOutcome(v8);
  v12 = sub_22C0E966C(v7, v10, v11, v9);
  v13 = type metadata accessor for TranscriptProtoInterpretedStatementResult(v12);
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v15, v16, v17, v14);
  sub_22BE1A140();
  sub_22BE19DC4(v18, v19, v20, v14);
  v21 = (v7 + *(v13 + 28));
  v22 = (v7 + *(v13 + 32));
  sub_22BE1A140();
  sub_22BE19DC4(v23, v24, v25, v14);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE33BE8();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  *v21 = a4;
  v21[1] = a5;
  *v22 = a6;
  v22[1] = a7;
  return sub_22BE2343C();
}

uint64_t TranscriptProtoProgramStatement.expression.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoProgramStatement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoProgramStatement.isRoot.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for TranscriptProtoProgramStatement(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t TranscriptProtoProgramStatement.isRoot.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoProgramStatement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoProgramStatement.isExpanded.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for TranscriptProtoProgramStatement(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t TranscriptProtoProgramStatement.isExpanded.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoProgramStatement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoProgramStatement.canonicalIndex.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for TranscriptProtoProgramStatement(v2);
  v4 = v1 + *(result + 32);
  *v4 = v0;
  *(v4 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.canonicalIndex.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoProgramStatement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoProgramStatement.executionSupportType.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoProgramStatement(v0);
  return sub_22BE18504();
}

void TranscriptProtoProgramStatement.init(id:expression:isRoot:isExpanded:canonicalIndex:executionSupportType:)()
{
  sub_22BE22B9C();
  v1 = v0;
  v23 = v2;
  v24 = v3;
  sub_22BE44738();
  v5 = v4;
  sub_22BE375F8();
  v9 = sub_22C0E966C(v5, v6, v7, v8);
  v10 = type metadata accessor for TranscriptProtoProgramStatement(v9);
  v11 = sub_22C0E9B88();
  type metadata accessor for TranscriptProtoExpression(v11);
  v12 = sub_22BE409A4();
  sub_22BE19DC4(v12, v13, v14, v15);
  v17 = v10[6];
  v16 = v10[7];
  v18 = v5 + v10[8];
  type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  v19 = sub_22BE3CE14();
  sub_22BE19DC4(v19, v20, v21, v22);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE35838();
  sub_22BE2343C();
  sub_22BE2343C();
  *(v5 + v17) = v23;
  *(v5 + v16) = v24;
  *v18 = v1;
  *(v18 + 4) = BYTE4(v1) & 1;
  sub_22BE2343C();
  sub_22BE234D8();
}

void sub_22C0D8198()
{
  sub_22BE3C358();
  sub_22BE32384();
  v7 = sub_22BE41300();
  v8(v7);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = v5;
  v6[1] = v4;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v0;
  sub_22BE267B8();
}

uint64_t TranscriptProtoGenderSettings.init(voiceGender:userGender:)@<X0>(char *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = type metadata accessor for TranscriptProtoGenderSettings(0);
  result = sub_22BE37CF8(v6);
  *a3 = v4;
  a3[1] = v5;
  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init(rawValue:)(int a1)
{
  v3 = sub_22C0E9824();
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(v3);
  sub_22BE38954();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = a1;
  return result;
}

uint64_t TranscriptProtoDeviceDetails.type.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoDeviceDetails(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementID.init(index:name:)(int a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22BE3C4D0();
  type metadata accessor for TranscriptProtoStatementID(v7);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t TranscriptProtoToolResolution.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoToolResolution(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoToolResolution.originProgramStatementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoToolResolution(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUndoRedoRequest.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUndoRedoRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUndoRedoRequest.statementIDToUndo.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUndoRedoRequest(v0);
  return sub_22BE18504();
}

void TranscriptProtoUndoRedoRequest.init(bundleIdentifier:token:operation:statementID:statementIDToUndo:)()
{
  sub_22BE22B9C();
  sub_22BE3CAC4();
  v5 = v4;
  v7 = *v6;
  type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v9, v10, v11, v8);
  sub_22BE1A140();
  sub_22BE19DC4(v12, v13, v14, v8);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v5 = v3;
  *(v5 + 8) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v0;
  *(v5 + 16) = v7;
  sub_22C0E9CCC();
  sub_22C0E9CCC();
  sub_22BE234D8();
}

uint64_t TranscriptProtoClientUndoRedoRequest.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoClientUndoRedoRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoClientUndoRedoRequest.statementIDToUndo.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoClientUndoRedoRequest(v0);
  return sub_22BE18504();
}

void TranscriptProtoClientUndoRedoRequest.init(token:operation:statementID:statementIDToUndo:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v9, v10, v11, v8);
  sub_22BE1A140();
  sub_22BE19DC4(v12, v13, v14, v8);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v5 = v3;
  *(v5 + 8) = v1;
  *(v5 + 16) = v7;
  sub_22C0E9CCC();
  sub_22C0E9CCC();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoTypeConversionRequest.target.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoTypeConversionRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoTypeConversionRequest.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoTypeConversionRequest(v0);
  return sub_22BE18504();
}

void TranscriptProtoTypeConversionRequest.init(value:target:statementID:)()
{
  sub_22BE3C358();
  sub_22C0E9824();
  sub_22C272594();
  v0 = sub_22BE238E8();
  v4 = sub_22C0E966C(v0, v1, v2, v3);
  type metadata accessor for TranscriptProtoTypeConversionRequest(v4);
  sub_22C2725A4();
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v9, v10, v11, v12);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3C5E4();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t TranscriptProtoTypeConversionResult.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoTypeConversionResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoTypeConversionResult.originStatementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoTypeConversionResult(v0);
  return sub_22BE18504();
}

void sub_22C0D8E10()
{
  sub_22BE19460();
  v1 = v0;
  v2 = sub_22C0E9824();
  v3(v2);
  v4 = sub_22BE238E8();
  v8 = sub_22C0E966C(v4, v5, v6, v7);
  v1(v8);
  v9 = sub_22C0E9B88();
  v10 = type metadata accessor for TranscriptProtoStatementID(v9);
  v11 = sub_22BE409A4();
  sub_22BE19DC4(v11, v12, v13, v10);
  sub_22BE1A140();
  sub_22BE19DC4(v14, v15, v16, v10);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE35838();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoQueryDecorationResult.toolRetrievalResponse.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryDecorationResult(v0);
  return sub_22BE18504();
}

void TranscriptProtoQueryDecorationResult.init(spans:toolRetrievalResponse:dynamicEnumerationEntities:context:)()
{
  sub_22BE3C358();
  v4 = sub_22BE2597C();
  type metadata accessor for TranscriptProtoQueryDecorationResult(v4);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v2;
  sub_22BE2343C();
  v3[1] = v1;
  v3[2] = v0;
  sub_22BE267B8();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.payload.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v0);
  return sub_22BE18504();
}

void TranscriptProtoQueryDecorationPrePlannerResult.init(statementID:dataSource:payload:)()
{
  sub_22BE3C358();
  v3 = sub_22BE2597C();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v3);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  v8 = sub_22C0E9D7C();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(v8);
  sub_22BE1A140();
  sub_22C0E9C4C(v9, v10, v11, v12);
  sub_22BE2343C();
  *v2 = v1;
  v2[1] = v0;
  sub_22BE2343C();
  sub_22BE267B8();
}

void static TranscriptProtoQueryDecorationPrePlannerPayloadEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v6 = sub_22BE46DA4(v4, v5);
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v9 = sub_22C0E9724(v8);
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(v9);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v12 = sub_22BE28E74(v11);
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v57 = v14;
  v15 = sub_22BE183BC();
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(v15);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  v18 = sub_22BE48A8C(v17);
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(v18);
  sub_22BE18000();
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v55 = v20;
  v21 = sub_22BE183BC();
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(v21);
  sub_22BE18000();
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  v54 = v23;
  v24 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(v24);
  sub_22BE18000();
  MEMORY[0x28223BE20](v25);
  sub_22BE183AC();
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v26);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v27);
  sub_22BE23858();
  MEMORY[0x28223BE20](v28);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v30);
  sub_22BE25A90();
  v31 = sub_22BE5CE4C(&qword_27D9117F0, &unk_22C2AE800);
  sub_22BE19448(v31);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0E9D34();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE383A8();
      sub_22C0C2A68();
      if (sub_22BE36558() != 1)
      {
        sub_22C0E9918();
        goto LABEL_28;
      }

      sub_22BE3D6A0();
      sub_22C0C1B18();
      sub_22BE98DD8(*v1, *v55);
      if (v45)
      {
        sub_22C0E9F44();
        sub_22C0C1B6C();
        sub_22C0E9AD0();
      }

      sub_22BE41E6C();
      sub_22C0C1AC4();
      goto LABEL_37;
    case 2u:
      sub_22BE383A8();
      sub_22C0C2A68();
      if (sub_22BE36558() != 2)
      {
        sub_22C0E9830();
        goto LABEL_28;
      }

      v34 = sub_22BE3D6A0();
      sub_22BE39F80(v34);
      sub_22C0E9E3C();
      sub_22BE9776C();
      if (v35)
      {
        sub_22BEC0A84();
        v36 = sub_22C0C1B6C();
        sub_22BE39EB8(v36);
      }

      sub_22C0E996C();
      sub_22C0C1AC4();
      goto LABEL_37;
    case 3u:
      sub_22BE383A8();
      sub_22C0C2A68();
      if (sub_22BE36558() != 3)
      {
        sub_22BE3ACD8();
        goto LABEL_28;
      }

      sub_22BE3D6A0();
      sub_22C0E9B7C();
      sub_22C0C1B18();
      sub_22BE969C8(*v3, *v2, v37, v38, v39, v40, v41, v42, DecorationPrePlannerResultPayloadRepeatedStringVariant, DecorationPrePlannerResultPayloadRepeatedTypedValueVariant, DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant, DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant, DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant, DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant, v54, v55, v56, v57, v58, v59);
      if (v43)
      {
        sub_22BEC0A84();
        v44 = sub_22C0C1B6C();
        sub_22BE32E64(v44);
      }

      sub_22BE377B0();
      sub_22C0C1AC4();
      goto LABEL_37;
    case 4u:
      sub_22BE383A8();
      sub_22C0C2A68();
      if (sub_22BE36558() != 4)
      {
        sub_22C0E9848();
        goto LABEL_28;
      }

      sub_22BE3D6A0();
      sub_22C0E9A68();
      sub_22C0C1B18();
      sub_22BE98FD4();
      if (v33)
      {
        sub_22BEC0A84();
        sub_22C0C1B6C();
        sub_22C0E99FC();
      }

      sub_22C0E9984();
      sub_22C0C1AC4();
      goto LABEL_37;
    case 5u:
      sub_22BE383A8();
      sub_22C0C2A68();
      if (sub_22BE36558() != 5)
      {
        goto LABEL_28;
      }

      sub_22BE3D6A0();
      sub_22C0E9A5C();
      sub_22C0C1B18();
      sub_22BEA1204();
      if (v46)
      {
        sub_22BEC0A84();
        v47 = sub_22C0C1B6C();
        sub_22BE3C224(v47);
      }

      sub_22BE33710();
      sub_22C0C1AC4();
      goto LABEL_37;
    default:
      sub_22BE383A8();
      sub_22C0C2A68();
      if (sub_22BE36558())
      {
        sub_22BE379D8();
LABEL_28:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D9117F0, &unk_22C2AE800);
      }

      else
      {
        sub_22BE3D6A0();
        sub_22C0C1B18();
        if (sub_22BE9693C(*v2, *v54))
        {
          sub_22BEC0A84();
          sub_22C0C1B6C();
          sub_22C0E9E64();
        }

        sub_22C0E999C();
        sub_22C0C1AC4();
LABEL_37:
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
      }

      sub_22BE1AABC();
      return;
  }
}

uint64_t TranscriptProtoExecutionPreconditionEvaluatorRequest.request.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(v0);
  return sub_22BE18504();
}

void static TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE39FFC();
  v2 = type metadata accessor for TranscriptProtoClientAction(v1);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v4 = sub_22BE36588();
  v5 = type metadata accessor for TranscriptProtoAction(v4);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE35598();
  type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(v7);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v9);
  sub_22BE181E4();
  v10 = sub_22BE5CE4C(&qword_27D9117F8, &qword_22C2AE818);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE1B62C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    if (sub_22C0E9EFC() == 1)
    {
      sub_22BE3D6A0();
      sub_22C0C1B18();
      sub_22BE3C5E4();
      static TranscriptProtoClientAction.== infix(_:_:)();
      sub_22C0C1AC4();
      sub_22BE1C2A0();
LABEL_9:
      sub_22C0C1AC4();
      sub_22BE26148();
      sub_22C0C1AC4();
      goto LABEL_10;
    }

    sub_22C0E98B8();
  }

  else
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    if (sub_22C0E9EFC() != 1)
    {
      sub_22BE3D6A0();
      sub_22C0C1B18();
      static TranscriptProtoAction.== infix(_:_:)();
      sub_22C0C1AC4();
      sub_22BE431C0();
      goto LABEL_9;
    }

    sub_22C0E9830();
  }

  sub_22C0C1AC4();
  sub_22BE33928(v0, &qword_27D9117F8, &qword_22C2AE818);
LABEL_10:
  sub_22BE1AABC();
}

uint64_t TranscriptProtoRequestAmendment.content.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestAmendment(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoIntermediateSystemResponse.responseOutput.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoIntermediateSystemResponse(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0DA218()
{
  v0 = sub_22BE2BB48();
  v1(v0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t sub_22C0DA264()
{
  v3 = sub_22BE23708();
  v4(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoIntermediateSystemResponse.clientQueryID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoIntermediateSystemResponse(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoIntermediateSystemResponse.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoIntermediateSystemResponse(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoIntermediateSystemResponse.actionEventID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoIntermediateSystemResponse(v0);
  return sub_22BE18504();
}

void TranscriptProtoIntermediateSystemResponse.init(responseOutput:clientQueryID:toolID:statementID:actionEventID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_22C0E9E48();
  v30 = v10;
  v31 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_22C0E9C34();
  v18 = sub_22BE3C4D0();
  v19 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(v18);
  type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_22BE1A140();
  sub_22BE19DC4(v20, v21, v22, v23);
  v24 = (v8 + *(v19 + 24));
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v25, v26, v27, v28);
  v29 = (v8 + *(v19 + 32));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v24 = v9;
  v24[1] = v17;
  *v8 = v15;
  v8[1] = v13;
  sub_22BE2343C();
  *v29 = v30;
  v29[1] = v31;
  sub_22BE3E534();
}

uint64_t TranscriptProtoIntermediateSystemResponseRendered.statementID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoIntermediateSystemResponseRendered.actionEventID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(v0);
  return sub_22BE18504();
}

void TranscriptProtoIntermediateSystemResponseRendered.init(renderedResponse:toolID:statementID:actionEventID:)()
{
  sub_22BE19460();
  sub_22BE32384();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v14);
  v15 = (v9 + *(v10 + 28));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v9 = v7;
  *(v9 + 8) = v5;
  *(v9 + 16) = v3;
  sub_22BE2343C();
  *v15 = v1;
  v15[1] = v0;
  sub_22BE1AABC();
}

uint64_t static TranscriptProtoAgentRequestEnum.== infix(_:_:)()
{
  sub_22BE18378();
  v0 = sub_22BE5CE4C(&qword_27D911800, &qword_22C2AE828);
  sub_22BE19448(v0);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE3607C();
  sub_22C0C2A68();
  sub_22C0E987C();
  sub_22C0C2A68();
  sub_22C0E9C28();
  static TranscriptProtoRequest.== infix(_:_:)();
  sub_22C0C1AC4();
  sub_22BE1804C();
  sub_22C0C1AC4();
  return sub_22BE36384();
}

uint64_t TranscriptProtoAgentHandoffRequest.request.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAgentHandoffRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAgentPrimitiveAction.primiviteAction.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAgentPrimitiveAction(v0);
  return sub_22BE18504();
}

void static TranscriptProtoPrimitiveActionEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE39FFC();
  v4 = type metadata accessor for TranscriptProtoAgentYieldRequest(v3);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v6 = sub_22BE183BC();
  v7 = type metadata accessor for TranscriptProtoAgentPassRequest(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v9 = sub_22BE36588();
  v10 = type metadata accessor for TranscriptProtoAgentHandoffRequest(v9);
  v11 = sub_22BE19448(v10);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v12 = sub_22BE37EA4();
  type metadata accessor for TranscriptProtoPrimitiveActionEnum(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v14);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v15);
  sub_22BE324EC();
  v16 = sub_22BE5CE4C(&qword_27D911808, &qword_22C2AE848);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1B72C();
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE1B62C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C0E96F0();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22BE47E00();
        sub_22C0C1B18();
        static TranscriptProtoAgentPassRequest.== infix(_:_:)(v2, v1);
        sub_22C0C1AC4();
LABEL_12:
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
        goto LABEL_13;
      }

      sub_22BE20118();
    }

    else
    {
      sub_22C0E96F0();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22BE47E00();
        sub_22C0C1B18();
        sub_22C2704B4();
        v19 = sub_22C0C1B6C();
        sub_22BE36258(v19);
        sub_22C0C1AC4();
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_22C0E96F0();
    sub_22C0C2A68();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22BE47E00();
      sub_22C0C1B18();
      static TranscriptProtoAgentHandoffRequest.== infix(_:_:)();
      sub_22C0C1AC4();
      goto LABEL_12;
    }

    sub_22BE3E76C();
  }

  sub_22C0C1AC4();
  sub_22BE33928(v0, &qword_27D911808, &qword_22C2AE848);
LABEL_13:
  sub_22BE1AABC();
}

unint64_t sub_22C0DAEAC()
{
  result = qword_27D911810;
  if (!qword_27D911810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911810);
  }

  return result;
}

unint64_t sub_22C0DAF34()
{
  result = qword_27D911828;
  if (!qword_27D911828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911828);
  }

  return result;
}

unint64_t sub_22C0DAFBC()
{
  result = qword_27D911840;
  if (!qword_27D911840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911840);
  }

  return result;
}

unint64_t sub_22C0DB044()
{
  result = qword_27D911858;
  if (!qword_27D911858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911858);
  }

  return result;
}

unint64_t sub_22C0DB0CC()
{
  result = qword_27D911870;
  if (!qword_27D911870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911870);
  }

  return result;
}

unint64_t sub_22C0DB154()
{
  result = qword_27D911888;
  if (!qword_27D911888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911888);
  }

  return result;
}

unint64_t sub_22C0DB1DC()
{
  result = qword_27D9118A0;
  if (!qword_27D9118A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9118A0);
  }

  return result;
}

unint64_t sub_22C0DB264()
{
  result = qword_27D9118B8;
  if (!qword_27D9118B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9118B8);
  }

  return result;
}

unint64_t sub_22C0DB2EC()
{
  result = qword_27D9118D0;
  if (!qword_27D9118D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9118D0);
  }

  return result;
}

unint64_t sub_22C0DB374()
{
  result = qword_27D9118E8;
  if (!qword_27D9118E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9118E8);
  }

  return result;
}

unint64_t sub_22C0DB3FC()
{
  result = qword_27D911900;
  if (!qword_27D911900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911900);
  }

  return result;
}

unint64_t sub_22C0DB484()
{
  result = qword_27D911918;
  if (!qword_27D911918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911918);
  }

  return result;
}

unint64_t sub_22C0DB50C()
{
  result = qword_27D911930;
  if (!qword_27D911930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911930);
  }

  return result;
}

unint64_t sub_22C0DB594()
{
  result = qword_27D911948;
  if (!qword_27D911948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911948);
  }

  return result;
}

unint64_t sub_22C0DB5EC()
{
  result = qword_27D911950;
  if (!qword_27D911950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911950);
  }

  return result;
}

unint64_t sub_22C0DB674()
{
  result = qword_27D911968;
  if (!qword_27D911968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911968);
  }

  return result;
}

unint64_t sub_22C0DB6CC()
{
  result = qword_27D911970;
  if (!qword_27D911970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911970);
  }

  return result;
}

unint64_t sub_22C0DB724()
{
  result = qword_27D911978;
  if (!qword_27D911978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911978);
  }

  return result;
}

unint64_t sub_22C0DB77C()
{
  result = qword_27D911980;
  if (!qword_27D911980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911980);
  }

  return result;
}

unint64_t sub_22C0DB804()
{
  result = qword_27D911998;
  if (!qword_27D911998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911998);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TranscriptProtoPlanSource(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for TranscriptProtoResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_22C0DBA64(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 18);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C0DBBA8(uint64_t a1)
{
  sub_22C0DBDCC();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281079880, type metadata accessor for TranscriptProtoPayload, MEMORY[0x277D83D88]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_22C0DBE2C(319, qword_281078C10, type metadata accessor for TranscriptProtoTimepoint, MEMORY[0x277D83D88]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_22C0DBE2C(319, qword_281076BB8, type metadata accessor for TranscriptProtoParticipantID, MEMORY[0x277D83D88]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_22C0DBE2C(319, qword_28107A2E0, type metadata accessor for TranscriptProtoSpanID, MEMORY[0x277D83D88]);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              v2 = sub_22C2704B4();
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_22C0DBDCC()
{
  if (!qword_28106DE30)
  {
    v0 = sub_22C272EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_28106DE30);
    }
  }
}

void sub_22C0DBE2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22C0DBEC4(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoSessionStart(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoUserTurnStarted(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoSpeechPartialResult(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoRequest(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoPlan(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoAction(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoClientAction(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoQueryStep(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoVariableStep(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoSessionError(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoRecoverableError(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoQueryStepResults(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for TranscriptProtoActionResolverRequest(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for TranscriptProtoSafetyModeRelease(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for TranscriptProtoSafetyModeException(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for TranscriptProtoResponseGenerationRequest(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for TranscriptProtoEntitySpanMatchResult(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for TranscriptProtoContextRetrieved(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for TranscriptProtoActionCancellation(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for TranscriptProtoToolRetrievalResponse(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for TranscriptProtoSystemResponse(319);
                                          if (v22 <= 0x3F)
                                          {
                                            result = type metadata accessor for TranscriptProtoStatementResult(319);
                                            if (v23 <= 0x3F)
                                            {
                                              result = type metadata accessor for TranscriptProtoExternalAgentRequest(319);
                                              if (v24 <= 0x3F)
                                              {
                                                result = type metadata accessor for TranscriptProtoExternalAgentOutcome(319);
                                                if (v25 <= 0x3F)
                                                {
                                                  result = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(319);
                                                  if (v26 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for TranscriptProtoToolResolution(319);
                                                    if (v27 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for TranscriptProtoUndoRedoRequest(319);
                                                      if (v28 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for TranscriptProtoClientUndoRedoRequest(319);
                                                        if (v29 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for TranscriptProtoTypeConversionRequest(319);
                                                          if (v30 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for TranscriptProtoTypeConversionResult(319);
                                                            if (v31 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for TranscriptProtoQueryDecorationResult(319);
                                                              if (v32 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for TranscriptProtoContinuePlanning(319);
                                                                if (v33 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(319);
                                                                  if (v34 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for TranscriptProtoSkipStatement(319);
                                                                    if (v35 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(319);
                                                                      if (v36 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for TranscriptProtoRequestAmendment(319);
                                                                        if (v37 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for TranscriptProtoToolRetrievalRequest(319);
                                                                          if (v38 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for TranscriptProtoContextRetrievalRequest(319);
                                                                            if (v39 <= 0x3F)
                                                                            {
                                                                              result = type metadata accessor for TranscriptProtoSpanMatchRequest(319);
                                                                              if (v40 <= 0x3F)
                                                                              {
                                                                                result = type metadata accessor for TranscriptProtoIntermediateSystemResponse(319);
                                                                                if (v41 <= 0x3F)
                                                                                {
                                                                                  result = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(319);
                                                                                  if (v42 <= 0x3F)
                                                                                  {
                                                                                    result = type metadata accessor for TranscriptProtoAgentPrimitiveAction(319);
                                                                                    if (v43 <= 0x3F)
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

  return result;
}

void sub_22C0DC280(uint64_t a1)
{
  sub_22C0DBE2C(319, &qword_27D9119B0, type metadata accessor for TranscriptProtoEvent, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22C2704B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0DC380(uint64_t a1)
{
  sub_22C0DBE2C(319, &qword_28107F1D8, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C2704B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C0DC47C(uint64_t a1)
{
  sub_22C0DBE2C(319, qword_281075F90, type metadata accessor for TranscriptProtoLocaleSettings, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281076DA8, type metadata accessor for TranscriptProtoDeviceDetails, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281076068, type metadata accessor for TranscriptProtoGenderSettings, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22C0E66A4(319, &qword_28106DBD0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_22C2704B4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C0DC688(uint64_t a1)
{
  sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281078FE8, type metadata accessor for TranscriptProtoUserTurn, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_28107E7A0, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22C2704B4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C0DC940(uint64_t a1)
{
  sub_22C0DBE2C(319, qword_281075D08, type metadata accessor for TranscriptProtoRequestContent, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281072398, type metadata accessor for TranscriptProtoRequestPrescribedPlan, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22C0DBE2C(319, qword_28106F940, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_22C0DBE2C(319, qword_28107E7A0, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_22C0DBE2C(319, qword_281070CB8, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_22C0DBE2C(319, qword_2810756F0, type metadata accessor for TranscriptProtoDateTimeContext, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_22C2704B4();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C0DCD0C(uint64_t a1)
{
  sub_22C0DBE2C(319, qword_281076690, type metadata accessor for TranscriptProtoSpeechPackage, MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = sub_22C2704B4();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_22C0DCF6C(uint64_t a1)
{
  result = sub_22C2704B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C0DD02C(uint64_t a1)
{
  sub_22C0DBE2C(319, qword_281075D08, type metadata accessor for TranscriptProtoRequestContent, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_28106F940, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22C2704B4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C0DD18C()
{
  v0 = sub_22C0E9DAC();
  sub_22C0E66A4(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_22BE39730();
    sub_22C2704B4();
    if (v5 <= 0x3F)
    {
      sub_22C0E9B64();
      sub_22BE22E88();
      swift_cvw_initStructMetadataWithLayoutString();
      sub_22BEE94D4();
    }
  }
}

uint64_t sub_22C0DD26C(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(319);
                if (v9 <= 0x3F)
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

  return result;
}

void sub_22C0DD3F8(uint64_t a1)
{
  sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C2704B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C0DD4D8(uint64_t a1)
{
  sub_22C0E9A1C(a1, &qword_28106DDD8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22C2704B4();
    if (v2 <= 0x3F)
    {
      sub_22BE22E88();
      swift_cvw_initStructMetadataWithLayoutString();
      sub_22BEE94D4();
    }
  }
}

void sub_22C0DD5BC(uint64_t a1)
{
  sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DAD8, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22C2704B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0DD6FC()
{
  sub_22C0E97DC();
  v0 = sub_22C0E9DAC();
  sub_22C0E66A4(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_22BE39730();
    sub_22C2704B4();
    if (v5 <= 0x3F)
    {
      sub_22BE22E88();
      swift_cvw_initStructMetadataWithLayoutString();
      sub_22BEE94D4();
    }
  }
}

void sub_22C0DD798(uint64_t a1)
{
  sub_22C0DDB34(319, &qword_28106DE58, type metadata accessor for TranscriptProtoActionParameterValue, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (v1 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22C0DBE2C(319, qword_281072CD8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_22C2704B4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C0DD94C(uint64_t a1)
{
  sub_22C0DBE2C(319, qword_2810739A8, type metadata accessor for TranscriptProtoToolParameterValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281075490, type metadata accessor for TranscriptProtoPromptSelection, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22C2704B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0DDB34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_22BE1C2A0();
    v6 = sub_22C272EC4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22C0DDBF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_22BE53788);
}

uint64_t sub_22C0DDC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_22BE5379C);
}

_BYTE *sub_22C0DDD70(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}