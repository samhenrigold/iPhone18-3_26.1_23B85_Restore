uint64_t sub_22C203B5C()
{
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  MEMORY[0x28223BE20](matched);
  v3 = (v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_22C1C557C(v4, v5, v6, v7, v8, v9, v10, v11, v15[0], v15[1]);
  if (!v0)
  {
    v13 = v12;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v3 = v13;
    sub_22C259290(&qword_27D9105E0, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    matched = sub_22C270744();
    sub_22BE1AE58();
  }

  return matched;
}

uint64_t sub_22C203C84()
{
  v2 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  MEMORY[0x28223BE20](v2);
  v3 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v3;
  v6[2] = *(v0 + 32);
  v7 = *(v0 + 48);
  sub_22C2590EC(v0, v5);
  TranscriptProtoToolRetrievalResponse.init(handwritten:)(v6);
  if (!v1)
  {
    sub_22C259290(&qword_27D9105F8, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    v2 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v2;
}

uint64_t sub_22C203DC0()
{
  v2 = type metadata accessor for ToolParameterValue(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoToolParameterValue.init(handwritten:)(v4, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D9105B8, type metadata accessor for TranscriptProtoToolParameterValue);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C203F40()
{
  v2 = type metadata accessor for ExternalAgentOutcome(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoExternalAgentOutcome.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_281072E88, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C2040C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  sub_22C259290(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  v9 = sub_22C270744();
  sub_22BE1AE58();
  return v9;
}

uint64_t sub_22C2041F0()
{
  v1 = sub_22C26E1D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C26E954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptProtoUndoContext(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8, v0, v5, v10);
  sub_22C26E934();
  v13 = sub_22C26E184();
  v24 = v14;
  v25 = v13;
  (*(v2 + 8))(v4, v1);
  v15 = sub_22C26E914();
  v17 = v16;
  v18 = sub_22C26E924();
  v20 = v19;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v6 + 8))(v8, v5);
  v21 = v24;
  *v12 = v25;
  v12[1] = v21;
  v12[2] = v15;
  v12[3] = v17;
  v12[4] = v18;
  v12[5] = v20;
  sub_22C259290(&qword_27D90F988, type metadata accessor for TranscriptProtoUndoContext);
  v22 = sub_22C270744();
  sub_22BE1AE58();
  return v22;
}

uint64_t sub_22C204494()
{
  v2 = sub_22C26E8E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoFollowUpAction.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F9A0, type metadata accessor for TranscriptProtoFollowUpAction);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C20464C()
{
  v2 = sub_22C26E8B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoFollowUpActionExecutableAction.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F9B8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C204804()
{
  v2 = sub_22BE5CE4C(&qword_27D9155A0, &unk_22C2CC790);
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = sub_22C26E8A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v9 = MEMORY[0x28223BE20](v23);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8, v0, v5, v9);
  v22 = sub_22C26E894();
  v24 = v12;
  sub_22C26E874();
  if (qword_27D906E28 != -1)
  {
    swift_once();
  }

  sub_22C250EF0(&qword_27D9156C8);
  v13 = sub_22C26DC04();
  v15 = (v25 + 8);
  if (v1)
  {

    (*v15)(v4, v2);
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v16 = v14;
    v17 = *v15;
    v25 = v13;
    v17(v4, v2);
    v18 = sub_22C26E864();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v6 + 8))(v8, v5);
    v19 = v24;
    *v11 = v22;
    v11[1] = v19;
    v11[2] = v25;
    v11[3] = v16;
    v11[4] = v18;
    sub_22C259290(&qword_27D90F9D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    v2 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v2;
}

char *sub_22C204B70()
{
  v2 = v0;
  v3 = sub_22C26FD94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v6, v2, v3, v8);
  v11 = sub_22C26FD84();
  sub_22C220C88(v11);
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v13 = v12;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v4 + 8))(v6, v3);
    *v10 = v13;
    sub_22C259290(&qword_27D90FA18, type metadata accessor for TranscriptProtoValueDisambiguation);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C204D74()
{
  v2 = sub_22C26E854();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoActionFailure(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoActionFailure.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F908, type metadata accessor for TranscriptProtoActionFailure);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C204F2C(char a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v4 = a1;
  sub_22C259290(&qword_27D90FFF0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C205038()
{
  v0 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D90FFD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
  v1 = sub_22C270744();
  sub_22BE1AE58();
  return v1;
}

uint64_t sub_22C205138()
{
  v2 = type metadata accessor for TypeConversionRequest(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoTypeConversionRequest.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D910700, type metadata accessor for TranscriptProtoTypeConversionRequest);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C2052B8()
{
  v2 = type metadata accessor for TypeConversionResult(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoTypeConversionResult.init(handwritten:)(v4, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D910718, type metadata accessor for TranscriptProtoTypeConversionResult);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C205438()
{
  DecorationResult = type metadata accessor for QueryDecorationResult(0);
  MEMORY[0x28223BE20](DecorationResult - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoQueryDecorationResult.init(handwritten:)(v4);
  if (!v1)
  {
    sub_22C259290(&qword_27D910730, type metadata accessor for TranscriptProtoQueryDecorationResult);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C2055B8()
{
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResult - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoQueryDecorationPrePlannerResult.init(handwritten:)(v4, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D910748, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C205738(uint64_t a1, char a2)
{
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayload);
  v7 = a1;
  v8 = a2;

  TranscriptProtoQueryDecorationPrePlannerResultPayload.init(handwritten:)(&v7);
  if (!v2)
  {
    sub_22C259290(&qword_27D9107F0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
    DecorationPrePlannerResultPayload = sub_22C270744();
    sub_22BE1AE58();
  }

  return DecorationPrePlannerResultPayload;
}

uint64_t sub_22C20586C()
{
  v1 = v0;
  v2 = sub_22C26E7E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2, v7);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v9 = sub_22C26E7B4();
  v9[1] = v10;
  v9[2] = sub_22C26E7D4();
  v9[3] = v11;
  v12 = sub_22C26E7C4();
  (*(v3 + 8))(v5, v2);
  v9[4] = v12;
  sub_22C259290(&qword_27D90F938, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
  v13 = sub_22C270744();
  sub_22BE1AE58();
  return v13;
}

uint64_t sub_22C205A50()
{
  v1 = sub_22C26E814();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1, v6);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v9 = sub_22C26E804();
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  *v8 = v9;
  v8[1] = v11;
  sub_22C259290(&qword_27D90F950, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
  v12 = sub_22C270744();
  sub_22BE1AE58();
  return v12;
}

char *sub_22C205C28()
{
  v2 = v0;
  v3 = type metadata accessor for RequestContent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for RequestAmendment(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  MEMORY[0x28223BE20](v13);
  v15 = (v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v2, v12);
  v16 = sub_22C26E184();
  v18 = v17;
  sub_22BE1AA68(&v12[*(v10 + 28)], v5);
  TranscriptProtoRequestContent.init(handwritten:)();
  if (v1)
  {
    sub_22BE1AE58();
  }

  else
  {
    v19 = type metadata accessor for TranscriptProtoRequestContent(0);
    sub_22BE19DC4(v8, 0, 1, v19);
    sub_22BE19DC4(v15 + *(v13 + 20), 1, 1, v19);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    *v15 = v16;
    v15[1] = v18;
    sub_22BE2343C();
    sub_22C259290(&qword_27D910868, type metadata accessor for TranscriptProtoRequestAmendment);
    v8 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v8;
}

uint64_t sub_22C205F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = a1;
  v6[1] = a2;
  sub_22C259290(&qword_27D910880, type metadata accessor for TranscriptProtoToolRetrievalRequest);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C206048()
{
  v0 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D910898, type metadata accessor for TranscriptProtoContextRetrievalRequest);
  v1 = sub_22C270744();
  sub_22BE1AE58();
  return v1;
}

uint64_t sub_22C206148(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  MEMORY[0x28223BE20](matched);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = a1;
  v6[1] = a2;
  sub_22C259290(&qword_27D9108B0, type metadata accessor for TranscriptProtoSpanMatchRequest);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C206268()
{
  v2 = sub_22C270074();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoIntermediateSystemResponse.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D9108C8, type metadata accessor for TranscriptProtoIntermediateSystemResponse);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C206420()
{
  v1 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_22C270234();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v0, v8, v13);
  v31 = sub_22C2701D4();
  v16 = sub_22C270224();
  v29 = v17;
  v30 = v16;
  sub_22C2701E4();
  v33 = v7;
  v18 = v32;
  sub_22BE46914();
  v32 = v18;
  sub_22C26FF64();
  v19 = sub_22C26E1D4();
  if (sub_22BE1AEA8(v3, 1, v19) == 1)
  {
    sub_22BE233E8(v3, &qword_27D9082F0, &qword_22C27AB00);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = sub_22C26E184();
    v21 = v22;
    (*(*(v19 - 8) + 8))(v3, v19);
  }

  v23 = *(v12 + 24);
  v24 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE19DC4(&v15[v23], 1, 1, v24);
  v25 = &v15[*(v12 + 28)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v9 + 8))(v11, v8);
  *v15 = v31 & 1;
  v26 = v29;
  *(v15 + 1) = v30;
  *(v15 + 2) = v26;
  sub_22BE2343C();
  *v25 = v20;
  v25[1] = v21;
  sub_22C259290(&qword_27D9108E0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered);
  v27 = sub_22C270744();
  sub_22BE1AE58();
  return v27;
}

char *sub_22C2067F0()
{
  v2 = v0;
  v3 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D90F248, &unk_22C2CC860);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v9 = type metadata accessor for AgentPrimitiveAction(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v2, v12);
  v17 = *v12;
  v16 = v12[1];
  sub_22BE1AA68(v12 + *(v10 + 28), v5);

  TranscriptProtoPrimitiveAction.init(handwritten:)();
  if (v1)
  {
    sub_22BE1AE58();
  }

  else
  {
    v18 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
    sub_22BE19DC4(v8, 0, 1, v18);
    sub_22BE19DC4(v15 + *(v13 + 20), 1, 1, v18);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    *v15 = v17;
    v15[1] = v16;
    sub_22BE2343C();
    sub_22C259290(&qword_27D910958, type metadata accessor for TranscriptProtoAgentPrimitiveAction);
    v8 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v8;
}

uint64_t sub_22C206AEC()
{
  v2 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoPrimitiveAction.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D910970, type metadata accessor for TranscriptProtoPrimitiveAction);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

char *sub_22C206C6C()
{
  v2 = v0;
  v3 = type metadata accessor for AgentRequest(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v9 = type metadata accessor for AgentHandoffRequest(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for TranscriptProtoAgentHandoffRequest(0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v2, v12);
  v17 = *v12;
  v16 = v12[1];
  sub_22BE1AA68(v12 + *(v10 + 28), v5);

  TranscriptProtoAgentRequest.init(handwritten:)(v5);
  if (v1)
  {
    sub_22BE1AE58();
  }

  else
  {
    v18 = type metadata accessor for TranscriptProtoAgentRequest(0);
    sub_22BE19DC4(v8, 0, 1, v18);
    sub_22BE19DC4(v15 + *(v13 + 20), 1, 1, v18);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    *v15 = v17;
    v15[1] = v16;
    sub_22BE2343C();
    sub_22C259290(&qword_27D910910, type metadata accessor for TranscriptProtoAgentHandoffRequest);
    v8 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v8;
}

uint64_t sub_22C206F68()
{
  v2 = type metadata accessor for AgentPassRequest(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoAgentPassRequest(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoAgentPassRequest.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D910928, type metadata accessor for TranscriptProtoAgentPassRequest);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C2070E8()
{
  v0 = type metadata accessor for TranscriptProtoAgentYieldRequest(0);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D910940, type metadata accessor for TranscriptProtoAgentYieldRequest);
  v1 = sub_22C270744();
  sub_22BE1AE58();
  return v1;
}

uint64_t sub_22C2071E8()
{
  v2 = type metadata accessor for AgentRequest(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoAgentRequest(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoAgentRequest.init(handwritten:)(v4);
  if (!v1)
  {
    sub_22C259290(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

void TranscriptHandwrittenBidirectionalConvertibleProtocol.protoBytes()()
{
  sub_22BE19130();
  sub_22C259488();
  MEMORY[0x28223BE20](v1);
  sub_22BE294E0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE25CD0();
  v4 = sub_22BE289D8();
  v5(v4);
  sub_22BE1A8C4();
  swift_getAssociatedConformanceWitness();
  v6 = sub_22BE3D5BC();
  v7(v6, AssociatedTypeWitness);
  if (!v0)
  {
    sub_22BE1B5E0();
    swift_getAssociatedConformanceWitness();
    sub_22BE19454();
    _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
    sub_22BE354D0();
    sub_22C270744();
    sub_22BE29328();
    v8 = sub_22BE200D4();
    v9(v8);
  }

  sub_22BE1A8C4();
  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t Array<A>.init<A>(handwritten:)(uint64_t a1, uint64_t a2)
{
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C0F0608();
  if (!v2)
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    sub_22C25A368();
    a2 = sub_22C2735C4();
  }

  sub_22BE1BC24();
  v4 = sub_22BE18944();
  v5(v4);
  return a2;
}

uint64_t sub_22C2077FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  result = (*(a5 + 16))(v15, a3, a5);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

void Set<>.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_22C2735B4();
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  swift_getWitnessTable();
  sub_22C194C60();

  if (!v4)
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    sub_22C259FD0();
    sub_22C2736A4();
  }
}

uint64_t sub_22C207A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a1, v12);
  result = (*(a4 + 16))(v14, a3, a4);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t Dictionary<>.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_22C272EB4();

  return v5;
}

uint64_t sub_22C207C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v15 - v11;
  (*(v13 + 16))(v15 - v11, a1, v10);
  return (*(a6 + 16))(v12, a4, a6);
}

uint64_t HandwrittenConversion.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

void Session.Event.init(transcript:)()
{
  sub_22BE19130();
  v6 = v5;
  v134 = v7;
  v8 = sub_22BE5CE4C(&qword_27D90E408, &unk_22C2CC840);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE29200(v10);
  v11 = sub_22BE5CE4C(&qword_27D90E418, &unk_22C2AE460);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v14 = sub_22BE417B4(v13);
  v15 = type metadata accessor for TranscriptProtoTimepoint(v14);
  v16 = sub_22BE19448(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  v18 = sub_22BE48A8C(v17);
  v19 = type metadata accessor for Timepoint(v18);
  v20 = sub_22BE19448(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  v22 = sub_22BE3C768(v21);
  v23 = type metadata accessor for TranscriptProtoPayload(v22);
  v24 = sub_22BE19448(v23);
  MEMORY[0x28223BE20](v24);
  sub_22BE17A44();
  v26 = sub_22BE28E74(v25);
  v27 = type metadata accessor for Session.Event.Payload(v26);
  v28 = sub_22BE19448(v27);
  MEMORY[0x28223BE20](v28);
  sub_22BE17CBC();
  v29 = sub_22C26E1D4();
  sub_22BE179D8();
  v139 = v30;
  MEMORY[0x28223BE20](v31);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v32);
  sub_22BE26800();
  v33 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v34 = sub_22BE19448(v33);
  MEMORY[0x28223BE20](v34);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v35);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v36);
  sub_22C259BC0();
  sub_22C26E174();
  sub_22C101298();
  v37 = sub_22BE1B73C();
  sub_22BE233E8(v37, v38, &qword_22C27AB00);
  if (v0)
  {
    sub_22C2596C8();
    sub_22BE1AE58();
LABEL_7:
    sub_22BE46D98();
    sub_22BE18478();
    return;
  }

  v128 = v1;
  v129 = v3;
  v140 = v29;
  sub_22C26E174();
  sub_22C101298();
  v39 = v2;
  sub_22BE233E8(v4, &qword_27D9082F0, &qword_22C27AB00);
  if (v6[12])
  {

    sub_22BE1804C();
    sub_22C26E174();
  }

  else
  {
    sub_22C25975C();
    sub_22BE19DC4(v40, v41, v42, v43);
  }

  v44 = v135;
  v45 = type metadata accessor for TranscriptProtoEvent(0);
  sub_22C1035D4();
  v136 = v45;
  Session.Event.Payload.init(transcript:)(v44, v46, v47, v48, v49, v50, v51, v52, v110, v111);
  v53 = v6[5];
  v54 = v6[7];
  v120 = v6[4];
  v121 = v6[6];
  v55 = v6[9];
  v122 = v6[8];
  v56 = (v6 + *(v136 + 48));
  v119 = *v56;
  v125 = v56[1];

  v123 = v53;

  v124 = v54;

  sub_22C1036C4();
  v117 = v55;
  Timepoint.init(transcript:)();
  v116 = v39;
  sub_22C1CF208();
  sub_22BE22814();
  sub_22C0FCA40();
  v115 = v57;
  v114 = v58;
  sub_22BE22814();
  sub_22C0FCB48();
  v61 = v6[10];
  v62 = *(v61 + 16);
  v63 = MEMORY[0x277D84F90];
  v113 = v60;
  v112 = v59;
  if (!v62)
  {
    v95 = v134;
LABEL_29:
    v138 = sub_22C1EE5C8(v63, &qword_27D915CA0, &qword_22C2D1AB0, sub_22C250A74);
    v99 = type metadata accessor for Session.Event(0);
    sub_22BE1A140();
    sub_22BE19DC4(v100, v101, v102, v140);
    v103 = (v95 + v99[11]);
    v104 = (v95 + v99[13]);
    v105 = v95 + v99[14];
    v106 = *(v139 + 32);
    v106(v95, v129, v140);
    v106(v95 + v99[5], v116, v140);
    sub_22BE2343C();
    sub_22BE3B620(v128, v95 + v99[7]);
    v107 = (v95 + v99[8]);
    *v107 = v120;
    v107[1] = v123;
    v108 = (v95 + v99[9]);
    *v108 = v121;
    v108[1] = v124;
    v109 = (v95 + v99[10]);
    *v109 = v122;
    v109[1] = v117;
    *v103 = v119;
    v103[1] = v125;
    sub_22BE3B620(v132, v95 + v99[12]);
    *v104 = v115;
    v104[1] = v114;
    *v105 = v112;
    *(v105 + 8) = v113 & 1;
    *(v95 + v99[15]) = v138;
    sub_22C2596C8();
    sub_22BE406B8();
    sub_22BE1AE58();
    goto LABEL_7;
  }

  sub_22C25A000();
  sub_22C25A930();
  sub_22BE71BBC(v64, v65, v66);
  v67 = sub_22BE308D0();
  v68 = 0;
  v137 = v61 + 64;
  v126 = v69;
  sub_22BE417A8(v61 + 72);
  v71 = 1;
  v127 = v62;
  while ((v67 & 0x8000000000000000) == 0 && v67 < v71 << *(v61 + 32))
  {
    v72 = v67 >> 6;
    v73 = v71 << v67;
    if ((*(v137 + 8 * (v67 >> 6)) & (v71 << v67)) == 0)
    {
      goto LABEL_31;
    }

    v130 = v68;
    if (*(v61 + 36) != v70)
    {
      goto LABEL_32;
    }

    v74 = v70;
    v75 = (*(v61 + 48) + 16 * v67);
    v76 = v75[1];
    v133 = *v75;
    v131 = *(*(v61 + 56) + 8 * v67);
    v77 = v61;
    v79 = *(v63 + 16);
    v78 = *(v63 + 24);

    if (v79 >= v78 >> 1)
    {
      sub_22BE447E4();
      sub_22BE71BBC(v96, v97, v98);
    }

    *(v63 + 16) = v79 + 1;
    v80 = (v63 + 24 * v79);
    v80[4] = v133;
    v80[5] = v76;
    v80[6] = v131;
    v81 = 1 << *(v77 + 32);
    if (v67 >= v81)
    {
      goto LABEL_33;
    }

    if ((*(v137 + 8 * v72) & v73) == 0)
    {
      goto LABEL_34;
    }

    v61 = v77;
    if (*(v77 + 36) != v74)
    {
      goto LABEL_35;
    }

    sub_22C25AC7C();
    if (v83)
    {
      v84 = v72 << 6;
      v85 = v72 + 1;
      v86 = (v118 + 8 * v72);
      while (v85 < (v81 + 63) >> 6)
      {
        v88 = *v86++;
        v87 = v88;
        v84 += 64;
        ++v85;
        if (v88)
        {
          v89 = sub_22BE33FCC();
          sub_22BE2FC64(v89, v90, v91);
          v71 = 1;
          v81 = __clz(__rbit64(v87)) + v84;
          goto LABEL_26;
        }
      }

      v92 = sub_22BE33FCC();
      sub_22BE2FC64(v92, v93, v94);
      v71 = 1;
    }

    else
    {
      v81 = __clz(__rbit64(v82)) | v67 & 0x7FFFFFFFFFFFFFC0;
    }

LABEL_26:
    v68 = v130 + 1;
    v67 = v81;
    v70 = v126;
    v95 = v134;
    if (v130 + 1 == v127)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void Session.Event.Payload.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C25A50C();
  v551 = v17;
  v18 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
  v19 = sub_22BE19448(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v549 = v20;
  v21 = sub_22BE183BC();
  v22 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v21);
  v23 = sub_22BE19448(v22);
  MEMORY[0x28223BE20](v23);
  sub_22BE17A44();
  v25 = sub_22BE18950(v24);
  v547[24] = type metadata accessor for TranscriptProtoAgentPrimitiveAction(v25);
  sub_22BE18000();
  MEMORY[0x28223BE20](v26);
  sub_22BE17B98();
  v548 = v27;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v28);
  sub_22C259824(v29, v30, v31, v32, v33, v34, v35, v36, v520);
  v37 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  v38 = sub_22BE19448(v37);
  MEMORY[0x28223BE20](v38);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v39);
  v48 = sub_22BE3CEC0(v40, v41, v42, v43, v44, v45, v46, v47, v521);
  v49 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(v48);
  v50 = sub_22BE19448(v49);
  MEMORY[0x28223BE20](v50);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v51);
  sub_22BE19E94();
  v53 = sub_22BE18950(v52);
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(v53);
  v55 = sub_22BE19448(matched);
  MEMORY[0x28223BE20](v55);
  sub_22BE17A44();
  v57 = sub_22BE18950(v56);
  v58 = type metadata accessor for TranscriptProtoToolRetrievalRequest(v57);
  v59 = sub_22BE19448(v58);
  MEMORY[0x28223BE20](v59);
  sub_22BE17A44();
  v61 = sub_22BE18950(v60);
  v62 = type metadata accessor for TranscriptProtoRequestAmendment(v61);
  v63 = sub_22BE19448(v62);
  MEMORY[0x28223BE20](v63);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v64);
  sub_22BE19E94();
  v66 = sub_22BE18950(v65);
  v67 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(v66);
  v68 = sub_22BE19448(v67);
  MEMORY[0x28223BE20](v68);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v69);
  sub_22BE19E94();
  v71 = sub_22BE18950(v70);
  v72 = type metadata accessor for TranscriptProtoSkipStatement(v71);
  v73 = sub_22BE19448(v72);
  MEMORY[0x28223BE20](v73);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v74);
  sub_22BE19E94();
  v76 = sub_22BE18950(v75);
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v76);
  v78 = sub_22BE19448(DecorationPrePlannerResult);
  MEMORY[0x28223BE20](v78);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v79);
  sub_22BE19E94();
  v81 = sub_22BE18950(v80);
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(v81);
  v83 = sub_22BE19448(DecorationResult);
  MEMORY[0x28223BE20](v83);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v84);
  sub_22BE19E94();
  v86 = sub_22BE18950(v85);
  v87 = type metadata accessor for TranscriptProtoTypeConversionResult(v86);
  v88 = sub_22BE19448(v87);
  MEMORY[0x28223BE20](v88);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v89);
  sub_22BE19E94();
  v91 = sub_22BE18950(v90);
  v92 = type metadata accessor for TranscriptProtoTypeConversionRequest(v91);
  v93 = sub_22BE19448(v92);
  MEMORY[0x28223BE20](v93);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v94);
  sub_22BE19E94();
  v96 = sub_22BE18950(v95);
  v97 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(v96);
  v98 = sub_22BE19448(v97);
  MEMORY[0x28223BE20](v98);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v99);
  sub_22BE19E94();
  v101 = sub_22BE18950(v100);
  v102 = type metadata accessor for TranscriptProtoUndoRedoRequest(v101);
  v103 = sub_22BE19448(v102);
  MEMORY[0x28223BE20](v103);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v104);
  sub_22BE19E94();
  v106 = sub_22BE18950(v105);
  v107 = type metadata accessor for TranscriptProtoToolResolution(v106);
  v108 = sub_22BE19448(v107);
  MEMORY[0x28223BE20](v108);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v109);
  sub_22BE19E94();
  v111 = sub_22BE18950(v110);
  v112 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v111);
  v113 = sub_22BE19448(v112);
  MEMORY[0x28223BE20](v113);
  sub_22BE17A44();
  v115 = sub_22BE18950(v114);
  v116 = type metadata accessor for TranscriptProtoExternalAgentOutcome(v115);
  v117 = sub_22BE19448(v116);
  MEMORY[0x28223BE20](v117);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v118);
  sub_22BE19E94();
  v120 = sub_22BE18950(v119);
  v121 = type metadata accessor for TranscriptProtoExternalAgentRequest(v120);
  v122 = sub_22BE19448(v121);
  MEMORY[0x28223BE20](v122);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v123);
  sub_22BE19E94();
  v125 = sub_22BE18950(v124);
  v126 = type metadata accessor for TranscriptProtoStatementResult(v125);
  v127 = sub_22BE19448(v126);
  MEMORY[0x28223BE20](v127);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v128);
  sub_22BE19E94();
  v130 = sub_22BE18950(v129);
  v131 = type metadata accessor for TranscriptProtoSystemResponse(v130);
  v132 = sub_22BE19448(v131);
  MEMORY[0x28223BE20](v132);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v133);
  sub_22BE19E94();
  v135 = sub_22BE18950(v134);
  v136 = type metadata accessor for TranscriptProtoActionCancellation(v135);
  v137 = sub_22BE19448(v136);
  MEMORY[0x28223BE20](v137);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v138);
  sub_22BE19E94();
  v140 = sub_22BE18950(v139);
  v141 = type metadata accessor for TranscriptProtoEntitySpanMatchResult(v140);
  v142 = sub_22BE19448(v141);
  MEMORY[0x28223BE20](v142);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v143);
  sub_22BE19E94();
  v145 = sub_22BE18950(v144);
  v146 = type metadata accessor for TranscriptProtoToolRetrievalResponse(v145);
  v147 = sub_22BE19448(v146);
  MEMORY[0x28223BE20](v147);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v148);
  sub_22BE19E94();
  v150 = sub_22BE18950(v149);
  v151 = type metadata accessor for TranscriptProtoContextRetrieved(v150);
  v152 = sub_22BE19448(v151);
  MEMORY[0x28223BE20](v152);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v153);
  sub_22BE19E94();
  v155 = sub_22BE18950(v154);
  v156 = type metadata accessor for TranscriptProtoSafetyModeException(v155);
  v157 = sub_22BE19448(v156);
  MEMORY[0x28223BE20](v157);
  sub_22BE17A44();
  v159 = sub_22BE18950(v158);
  v160 = type metadata accessor for TranscriptProtoResponseGenerationRequest(v159);
  v161 = sub_22BE19448(v160);
  MEMORY[0x28223BE20](v161);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v162);
  sub_22BE19E94();
  v164 = sub_22BE18950(v163);
  v165 = type metadata accessor for TranscriptProtoActionResolverRequest(v164);
  v166 = sub_22BE19448(v165);
  MEMORY[0x28223BE20](v166);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v167);
  sub_22BE19E94();
  v169 = sub_22BE18950(v168);
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(v169);
  v171 = sub_22BE19448(StepResults);
  MEMORY[0x28223BE20](v171);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v172);
  sub_22BE19E94();
  v174 = sub_22BE18950(v173);
  v175 = type metadata accessor for TranscriptProtoSessionError(v174);
  v176 = sub_22BE19448(v175);
  MEMORY[0x28223BE20](v176);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v177);
  sub_22BE19E94();
  v179 = sub_22BE18950(v178);
  v180 = type metadata accessor for TranscriptProtoStatementID(v179);
  v181 = sub_22BE19448(v180);
  MEMORY[0x28223BE20](v181);
  sub_22BE17A44();
  sub_22BE18950(v182);
  v183 = sub_22C26E684();
  v184 = sub_22BE18910(v183, &v546);
  v524 = v185;
  MEMORY[0x28223BE20](v184);
  sub_22BE17A44();
  v187 = sub_22BE18950(v186);
  v188 = type metadata accessor for TranscriptProtoVariableStep(v187);
  v189 = sub_22BE290A0(v188, v547);
  MEMORY[0x28223BE20](v189);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v190);
  sub_22BE19E94();
  v192 = sub_22BE18950(v191);
  Step = type metadata accessor for TranscriptProtoQueryStep(v192);
  v194 = sub_22BE19448(Step);
  MEMORY[0x28223BE20](v194);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v195);
  sub_22BE19E94();
  v197 = sub_22BE18950(v196);
  v198 = type metadata accessor for TranscriptProtoClientAction(v197);
  v199 = sub_22BE19448(v198);
  MEMORY[0x28223BE20](v199);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v200);
  sub_22BE19E94();
  v202 = sub_22BE18950(v201);
  v203 = type metadata accessor for TranscriptProtoAction(v202);
  v204 = sub_22BE19448(v203);
  MEMORY[0x28223BE20](v204);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v205);
  sub_22BE19E94();
  v207 = sub_22BE18950(v206);
  v208 = type metadata accessor for TranscriptProtoRecoverableError(v207);
  v209 = sub_22BE19448(v208);
  MEMORY[0x28223BE20](v209);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v210);
  sub_22BE19E94();
  v212 = sub_22BE18950(v211);
  v213 = type metadata accessor for TranscriptProtoPlan(v212);
  v214 = sub_22BE19448(v213);
  MEMORY[0x28223BE20](v214);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v215);
  sub_22BE19E94();
  v217 = sub_22BE18950(v216);
  v218 = type metadata accessor for TranscriptProtoRequest(v217);
  v219 = sub_22BE19448(v218);
  MEMORY[0x28223BE20](v219);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v220);
  sub_22BE19E94();
  v222 = sub_22BE18950(v221);
  v223 = type metadata accessor for TranscriptProtoSpeechPartialResult(v222);
  v224 = sub_22BE19448(v223);
  MEMORY[0x28223BE20](v224);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v225);
  sub_22BE19E94();
  v227 = sub_22BE18950(v226);
  v228 = type metadata accessor for TranscriptProtoUserTurnStarted(v227);
  v229 = sub_22BE19448(v228);
  MEMORY[0x28223BE20](v229);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v230);
  sub_22BE19E94();
  v232 = sub_22BE18950(v231);
  v233 = type metadata accessor for TranscriptProtoSessionStart(v232);
  v234 = sub_22BE19448(v233);
  MEMORY[0x28223BE20](v234);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v235);
  sub_22BE25A90();
  v236 = sub_22C0B1AF0();
  v238 = sub_22BE5CE4C(v236, v237);
  sub_22BE19448(v238);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v239);
  v240 = sub_22BE46DE8();
  v241 = type metadata accessor for TranscriptProtoPayloadEnum(v240);
  sub_22BE18000();
  MEMORY[0x28223BE20](v242);
  sub_22BE1955C();
  sub_22BE200D4();
  sub_22BE22814();
  v243 = sub_22BE391E8();
  sub_22BE1AB5C(v243, v244, v241);
  if (v245)
  {
    sub_22BE233E8(v10, &qword_27D90E450, &qword_22C2AE470);
    *&v555 = v241;
    sub_22BE5CE4C(&qword_27D9155D8, &qword_22C2CC858);
    sub_22C273074();
    sub_22BE3D554();
    v246 = sub_22C108598();
    v247 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v246);
    sub_22C259EA0(v247, v248, v249, v250, v251, v252);
    sub_22BE18FBC();
LABEL_81:
    sub_22BE1AE58();
  }

  else
  {
    v253 = sub_22BE19EBC();
    sub_22BE3B620(v253, v15);
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v363, v364);
        v365 = sub_22BE431F0();
        sub_22BE1AA68(v365, v14);
        sub_22C25A730();
        UserTurnStarted.init(transcript:)();
        if (a10)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE2BC54();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 2:
        sub_22C1088AC();
        sub_22C25ABA8();
        sub_22BE3B620(v333, v334);
        sub_22BE44744();
        sub_22BE46048();
        sub_22BE1AA68(v335, v336);
        v338 = *v15;
        v337 = v15[1];

        sub_22C0F28E0(v339);
        v341 = v340;
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE392D4();
        sub_22BE1AE58();
        v342 = v551;
        *v551 = v338;
        v342[1] = v337;
        v342[2] = v341;
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE39250();
        goto LABEL_78;
      case 3:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v347, v348);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v349, v350);
        sub_22BE2730C();
        Request.init(transcript:)();
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE27AC8();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 4:
        sub_22C1088AC();
        sub_22BEE94A4();
        sub_22BE3B620(v298, v299);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v300, v301);
        v302 = sub_22C259FC4();
        Session.Plan.init(transcript:)(v302, v303);
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE29228();
        v496 = v553;
        v497 = v551;
        *v551 = v552;
        v497[1] = v496;
        v497[2] = v554[0];
        *(v497 + 41) = *(v554 + 9);
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 5:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v397, v398);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v399, v400);
        v401 = sub_22BE2730C();
        Action.init(transcript:)(v401, v402, v403, v404, v405, v406, v407, v408, v522, v524, v526, v528, v530, v532, v534, v536, v538, v540, v542, v544);
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE23984();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 6:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v413, v414);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v415, v416);
        v417 = sub_22BE2730C();
        ClientAction.init(transcript:)(v417, v418, v419, v420, v421, v422, v423, v424, v522, v524);
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C2594D0();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 7:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v351, v352);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v353, v354);
        v355 = sub_22BE2730C();
        QueryStep.init(transcript:)(v355, v356, v357, v358, v359, v360, v361, v362, v522, v524);
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE447B8();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 8:
        sub_22C1088AC();
        sub_22C108C10();
        sub_22BE3B620(v433, v434);
        sub_22BE29370();
        sub_22BE46048();
        sub_22BE1AA68(v435, v436);
        sub_22BE2ED7C();
        sub_22BE351B8();
        sub_22C1026C4();
        if (a10)
        {
          goto LABEL_60;
        }

        sub_22BE3C6E0();
        sub_22BE354D0();
        sub_22C26E664();
        sub_22BE18B80();
        sub_22BE1AE58();

        sub_22C0F50E4(v498, v499, v500, v501, v502, v503, v504, v505, v522, v524);
        v516 = v515;
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE431C0();
        sub_22BE1AE58();
        v517 = v551;
        v518 = sub_22BE1A8C4();
        v519(v518);
        *(v517 + *(type metadata accessor for VariableStep(0) + 20)) = v516;
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE1ACEC();
        goto LABEL_78;
      case 9:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v311, v312);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v313, v314);
        sub_22BE2730C();
        SessionError.init(transcript:)();
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE31020();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 10:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v429, v430);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v431, v432);
        sub_22BE2730C();
        Session.RecoverableError.init(transcript:)();
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C259888();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 11:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v286, v287);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v288, v289);
        v290 = sub_22BE2730C();
        QueryStepResults.init(transcript:)(v290, v291, v292, v293, v294, v295, v296, v297, v522, v524);
        if (v11)
        {
          goto LABEL_80;
        }

        goto LABEL_87;
      case 12:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v307, v308);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v309, v310);
        sub_22BE2730C();
        ActionResolverRequest.init(transcript:)();
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE25D94();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 13:
      case 31:
      case 37:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C259CD0();
        type metadata accessor for Session.Event.Payload(0);
        sub_22C25A960();
        goto LABEL_78;
      case 14:
      case 36:
      case 38:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C1088AC();
        sub_22BE37B14();
        sub_22BE3B620(v489, v490);
        sub_22C25AE34();
        sub_22BE379D8();
        sub_22BE1AE58();
        sub_22BE38FBC();
        sub_22BE39250();
        goto LABEL_78;
      case 15:
        sub_22C1088AC();
        sub_22BE37B14();
        sub_22BE3B620(v343, v344);
        sub_22BE385E4();
        sub_22C108C10();
        sub_22BE1AA68(v345, v346);

        sub_22C0F77A0();
        if (a10)
        {
          goto LABEL_60;
        }

        goto LABEL_86;
      case 16:
        sub_22C1088AC();
        sub_22BE37B14();
        sub_22BE3B620(v277, v278);
        sub_22BE385E4();
        sub_22C108C10();
        sub_22BE1AA68(v279, v280);

        sub_22C0F751C();
        if (a10)
        {
          goto LABEL_60;
        }

LABEL_86:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE3C5E4();
        sub_22BE1AE58();
        v495 = sub_22C25AB28();
        type metadata accessor for Session.Event.Payload(v495);
        sub_22BE1ACEC();
        goto LABEL_78;
      case 17:
        sub_22C1088AC();
        sub_22C108C10();
        sub_22BE3B620(v366, v367);
        sub_22BE29370();
        sub_22BE46048();
        sub_22BE1AA68(v368, v369);

        sub_22C0F67EC(v370, v371, v372, v373, v374, v375, v376, v377, v522, v524, v526, v528, v530, v532, v534, v536, v538, v540, v542, v544);
        if (!a10)
        {
          v379 = v378;

          sub_22C0F67EC(v380, v381, v382, v383, v384, v385, v386, v387, v523, v525, v527, v529, v531, v533, v535, v537, v539, v541, v543, v545);
          v511 = v510;
          sub_22BE18FBC();
          sub_22BE1AE58();
          sub_22BE1AE58();
          sub_22BE1B328();
          sub_22BE1AE58();
          v512 = v551;
          *v551 = v379;
          v512[1] = v511;
          type metadata accessor for Session.Event.Payload(0);
          sub_22BE39250();
          goto LABEL_78;
        }

LABEL_60:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        goto LABEL_81;
      case 18:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v425, v426);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v427, v428);
        sub_22BE2730C();
        ActionCancellation.init(transcript:)();
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE3A04C();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 19:
        sub_22C1088AC();
        sub_22BEE94A4();
        sub_22BE3B620(v462, v463);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v464, v465);
        v466 = sub_22C259FC4();
        ToolRetrievalResponse.init(transcript:)(v466, v467);
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE203FC();
        sub_22BE1AE58();
        v506 = v556;
        v507 = v557;
        v508 = v558;
        v509 = v551;
        *v551 = v555;
        v509[2] = v506;
        v509[3] = v507;
        *(v509 + 8) = v508;
        *(v509 + 5) = v559;
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 20:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v393, v394);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v395, v396);
        sub_22BE2730C();
        SystemResponse.init(transcript:)();
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C259668();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 21:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v409, v410);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v411, v412);
        sub_22BE2730C();
        StatementResult.init(transcript:)();
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C2599D8();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 22:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v446, v447);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v448, v449);
        sub_22BE2730C();
        ExternalAgentRequest.init(transcript:)();
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE487FC();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 23:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v468, v469);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v470, v471);
        v472 = sub_22BE2730C();
        ExternalAgentOutcome.init(transcript:)(v472);
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE1AFF8();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 24:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE39758();
        sub_22C108C10();
        sub_22BE3B620(v327, v328);
        v330 = *v13;
        v329 = v13[1];
        v331 = v13[2];

        sub_22BE323E0();
        sub_22BE1AE58();
        v332 = v551;
        *v551 = v330;
        v332[1] = v329;
        v332[2] = v331;
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE31160();
        goto LABEL_78;
      case 25:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v315, v316);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v317, v318);
        v319 = sub_22BE2730C();
        ToolResolution.init(transcript:)(v319, v320, v321, v322, v323, v324, v325, v326, v522, v524);
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE23370();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 26:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v491, v492);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v493, v494);
        sub_22BE2730C();
        UndoRedoRequest.init(transcript:)();
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C2599A8();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 27:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v269, v270);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v271, v272);
        sub_22BE2730C();
        ClientUndoRedoRequest.init(transcript:)();
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE2C2A0();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 28:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v473, v474);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v475, v476);
        v477 = sub_22BE2730C();
        TypeConversionRequest.init(transcript:)(v477, v478, v479, v480, v481, v482, v483, v484, v522, v524);
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C2594B8();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 29:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v485, v486);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v487, v488);
        sub_22BE2730C();
        TypeConversionResult.init(transcript:)();
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE1B154();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 30:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v437, v438);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v439, v440);
        v441 = sub_22BE2730C();
        QueryDecorationResult.init(transcript:)(v441);
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C2595C8();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 32:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v442, v443);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v444, v445);
        sub_22BE2730C();
        QueryDecorationPrePlannerResult.init(transcript:)();
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE27C5C();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 33:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v281, v282);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v283, v284);
        v285 = sub_22BE2730C();
        SkipStatement.init(transcript:)(v285);
        if (v11)
        {
          goto LABEL_80;
        }

        goto LABEL_87;
      case 34:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v273, v274);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v275, v276);
        sub_22BE2730C();
        ExecutionPreconditionEvaluatorRequest.init(transcript:)();
        if (v11)
        {
          goto LABEL_80;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C259A38();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 35:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v257, v258);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v259, v260);
        v261 = sub_22BE2730C();
        RequestAmendment.init(transcript:)(v261, v262, v263, v264, v265, v266, v267, v268, v522, v524);
        if (v11)
        {
          goto LABEL_80;
        }

        goto LABEL_87;
      case 39:
        sub_22C1088AC();
        sub_22BE22944();
        sub_22BE3B620(v450, v451);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v452, v453);
        v454 = sub_22BE2730C();
        IntermediateSystemResponse.init(transcript:)(v454, v455, v456, v457, v458, v459, v460, v461, v522, v524);
        if (v11)
        {
          goto LABEL_80;
        }

        goto LABEL_87;
      case 40:
        v304 = sub_22C1088AC();
        sub_22BE3B620(v304, v547[23]);
        sub_22BE431F0();
        sub_22BE37B14();
        sub_22BE1AA68(v305, v306);
        sub_22BE2730C();
        IntermediateSystemResponseRendered.init(transcript:)();
        if (v11)
        {
LABEL_80:
          sub_22BE18FBC();
          sub_22BE1AE58();
          goto LABEL_81;
        }

LABEL_87:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C0E9A74();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 41:
        v388 = sub_22C1088AC();
        sub_22BE3B620(v388, v550);
        v389 = sub_22C1088AC();
        v390 = v548;
        sub_22BE1AA68(v389, v548);
        v392 = *v390;
        v391 = v390[1];

        sub_22C103D4C();
        if (!a10)
        {
          sub_22BE351B8();
          AgentPrimitiveAction.PrimitiveAction.init(transcript:)();
          sub_22C25A224();
          sub_22BE1AE58();
          v513 = v551;
          *v551 = v392;
          v513[1] = v391;
          type metadata accessor for AgentPrimitiveAction(0);
          sub_22C259620();
          sub_22BE3B620(v241, v513 + v514);
          sub_22BE18FBC();
          sub_22BE1AE58();
          sub_22BE35838();
          sub_22BE1AE58();
          type metadata accessor for Session.Event.Payload(0);
          sub_22BE31160();
          goto LABEL_78;
        }

        sub_22C25A224();
        sub_22BE1AE58();

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE35838();
        goto LABEL_81;
      case 42:
      case 43:
        sub_22BE18FBC();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22C25A960();
        goto LABEL_78;
      default:
        v255 = sub_22C1088AC();
        sub_22BE3B620(v255, v12);
        v256 = sub_22BE385E4();
        sub_22BE1AA68(v256, v16);
        SessionStart.init(transcript:)();
        if (a10)
        {
          sub_22BE18FBC();
          sub_22BE1AE58();
          sub_22C259530();
          goto LABEL_81;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C259530();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
LABEL_78:
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void Timepoint.init(transcript:)()
{
  sub_22BE19130();
  sub_22C18F0F4();
  v19 = v3;
  v20 = sub_22C26E1D4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v21 = v5;
  v6 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE3A208();
  sub_22C26E164();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v8);
  sub_22BE28FD8();
  sub_22C270454();
  sub_22C259488();
  MEMORY[0x28223BE20](v9);
  sub_22BE18DFC();
  type metadata accessor for TranscriptProtoTimepoint(0);
  sub_22C102C6C();
  if (!v1)
  {
    sub_22C270434();
    v10 = sub_22BE1B328();
    v11(v10);
    v13 = *v0;
    v12 = v0[1];
    sub_22C26E174();
    sub_22C101298();
    sub_22BE233E8(v2, &qword_27D9082F0, &qword_22C27AB00);
    v14 = sub_22BE261AC();
    v15(v14);
    v16 = type metadata accessor for Timepoint(0);
    *(v19 + v16[5]) = v13;
    *(v19 + v16[6]) = v12;
    v17 = sub_22C25A688(v16[7]);
    v18(v17, v21, v20);
  }

  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE1AB28();
  sub_22BE18478();
}

void Session.Transcript.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A430();
  v6 = sub_22BE3BD70(v5);
  v7 = type metadata accessor for TranscriptProtoEvent(v6);
  v8 = sub_22BE17A18(v7);
  v52 = v9;
  MEMORY[0x28223BE20](v8);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE195C4();
  v12 = type metadata accessor for Session.Event(v11);
  v13 = sub_22BE17A18(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE1955C();
  sub_22C26E1D4();
  sub_22BE179D8();
  v47 = v15;
  v48 = v14;
  MEMORY[0x28223BE20](v14);
  sub_22BE28FD8();
  v16 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE19668();
  v19 = *v2;
  v18 = v2[1];
  sub_22BE200D4();
  sub_22C26E174();
  sub_22BE34128();
  sub_22C101298();
  sub_22BE233E8(v0, &qword_27D9082F0, &qword_22C27AB00);
  if (v1)
  {
LABEL_11:
    sub_22BE1AE58();
    sub_22BE467E4();
    sub_22BE18478();
    return;
  }

  v51 = v19;
  v44 = v4;
  v45 = v18;
  v20 = v2[2];
  v21 = *(v20 + 16);
  if (!v21)
  {
    v39 = v18;

    v24 = MEMORY[0x277D84F90];
    v37 = v46;
    v36 = v47;
    v38 = v48;
    v35 = v44;
    v33 = v19;
LABEL_10:
    (*(v36 + 32))(v37, v35, v38);
    type metadata accessor for Session.Transcript(0);
    sub_22BE48874();
    *v40 = v33;
    v40[1] = v39;
    sub_22C25A67C();
    *v41 = 0;
    v41[1] = 0xE000000000000000;
    sub_22C25AAB8();
    *v42 = 0;
    v42[1] = 0;
    *(v37 + *(v43 + 32)) = v24;
    goto LABEL_11;
  }

  v53 = MEMORY[0x277D84F90];

  v22 = sub_22C25A000();
  sub_22BE71B64(v22, v21, 0);
  v23 = 0;
  v24 = v53;
  sub_22BE25AD8();
  v49 = v20 + v26;
  v50 = v20;
  while (v23 < *(v50 + 16))
  {
    sub_22BE1AA68(v49 + *(v25 + 72) * v23, v3);
    v27 = sub_22BE289D8();
    sub_22BE1AA68(v27, v28);
    sub_22C25AB1C();
    Session.Event.init(transcript:)();
    sub_22C2596C8();
    sub_22BE1AE58();
    v30 = *(v53 + 16);
    v29 = *(v53 + 24);
    if (v30 >= v29 >> 1)
    {
      v34 = sub_22BE3D1E4(v29);
      sub_22BE71B64(v34, v30 + 1, 1);
    }

    ++v23;
    *(v53 + 16) = v30 + 1;
    sub_22BE19E14();
    v31 = sub_22C1088AC();
    sub_22BE3B620(v31, v32);
    v33 = v51;
    v25 = v52;
    if (v21 == v23)
    {
      v35 = v44;
      v37 = v46;
      v36 = v47;
      v38 = v48;
      v39 = v45;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void TranscriptProtoTranscript.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE38A98();
  v4 = type metadata accessor for Session.Event(0);
  v5 = sub_22BE17A18(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE39EE8();
  v10 = type metadata accessor for TranscriptProtoEvent(v9);
  v11 = sub_22BE17A18(v10);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  sub_22BE35E00(v12);
  v33 = sub_22C26E184();
  v34 = v13;
  type metadata accessor for Session.Transcript(0);
  sub_22C25A0A4();
  v32 = *v14;
  v16 = *(v1 + *(v15 + 32));
  v17 = *(v16 + 16);
  if (v17)
  {
    v38 = MEMORY[0x277D84F90];
    v31 = v14[1];

    v18 = sub_22C25A000();
    sub_22BE70284(v18, v17, 0);
    v19 = 0;
    v20 = v38;
    sub_22BE19E14();
    v35 = v16 + v21;
    while (v19 < *(v16 + 16))
    {
      sub_22BE1AA68(v35 + *(v7 + 72) * v19, v3);
      sub_22BE1AA68(v3, v36);
      TranscriptProtoEvent.init(handwritten:)();
      if (v0)
      {

        sub_22C2596B0();
        sub_22BE1AE58();
        sub_22BE1AE58();

        goto LABEL_12;
      }

      v22 = v7;
      sub_22C2596B0();
      sub_22BE1AE58();
      v24 = *(v38 + 16);
      v23 = *(v38 + 24);
      v2 = (v24 + 1);
      if (v24 >= v23 >> 1)
      {
        sub_22BE3D1E4(v23);
        sub_22BE39E18();
        sub_22BE70284(v27, v28, v29);
      }

      ++v19;
      *(v38 + 16) = v2;
      sub_22BE25AD8();
      sub_22BE3B620(v37, v38 + v25 + *(v26 + 72) * v24);
      v7 = v22;
      if (v17 == v19)
      {
        v30 = v31;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = v14[1];

    v20 = MEMORY[0x277D84F90];
LABEL_11:
    type metadata accessor for TranscriptProtoTranscript(0);
    sub_22C25A128();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE379D8();
    sub_22BE1AE58();
    *v2 = v33;
    v2[1] = v34;
    v2[3] = v32;
    v2[4] = v30;
    v2[2] = v20;
LABEL_12:
    sub_22BE22978();
    sub_22BE18478();
  }
}

void TranscriptProtoTimepoint.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259F34();
  sub_22C26E164();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE188B0();
  v4 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A8B4();
  v6 = sub_22BF6AC14();
  v7(v6);
  sub_22BE44844();
  sub_22C270444();
  sub_22C270454();
  sub_22C2597D4();
  v12 = sub_22C18F17C(v8, v9, v10, v11);
  v13 = type metadata accessor for Timepoint(v12);
  v14 = *(v1 + *(v13 + 20));
  v21 = *(v1 + *(v13 + 24));
  v15 = sub_22C26E184();
  v16 = sub_22C25A77C();
  type metadata accessor for TranscriptProtoTimepoint(v16);
  sub_22C25975C();
  sub_22BE19DC4(v17, v18, v19, v20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9830();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v0 = v14;
  v0[1] = v21;
  v0[2] = v15;
  v0[3] = v2;
  sub_22BE3C298();
  sub_22BE18478();
}

uint64_t ParticipantID.init(transcript:)()
{

  sub_22BE26148();
  sub_22BE1AE58();
  return sub_22BE18040();
}

uint64_t sub_22C20BBF0()
{
  sub_22BE48AF0();
  result = ParticipantID.init(transcript:)();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t TranscriptProtoParticipantID.init(handwritten:)()
{
  sub_22BE18378();
  v3 = v2;
  type metadata accessor for TranscriptProtoParticipantID(0);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v1;
  v3[1] = v0;
  return result;
}

uint64_t SpanID.init(transcript:)(uint64_t *a1)
{
  v1 = *a1;
  sub_22BE1AE58();
  return v1;
}

uint64_t sub_22C20BCE8()
{
  sub_22BE48AF0();
  result = SpanID.init(transcript:)(v1);
  *v0 = result;
  return result;
}

uint64_t TranscriptProtoSpanID.init(handwritten:)()
{
  sub_22BE28CF0();
  type metadata accessor for TranscriptProtoSpanID(0);
  sub_22BE38954();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = v0;
  return result;
}

void SessionStart.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A05C();
  v41 = v4;
  v5 = sub_22BE5CE4C(&qword_27D90E4A0, &unk_22C2AE490);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1BCE8(v7, v40);
  v8 = sub_22BE5CE4C(&qword_27D911F60, &unk_22C2B5CD0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22C259738(v10);
  v11 = sub_22C26E244();
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v13);
  sub_22BEC0508();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE20558();
  v16 = type metadata accessor for TranscriptProtoLocaleSettings(v15);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE17CBC();
  sub_22C26ECA4();
  sub_22C2594A0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22BE294E0();
  sub_22C1041FC();
  if (v2)
  {
    sub_22C259530();
    sub_22BE1AE58();
  }

  else
  {

    sub_22BE236C8();
    sub_22C26E1E4();

    sub_22BE236C8();
    sub_22C26E1E4();

    sub_22BE236C8();
    sub_22C26E1E4();
    sub_22BE41FB4();
    sub_22C26EC54();
    sub_22BE379D8();
    sub_22BE1AE58();
    type metadata accessor for TranscriptProtoSessionStart(0);
    sub_22C25A374();
    sub_22BE22814();
    v21 = sub_22BE489C8();
    sub_22C0FE048(v21, v22, v23, v24, v25, v26, v27, v28, v19, v3);
    v29 = *(v1 + *(v0 + 28));
    sub_22C259530();
    sub_22BE1AE58();
    type metadata accessor for SessionStart(0);
    sub_22C25A7AC();
    sub_22C26EA84();
    sub_22BE1A140();
    sub_22BE19DC4(v30, v31, v32, v33);
    sub_22C26EC34();
    sub_22BE1A140();
    sub_22BE19DC4(v34, v35, v36, v37);
    v38 = sub_22BE1AEE4();
    v39(v38);
    sub_22BE2343C();
    *(v41 + *(v0 + 28)) = v29 & 1;
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void UserTurnStarted.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AD88();
  v48 = v4;
  v5 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE29250(v7, v45);
  v8 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE20168(v10, v46);
  v11 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v14 = sub_22BE415D8(v13);
  v15 = type metadata accessor for TranscriptProtoUserTurnEnum(v14);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE19820();
  v18 = type metadata accessor for TranscriptProtoUserTurn(v17);
  v19 = sub_22BE19448(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v21 = sub_22C259814(v20);
  v22 = type metadata accessor for TranscriptProtoStatementID(v21);
  v23 = sub_22BE19448(v22);
  MEMORY[0x28223BE20](v23);
  sub_22BE197B8();
  v24 = sub_22C26E684();
  sub_22BE179D8();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  sub_22BE28FD8();
  type metadata accessor for TranscriptProtoUserTurnStarted(0);
  sub_22C25A6A0();
  sub_22C1026C4();
  if (v50)
  {
    sub_22BE2BC54();
    sub_22BE1AE58();
  }

  else
  {
    v47 = v26;

    sub_22BE1804C();
    v28 = v1;
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22C10401C();
    sub_22BE29454();
    sub_22BE22814();
    v29 = sub_22BE23E90();
    sub_22BE1AB5C(v29, v30, v15);
    if (v31)
    {
      sub_22BE233E8(v49, &qword_27D90E4F0, &qword_22C2CC7E0);
      v32 = sub_22BE5CE4C(&qword_27D9155D0, &qword_22C2CC7E8);
      sub_22BE43258(v32);
      sub_22BE3D554();
      v33 = sub_22C108598();
      v34 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v33);
      *v35 = v0;
      v35[1] = 0;
      sub_22C25A590(v34, v35, v36, v37, v38, v39);
      sub_22BE2BC54();
      sub_22BE1AE58();
      sub_22BE1A94C();
      sub_22BE1AE58();
      (*(v47 + 8))(v3, v24);
    }

    else
    {
      sub_22BE1A94C();
      sub_22BE1AE58();
      v40 = sub_22C1088E8();
      sub_22BE3B620(v40, v2);
      sub_22BE1BF88();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_22BE379D8();
      sub_22BE1AE58();
      v43 = *v28;
      v42 = v28[1];
      sub_22BE22814();

      sub_22C25A6DC();
      sub_22C0FDE74();
      sub_22BE2BC54();
      sub_22BE1AE58();
      (*(v47 + 32))(v48, v3, v24);
      *(v48 + *(type metadata accessor for UserTurnStarted(0) + 20)) = EnumCaseMultiPayload == 1;
      sub_22C25A840();
      *v44 = v43;
      v44[1] = v42;
      sub_22BE424BC();
    }
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t SpeechPartialResult.init(transcript:)()
{
  sub_22BE28CF0();
  v3 = *v1;
  v2 = v1[1];

  sub_22C0F28E0(v4);
  v6 = v5;
  sub_22BE26148();
  result = sub_22BE1AE58();
  *v0 = v3;
  v0[1] = v2;
  v0[2] = v6;
  return result;
}

void Request.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AD88();
  v90 = v6;
  v7 = sub_22BE5CE4C(&qword_27D90E528, &unk_22C2CC870);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE29200(v9);
  v10 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v13 = sub_22BE1B278(v12);
  v85 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(v13);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  sub_22BE17A44();
  sub_22C0B1ABC(v15);
  v16 = sub_22BE5CE4C(&qword_27D90E538, &unk_22C2AE4E0);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A174();
  v84 = v18;
  v19 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE20168(v21, v79);
  v22 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v22);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  v25 = sub_22BE3FE6C(v24);
  v87 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v25);
  sub_22BE18000();
  MEMORY[0x28223BE20](v26);
  sub_22BE17A44();
  v86 = v27;
  v28 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  sub_22BE19448(v28);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B72C();
  v30 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v31 = sub_22BE19448(v30);
  MEMORY[0x28223BE20](v31);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v32);
  sub_22BE26800();
  v33 = sub_22BE5CE4C(&qword_27D90E558, &unk_22C2AE4D0);
  sub_22BE19448(v33);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE25CD0();
  v35 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE19448(v35);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  v37 = sub_22BE250C8();
  v38 = type metadata accessor for TranscriptProtoRequestContent(v37);
  v39 = sub_22BE19448(v38);
  MEMORY[0x28223BE20](v39);
  v40 = sub_22BE2F294();
  v41 = type metadata accessor for RequestContent(v40);
  v42 = sub_22BE19448(v41);
  MEMORY[0x28223BE20](v42);
  v43 = sub_22BE1AD20();
  type metadata accessor for TranscriptProtoRequest(v43);
  sub_22C25A694();
  sub_22C103C5C();
  if (v92)
  {
    sub_22BE27AC8();
    sub_22BE1AE58();
  }

  else
  {
    v82 = v0;
    sub_22BE44844();
    RequestContent.init(transcript:)();
    v44 = v4;
    v45 = *v1;
    sub_22BE22814();
    sub_22C0FE588();
    if (*&v1[*(v5 + 28) + 8])
    {
      sub_22C26E174();
      v46 = v3;
      sub_22C101298();
      v80 = v45;
      sub_22BE233E8(v2, &qword_27D9082F0, &qword_22C27AB00);
      v47 = 0;
    }

    else
    {
      v80 = v45;
      v47 = 1;
      v46 = v3;
    }

    v81 = v44;
    v48 = sub_22C26E1D4();
    sub_22BE19DC4(v46, v47, 1, v48);
    sub_22BE22814();
    v49 = sub_22BE1B010();
    sub_22BE1AB5C(v49, v50, v87);
    if (v51)
    {
      sub_22BE233E8(v82, &qword_27D90E548, &qword_22C296F00);
      v52 = 0;
      v53 = 0;
      v88 = 0;
    }

    else
    {
      sub_22BE39758();
      sub_22BE3B620(v82, v86);
      v52 = *v86;
      v53 = v86[1];
      v54 = v86[2];

      v88 = v54;

      sub_22BE323E0();
      sub_22BE1AE58();
    }

    v55 = v90;
    sub_22BE22814();
    sub_22C0FDE74();
    v91 = v52;
    sub_22BE22814();
    v56 = sub_22BE391E8();
    if (sub_22BE1AEA8(v56, v57, v85) == 1)
    {
      sub_22BE233E8(v84, &qword_27D90E538, &unk_22C2AE4E0);
      v89 = 0;
      v58 = 0;
    }

    else
    {
      v59 = sub_22BE19EBC();
      sub_22BE3B620(v59, v83);
      v89 = *v83;
      v58 = v83[1];

      sub_22BE26148();
      sub_22BE1AE58();
    }

    sub_22BE22814();
    sub_22C25A730();
    sub_22C0FE748();
    sub_22BE27AC8();
    sub_22BE1AE58();
    v60 = type metadata accessor for Request(0);
    type metadata accessor for RequestPrescribedPlan(0);
    sub_22BE1A140();
    sub_22BE19DC4(v61, v62, v63, v64);
    sub_22BE1A140();
    sub_22BE19DC4(v65, v66, v67, v48);
    v68 = v55;
    v69 = (v55 + v60[8]);
    *v69 = 0;
    v69[1] = 0;
    v69[2] = 0;
    sub_22C271394();
    sub_22BE1A140();
    sub_22BE19DC4(v70, v71, v72, v73);
    v74 = (v68 + v60[10]);
    *v74 = 0;
    v74[1] = 0;
    type metadata accessor for DateTimeContext(0);
    sub_22BE1A140();
    sub_22BE19DC4(v75, v76, v77, v78);
    sub_22BE39238();
    sub_22BE3B620(v81, v68);
    *(v68 + v60[5]) = v80;
    sub_22BE2343C();
    sub_22BE2343C();
    sub_22BE37808(*v69, v69[1], v69[2]);
    *v69 = v91;
    v69[1] = v53;
    v69[2] = v88;
    sub_22BE2343C();

    *v74 = v89;
    v74[1] = v58;
    sub_22BE2343C();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

void Session.Plan.init(transcript:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];

  sub_22C0F7A24();
  if (v2)
  {
    sub_22BE29228();
  }

  else
  {
    v10 = a1[6];
    v11 = 2;
    v12 = v9;
    switch(*(a1 + 56))
    {
      case 1:
        v11 = 0;
        goto LABEL_9;
      case 2:
        v11 = 1;
        goto LABEL_9;
      case 3:
        goto LABEL_9;
      case 4:
        v11 = 3;
        goto LABEL_9;
      case 5:
        v11 = 4;
LABEL_9:
        v18 = v11;
        v17 = a1[5];

        sub_22BE29228();
        *a2 = v6;
        *(a2 + 8) = v5;
        *(a2 + 16) = v8;
        *(a2 + 24) = v7;
        *(a2 + 32) = v12;
        *(a2 + 40) = v17;
        *(a2 + 48) = v10;
        *(a2 + 56) = v18;
        return;
      case 6:

        sub_22BE5CE4C(&qword_27D9155E0, &qword_22C2CC880);
        sub_22C273074();
        sub_22C1163A0();
        v15 = sub_22C108598();
        sub_22BE196B4(&type metadata for TranscriptConversion.Error, v15);
        *v16 = v7;
        *(v16 + 8) = v5;
        *(v16 + 16) = 0;
        goto LABEL_11;
      default:

        v13 = sub_22C108358();
        sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v13);
        *v14 = 0;
LABEL_11:
        swift_willThrow();
        sub_22BE29228();
        break;
    }
  }
}

uint64_t Session.RecoverableError.init(transcript:)()
{
  v3 = sub_22BE1B254();
  v4 = type metadata accessor for TranscriptProtoPlanGenerationError(v3);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE2558C();
  v8 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE1955C();
  sub_22C25AB10();
  sub_22C1033F4();
  if (v0)
  {
    sub_22C259888();
  }

  else
  {
    v10 = sub_22C1088AC();
    sub_22BE3B620(v10, v1);
    v11 = sub_22BE385E4();
    sub_22BE1AA68(v11, v2);
    v12 = sub_22C25A730();
    Session.PlanGenerationError.init(transcript:)(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
    sub_22C259888();
    sub_22BE1AE58();
    sub_22C259698();
  }

  return sub_22BE1AE58();
}

void Action.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  sub_22C25A344(v27);
  v28 = sub_22C26F7C4();
  v29 = sub_22BE18910(v28, &a17);
  v241 = v30;
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v31);
  sub_22BE19E94();
  v33 = sub_22BE18950(v32);
  v246 = type metadata accessor for TranscriptProtoPromptSelection(v33);
  sub_22BE18000();
  MEMORY[0x28223BE20](v34);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v35);
  sub_22C259824(v36, v37, v38, v39, v40, v41, v42, v43, v220);
  v44 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  v45 = sub_22BE19448(v44);
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v46);
  sub_22C10887C(v47, v48, v49, v50, v51, v52, v53, v54, v221);
  v55 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v55);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE1A174();
  sub_22BE18950(v57);
  v58 = sub_22C272874();
  v59 = sub_22BE18910(v58, &a18);
  MEMORY[0x28223BE20](v59);
  sub_22BE17A44();
  sub_22C259AC0(v60);
  v255 = sub_22C272594();
  sub_22BE179D8();
  v239 = v61;
  MEMORY[0x28223BE20](v62);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v63);
  sub_22BE409D8();
  MEMORY[0x28223BE20](v64);
  sub_22BE355FC(v65, v66, v67, v68, v69, v70, v71, v72, v222);
  v73 = sub_22BE5CE4C(&qword_27D90F038, &qword_22C297100);
  sub_22BE19448(v73);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v74);
  v76 = sub_22BE417B4(v75);
  v251 = type metadata accessor for TranscriptProtoToolParameterValueEnum(v76);
  sub_22BE18000();
  MEMORY[0x28223BE20](v77);
  sub_22BE17A44();
  v250 = v78;
  v79 = sub_22BE5CE4C(&qword_27D90E698, &unk_22C2AE520);
  sub_22BE19448(v79);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v80);
  sub_22BE1A174();
  v252 = v81;
  v82 = sub_22BE183BC();
  v253 = type metadata accessor for TranscriptProtoToolParameterValue(v82);
  sub_22BE18000();
  MEMORY[0x28223BE20](v83);
  sub_22BE17A44();
  v85 = sub_22BE28E74(v84);
  v86 = type metadata accessor for ToolParameterValue(v85);
  v87 = sub_22BE19448(v86);
  MEMORY[0x28223BE20](v87);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v88);
  sub_22C1CEC08(v89, v90, v91, v92, v93, v94, v95, v96, v223);
  v97 = type metadata accessor for Action.ParameterValue(0);
  v98 = sub_22BE18910(v97, &a15);
  MEMORY[0x28223BE20](v98);
  sub_22BE17A44();
  v100 = sub_22BE18950(v99);
  type metadata accessor for TranscriptProtoActionParameterValue(v100);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v101);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v102);
  v103 = sub_22BE374E4();
  v104 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v103);
  v105 = sub_22BE19448(v104);
  MEMORY[0x28223BE20](v105);
  sub_22BE17A44();
  v248 = v106;
  v107 = sub_22BE183BC();
  v108 = type metadata accessor for TranscriptProtoStatementID(v107);
  v109 = sub_22BE19448(v108);
  MEMORY[0x28223BE20](v109);
  sub_22BE1AD20();
  v110 = sub_22C26E684();
  sub_22BE179D8();
  v112 = v111;
  MEMORY[0x28223BE20](v113);
  sub_22BE17CBC();
  v114 = type metadata accessor for TranscriptProtoAction(0);
  v115 = v26;
  sub_22C1026C4();
  if (v20)
  {
    sub_22BE23984();
    sub_22BE1AE58();
LABEL_27:
    sub_22BEE94B0();
    sub_22BE18478();
  }

  else
  {
    v242 = v22;
    v236 = v112;
    v237 = v110;

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22C10289C();
    v231 = v21;
    v116 = v248[1];
    v227 = *v248;
    v226 = v248[3];
    v225 = *(v248 + 16);
    v230 = v248[4];

    sub_22BE40CB0();
    sub_22BE1AE58();
    v228 = v114;
    v117 = (v26 + *(v114 + 28));
    v118 = v117[1];
    v224 = *v117;
    v119 = *(v26 + 8);
    sub_22BE5CE4C(&qword_27D9155E8, &qword_22C2CC888);
    v120 = sub_22C273D04();
    v232 = v119 + 64;
    sub_22BE185B4();
    v123 = v122 & v121;
    sub_22C25A350();
    v233 = v124;
    sub_22C25AC64(v239 + 32);
    v234 = v125;
    v240 = (v126 + 8);
    v229 = v118;

    v127 = 0;
    v128 = v259;
    v235 = v120;
    while (v123)
    {
      sub_22C25A478();
LABEL_11:
      v133 = v129 | (v127 << 6);
      sub_22C25A7E8();
      v249 = *v134;
      v260 = v134[1];
      sub_22BE1AA68(v136 + *(v135 + 72) * v133, v242);
      sub_22BEE94A4();
      sub_22BE1AA68(v137, v138);
      sub_22BE22814();
      v139 = sub_22BE26188();
      sub_22BE1AB5C(v139, v140, v253);
      if (v141)
      {

        sub_22BE233E8(v252, &qword_27D90E698, &unk_22C2AE520);
        v194 = sub_22BE5CE4C(&qword_27D911FC8, &unk_22C2B5D80);
        sub_22BE43258(v194);
        sub_22C25A64C();
        v195 = sub_22C108598();
        v196 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v195);
        sub_22C25A448(v196, v197, v198, v199, v200, v201);
LABEL_26:
        sub_22BE1AE58();

        sub_22BE31278();
        sub_22BE1AE58();

        sub_22BE23984();
        sub_22BE1AE58();
        v218 = sub_22BE431C0();
        v219(v218);
        goto LABEL_27;
      }

      v142 = sub_22BE29370();
      sub_22BE3B620(v142, v258);
      sub_22BE29454();
      sub_22BE22814();
      v143 = sub_22BE23E90();
      sub_22BE1AB5C(v143, v144, v251);
      if (v141)
      {

        sub_22BE233E8(v254, &qword_27D90F038, &qword_22C297100);
        v202 = sub_22BE5CE4C(&qword_27D911FC0, &unk_22C2B5D70);
        sub_22BE43258(v202);
        sub_22C25A64C();
        v203 = sub_22C108598();
        v204 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v203);
        sub_22C25A448(v204, v205, v206, v207, v208, v209);
        sub_22C259518();
        sub_22BE1AE58();
        sub_22BE31278();
        sub_22C25AD44();
        goto LABEL_26;
      }

      v145 = sub_22C1088E8();
      sub_22BE3B620(v145, v250);
      sub_22BE33554();
      v146 = sub_22BE38FD8();
      v147(v146);
      v148 = *v234;
      v149 = sub_22BE180C8();
      v148(v149);
      v150 = sub_22BE23108();
      v148(v150);

      sub_22C25A08C();
      sub_22C272864();
      v151 = *v240;
      v152 = sub_22BE25EFC();
      v151(v152);
      sub_22BE33554();
      v153 = sub_22BE1824C();
      v154(v153);
      sub_22C259518();
      sub_22BE1AE58();
      v155 = sub_22C25A870();
      v151(v155);
      sub_22C259A20();
      sub_22C25AC2C();
      sub_22BE3B620(v156, v157);
      sub_22BE22814();
      sub_22C25AB7C();
      sub_22BE22814();
      v158 = sub_22BE391E8();
      sub_22BE1AB5C(v158, v159, v246);
      if (v141)
      {
        v160 = sub_22BE33560();
        sub_22BE233E8(v160, v161, &qword_22C296F40);
        v162 = sub_22BE3CC34();
        sub_22BE233E8(v162, v163, &qword_22C296F40);
        v164 = 1;
        v165 = v244;
        v128 = v245;
      }

      else
      {
        sub_22C259680();
        sub_22BE3B620(v242, v247);
        sub_22BE29370();
        sub_22C108C10();
        sub_22BE1AA68(v166, v167);
        if (*(v247 + 9))
        {
          v210 = sub_22BE5CE4C(&qword_27D911FB8, &unk_22C2B5D60);
          sub_22BE43258(v210);
          sub_22C25A64C();
          v211 = sub_22C108598();
          v212 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v211);
          sub_22C25A448(v212, v213, v214, v215, v216, v217);
          sub_22BE1AE58();
          sub_22BE233E8(v256, &qword_27D90E688, &qword_22C296F40);
          sub_22BE1AE58();
          sub_22BE31278();
          sub_22C25AD44();
          sub_22BE1AE58();
          goto LABEL_26;
        }

        v168 = *v247;
        v169 = *(v247 + 8);
        sub_22BE3767C();
        sub_22BE1AE58();
        if ((v169 & 1) == 0)
        {
          sub_22C25A634();
          *v255 = v168;
        }

        sub_22BE33554();
        sub_22C25AC0C();
        v170();
        v171 = *(v241 + 32);
        v172 = sub_22BE19454();
        v171(v172);
        sub_22BE233E8(v256, &qword_27D90E688, &qword_22C296F40);
        sub_22BE3767C();
        sub_22BE1AE58();
        v165 = v244;
        v173 = sub_22BE18944();
        v171(v173);
        v164 = 0;
      }

      sub_22BE19DC4(v165, v164, 1, v128);
      sub_22BE1AE58();
      sub_22C25976C();
      sub_22BE19DC4(v174, v175, v176, v177);
      sub_22C259A20();
      sub_22BE3B620(v257, v243);
      sub_22BE2343C();
      sub_22BE1AE58();
      sub_22C259F84();
      sub_22C25977C(v178);
      v120 = v235;
      v179 = (*(v235 + 48) + 16 * v133);
      *v179 = v249;
      v179[1] = v260;
      sub_22C25AC90();
      v180 = sub_22BE19EBC();
      sub_22BE3B620(v180, v181);
      sub_22C25A8A0();
      if (v183)
      {
        goto LABEL_29;
      }

      *(v235 + 16) = v182;
      v128 = v259;
    }

    v130 = v127;
    while (1)
    {
      v127 = v130 + 1;
      if (__OFADD__(v130, 1))
      {
        break;
      }

      if (v127 >= v233)
      {
        v184 = *v115;
        v185 = &v115[*(v228 + 32)];
        v186 = v120;
        v188 = *v185;
        v187 = v185[1];

        sub_22BE23984();
        sub_22BE1AE58();
        type metadata accessor for Action(0);
        sub_22C25A530();
        v190 = (v238 + v189);
        v192 = (v238 + *(v191 + 32));
        (*(v236 + 32))(v238, v231, v237);
        v193 = v238 + *(v255 + 36);
        *v193 = v227;
        *(v193 + 8) = v116;
        *(v193 + 16) = v226;
        *(v193 + 24) = v230;
        *(v193 + 32) = v225;
        *v190 = v224;
        v190[1] = v229;
        *(v238 + *(v255 + 28)) = v186;
        *(v238 + *(v255 + 24)) = v184;
        *v192 = v188;
        v192[1] = v187;
        goto LABEL_27;
      }

      ++v130;
      if (*(v232 + 8 * v127))
      {
        sub_22BE29270();
        v123 = v132 & v131;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void ClientAction.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v15 = sub_22C25A344(v14);
  v16 = type metadata accessor for TranscriptProtoShimParameters(v15);
  v17 = sub_22BE17A18(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  sub_22C259D70();
  MEMORY[0x28223BE20](v18);
  sub_22BE19E94();
  sub_22C259AC0(v19);
  v118 = sub_22C272874();
  sub_22BE179D8();
  v121 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  sub_22BE3173C(v23, v24, v25, v26, v27, v28, v29, v30, v105);
  v31 = sub_22C272594();
  sub_22BE179D8();
  v120 = v32;
  MEMORY[0x28223BE20](v33);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v34);
  sub_22BE20324();
  MEMORY[0x28223BE20](v35);
  v36 = sub_22BE195C4();
  v37 = type metadata accessor for TranscriptProtoStatementID(v36);
  v38 = sub_22BE19448(v37);
  MEMORY[0x28223BE20](v38);
  sub_22BE1955C();
  sub_22C26E684();
  sub_22BE41130();
  v113 = v39;
  MEMORY[0x28223BE20](v40);
  v41 = sub_22BE2F294();
  type metadata accessor for TranscriptProtoClientAction(v41);
  sub_22C1026C4();
  if (a10)
  {
    sub_22C2594D0();
    sub_22BE1AE58();
LABEL_24:
    sub_22BEE94B0();
    sub_22BE18478();
  }

  else
  {
    v109 = v11;

    v108 = v13;
    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v42 = v10[1];
    v106 = *v10;
    v114 = v10;
    v43 = v10[2];
    sub_22BE5CE4C(&qword_27D9155C8, &unk_22C2CC7D0);
    sub_22BE3D3E0();
    v116 = sub_22C273D04();
    sub_22C25A43C();
    v111 = v44;
    v115 = v43;
    sub_22BE185B4();
    v47 = v46 & v45;
    sub_22C25A350();
    v110 = v48;
    v49 = v120;
    sub_22C25AA88(v121 + 32);
    sub_22BE417A8(v50);
    v107 = v42;

    v51 = 0;
    while (v47)
    {
      sub_22C25A478();
      v122 = v47;
LABEL_11:
      v55 = v52 | (v51 << 6);
      v56 = (*(v115 + 48) + 16 * v55);
      v57 = v56[1];
      v123 = *v56;
      v58 = *(v49 + 16);
      v58(v12, *(v115 + 56) + *(v49 + 72) * v55, v31);
      v59 = sub_22BE392D4();
      (v58)(v59);
      v60 = sub_22BE1AEE4();
      (v58)(v60);

      sub_22C272864();
      v61 = *(v120 + 8);
      v62 = sub_22BE2BA80();
      v61(v62);
      v63 = *(v121 + 32);
      v64 = sub_22BE35838();
      v63(v64);
      (v61)(v12, v31);
      sub_22C259DA0();
      sub_22C25977C(v65);
      v67 = (v116[6] + 16 * v66);
      *v67 = v123;
      v67[1] = v57;
      (v63)(v116[7] + *(v121 + 72) * v66, v119, v118);
      sub_22C25A8A0();
      if (v69)
      {
        goto LABEL_27;
      }

      v116[2] = v68;
      v49 = v120;
      v47 = v122;
    }

    v53 = v51;
    while (1)
    {
      v51 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v51 >= v110)
      {
        break;
      }

      ++v53;
      if (*(v111 + 8 * v51))
      {
        sub_22BE4878C();
        v122 = v54;
        goto LABEL_11;
      }
    }

    v70 = v10[3];
    sub_22BE5CE4C(&qword_27D913578, &unk_22C2B82B0);
    sub_22BE3D3E0();
    v71 = 0;
    sub_22C273D04();
    sub_22C259B4C();
    v73 = v70 + 64;
    v75 = v74 & *(v70 + 64);
    v77 = (v76 + 63) >> 6;
    while (v75)
    {
      sub_22BE22BE8();
      v124 = v79;
LABEL_21:
      v82 = v78 | (v71 << 6);
      sub_22C25A8B8();
      v85 = *v83;
      v84 = v83[1];
      sub_22BE1AA68(v87 + *(v86 + 72) * v82, v117);
      v88 = sub_22BE1BF88();
      sub_22BE1AA68(v88, v89);

      sub_22C0F4BDC();
      v91 = v90;
      sub_22BE1AE58();
      sub_22BE1BF88();
      sub_22BE1AE58();
      sub_22C259F70();
      sub_22C25977C(v92);
      v93 = (v72[6] + 16 * v82);
      *v93 = v85;
      v93[1] = v84;
      *(v72[7] + 8 * v82) = v91;
      v94 = v72[2];
      v69 = __OFADD__(v94, 1);
      v95 = v94 + 1;
      if (v69)
      {
        goto LABEL_28;
      }

      v72[2] = v95;
      v75 = v124;
    }

    v80 = v71;
    while (1)
    {
      v71 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v71 >= v77)
      {
        v96 = v114[4];
        v97 = v114[5];
        v99 = v114[6];
        v98 = v114[7];
        v100 = v72;

        sub_22C2594D0();
        sub_22BE1AE58();
        v101 = type metadata accessor for ClientAction(0);
        v102 = (v112 + v101[7]);
        v103 = (v112 + v101[8]);
        (*(v113 + 32))(v112, v108, v109);
        v104 = (v112 + v101[5]);
        *v104 = v106;
        v104[1] = v107;
        *(v112 + v101[6]) = v116;
        *(v112 + v101[9]) = v100;
        *v102 = v96;
        v102[1] = v97;
        *v103 = v99;
        v103[1] = v98;
        goto LABEL_24;
      }

      ++v80;
      if (*(v73 + 8 * v71))
      {
        sub_22BE4878C();
        v124 = v81;
        goto LABEL_21;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }
}

void SessionError.init(transcript:)()
{
  sub_22BE19130();
  v7 = sub_22C259C10(v6);
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v10);
  v19 = sub_22BE22D7C(v11, v12, v13, v14, v15, v16, v17, v18, v47);
  v20 = type metadata accessor for TranscriptProtoPlannerError(v19);
  v21 = sub_22BE19448(v20);
  MEMORY[0x28223BE20](v21);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v22);
  v23 = sub_22BE20558();
  v24 = type metadata accessor for TranscriptProtoSessionCoordinatorError(v23);
  v25 = sub_22BE19448(v24);
  MEMORY[0x28223BE20](v25);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v26);
  v27 = sub_22BE2558C();
  v28 = type metadata accessor for TranscriptProtoExecutorError(v27);
  v29 = sub_22BE19448(v28);
  MEMORY[0x28223BE20](v29);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v30);
  v31 = sub_22BE41E38();
  type metadata accessor for TranscriptProtoSessionErrorEnum(v31);
  sub_22BE18000();
  MEMORY[0x28223BE20](v32);
  sub_22BE1955C();
  sub_22C102A7C();
  if (v1)
  {
    sub_22BE31020();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE33560();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v45 = sub_22C1088AC();
        sub_22BE3B620(v45, v2);
        v46 = sub_22BE385E4();
        sub_22BE1AA68(v46, v4);
        sub_22C259FC4();
        SessionCoordinatorError.init(transcript:)();
        sub_22BE31020();
        sub_22BE1AE58();
        sub_22C259978();
        goto LABEL_8;
      case 2u:
        v40 = sub_22C1088AC();
        sub_22BE3B620(v40, v0);
        sub_22BE19EBC();
        sub_22BE341B0();
        sub_22BE1AA68(v41, v42);
        sub_22C259FC4();
        PlannerError.init(transcript:)();
        sub_22BE31020();
        sub_22BE1AE58();
        sub_22BE3405C();
        goto LABEL_8;
      case 3u:
        v43 = sub_22C1088AC();
        sub_22BE3B620(v43, v5);
        v44 = sub_22C259FB8();
        sub_22BE1AA68(v44, v3);
        sub_22BE3D5BC();
        ExecutorError.init(transcript:)();
        sub_22BE31020();
        sub_22BE1AE58();
        sub_22BE35D00();
LABEL_8:
        sub_22BE1AE58();
        break;
      default:
        sub_22BE3C670();
        v33 = sub_22BE18240();
        sub_22BE3B620(v33, v34);
        sub_22BE26170();
        v35 = sub_22BE23108();
        sub_22BE1AA68(v35, v36);
        v37 = *(v48 + 16);
        objc_allocWithZone(MEMORY[0x277CCA9B8]);

        v38 = sub_22BE19454();
        sub_22C25A990(v38, v39, v37);
        sub_22C26E5E4();
        sub_22BE31020();
        sub_22BE1AE58();
        sub_22BE38A00();
        sub_22BE1AE58();
        sub_22BE291B0();
        sub_22BE1AE58();
        break;
    }

    type metadata accessor for SessionError(0);
    sub_22BE31160();
    swift_storeEnumTagMultiPayload();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void QueryStepResults.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  sub_22BE19130();
  sub_22C25A424(v15);
  sub_22C26E1D4();
  sub_22BE41130();
  v40 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22BE17CBC();
  v18 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BE28E00();
  v21 = type metadata accessor for TranscriptProtoStatementID(v20);
  v22 = sub_22BE19448(v21);
  MEMORY[0x28223BE20](v22);
  sub_22BE18DFC();
  v23 = sub_22C26E684();
  sub_22BE179D8();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22BE2379C();

  sub_22C0F7204(v27, v28, v29, v30, v31, v32, v33, v34, v37, v38);
  if (!v11)
  {
    v39 = v35;
    type metadata accessor for TranscriptProtoQueryStepResults(0);
    sub_22C1026C4();

    sub_22C25A61C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22C26E174();
    sub_22C101298();
    sub_22BE233E8(v14, &qword_27D9082F0, &qword_22C27AB00);
    *a10 = v39;
    type metadata accessor for QueryStepResults(0);
    sub_22C25A530();
    (*(v25 + 32))(&a10[v36], v10, v23);
    (*(v40 + 32))(&a10[*(v14 + 24)], v12, v13);
  }

  sub_22BE20118();
  sub_22BE1AE58();
  sub_22BE46D98();
  sub_22BE18478();
}

void ActionResolverRequest.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AD88();
  v67 = v6;
  v7 = sub_22BE5CE4C(&qword_27D90ECF8, &qword_22C2970B0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE20168(v9, v58);
  v68 = type metadata accessor for TranscriptProtoParameterSet(0);
  sub_22BE179D8();
  v75 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22BE17B98();
  sub_22BE32C08();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22C2595B4();
  v14 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE19820();
  v17 = type metadata accessor for TranscriptProtoStatementID(v16);
  v18 = sub_22BE19448(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BE197B8();
  sub_22C26E684();
  sub_22BE1A3D8();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22BE28FD8();
  type metadata accessor for TranscriptProtoActionResolverRequest(0);
  sub_22C1026C4();
  if (v77)
  {
    sub_22BE25D94();
LABEL_8:
    sub_22BE1AE58();
LABEL_9:
    sub_22BEE94B0();
    sub_22BE18478();
    return;
  }

  v64 = v4;
  v66 = v20;
  v78 = v2;
  v22 = *v0;

  sub_22BE1804C();
  v23 = v1;
  sub_22C26E664();
  sub_22BE18B80();
  sub_22BE1AE58();
  sub_22C25ABC0();
  sub_22C10289C();
  if (v22)
  {
    v24 = sub_22C11FDE0();
    v25(v24, v2);
    goto LABEL_8;
  }

  v26 = *v3;
  v27 = v3[1];
  v28 = v3[4];
  v63 = v3[3];
  v62 = *(v3 + 16);

  sub_22BE40CB0();
  sub_22BE1AE58();
  sub_22BE22814();
  v29 = sub_22BE23E90();
  sub_22BE1AB5C(v29, v30, v68);
  if (v31)
  {
    sub_22BE233E8(v70, &qword_27D90ECF8, &qword_22C2970B0);
    v32 = sub_22BF103C8();
    sub_22BE196B4(&type metadata for UnwrappedNilError, v32);
    *v33 = 0xD000000000000093;
    *(v33 + 8) = 0x800000022C2DBF10;
    *(v33 + 16) = xmmword_22C2CC830;
    *(v33 + 32) = 0x800000022C2DBFB0;
    swift_willThrow();

    (*(v66 + 8))(v5, v2);
    goto LABEL_8;
  }

  v69 = v26;
  v34 = sub_22C1088E8();
  sub_22BE3B620(v34, v64);
  TranscriptProtoParameterSet.handwrittenParameters.getter();
  v59 = v35;
  v60 = v27;
  v61 = v5;
  sub_22C259608();
  sub_22BE1AE58();
  v36 = *v1;
  v37 = *(*v1 + 16);
  v38 = MEMORY[0x277D84F90];
  if (!v37)
  {
LABEL_17:
    sub_22BF39A20(v38);
    v72 = v50;
    v76 = *(v23 + 8);
    v74 = *(v23 + 9);
    type metadata accessor for AST.FlatValue(0);
    sub_22BE1B18C();
    v65 = sub_22C272E84();
    type metadata accessor for ActionResolverRequest(0);
    sub_22C25AAAC();
    v52 = sub_22BE3BD70(v51);
    type metadata accessor for Candidate(v52);
    sub_22BE5CF7C();
    sub_22C272E84();
    v53 = *(v23 + 6);
    v54 = *(v23 + 7);
    sub_22BE1B18C();
    sub_22C272E84();
    sub_22BE25D94();
    sub_22BE1AE58();
    v55 = *(v23 + 8);
    v56 = *(v23 + 9);
    (*(v66 + 32))(v67, v61, v78);

    v57 = v67 + *(v23 + 10);
    *v57 = v69;
    *(v57 + 8) = v60;
    *(v57 + 16) = v63;
    *(v57 + 24) = v28;
    *(v57 + 32) = v62;
    *(v67 + v64) = v59;
    *(v67 + v53) = v72;
    *(v67 + v54) = v65;
    *(v67 + v55) = v76;
    *(v67 + v56) = v74;
    goto LABEL_9;
  }

  v79 = MEMORY[0x277D84F90];
  v39 = sub_22C259F98();
  sub_22BE71A94(v39, v40, v41);
  v42 = 0;
  v38 = v79;
  sub_22BE25AD8();
  v71 = v36 + v44;
  while (v42 < *(v36 + 16))
  {
    sub_22BE1AA68(v71 + *(v43 + 72) * v42, v73);
    TranscriptProtoParameterSet.handwrittenParameters.getter();
    v46 = v45;
    sub_22C259608();
    sub_22BE1AE58();
    v48 = *(v79 + 16);
    v47 = *(v79 + 24);
    if (v48 >= v47 >> 1)
    {
      v49 = sub_22BE3D1E4(v47);
      sub_22BE71A94(v49, v48 + 1, 1);
    }

    ++v42;
    *(v79 + 16) = v48 + 1;
    *(v79 + 8 * v48 + 32) = v46;
    v43 = v75;
    if (v37 == v42)
    {
      v23 = v1;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t SafetyModeException.init(transcript:)()
{
  sub_22C25A3E0();
  v3 = *v1;
  v2 = v1[1];

  sub_22C0E9918();
  result = sub_22BE1AE58();
  *v0 = v3;
  v0[1] = v2;
  return result;
}

void ToolRetrievalResponse.init(transcript:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v2;
  v9 = sub_22BE5CE4C(&qword_27D909270, &unk_22C2CB810);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE3100C();
  sub_22C2725B4();
  sub_22BE41130();
  v135 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v13);
  sub_22BE195C4();
  v139 = sub_22C2728E4();
  sub_22BE179D8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE29178(v17, v121);
  MEMORY[0x28223BE20](v18);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v19);
  sub_22C259838(v20, v21, v22, v23, v24, v25, v26, v27, v122);
  v28 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v28);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A174();
  sub_22C259DF0(v30);
  v132 = sub_22C2725C4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v31);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  sub_22BE183BC();
  v140 = sub_22C272984();
  sub_22BE179D8();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  v130 = v36;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v37);
  v46 = sub_22BE22D7C(v38, v39, v40, v41, v42, v43, v44, v45, v123);
  type metadata accessor for ContextProtoToolRetrievalType(v46);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v47);
  sub_22BE1955C();
  v125 = a1;
  v133 = *(a1[6] + 16);
  sub_22C25AC64(v135 + 32);
  sub_22C1CEFB0(v48 + 8);
  v134 = (v15 + 32);
  v49 = MEMORY[0x277D84F98];
  sub_22BE417A8(v34 + 8);
  v128 = v3;
  v127 = v6;
  for (i = v51; ; v51 = i)
  {
    if (v133 == v50)
    {
      v95 = *v125;
      v94 = v125[1];
      v97 = v125[2];
      v96 = v125[3];
      v98 = *(v125 + 8);

      sub_22C0F3228();
      if (v7)
      {
        sub_22BE203FC();
        sub_22BE1AE58();

        goto LABEL_22;
      }

      v120 = v99;
      sub_22BE203FC();
      sub_22BE1AE58();
      *a2 = v95;
      *(a2 + 8) = v94;
      *(a2 + 16) = v97;
      *(a2 + 24) = v96;
      *(a2 + 32) = v98;
      *(a2 + 40) = v120;
      *(a2 + 48) = v49;
LABEL_23:
      sub_22BE22978();
      return;
    }

    if (v50 >= *(v51 + 16))
    {
      break;
    }

    sub_22BE25AD8();
    v136 = v55;
    sub_22BE1AA68(v53 + v52 + *(v54 + 72) * v55, v5);
    sub_22BE22814();
    v56 = sub_22BE391E8();
    sub_22BE1AB5C(v56, v57, v132);
    if (v58)
    {

      sub_22BE233E8(v131, &qword_27D909280, &unk_22C294B50);
      v100 = sub_22BE5CE4C(&qword_27D912030, &unk_22C2B5E40);
      sub_22BE3369C(v100);
      sub_22BE29328();
      v101 = sub_22C108598();
      v102 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v101);
      *v103 = v49;
      v103[1] = v3;
      sub_22C25A590(v102, v103, v104, v105, v106, v107);
      sub_22BE203FC();
      sub_22C25AE1C();
      goto LABEL_21;
    }

    v59 = sub_22BE1B074();
    v60(v59);
    v61 = sub_22BE41FB4();
    v62(v61);
    sub_22C272974();
    if (v7)
    {
      sub_22BE203FC();
      sub_22C25AE1C();
      v108 = sub_22BE2684C();
      v119(v108, v118);
      sub_22C259930();
      sub_22BE1AE58();
LABEL_22:

      goto LABEL_23;
    }

    v63 = sub_22BE2684C();
    v64(v63);
    (*(v34 + 32))(v141, v130, v140);
    sub_22BE22814();
    v65 = sub_22BE2BA98();
    sub_22BE1AB5C(v65, v66, v4);
    if (v58)
    {

      sub_22BE233E8(v3, &qword_27D909270, &unk_22C2CB810);
      v109 = sub_22BE5CE4C(&qword_27D912038, &unk_22C2B5E50);
      sub_22BE3369C(v109);
      sub_22BE29328();
      v110 = sub_22C108598();
      v111 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v110);
      *v112 = v49;
      v112[1] = v3;
      sub_22C25A590(v111, v112, v113, v114, v115, v116);
      sub_22BE203FC();
      sub_22C25AE1C();
      sub_22BE33554();
      v117(v141, v140);
LABEL_21:
      sub_22C259930();
      sub_22BE1AE58();
      goto LABEL_23;
    }

    sub_22BE33554();
    v67 = sub_22BE392D4();
    v68(v67);
    sub_22BE33554();
    v69 = sub_22BE36658();
    v70(v69);
    sub_22C2728D4();
    sub_22BE33554();
    v71 = v4;
    v72(v6, v4);
    v73 = *v134;
    (*v134)(v137, v129, v139);
    sub_22BE33554();
    sub_22BE25300();
    v74();
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE603AC();
    sub_22C1CF0B4();
    if (__OFADD__(v77, v78))
    {
      goto LABEL_26;
    }

    v79 = v75;
    v80 = v76;
    sub_22BE5CE4C(&qword_27D915490, &unk_22C2CB820);
    if (sub_22C273C44())
    {
      sub_22BE603AC();
      if ((v80 & 1) != (v82 & 1))
      {
        goto LABEL_28;
      }

      v79 = v81;
    }

    if (v80)
    {
      v83 = sub_22C25AB34(v49[7]);
      v85 = v139;
      (*(v84 + 40))(v83, v138, v139);
    }

    else
    {
      sub_22BE45B78(&v49[v79 >> 6]);
      v86 = sub_22C25AB34(v49[6]);
      (*(v87 + 16))(v86, v141, v140);
      sub_22C25AC90();
      v85 = v139;
      v73(v88 + v89 * v79, v138, v139);
      sub_22C25A500();
      if (v91)
      {
        goto LABEL_27;
      }

      v49[2] = v90;
    }

    sub_22BE33554();
    v92(v137, v85);
    sub_22BE33554();
    v93(v141, v140);
    sub_22C259930();
    sub_22BE1AE58();
    v7 = 0;
    v50 = v136 + 1;
    v4 = v71;
    v3 = v128;
    v6 = v127;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_22C2740B4();
  __break(1u);
}

uint64_t sub_22C2106AC@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t *a2@<X8>)
{

  v6 = a1(v5);
  sub_22BE1AB1C();
  result = sub_22BE1AE58();
  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

void ActionCancellation.init(transcript:)()
{
  sub_22BE19130();
  sub_22BE23C8C();
  v28 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  v5 = sub_22BE28E74(v4);
  type metadata accessor for TranscriptProtoStatementID(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE18928();
  MEMORY[0x28223BE20](v7);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v8);
  sub_22BE324EC();
  v9 = sub_22BE1B328();
  v11 = sub_22BE5CE4C(v9, v10);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B01C();
  v13 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE25334();
  type metadata accessor for TranscriptProtoActionCancellation(v15);
  sub_22BE25300();
  sub_22BE22814();
  v16 = 1;
  sub_22BE18190(v1);
  if (!v17)
  {
    sub_22BE3B168();
    v18 = sub_22BE36318();
    sub_22BE3B620(v18, v19);
    sub_22BE2C73C();
    v20 = sub_22BE191C0();
    sub_22BE1AA68(v20, v21);

    sub_22BE1B5EC();
    sub_22C26E664();
    sub_22C259638();
    sub_22BE1AE58();
    sub_22BE1B074();
    sub_22BE1AE58();
    v16 = 0;
  }

  sub_22BE19DC4(v2, v16, 1, v28);
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE3A04C();
    sub_22BE233E8(v2, &qword_27D907240, &unk_22C2B5B80);
  }

  else
  {

    sub_22C259FD0();
    sub_22C26E664();
    sub_22BE3A04C();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22C259BD0();
    sub_22BE19DC4(v22, v23, v24, v25);
    sub_22BE2565C();
    sub_22BE2343C();
    v26 = type metadata accessor for ActionCancellation(0);
    sub_22C25A688(*(v26 + 20));
    sub_22C25A4B8();
    v27();
  }

  sub_22BE22978();
  sub_22BE18478();
}

void SystemResponse.init(transcript:)()
{
  sub_22BE19130();
  v5 = sub_22C259C10(v4);
  v6 = type metadata accessor for TranscriptProtoResponseOutput(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE18928();
  MEMORY[0x28223BE20](v8);
  sub_22BE26800();
  v9 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE2C64C();
  v11 = sub_22BE5CE4C(&qword_27D911F40, &qword_22C2B5CA8);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoSystemResponse(v13);
  sub_22BE22814();
  v14 = 1;
  v15 = sub_22BE3C688();
  sub_22BE1AB5C(v15, v16, v6);
  if (v17)
  {
    v18 = v0;
  }

  else
  {
    v19 = sub_22C259FB8();
    sub_22BE3B620(v19, v2);
    v20 = sub_22C1088E8();
    sub_22BE1AA68(v20, v3);
    v21 = sub_22C25A518();
    ResponseOutput.init(transcript:)(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31);
    v18 = v0;
    if (v0)
    {
      sub_22C259668();
      sub_22BE1AE58();
      sub_22BE38444();
LABEL_10:
      sub_22BE1AE58();
      goto LABEL_11;
    }

    sub_22BE38444();
    sub_22BE1AE58();
    v14 = 0;
  }

  v29 = sub_22C26F524();
  sub_22BE19DC4(v1, v14, 1, v29);

  sub_22C0F2CB0();
  if (!v18)
  {
    sub_22BE1B328();
    sub_22C26F714();
    sub_22C259668();
    goto LABEL_10;
  }

  sub_22C259668();
  sub_22BE1AE58();
  sub_22BE233E8(v1, &qword_27D911F40, &qword_22C2B5CA8);
LABEL_11:
  sub_22BEE94B0();
  sub_22BE18478();
}

void StatementResult.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AA20();
  v8 = sub_22BE3BD70(v7);
  v9 = type metadata accessor for TranscriptProtoStatementID(v8);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v11);
  sub_22BE22D7C(v12, v13, v14, v15, v16, v17, v18, v19, v55);
  sub_22C26E684();
  sub_22BE179D8();
  v58 = v21;
  v59 = v20;
  MEMORY[0x28223BE20](v20);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v22);
  v23 = sub_22C2595B4();
  v24 = type metadata accessor for TranscriptProtoStatementResultPayload(v23);
  v25 = sub_22BE19448(v24);
  MEMORY[0x28223BE20](v25);
  v26 = sub_22BE19820();
  v27 = type metadata accessor for StatementResultPayload(v26);
  v28 = sub_22BE19448(v27);
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  v30 = sub_22C259814(v29);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(v30);
  sub_22BE18000();
  MEMORY[0x28223BE20](v31);
  sub_22BE2379C();
  v32 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v32);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE234F4();
  v34 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v34);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE2C64C();
  if (v2[1])
  {
    v1 = *v2;

    sub_22C26E174();
  }

  else
  {
    sub_22C26E1D4();
    v36 = sub_22C259C00();
    sub_22BE19DC4(v36, v37, v38, v39);
  }

  v60 = v5;
  type metadata accessor for TranscriptProtoStatementResult(0);
  sub_22BE22814();
  sub_22BE18190(v4);
  if (v40)
  {
    sub_22BE233E8(v4, &qword_27D90E670, &unk_22C2CC890);
    v43 = 0;
    v42 = 0;
    v62 = 0;
    v44 = 0;
    v63 = 0;
  }

  else
  {
    v41 = sub_22C1088AC();
    sub_22BE3B620(v41, v0);
    v43 = *v0;
    v42 = *(v0 + 8);
    v44 = *(v0 + 32);
    v62 = *(v0 + 24);
    v63 = *(v0 + 16);

    sub_22BE40CB0();
    sub_22BE1AE58();
  }

  sub_22C25ABC0();
  sub_22C10410C();
  if (v1)
  {
    v45 = sub_22BE39EAC();
    sub_22C25A9D0(v45, v46);
    sub_22BE233E8(v6, &qword_27D9082F0, &qword_22C27AB00);
    sub_22C2599D8();
    sub_22BE1AE58();
  }

  else
  {
    StatementResultPayload.init(transcript:)(v3);
    sub_22C25ABC0();
    sub_22C1026C4();

    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22C1026C4();

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22C2599D8();
    sub_22BE1AE58();
    sub_22C26E1D4();
    sub_22BE1A140();
    v51 = sub_22C18F17C(v47, v48, v49, v50);
    v52 = type metadata accessor for StatementResult(v51);
    v53 = v56 + v52[9];
    *(v53 + 32) = 0;
    *v53 = 0u;
    *(v53 + 16) = 0u;
    sub_22BE25C94();
    sub_22BE2343C();
    sub_22C1083D4(*v53, *(v53 + 8));
    *v53 = v43;
    *(v53 + 8) = v42;
    *(v53 + 16) = v62;
    *(v53 + 24) = v44;
    *(v53 + 32) = v63;
    sub_22BE3B620(v61, v56 + v52[5]);
    v54 = *(v58 + 32);
    v54(v56 + v52[6], v60, v59);
    (*(v58 + 16))(v56 + v52[7], v57, v59);
    v54(v56 + v52[8], v57, v59);
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void ExternalAgentRequest.init(transcript:)()
{
  sub_22BE19130();
  v6 = sub_22C259C10(v5);
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE1955C();
  v8 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  v10 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v11 = sub_22BE19448(v10);
  MEMORY[0x28223BE20](v11);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE195C4();
  v14 = type metadata accessor for TranscriptProtoRequestContent(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE18DFC();
  v16 = type metadata accessor for RequestContent(0);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE188B0();
  sub_22C103C5C();
  if (v1)
  {
    sub_22BE487FC();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A918();
    RequestContent.init(transcript:)();
    type metadata accessor for TranscriptProtoExternalAgentRequest(0);
    sub_22C25A548();
    if (*(v18 + 8))
    {
      sub_22C26E174();
      v19 = v4;
      sub_22C101298();
      v20 = 0;
      sub_22BE233E8(v0, &qword_27D9082F0, &qword_22C27AB00);
    }

    else
    {
      v20 = 1;
      v19 = v4;
    }

    v21 = sub_22C26E1D4();
    sub_22C25AD2C(v19, v20, 1, v21);
    sub_22BE22814();
    sub_22BE487FC();
    sub_22BE1AE58();
    sub_22BE23B00(v2);
    if (v22)
    {
      sub_22BE233E8(v2, &qword_27D90E548, &qword_22C296F00);
      v26 = 0;
      v25 = 0;
      v27 = 0;
    }

    else
    {
      sub_22BE39758();
      v23 = sub_22BE1B73C();
      sub_22BE3B620(v23, v24);
      v26 = *v3;
      v25 = v3[1];
      v27 = v3[2];

      sub_22BE323E0();
      sub_22BE1AE58();
    }

    v28 = type metadata accessor for ExternalAgentRequest(0);
    sub_22BE32EE0();
    sub_22BE19DC4(v29, v30, v31, v32);
    v33 = (v36 + *(v28 + 24));
    *v33 = 0;
    v33[1] = 0;
    v33[2] = 0;
    sub_22BE39238();
    v34 = sub_22BE3E79C();
    sub_22BE3B620(v34, v35);
    sub_22BE2343C();
    sub_22BE37808(*v33, v33[1], v33[2]);
    *v33 = v26;
    v33[1] = v25;
    v33[2] = v27;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t ExternalAgentRequestRewriteMetadata.init(transcript:)()
{
  sub_22C25A3E0();
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];

  sub_22BE323E0();
  result = sub_22BE1AE58();
  *v0 = v3;
  v0[1] = v2;
  v0[2] = v4;
  return result;
}

void ToolResolution.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = sub_22C25A424(v12);
  v14 = type metadata accessor for TranscriptProtoStatementID(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E94();
  sub_22C259814(v17);
  v18 = sub_22C26E684();
  sub_22BE179D8();
  v31 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v21);
  sub_22BE20558();
  v22 = sub_22C272674();
  v23 = sub_22BE19448(v22);
  MEMORY[0x28223BE20](v23);
  sub_22BE1AD20();
  sub_22C272224();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v24);
  sub_22BE18DFC();
  sub_22C25ACCC();
  sub_22C102B6C();
  if (v11)
  {
    sub_22BE23370();
    sub_22BE1AE58();
  }

  else
  {
    v25 = sub_22BE3D5BC();
    ToolDefinition.init(transcript:)(v25, v26);
    type metadata accessor for TranscriptProtoToolResolution(0);
    sub_22C25A4C4();
    sub_22BE34128();
    sub_22C1026C4();

    sub_22C25A61C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22C1026C4();

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE23370();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    v27 = sub_22BE1824C();
    v28(v27);
    type metadata accessor for ToolResolution(0);
    sub_22C25A374();
    v29 = *(v31 + 32);
    (v29)(a10 + v30, v10, v18);
    sub_22C18FD4C();
    v29();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void UndoRedoRequest.init(transcript:)()
{
  sub_22BE19130();
  v5 = v4;
  v7 = v6;
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE35C94(v10, v39);
  v11 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE3A208();
  v14 = type metadata accessor for TranscriptProtoStatementID(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE17CBC();
  sub_22C26E684();
  sub_22BE179D8();
  v42 = v17;
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  v44 = v18;
  v19 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v20 = sub_22BE19448(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE25544();
  MEMORY[0x28223BE20](v21);
  sub_22BE324EC();
  v22 = v5[1];
  v41 = *v5;
  if (v5[4])
  {

    sub_22C26E174();
    sub_22C101298();
    if (v1)
    {

      sub_22BE233E8(v0, &qword_27D9082F0, &qword_22C27AB00);
      goto LABEL_8;
    }

    sub_22BE233E8(v0, &qword_27D9082F0, &qword_22C27AB00);
    sub_22C26E1D4();
    sub_22BE187DC();
    sub_22BE19DC4(v27, v28, v29, v30);
  }

  else
  {
    sub_22C26E1D4();
    v23 = sub_22C259C00();
    sub_22BE19DC4(v23, v24, v25, v26);
  }

  v40 = *(v5 + 16);
  type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  sub_22C1026C4();
  if (!v1)
  {
    v31 = *(v2 + 8);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22BE2BB28();
    sub_22BE22814();
    sub_22C0FD140();
    sub_22C2599A8();
    sub_22BE1AE58();
    type metadata accessor for UndoRedoRequest(0);
    sub_22C25ACC0();
    sub_22C26E1D4();
    sub_22BE1A140();
    sub_22BE19DC4(v32, v33, v34, v35);
    sub_22BE1A140();
    sub_22BE19DC4(v36, v37, v38, v43);
    *v7 = v41;
    v7[1] = v22;
    sub_22BE2343C();
    *(v7 + *(v31 + 24)) = v40;
    (*(v42 + 32))(v7 + *(v31 + 28), v44, v43);
    sub_22BE2343C();
    goto LABEL_10;
  }

  sub_22BE233E8(v3, &qword_27D9082F0, &qword_22C27AB00);

LABEL_8:
  sub_22C2599A8();
  sub_22BE1AE58();
LABEL_10:
  sub_22BE22978();
  sub_22BE18478();
}

void ClientUndoRedoRequest.init(transcript:)()
{
  sub_22BE19130();
  v3 = v2;
  v34 = v4;
  v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE20310(v7, v32);
  v8 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v11 = sub_22BE36294(v10);
  v12 = type metadata accessor for TranscriptProtoStatementID(v11);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  sub_22BE4682C(v14);
  v15 = sub_22C26E684();
  sub_22BE179D8();
  v33 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22BE2F294();
  sub_22C26E1D4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v18);
  sub_22BE18DFC();
  v19 = sub_22BE1B18C();
  v21 = sub_22BE5CE4C(v19, v20);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE19668();
  sub_22C26E174();
  sub_22C101298();
  v23 = sub_22BE27A44();
  sub_22BE233E8(v23, v24, &qword_22C27AB00);
  if (!v0)
  {
    v25 = *(v3 + 16);
    type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
    sub_22C1026C4();

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22BE22814();
    sub_22C259FDC();
    sub_22C0FD140();
    v26 = type metadata accessor for ClientUndoRedoRequest(0);
    sub_22BE1A140();
    sub_22BE19DC4(v27, v28, v29, v15);
    v30 = sub_22BE1AB1C();
    v31(v30);
    *(v34 + *(v26 + 20)) = v25;
    (*(v33 + 32))(v34 + *(v26 + 24), v1, v15);
    sub_22BE2343C();
  }

  sub_22BE2C2A0();
  sub_22BE1AE58();
  sub_22BE34134();
  sub_22BE18478();
}

void TypeConversionRequest.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v15 = sub_22BE3BD70(v14);
  v16 = type metadata accessor for TranscriptProtoStatementID(v15);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  sub_22C259BA0(v18);
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  sub_22BE4682C(v20);
  sub_22C2725A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v21);
  sub_22BE29178(v22, v52);
  MEMORY[0x28223BE20](v23);
  sub_22BE22D7C(v24, v25, v26, v27, v28, v29, v30, v31, v53);
  sub_22C2728A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v32);
  sub_22BE2F294();
  sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v33);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v34);
  sub_22BE2558C();
  sub_22C272874();
  sub_22BE1A3D8();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  sub_22BE19338();
  sub_22C101488();
  if (v10)
  {
    sub_22C2594B8();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A068();
    v38 = sub_22BE260B8();
    v39(v38);
    sub_22C25A524();
    sub_22C272864();
    v40 = sub_22BE426E8();
    v41(v40);
    type metadata accessor for TranscriptProtoTypeConversionRequest(0);
    sub_22C25A374();
    sub_22C1024DC();
    sub_22C11634C();
    v42 = sub_22BE23108();
    v43(v42);
    sub_22C272894();
    v44 = sub_22C25A870();
    v45(v44);
    sub_22C1026C4();
    v46 = *(a10 + 8);

    sub_22BE354D0();
    sub_22C26E664();
    sub_22C2594B8();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    (*(v36 + 32))(v54, v12, v11);
    type metadata accessor for TypeConversionRequest(0);
    sub_22C25A374();
    v48 = sub_22C25A688(v47);
    v49(v48, v13);
    v50 = sub_22C25A688(*(v46 + 24));
    v51(v50);
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void TypeConversionResult.init(transcript:)()
{
  sub_22BE19130();
  v31 = v3;
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v6);
  sub_22BE22D7C(v7, v8, v9, v10, v11, v12, v13, v14, v30);
  sub_22C26E684();
  sub_22BE179D8();
  v32 = v16;
  v33 = v15;
  MEMORY[0x28223BE20](v15);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v17);
  sub_22BE2558C();
  sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v18);
  sub_22BE18928();
  MEMORY[0x28223BE20](v19);
  sub_22C2595B4();
  v20 = sub_22C272874();
  sub_22BE179D8();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_22BE197B8();
  sub_22C101488();
  if (v1)
  {
    sub_22BE1B154();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C1CF23C();
    v24 = sub_22BE33B3C();
    v25(v24);
    sub_22C272864();
    v26 = sub_22BE33BE8();
    v27(v26);
    type metadata accessor for TranscriptProtoTypeConversionResult(0);
    sub_22C25A4C4();
    sub_22BE34128();
    sub_22C1026C4();

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22C1026C4();

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE1B154();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    (*(v22 + 32))(v31, v0, v20);
    type metadata accessor for TypeConversionResult(0);
    sub_22C25A374();
    v28 = *(v32 + 32);
    (v28)(v31 + v29, v2, v33);
    sub_22C18FD4C();
    v28();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void QueryDecorationPrePlannerResult.init(transcript:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = sub_22C25A424(v3);
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(v4);
  v6 = sub_22BE19448(DecorationPrePlannerResultPayload);
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE1AD20();
  v8 = type metadata accessor for TranscriptProtoStatementID(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE2F294();
  sub_22C26E684();
  sub_22BE41130();
  MEMORY[0x28223BE20](v10);
  sub_22BE1955C();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  sub_22C25A694();
  sub_22C25AA44();
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE27C5C();
    sub_22BE1AE58();
  }

  else
  {

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v11 = *v2;
    v12 = v2[1];

    sub_22C1027AC();
    QueryDecorationPrePlannerResultPayload.init(transcript:)();
    sub_22BE27C5C();
    sub_22BE1AE58();
    v13 = sub_22BE196A8();
    v14(v13);
    type metadata accessor for QueryDecorationPrePlannerResult(0);
    sub_22BE406AC();
    *v15 = v11;
    v15[1] = v12;
    sub_22C25A3A8();
    *v16 = v17;
    *(v16 + 8) = v18;
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void ExecutionPreconditionEvaluatorRequest.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AA94();
  sub_22C25A554(v7);
  sub_22C26E684();
  sub_22C2594A0();
  v51 = v8;
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE2F294();
  v11 = type metadata accessor for TranscriptProtoStatementID(v10);
  v12 = sub_22BE17A18(v11);
  v50 = v13;
  MEMORY[0x28223BE20](v12);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE2558C();
  v16 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(v15);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE18DFC();
  v18 = type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(0);
  v19 = sub_22BE19448(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE28FD8();
  type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  sub_22C103124();
  if (v0)
  {
    sub_22C259A38();
    sub_22BE1AE58();
LABEL_4:
    sub_22BE22978();
    sub_22BE18478();
  }

  else
  {
    ExecutionPreconditionEvaluatorRequest.ActionRequest.init(transcript:)(v2);
    v44 = v6;
    v46 = v4;
    v20 = *v3;
    sub_22BE5CE4C(&qword_27D9155B8, &unk_22C2CC7B0);
    sub_22BE3D3E0();
    v21 = sub_22C273D04();
    v22 = 0;
    v23 = v20 + 64;
    sub_22BE26A98();
    v26 = v25 >> 6;
    v27 = v1;
    v45 = v28;
    while (v24)
    {
      sub_22BE22BE8();
      v48 = v30;
LABEL_12:
      v33 = v29 | (v22 << 6);
      sub_22C25A8B8();
      v35 = v34[1];
      v49 = *v34;
      sub_22BE1AA68(v36 + *(v50 + 72) * v33, v27);
      v37 = sub_22BE3CEF4();
      sub_22BE1AA68(v37, v38);

      sub_22C25A3C4();
      sub_22C26E664();
      sub_22C25A1AC();
      v27 = v1;
      sub_22BE1AE58();
      sub_22BE3CEF4();
      sub_22BE1AE58();
      sub_22BE3CD8C();
      sub_22C25A924(v39);
      v21 = v45;
      v40 = (v45[6] + 16 * v33);
      *v40 = v49;
      v40[1] = v35;
      (*(v51 + 32))(v45[7] + *(v51 + 72) * v33, v5, v46);
      v41 = v45[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_16;
      }

      v45[2] = v43;
      v24 = v48;
    }

    v31 = v22;
    while (1)
    {
      v22 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
        sub_22C259A38();
        sub_22BE1AE58();
        sub_22BE3B620(v44, v47);
        *(v47 + *(type metadata accessor for ExecutionPreconditionEvaluatorRequest(0) + 20)) = v21;
        goto LABEL_4;
      }

      ++v31;
      if (*(v23 + 8 * v22))
      {
        sub_22BE4878C();
        v48 = v32;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void RequestAmendment.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C18F0F4();
  v13 = sub_22C25A424(v12);
  v14 = type metadata accessor for TranscriptProtoRequestContent(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE1955C();
  v16 = type metadata accessor for RequestContent(0);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE18DFC();
  sub_22C26E1D4();
  sub_22BE41130();
  MEMORY[0x28223BE20](v18);
  sub_22BE188B0();
  v19 = sub_22BE3CEF4();
  v21 = sub_22BE5CE4C(v19, v20);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE19668();
  sub_22C26E174();
  sub_22C101298();
  v23 = sub_22BE261AC();
  sub_22BE233E8(v23, v24, &qword_22C27AB00);
  if (!v11)
  {
    type metadata accessor for TranscriptProtoRequestAmendment(0);
    sub_22C103C5C();
    sub_22C25A518();
    RequestContent.init(transcript:)();
    v25 = sub_22BE3911C();
    v26(v25);
    type metadata accessor for RequestAmendment(0);
    sub_22BE39238();
    sub_22BE3B620(v10, a10 + v27);
  }

  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C213508()
{
  sub_22C25AD18();
  v3 = *v1;
  v2 = v1[1];

  sub_22BE1B5EC();
  result = sub_22BE1AE58();
  *v0 = v3;
  v0[1] = v2;
  return result;
}

void IntermediateSystemResponse.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v13 = sub_22C18F934(v12);
  v81 = type metadata accessor for TranscriptProtoResponseOutput(v13);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v15);
  sub_22C10887C(v16, v17, v18, v19, v20, v21, v22, v23, v76);
  v24 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  sub_22BE19448(v24);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE20168(v26, v77);
  v27 = sub_22BE5CE4C(&qword_27D911F40, &qword_22C2B5CA8);
  sub_22BE19448(v27);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  v30 = sub_22BE23A90(v29);
  v31 = type metadata accessor for TranscriptProtoStatementID(v30);
  sub_22BE18000();
  MEMORY[0x28223BE20](v32);
  sub_22BE18928();
  MEMORY[0x28223BE20](v33);
  sub_22BE1C17C();
  v34 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v34);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE25CD0();
  v36 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v36);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1A174();
  v39 = v38;
  v40 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v40);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  v42 = sub_22BE3A208();
  if (*(v10 + *(type metadata accessor for TranscriptProtoIntermediateSystemResponse(v42) + 32) + 8))
  {

    sub_22BE191CC();
    sub_22C26E174();
  }

  else
  {
    sub_22C26E1D4();
    sub_22BE1A140();
    sub_22BE19DC4(v43, v44, v45, v46);
  }

  sub_22BE22814();
  v47 = 1;
  v48 = sub_22BE26188();
  sub_22BE1AB5C(v48, v49, v31);
  if (!v50)
  {
    sub_22BE3B168();
    v51 = sub_22BE36658();
    sub_22BE3B620(v51, v52);
    sub_22BE2C73C();
    v53 = sub_22BE196A8();
    sub_22BE1AA68(v53, v54);

    sub_22C259FD0();
    sub_22C26E664();
    sub_22C25A1AC();
    sub_22BE1AE58();
    sub_22BE392D4();
    sub_22BE1AE58();
    v47 = 0;
  }

  v55 = sub_22C26E684();
  sub_22BE19DC4(v39, v47, 1, v55);
  sub_22C0E9A68();
  sub_22BE22814();
  v56 = sub_22BE2BA98();
  sub_22BE1AB5C(v56, v57, v81);
  if (v50)
  {
    sub_22C26F524();
    v58 = sub_22BE3D5C8();
    sub_22BE19DC4(v58, v59, v60, v61);

LABEL_12:

    sub_22BE2BA80();
    sub_22C270014();
    goto LABEL_13;
  }

  v62 = sub_22BE385E4();
  sub_22BE3B620(v62, v80);
  v63 = sub_22BE44744();
  sub_22BE1AA68(v63, v79);

  v64 = sub_22C25A6C4();
  ResponseOutput.init(transcript:)(v64, v65, v66, v67, v68, v69, v70, v71, v78, v79);
  if (!a10)
  {
    sub_22BE38444();
    sub_22BE1AE58();
    sub_22C26F524();
    v72 = sub_22C25974C();
    sub_22BE19DC4(v72, v73, v74, v75);
    goto LABEL_12;
  }

  sub_22BE38444();
  sub_22BE1AE58();
  sub_22BE233E8(v39, &qword_27D907240, &unk_22C2B5B80);
  sub_22BE233E8(v11, &qword_27D9082F0, &qword_22C27AB00);
LABEL_13:
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE19650();
  sub_22BE18478();
}

void IntermediateSystemResponseRendered.init(transcript:)()
{
  sub_22BE19130();
  v3 = sub_22C259C10(v2);
  v4 = type metadata accessor for TranscriptProtoStatementID(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v6);
  sub_22BE26800();
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE2C64C();
  v9 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  v11 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE25334();
  if (*(v0 + *(type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(v13) + 28) + 8))
  {

    sub_22BE191CC();
    sub_22C26E174();
  }

  else
  {
    sub_22C26E1D4();
    sub_22BE1A140();
    sub_22BE19DC4(v14, v15, v16, v17);
  }

  sub_22BE22814();
  v18 = 1;
  v19 = sub_22BE3C688();
  sub_22BE1AB5C(v19, v20, v4);
  if (!v21)
  {
    sub_22BE3B168();
    v22 = sub_22BE25C94();
    sub_22BE3B620(v22, v23);
    sub_22BE2C73C();
    v24 = sub_22BE1AB1C();
    sub_22BE1AA68(v24, v25);

    sub_22BE1B5EC();
    sub_22C26E664();
    sub_22C259638();
    sub_22BE1AE58();
    sub_22BE291B0();
    sub_22BE1AE58();
    v18 = 0;
  }

  v26 = sub_22C26E684();
  sub_22BE19DC4(v1, v18, 1, v26);

  sub_22BE196A8();
  sub_22C2701F4();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE3C298();
  sub_22BE18478();
}

void AgentPrimitiveAction.init(transcript:)()
{
  sub_22BE2BB34();
  v4 = sub_22C259D80();
  v5 = type metadata accessor for TranscriptProtoPrimitiveAction(v4);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE1AD20();
  v8 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE19338();
  v11 = *v2;
  v10 = v2[1];
  type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);

  sub_22C103D4C();
  if (v1)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A894();
    AgentPrimitiveAction.PrimitiveAction.init(transcript:)();
    sub_22BE379D8();
    sub_22BE1AE58();
    *v0 = v11;
    v0[1] = v10;
    type metadata accessor for AgentPrimitiveAction(0);
    sub_22C259620();
    sub_22BE3B620(v3, v0 + v12);
  }

  sub_22BE36324();
  sub_22BEE93D4();
}

void TranscriptProtoUserTurnStarted.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v75 = v13;
  v14 = v13;
  v74 = v15;
  v16 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE35C94(v18, v72);
  v19 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE20168(v21, v73);
  v22 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  sub_22BE19448(v22);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  v25 = sub_22BE36294(v24);
  type metadata accessor for TranscriptProtoUserTurn(v25);
  sub_22BE18000();
  MEMORY[0x28223BE20](v26);
  sub_22BE18DFC();
  v27 = sub_22BE5CE4C(&qword_27D90E4D8, &qword_22C2B5DB0);
  sub_22BE19448(v27);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22C259738(v29);
  v30 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v31);
  sub_22BE2379C();
  v32 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v32);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE23E58();
  v34 = sub_22C259E4C();
  v35(v34, v14, v30);
  LODWORD(v14) = sub_22C26E674();
  v36 = sub_22C26E654();
  v37 = sub_22C25A4A0();
  type metadata accessor for TranscriptProtoStatementID(v37);
  sub_22C25A5EC();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v38 = sub_22BE18944();
  v39(v38);
  *v12 = v14;
  *(v12 + 8) = v36;
  *(v12 + 16) = v11;
  v40 = sub_22BE360A0();
  v43 = sub_22C259E00(v40, v41, v42);
  type metadata accessor for UserTurnStarted(v43);
  sub_22C25A374();
  v44 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  sub_22C259804();
  sub_22BE19DC4(v45, v46, v47, v48);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE25C08();
  swift_storeEnumTagMultiPayload();
  v49 = sub_22BE22B8C();
  sub_22BE19DC4(v49, v50, v51, v44);
  sub_22BE1AB1C();
  sub_22BE2343C();
  v52 = sub_22BE29370();
  sub_22BE3B620(v52, a10);
  sub_22C2597F4();
  sub_22BE19DC4(v53, v54, v55, v56);
  v57 = (v75 + *(v30 + 24));
  v59 = *v57;
  v58 = v57[1];
  sub_22BE22814();

  sub_22C1B2294();
  if (v10)
  {

    sub_22BE336C4();
    sub_22BE1AE58();
    sub_22BE233E8(a10, &qword_27D90E4D8, &qword_22C2B5DB0);
    sub_22BE233E8(v12, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  else
  {
    type metadata accessor for TranscriptProtoUserTurnStarted(0);
    sub_22C25A658();
    sub_22BE1A140();
    sub_22BE19DC4(v60, v61, v62, v63);
    sub_22C25976C();
    sub_22BE19DC4(v64, v65, v66, v67);
    type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
    sub_22BE1A140();
    sub_22BE19DC4(v68, v69, v70, v71);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE336C4();
    sub_22BE1AE58();
    sub_22BE2343C();
    sub_22BE2343C();
    *v74 = v59;
    v74[1] = v58;
    sub_22BE2343C();
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoSpeechPartialResult.init(handwritten:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  sub_22C1C36F4();
  v6 = v5;
  type metadata accessor for TranscriptProtoSpeechPartialResult(0);
  sub_22C25A67C();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v6;
}

void TranscriptProtoRequest.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C25A6AC();
  v92 = v12;
  v13 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE35C94(v15, v86);
  v16 = sub_22BE5CE4C(&qword_27D90E528, &unk_22C2CC870);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE20310(v18, v87);
  v19 = sub_22BE5CE4C(&qword_27D90E538, &unk_22C2AE4E0);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1BCE8(v21, v88);
  v22 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v22);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE19668();
  v24 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  sub_22BE19448(v24);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE19E64();
  v26 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  sub_22BE19448(v26);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE234F4();
  v28 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v28);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B01C();
  v30 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE19448(v30);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A8B4();
  v32 = sub_22BE5CE4C(&qword_27D90E558, &unk_22C2AE4D0);
  sub_22BE19448(v32);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  v34 = sub_22BE46DE8();
  v35 = type metadata accessor for RequestContent(v34);
  v36 = sub_22BE19448(v35);
  MEMORY[0x28223BE20](v36);
  sub_22BE188B0();
  v37 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  sub_22BE19448(v37);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE25CD0();
  sub_22BE35EE0();
  v39 = sub_22BE191C0();
  sub_22BE1AA68(v39, v40);
  TranscriptProtoRequestContent.init(handwritten:)();
  if (a10)
  {
    sub_22BE1BBC8();
    sub_22BE1AE58();
  }

  else
  {
    v41 = type metadata accessor for TranscriptProtoRequestContent(0);
    v42 = sub_22BE3C530();
    v45 = sub_22C18F17C(v42, v43, v44, v41);
    v46 = type metadata accessor for Request(v45);
    v47 = *(v11 + v46[5]);
    sub_22BE22814();
    sub_22C25AD7C();
    sub_22C107B14();
    sub_22BE22814();
    sub_22C26E1D4();
    sub_22BE3E950(v10);
    v90 = v47;
    if (v48)
    {
      sub_22BE233E8(v10, &qword_27D9082F0, &qword_22C27AB00);
      v89 = 0;
      v91 = 0;
    }

    else
    {
      v89 = sub_22C26E184();
      v91 = v49;
      sub_22BE1BC24();
      v50 = sub_22BE3EA80();
      v51(v50);
    }

    v52 = *(v11 + v46[8] + 16);
    v53 = sub_22BE31038();
    sub_22BE3820C(v53, v54, v52);
    v55 = sub_22BE31038();
    sub_22BE3943C(v55, v56, v52, v57);
    sub_22BE22814();
    sub_22C1B2294();
    v58 = *(v11 + v46[10] + 8);

    v59 = sub_22BE1804C();
    sub_22C107CD4(v59, v60, v61);
    sub_22BE22814();
    sub_22C107D88();
    type metadata accessor for TranscriptProtoRequest(0);
    sub_22C25A530();
    sub_22BE1A140();
    sub_22BE19DC4(v62, v63, v64, v41);
    type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
    sub_22BE1A140();
    sub_22BE19DC4(v65, v66, v67, v68);
    v69 = &v92[*(v58 + 28)];
    type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
    sub_22BE1A140();
    sub_22BE19DC4(v70, v71, v72, v73);
    type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
    sub_22BE1A140();
    sub_22BE19DC4(v74, v75, v76, v77);
    type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
    sub_22BE1A140();
    sub_22BE19DC4(v78, v79, v80, v81);
    type metadata accessor for TranscriptProtoDateTimeContext(0);
    sub_22BE1A140();
    sub_22BE19DC4(v82, v83, v84, v85);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1BBC8();
    sub_22BE1AE58();
    sub_22BE2343C();
    *v92 = v90;
    sub_22BE2343C();
    *v69 = v89;
    v69[1] = v91;
    sub_22BE2343C();
    sub_22BE2343C();
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

void TranscriptProtoPlan.init(handwritten:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v22 = *a1;
  v5 = a1[3];
  v20 = a1[2];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *(a1 + 56);

  sub_22C1BFAF0(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
  if (v2)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v18 = v17;
    *(a2 + 56) = 6;
    type metadata accessor for TranscriptProtoPlan(0);

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

    *a2 = v22;
    *(a2 + 8) = v4;
    *(a2 + 16) = v21;
    *(a2 + 24) = v5;
    *(a2 + 32) = v18;
    *(a2 + 40) = v6;
    *(a2 + 48) = v7;
    *(a2 + 56) = v8 + 1;
  }
}

void TranscriptProtoRecoverableError.init(handwritten:)()
{
  sub_22BE19130();
  v7 = sub_22BE1B254();
  v8 = type metadata accessor for Session.PlanGenerationError(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE374E4();
  v12 = type metadata accessor for Session.RecoverableError(v11);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE28FD8();
  v14 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v15);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v16);
  sub_22BE2EDB8();
  v17 = sub_22BE431F0();
  sub_22BE1AA68(v17, v6);
  v18 = sub_22C259FB8();
  sub_22BE3B620(v18, v2);
  v19 = sub_22BE29370();
  sub_22BE1AA68(v19, v4);
  TranscriptProtoPlanGenerationError.init(handwritten:)();
  if (v1)
  {
    sub_22C259B00();
    sub_22BE1AE58();
    sub_22C259A50();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C259A50();
    sub_22BE1AE58();
    sub_22BE3B620(v5, v3);
    v20 = sub_22BE38960();
    v23 = sub_22C18F17C(v20, v21, v22, v14);
    type metadata accessor for TranscriptProtoRecoverableError(v23);
    sub_22BE48874();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C259B00();
    sub_22BE1AE58();
    sub_22BE233E8(v0, &qword_27D90EA08, &qword_22C297000);
    v24 = sub_22BE39EAC();
    sub_22BE3B620(v24, v25);
    v26 = sub_22BE2500C();
    sub_22BE19DC4(v26, v27, v28, v14);
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoAction.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  sub_22C25A50C();
  v242 = v24;
  v26 = sub_22C25A344(v25);
  v261 = type metadata accessor for TranscriptProtoPromptSelection(v26);
  sub_22BE18000();
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  sub_22BE18950(v28);
  v260 = sub_22C26F7C4();
  v29 = sub_22BE17A18(v260);
  v258 = v30;
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v31);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  sub_22BE190A8(v33);
  v34 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  v35 = sub_22BE19448(v34);
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v36);
  sub_22BE3173C(v37, v38, v39, v40, v41, v42, v43, v44, v225);
  v45 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  sub_22BE19448(v45);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE1A174();
  sub_22BE18950(v47);
  v48 = sub_22C272594();
  v49 = sub_22BE18910(v48, &a12);
  MEMORY[0x28223BE20](v49);
  sub_22BE17A44();
  sub_22BE183BC();
  sub_22C272874();
  sub_22BE179D8();
  v257 = v50;
  MEMORY[0x28223BE20](v51);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v52);
  v53 = sub_22BE39EE8();
  v54 = type metadata accessor for TranscriptProtoToolParameterValueEnum(v53);
  v55 = sub_22BE290A0(v54, &a10);
  MEMORY[0x28223BE20](v55);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v56);
  sub_22BE19E94();
  v58 = sub_22BE18950(v57);
  v59 = type metadata accessor for ToolParameterValue(v58);
  v60 = sub_22BE19448(v59);
  MEMORY[0x28223BE20](v60);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v61);
  sub_22C259824(v62, v63, v64, v65, v66, v67, v68, v69, v226);
  v70 = sub_22BE5CE4C(&qword_27D90E698, &unk_22C2AE520);
  sub_22BE19448(v70);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v71);
  sub_22BE1A174();
  v73 = sub_22BE18950(v72);
  type metadata accessor for TranscriptProtoActionParameterValue(v73);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v74);
  sub_22BE29178(v75, v227);
  MEMORY[0x28223BE20](v76);
  sub_22BE19E94();
  v78 = sub_22BE18950(v77);
  v79 = type metadata accessor for Action.ParameterValue(v78);
  v80 = sub_22BE18910(v79, &v260);
  v252 = v81;
  MEMORY[0x28223BE20](v80);
  sub_22BE17B98();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v82);
  sub_22BE355FC(v83, v84, v85, v86, v87, v88, v89, v90, v228);
  v91 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v91);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v92);
  sub_22BE1A174();
  sub_22BE18950(v93);
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v94);
  sub_22BE2379C();
  v95 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v95);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v96);
  sub_22BE2C64C();
  sub_22C259D90();
  sub_22C25A1E8();
  v97();
  v98 = sub_22C26E674();
  v99 = sub_22C26E654();
  v100 = sub_22C25A628();
  v101 = type metadata accessor for TranscriptProtoStatementID(v100);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v102 = sub_22BE18944();
  v103(v102);
  *v21 = v98;
  *(v21 + 8) = v99;
  *(v21 + 16) = v20;
  v236 = v21;
  v104 = v263;
  sub_22BE187DC();
  v232 = v101;
  v108 = sub_22C18F17C(v105, v106, v107, v101);
  v109 = type metadata accessor for Action(v108);
  v110 = (v242 + v109[5]);
  v111 = v110[1];
  v231 = *v110;
  v230 = *(v242 + v109[6]);
  v229 = v109;
  v112 = *(v242 + v109[7]);
  sub_22BE5CE4C(&qword_27D915300, &qword_22C2CC8C0);
  v113 = sub_22C273D04();
  v251 = v112;
  sub_22BE18010();
  v116 = v115 & v114;
  sub_22C25A350();
  v237 = v117;
  sub_22C25AC64(v257 + 32);
  v250 = (v118 + 8);
  sub_22C25AC64(v258 + 32);
  v239 = v119;
  v243 = *MEMORY[0x277D1CAF0];
  v238 = (v120 + 8);
  sub_22C25A4F4(v121 + 64);
  v235 = v111;

  v122 = 0;
  v254 = v113;
  if (v116)
  {
    while (1)
    {
      v123 = __clz(__rbit64(v116));
      v124 = (v116 - 1) & v116;
LABEL_8:
      sub_22BE1AA68(*(v251 + 56) + *(v252 + 72) * (v123 | (v122 << 6)), v262);
      v130 = sub_22BE41FB4();
      sub_22BE1AA68(v130, v131);
      v132 = type metadata accessor for TranscriptProtoToolParameterValue(0);
      sub_22C259BD0();
      sub_22BE19DC4(v133, v134, v135, v136);
      sub_22BE1A140();
      sub_22BE19DC4(v137, v138, v139, v261);

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AA68(v104, v253);
      sub_22BE354D0();
      sub_22BE1AA68(v140, v141);
      sub_22BE33554();
      v142 = sub_22BE39EAC();
      v143(v142);
      sub_22BE33554();
      v144 = sub_22BE1B73C();
      v145(v144);
      v146 = a10;
      sub_22C272854();
      a10 = v146;
      if (v146)
      {
        break;
      }

      v256 = v124;
      v147 = *v250;
      v148 = sub_22BE261AC();
      v147(v148);
      v149 = sub_22BE27BA4();
      v147(v149);
      sub_22BE33554();
      v150 = sub_22BE260B8();
      v151(v150);
      sub_22BE37AE4();
      sub_22BE3B620(v247, v246);
      v152 = sub_22C259C20();
      sub_22BE19DC4(v152, v153, v154, v248);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22C259500();
      sub_22BE1AE58();
      sub_22BE233E8(v245, &qword_27D90F038, &qword_22C297100);
      v155 = sub_22BE2590C();
      sub_22BE3B620(v155, v156);
      v157 = sub_22C259724();
      sub_22BE19DC4(v157, v158, v159, v160);
      v161 = sub_22BE3C530();
      sub_22BE19DC4(v161, v162, v163, v132);
      v164 = v259;
      sub_22BE2343C();
      sub_22BE2ED7C();
      sub_22BE22814();
      sub_22BE22944();
      sub_22BE22814();
      v165 = sub_22BE1B010();
      sub_22BE1AB5C(v165, v166, v260);
      if (v183)
      {
        v167 = sub_22BE2590C();
        sub_22BE233E8(v167, v168, &unk_22C27FCA0);
        v169 = sub_22BE336E8();
        sub_22BE233E8(v169, v170, &unk_22C27FCA0);
        v171 = v261;
      }

      else
      {
        sub_22BE33554();
        v172 = sub_22BE3C5E4();
        v173(v172);
        v174 = *v239;
        v175 = sub_22BE25C08();
        v174(v175);
        v176 = sub_22BE194F8();
        v174(v176);
        sub_22BE33554();
        v177 = sub_22BE1AB74();
        if (v178(v177) == v243)
        {
          sub_22BE33554();
          v180 = v260;
          v181(v240, v260);
          v179 = *v240;
          v182 = v180;
        }

        else
        {
          sub_22C25A700();
          if (v183)
          {
            v179 = 0;
          }

          else
          {
            sub_22C25A700();
            if (!v183)
            {
              goto LABEL_33;
            }

            v179 = 1;
          }

          v182 = v260;
        }

        sub_22C25A700();
        if (v183)
        {
          v184 = 0;
        }

        else
        {
          v184 = 1;
        }

        *v241 = 0;
        *(v241 + 8) = 256;
        v171 = v261;
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v185 = *v238;
        v186 = sub_22BE406B8();
        v185(v186, v182);
        *v241 = v179;
        *(v241 + 8) = v184;
        *(v241 + 9) = 0;
        sub_22C259680();
        sub_22C108C10();
        sub_22BE3B620(v187, v188);
        sub_22BE233E8(v255, &qword_27D909088, &unk_22C27FCA0);
        v185(v249, v182);
        v164 = v259;
      }

      v189 = sub_22BE40694();
      sub_22BE19DC4(v189, v190, v191, v171);
      v104 = v263;
      sub_22BE1AE58();
      sub_22BE2343C();
      sub_22BE3B620(v164, v244);
      sub_22C25A870();
      sub_22BE1AE58();
      sub_22C259DA0();
      sub_22C25977C(v192);
      sub_22C25A8D0((*(v254 + 48) + 16 * v193));
      sub_22C25AC90();
      sub_22BE3B620(v244, v194 + v195 * v196);
      sub_22C25A500();
      if (v198)
      {
        goto LABEL_32;
      }

      *(v254 + 16) = v197;
      v116 = v256;
      if (!v256)
      {
        goto LABEL_3;
      }
    }

    sub_22C259500();
    sub_22BE1AE58();
    v222 = *v250;
    v223 = sub_22BE261AC();
    v222(v223);
    v224 = sub_22BE27BA4();
    v222(v224);
    sub_22BE1AE58();
    sub_22BE31278();
    sub_22BE1AE58();

    sub_22BE1AE58();

    sub_22BE360B0();
    sub_22BE1AE58();
    sub_22BE233E8(v236, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_29:
    sub_22BE3C298();
    sub_22BE18478();
  }

  else
  {
LABEL_3:
    v125 = v122;
    v126 = v237;
    while (1)
    {
      v122 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        break;
      }

      if (v122 >= v126)
      {
        v199 = v229[9];
        v200 = (v242 + v229[8]);
        v201 = *v200;
        v262 = v200[1];
        v263 = v201;
        v203 = *(v242 + v199);
        v202 = *(v242 + v199 + 8);
        v205 = *(v242 + v199 + 16);
        v204 = *(v242 + v199 + 24);
        v206 = *(v242 + v199 + 32);
        v207 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);

        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        *v233 = v203;
        *(v233 + 8) = v202;
        *(v233 + 24) = v205;
        *(v233 + 32) = v204;
        *(v233 + 16) = v206;
        v208 = sub_22BE2500C();
        v211 = sub_22C18F17C(v208, v209, v210, v207);
        type metadata accessor for TranscriptProtoAction(v211);
        sub_22BE46004();
        sub_22BE1A140();
        sub_22BE19DC4(v212, v213, v214, v232);
        v215 = (v234 + *(v202 + 28));
        v216 = (v234 + *(v202 + 32));
        sub_22BE3AE2C();
        sub_22BE19DC4(v217, v218, v219, v220);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22BE360B0();
        sub_22BE1AE58();
        sub_22BE2343C();
        *v215 = v231;
        v215[1] = v235;
        *v234 = v230;
        *(v234 + 8) = v254;
        v221 = v262;
        *v216 = v263;
        v216[1] = v221;
        sub_22BE2343C();
        goto LABEL_29;
      }

      sub_22C25AC58();
      if (v127)
      {
        sub_22BE29270();
        v124 = v129 & v128;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    sub_22C274004();
    __break(1u);
  }
}

void TranscriptProtoClientAction.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  sub_22BE3129C();
  v27 = sub_22C25A344(v26);
  type metadata accessor for TranscriptProtoShimParameters(v27);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  v140 = v29;
  sub_22BE183BC();
  v153 = sub_22C272594();
  sub_22BE179D8();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  sub_22BE18928();
  MEMORY[0x28223BE20](v33);
  sub_22BE4202C(v34, v35, v36, v37, v38, v39, v40, v41, v132);
  sub_22C272874();
  sub_22BE1A3D8();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v45);
  sub_22C2595B4();
  v46 = sub_22C26E684();
  v47 = sub_22BE18910(v46, &a16);
  MEMORY[0x28223BE20](v47);
  sub_22BE17A44();
  sub_22C259DB4(v48);
  v49 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v49);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE1A174();
  v52 = sub_22BE18950(v51);
  v135 = type metadata accessor for ClientAction(v52);
  v133 = *(v20 + v135[5]);
  v139 = v20;
  v53 = *(v20 + v135[6]);
  sub_22BE5CE4C(&qword_27D9155F0, &qword_22C2CC8C8);
  sub_22BE3D3E0();
  v143 = sub_22C273D04();
  sub_22C25A43C();
  v138 = v54;
  sub_22BE185B4();
  v57 = v56 & v55;
  sub_22C25A350();
  v137 = v58;
  v141 = (v43 + 8);
  v152 = v31;

  v59 = 0;
  if (v57)
  {
    do
    {
      sub_22C25ABE4();
      v147 = v57;
LABEL_8:
      v63 = v60 | (v59 << 6);
      v64 = *(v43 + 16);
      v64(v23, *(v53 + 56) + *(v43 + 72) * v63, v21);
      v65 = sub_22BE289D8();
      (v64)(v65);

      sub_22C272854();
      if (a10)
      {
        v126 = *v141;
        v127 = sub_22BE38FD8();
        v126(v127);

        v128 = sub_22BF6AC14();
        v126(v128);
        sub_22C25A640();

        sub_22BE287FC();
        sub_22BE1AE58();
        goto LABEL_24;
      }

      v66 = *v141;
      v67 = sub_22BE38FD8();
      v66(v67);
      v144 = *(v152 + 32);
      v144(v151, v22, v153);
      (v66)(v23, v21);
      sub_22C259F84();
      sub_22C25977C(v68);
      sub_22C25A8D0((*(v143 + 48) + 16 * v63));
      v144(v69 + *(v152 + 72) * v63, v151, v153);
      sub_22C25A500();
      if (v71)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

      *(v143 + 16) = v70;
      v57 = v147;
    }

    while (v147);
  }

  v61 = v59;
  while (1)
  {
    v59 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v59 >= v137)
    {
      break;
    }

    ++v61;
    if (*(v138 + 8 * v59))
    {
      sub_22BE4878C();
      v147 = v62;
      goto LABEL_8;
    }
  }

  v72 = (v139 + v135[7]);
  v73 = *v72;
  v74 = v72[1];
  v75 = (v139 + v135[8]);
  v76 = v75[1];
  v145 = v73;
  v146 = *v75;
  sub_22C1CF23C();
  v77 = sub_22BE3C968();
  v78(v77);
  v149 = v76;

  v148 = v74;

  v154 = sub_22C26E674();
  v79 = sub_22C26E654();
  v80 = sub_22C25A4A0();
  v81 = type metadata accessor for TranscriptProtoStatementID(v80);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v82 = sub_22BE1824C();
  v83(v82);
  *v136 = v154;
  *(v136 + 8) = v79;
  *(v136 + 16) = v22;
  v84 = sub_22BE3C530();
  v142 = v81;
  sub_22BE19DC4(v84, v85, v86, v81);
  v87 = *(v139 + v135[9]);
  sub_22BE5CE4C(&qword_27D9155F8, &unk_22C2CC8D0);
  sub_22BE3D3E0();
  sub_22C273D04();
  v88 = 0;
  sub_22C25A43C();
  v150 = v89;
  v155 = v90;
  sub_22BE18010();
  v93 = v92 & v91;
  v95 = (v94 + 63) >> 6;
  if ((v92 & v91) == 0)
  {
LABEL_14:
    v97 = v88;
    while (1)
    {
      v88 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_28;
      }

      if (v88 >= v95)
      {
        type metadata accessor for TranscriptProtoClientAction(0);
        sub_22BE1A140();
        sub_22BE19DC4(v119, v120, v121, v142);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22BE287FC();
        sub_22BE1AE58();
        sub_22C1CF148();
        *v134 = v123;
        *(v134 + 8) = v122;
        *&v124 = v145;
        *&v125 = v146;
        *(&v124 + 1) = v148;
        *(v134 + 16) = v143;
        *(&v125 + 1) = v149;
        *(v134 + 32) = v124;
        *(v134 + 48) = v125;
        sub_22C1CEFC8();
        sub_22BE2343C();
        *(v134 + 24) = v155;
        goto LABEL_24;
      }

      ++v97;
      if (*(v150 + 8 * v88))
      {
        sub_22BE29270();
        v93 = v99 & v98;
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
    sub_22BE37764();
LABEL_19:
    v100 = v96 | (v88 << 6);
    v101 = (*(v87 + 48) + 16 * v100);
    v102 = *v101;
    v103 = v101[1];
    v104 = *(*(v87 + 56) + 8 * v100);
    swift_bridgeObjectRetain_n();

    sub_22C1C4458(v104, v105, v106, v107, v108, v109, v110, v111, v133, v134);
    if (a10)
    {
      break;
    }

    v113 = v112;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

    *v140 = v113;
    sub_22BE270BC();
    sub_22C25977C(v114);
    v115 = (*(v155 + 48) + 16 * v100);
    *v115 = v102;
    v115[1] = v103;
    v116 = sub_22BE19EBC();
    sub_22BE3B620(v116, v117);
    sub_22C25AB9C();
    if (v71)
    {
      goto LABEL_30;
    }

    *(v155 + 16) = v118;
    if (!v93)
    {
      goto LABEL_14;
    }
  }

  sub_22C25A640();

  sub_22BE287FC();
  sub_22BE1AE58();
  v129 = sub_22C1CEFC8();
  sub_22BE233E8(v129, v130, v131);
LABEL_24:
  sub_22BE3C298();
  sub_22BE18478();
}

void TranscriptProtoVariableStep.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A430();
  v3 = v2;
  sub_22C26E684();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v4);
  sub_22BE2379C();
  v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE22BFC();
  type metadata accessor for VariableStep(v7);

  sub_22C1C241C(v8, v9, v10, v11, v12, v13, v14, v15, v32, v34);
  if (v1)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A068();
    v36 = v16;
    v17 = sub_22BE1A8C4();
    v18(v17);
    v35 = sub_22C26E674();
    v19 = sub_22C26E654();
    v33 = v20;
    type metadata accessor for TranscriptProtoStatementID(0);
    sub_22C25A840();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v21 = sub_22BE1B73C();
    v22(v21);
    *v0 = v35;
    *(v0 + 8) = v19;
    *(v0 + 16) = v33;
    v23 = sub_22C259724();
    v27 = sub_22C18F17C(v23, v24, v25, v26);
    type metadata accessor for TranscriptProtoVariableStep(v27);
    sub_22BE32EE0();
    sub_22BE3A034(v28, v29, v30, v31);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE379D8();
    sub_22BE1AE58();
    *v3 = v36;
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoSessionError.init(handwritten:)()
{
  sub_22BE19460();
  sub_22C25A8F4(v5);
  sub_22C26E5D4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE28A70(v7, v56);
  MEMORY[0x28223BE20](v8);
  sub_22C10887C(v9, v10, v11, v12, v13, v14, v15, v16, v57);
  v17 = type metadata accessor for ExecutorError(0);
  v18 = sub_22BE19448(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22C2595B4();
  v21 = type metadata accessor for PlannerError(v20);
  v22 = sub_22BE19448(v21);
  MEMORY[0x28223BE20](v22);
  sub_22BE25544();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE2558C();
  v25 = type metadata accessor for SessionCoordinatorError(v24);
  v26 = sub_22BE19448(v25);
  MEMORY[0x28223BE20](v26);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v27);
  v28 = sub_22BE39EE8();
  type metadata accessor for SessionError(v28);
  sub_22BE18000();
  MEMORY[0x28223BE20](v29);
  v30 = sub_22BE1AD20();
  v31 = type metadata accessor for TranscriptProtoSessionErrorEnum(v30);
  sub_22BE18000();
  MEMORY[0x28223BE20](v32);
  sub_22BE18DFC();
  v33 = sub_22BE1A6BC();
  sub_22BE1AA68(v33, v34);
  sub_22BE2BA80();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v45 = sub_22BE44744();
      sub_22BE3B620(v45, v3);
      v46 = sub_22C1088AC();
      sub_22BE1AA68(v46, v2);
      sub_22C25A08C();
      TranscriptProtoSessionCoordinatorError.init(handwritten:)();
      goto LABEL_6;
    case 2u:
      v41 = sub_22BE44744();
      sub_22BE3B620(v41, v1);
      v42 = sub_22BE385E4();
      sub_22BE1AA68(v42, v0);
      sub_22BE362B8();
      TranscriptProtoPlannerError.init(handwritten:)();
      sub_22BE379D8();
      goto LABEL_6;
    case 3u:
      v43 = sub_22BE44744();
      sub_22BE3B620(v43, v4);
      v44 = sub_22C259E7C();
      sub_22BE1AA68(v44, v58);
      TranscriptProtoExecutorError.init(handwritten:)();
      sub_22BE20118();
LABEL_6:
      sub_22BE1AE58();
      break;
    default:
      v35 = sub_22BE3EA80();
      v36(v35);
      sub_22BE3C6EC();
      v37 = sub_22BE194F8();
      v38(v37);
      TranscriptProtoIntelligenceFlowError.init(handwritten:)();
      v39 = sub_22BE291B0();
      v40(v39);
      break;
  }

  sub_22BE232C8();
  swift_storeEnumTagMultiPayload();
  v47 = sub_22BE38960();
  v50 = sub_22C18F17C(v47, v48, v49, v31);
  type metadata accessor for TranscriptProtoSessionError(v50);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE233E8(v59, &qword_27D90E7E8, &qword_22C2AE580);
  v51 = sub_22C259E5C();
  sub_22BE3B620(v51, v52);
  v53 = sub_22BE2500C();
  sub_22BE19DC4(v53, v54, v55, v31);
  sub_22BE1AABC();
}

void TranscriptProtoQueryStepResults.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25AA20();
  v5 = v4;
  sub_22C26E684();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v6);
  sub_22BE2379C();
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();

  v10 = sub_22C1EEB74(v9);
  if (v1)
  {
    sub_22BE47E28();
    sub_22BE1AE58();
  }

  else
  {
    v29 = v10;

    type metadata accessor for QueryStepResults(0);
    sub_22C25ADA0();
    v11(v0);
    v28 = sub_22C26E674();
    v12 = v5;
    v13 = sub_22C26E654();
    v27 = v14;
    v15 = type metadata accessor for TranscriptProtoStatementID(0);
    sub_22C25A4E8();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v16 = sub_22BE1B73C();
    v17(v16);
    *v2 = v28;
    *(v2 + 8) = v13;
    *(v2 + 16) = v27;
    v18 = sub_22BE22B8C();
    sub_22BE19DC4(v18, v19, v20, v15);
    v21 = sub_22C26E184();
    v22 = sub_22C25A4A0();
    type metadata accessor for TranscriptProtoQueryStepResults(v22);
    sub_22C259860();
    sub_22BE19DC4(v23, v24, v25, v26);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE47E28();
    sub_22BE1AE58();
    *v12 = v29;
    sub_22BE2343C();
    v12[1] = v21;
    v12[2] = v3;
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoActionResolverRequest.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A430();
  v67 = v5;
  v6 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE46DE8();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v8);
  sub_22BE2379C();
  v9 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  v11 = sub_22BE5CE4C(&qword_27D90ECF8, &qword_22C2970B0);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE25334();
  type metadata accessor for ActionResolverRequest(v13);
  sub_22C25A694();

  sub_22C25ACCC();
  TranscriptProtoParameterSet.init(handwritten:)(v14, v15, v16, v17, v18, v19, v20, v21, v56, v58);
  if (v1)
  {
    sub_22BE2943C();
    sub_22BE1AE58();
  }

  else
  {
    v66 = v0;
    v22 = type metadata accessor for TranscriptProtoParameterSet(0);
    sub_22BE25FFC();
    sub_22BE19DC4(v23, v24, v25, v26);
    sub_22C1EE678(*(v2 + v4[6]));
    v65 = *(v2 + v4[8]);
    v62 = v22;
    sub_22BE29400();
    v64 = v27;
    v28 = sub_22BE1A8C4();
    v29(v28);
    v63 = sub_22C26E674();
    v30 = sub_22C26E654();
    v57 = v31;
    v59 = v30;
    v61 = type metadata accessor for TranscriptProtoStatementID(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v32 = sub_22BE3E8FC();
    v33(v32);
    *v3 = v63;
    *(v3 + 8) = v59;
    *(v3 + 16) = v57;
    v34 = sub_22C25974C();
    sub_22BE19DC4(v34, v35, v36, v61);
    v37 = v4[10];
    LOBYTE(v63) = *(v2 + v4[9]);
    v38 = *(v2 + v37);
    v39 = *(v2 + v37 + 8);
    v40 = *(v2 + v37 + 24);
    v60 = *(v2 + v37 + 16);
    LOBYTE(v57) = *(v2 + v37 + 32);
    v41 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v66 = v38;
    *(v66 + 8) = v39;
    *(v66 + 24) = v60;
    *(v66 + 32) = v40;
    *(v66 + 16) = v57;
    v42 = sub_22BE3C530();
    v45 = sub_22C18F17C(v42, v43, v44, v41);
    type metadata accessor for TranscriptProtoActionResolverRequest(v45);
    sub_22BE1A140();
    sub_22BE19DC4(v46, v47, v48, v62);
    sub_22BE1A140();
    sub_22BE19DC4(v49, v50, v51, v61);
    sub_22C259860();
    sub_22BE19DC4(v52, v53, v54, v55);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE2943C();
    sub_22BE1AE58();
    sub_22BE2343C();
    *v67 = v64;
    *(v67 + 8) = v65;
    sub_22BE2343C();
    *(v67 + 9) = v63;
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoContextRetrieved.init(handwritten:)(void *a1@<X8>)
{
  type metadata accessor for TranscriptProtoContextRetrieved(0);
  sub_22C25A67C();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v3 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v3;

  sub_22C1C4730(v4, v5, v6, v7, v8, v9, v10, v11, v23, v25);
  if (v1)
  {

    sub_22BE3AE5C();
    sub_22BE1AE58();
  }

  else
  {
    *a1 = v12;

    sub_22C1C4730(v13, v14, v15, v16, v17, v18, v19, v20, v24, v26);
    v22 = v21;

    a1[1] = v22;
  }
}

void TranscriptProtoToolRetrievalResponse.init(handwritten:)(uint64_t *a1)
{
  sub_22BE25DC4();
  v5 = sub_22C271784();
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v7 = sub_22BE5CE4C(&qword_27D909060, &qword_22C27FC88);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE29178(v9, v58);
  MEMORY[0x28223BE20](v10);
  sub_22C259B68();
  MEMORY[0x28223BE20](v11);
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v12);
  sub_22C259BC0();
  v13 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v14 = sub_22BE17A18(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE197B8();
  v15 = a1[1];
  v64 = *a1;
  v16 = a1[3];
  sub_22BE417A8(a1[2]);
  v17 = *(a1 + 8);
  v18 = a1[6];
  v19 = a1[5];

  sub_22C1BF26C(v20, v21, v22, v23, v24, v25, v26, v27, v59, v60);
  if (v74)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v68 = v1;
    v75 = v2;
    v28 = *(v18 + 16);
    v29 = MEMORY[0x277D84F90];
    if (v28)
    {
      v61 = v16;
      v62 = v15;
      v76 = MEMORY[0x277D84F90];
      sub_22C25A930();
      sub_22BE70D4C(v30, v31, v32);
      v29 = v76;
      v33 = sub_22BE308D0();
      v67 = v18 + 64;
      v65 = v18;
      v66 = v19;
      while ((v33 & 0x8000000000000000) == 0)
      {
        sub_22C25A46C();
        if (v33 >= v35)
        {
          break;
        }

        if (((*(v67 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_15;
        }

        if (*(v18 + 36) != v34)
        {
          goto LABEL_16;
        }

        v70 = v28;
        v71 = *(v7 + 48);
        v36 = *(v18 + 48);
        v37 = sub_22C272984();
        sub_22BE179D8();
        v73 = v38;
        (*(v39 + 16))(v68, v36 + *(v39 + 72) * v33, v37);
        sub_22C2728E4();
        sub_22C259488();
        v41 = v40;
        sub_22BE3C6EC();
        v42(v68 + v71);
        (*(v73 + 32))(v75, v68, v37);
        (*(v41 + 32))(v75 + *(v7 + 48), v68 + v71, v19);
        sub_22BE22814();
        v72 = *(v7 + 48);
        sub_22BE22814();
        sub_22C271774();
        sub_22BE190E4();
        v43 = sub_22BE1AEE4();
        v44(v43);
        (*(v41 + 8))(v69 + v72, v19);
        ContextProtoToolRetrievalType.init(handwritten:)();
        v45 = sub_22BE25C94();
        sub_22BE233E8(v45, v46, &qword_22C27FC88);
        v48 = *(v76 + 16);
        v47 = *(v76 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_22BE1AAE4(v47);
          sub_22BE39E18();
          sub_22BE70D4C(v54, v55, v56);
        }

        *(v76 + 16) = v48 + 1;
        sub_22BE25AD8();
        sub_22BE46DDC();
        v49 = sub_22BE44744();
        sub_22BE3B620(v49, v50);
        v18 = v65;
        v51 = sub_22C18DDA4();
        v33 = v51;
        --v28;
        v19 = v66;
        if (v70 == 1)
        {
          sub_22BE2FC64(v51, v52, v53 & 1);
          v15 = v62;
          v16 = v61;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
    }

    else
    {
LABEL_13:
      type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

      *v3 = v64;
      *(v3 + 8) = v15;
      *(v3 + 16) = v63;
      *(v3 + 24) = v16;
      *(v3 + 32) = v17;
      sub_22C1CF148();
      *(v3 + 40) = v57;
      *(v3 + 48) = v29;
    }
  }
}

void TranscriptProtoActionCancellation.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE3129C();
  v2 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v2);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE3FE6C(v4);
  sub_22C26E684();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE2379C();
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22BE32C08();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C2595B4();
  type metadata accessor for ActionCancellation(v9);
  v10 = sub_22BE48FCC();
  v11(v10);
  v12 = sub_22C26E674();
  v13 = sub_22C26E654();
  v14 = sub_22C25A4AC();
  v15 = type metadata accessor for TranscriptProtoStatementID(v14);
  sub_22C25A5EC();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v16 = sub_22BE336E8();
  v17(v16);
  *v1 = v12;
  *(v1 + 8) = v13;
  *(v1 + 16) = v0;
  v18 = sub_22BE360A0();
  sub_22BE19DC4(v18, v19, v20, v15);
  sub_22C25A018();
  sub_22BE22814();
  sub_22C259FDC();
  sub_22BE46914();
  v21 = sub_22BE38960();
  v24 = sub_22C18F17C(v21, v22, v23, v15);
  type metadata accessor for TranscriptProtoActionCancellation(v24);
  sub_22BE33FC0();
  sub_22C259860();
  sub_22C25AD2C(v25, v26, v27, v28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9848();
  sub_22BE1AE58();
  sub_22BE3C968();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoStatementResult.init(handwritten:)()
{
  sub_22BE19130();
  v4 = v3;
  v94 = v5;
  v6 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  sub_22C259DF0(v8);
  v92 = sub_22C26E684();
  sub_22BE179D8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v91 = v12;
  v13 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  v93 = v15;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE19490();
  v96 = v17;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v18);
  sub_22BE19E94();
  v95 = v19;
  v20 = sub_22BE183BC();
  v21 = type metadata accessor for StatementResultPayload(v20);
  v22 = sub_22BE19448(v21);
  MEMORY[0x28223BE20](v22);
  sub_22BE188B0();
  v23 = sub_22BE5CE4C(&qword_27D90E730, &qword_22C2B5D20);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22C259738(v25);
  sub_22C26E1D4();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v26);
  sub_22BE2379C();
  v27 = sub_22BE33FCC();
  v29 = sub_22BE5CE4C(v27, v28);
  sub_22BE19448(v29);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1B01C();
  sub_22BE25C94();
  sub_22BE22814();
  v31 = sub_22BE23E90();
  v33 = 0;
  if (sub_22BE1AEA8(v31, v32, v1) != 1)
  {
    sub_22C18F338();
    v34 = sub_22BE27A44();
    v35(v34);
    sub_22C26E184();
    v33 = v36;
    v37 = sub_22BE1B73C();
    v38(v37);
  }

  v39 = type metadata accessor for StatementResult(0);
  sub_22BE1AA68(v4 + v39[5], v2);
  TranscriptProtoStatementResultPayload.init(handwritten:)(v2);
  if (v0)
  {
    sub_22C2598D0();
    sub_22BE1AE58();
  }

  else
  {
    v89 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
    sub_22BE187DC();
    sub_22BE19DC4(v40, v41, v42, v43);
    v90 = *(v10 + 16);
    v90(v91, v4 + v39[6], v92);
    v87 = sub_22C26E674();
    v44 = sub_22C26E654();
    v45 = sub_22C25A628();
    v46 = type metadata accessor for TranscriptProtoStatementID(v45);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE417A8(*(v10 + 8));
    v47 = sub_22BE18240();
    v48(v47);
    *v95 = v87;
    *(v95 + 8) = v44;
    *(v95 + 16) = v33;
    v49 = sub_22BE2500C();
    sub_22BE19DC4(v49, v50, v51, v46);
    v90(v91, v4 + v39[7], v92);
    v88 = sub_22C26E674();
    v52 = sub_22C26E654();
    v54 = v53;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE18240();
    sub_22C1CF2AC();
    v55();
    *v96 = v88;
    *(v96 + 8) = v52;
    *(v96 + 16) = v54;
    v56 = sub_22BE2500C();
    sub_22BE19DC4(v56, v57, v58, v46);
    v90(v91, v4 + v39[8], v92);
    LODWORD(v90) = sub_22C26E674();
    v59 = sub_22C26E654();
    v61 = v60;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE18240();
    sub_22C1CF2AC();
    v62();
    *v93 = v90;
    *(v93 + 8) = v59;
    *(v93 + 16) = v61;
    v63 = sub_22BE3C530();
    sub_22BE19DC4(v63, v64, v65, v46);
    sub_22BE22814();
    sub_22C1072AC();
    type metadata accessor for TranscriptProtoStatementResult(0);
    sub_22C25A7AC();
    sub_22BE1A140();
    sub_22BE19DC4(v66, v67, v68, v89);
    sub_22C25975C();
    sub_22BE19DC4(v69, v70, v71, v72);
    sub_22C25975C();
    sub_22BE19DC4(v73, v74, v75, v76);
    sub_22C25975C();
    sub_22BE19DC4(v77, v78, v79, v80);
    type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
    sub_22BE1A140();
    sub_22BE19DC4(v81, v82, v83, v84);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C2598D0();
    sub_22BE1AE58();
    sub_22C1CF148();
    *v94 = v86;
    v94[1] = v85;
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoExternalAgentRequestRewriteMetadata.init(handwritten:)()
{
  sub_22BE48AF0();
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

  *v0 = v3;
  v0[1] = v2;
  v0[2] = v4;
}

void TranscriptProtoToolResolution.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C25A50C();
  sub_22C25A8F4(v13);
  sub_22C26E684();
  sub_22BE179D8();
  v82 = v15;
  v84 = v14;
  MEMORY[0x28223BE20](v14);
  sub_22BE294E0();
  v16 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE29178(v18, v76);
  MEMORY[0x28223BE20](v19);
  sub_22BE22D7C(v20, v21, v22, v23, v24, v25, v26, v27, v77);
  v86 = sub_22C272674();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v28);
  sub_22BE2F294();
  sub_22C272224();
  sub_22C259488();
  MEMORY[0x28223BE20](v29);
  sub_22BE2379C();
  v30 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  sub_22BE19448(v30);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A174();
  v32 = sub_22C259E4C();
  v33(v32, v11, v10);
  sub_22C2721F4();
  if (a10)
  {
    sub_22C2598E8();
    sub_22BE1AE58();
    v34 = sub_22BE1A8C4();
    v35(v34);
  }

  else
  {
    v36 = sub_22BE1A8C4();
    v37(v36);
    v38 = sub_22BE29264();
    v39(v38);
    v40 = sub_22BE2500C();
    v43 = sub_22C18F17C(v40, v41, v42, v86);
    v44 = type metadata accessor for ToolResolution(v43);
    v79 = *(v82 + 16);
    v80 = v44;
    v79(v12, v11 + *(v44 + 20), v84);
    v78 = sub_22C26E674();
    v45 = sub_22C26E654();
    v47 = v46;
    v48 = type metadata accessor for TranscriptProtoStatementID(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v83 = *(v82 + 8);
    v49 = sub_22BE33FCC();
    v50(v49);
    *v85 = v78;
    *(v85 + 8) = v45;
    *(v85 + 16) = v47;
    sub_22C2597C4();
    sub_22BE19DC4(v51, v52, v53, v54);
    v79(v12, v11 + *(v80 + 24), v84);
    v55 = sub_22C26E674();
    v56 = sub_22C26E654();
    v58 = v57;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v59 = sub_22BE33FCC();
    v83(v59);
    *v81 = v55;
    *(v81 + 8) = v56;
    *(v81 + 16) = v58;
    v60 = sub_22BE22B8C();
    sub_22BE19DC4(v60, v61, v62, v48);
    v63 = sub_22BE3D5C8();
    v67 = sub_22C18F17C(v63, v64, v65, v66);
    type metadata accessor for TranscriptProtoToolResolution(v67);
    sub_22C259804();
    sub_22BE19DC4(v68, v69, v70, v71);
    sub_22C259804();
    sub_22C25AE64(v72, v73, v74, v75);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C2598E8();
    sub_22BE1AE58();
    sub_22BE2343C();
    sub_22C25AAC4();
    sub_22BE2343C();
    sub_22C25AAC4();
    sub_22BE2343C();
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoUndoRedoRequest.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  v51 = v3;
  v4 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE3FE6C(v6);
  v53 = sub_22C26E684();
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v11 = v10;
  v12 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E94();
  v16 = v15;
  v17 = sub_22BE1B18C();
  v19 = sub_22BE5CE4C(v17, v18);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE19668();
  v21 = v1[1];
  v22 = sub_22C18F934(*v1);
  type metadata accessor for UndoRedoRequest(v22);
  sub_22C25A694();
  sub_22C25AA5C();
  sub_22BE22814();
  v23 = sub_22C26E1D4();
  v24 = sub_22BE1B010();
  v26 = sub_22BE1AEA8(v24, v25, v23);

  if (v26 == 1)
  {
    sub_22BE233E8(v0, &qword_27D9082F0, &qword_22C27AB00);
    v49 = 0;
    v50 = 0;
  }

  else
  {
    v27 = sub_22C26E184();
    v49 = v28;
    v50 = v27;
    sub_22BE1BC24();
    v29 = sub_22BE27A44();
    v30(v29);
  }

  v48 = *(v1 + *(v2 + 24));
  (*(v8 + 16))(v11, v1 + *(v2 + 28), v53);
  v31 = sub_22C26E674();
  v32 = sub_22C26E654();
  v33 = sub_22C25A4AC();
  v34 = type metadata accessor for TranscriptProtoStatementID(v33);
  sub_22C25A67C();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v35 = sub_22C259ED8();
  v36(v35);
  *v16 = v31;
  *(v16 + 8) = v32;
  *(v16 + 16) = v1;
  v37 = sub_22BE2500C();
  sub_22BE19DC4(v37, v38, v39, v34);
  sub_22BE22814();
  sub_22BE46914();
  type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  sub_22C25976C();
  sub_22BE19DC4(v40, v41, v42, v43);
  sub_22C25976C();
  sub_22BE19DC4(v44, v45, v46, v47);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9A74();
  sub_22BE1AE58();
  *v51 = v52;
  *(v51 + 8) = v21;
  *(v51 + 24) = v50;
  *(v51 + 32) = v49;
  *(v51 + 16) = v48;
  sub_22BE2EDC8();
  sub_22BE2343C();
  sub_22BE2EDC8();
  sub_22BE2343C();
  sub_22BE3C298();
  sub_22BE18478();
}

void TranscriptProtoClientUndoRedoRequest.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259E88();
  v5 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE23A90(v7);
  v34 = sub_22C26E684();
  sub_22BE17C68();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE18DFC();
  v11 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE28A70(v13, v33);
  MEMORY[0x28223BE20](v14);
  sub_22BE32374();
  v15 = sub_22C26E184();
  v36 = v16;
  v37 = v15;
  v17 = type metadata accessor for ClientUndoRedoRequest(0);
  v35 = *(v1 + *(v17 + 20));
  (*(v9 + 16))(v2, v1 + *(v17 + 24), v34);
  v18 = sub_22C26E674();
  v19 = sub_22C26E654();
  v20 = sub_22C25A628();
  v21 = type metadata accessor for TranscriptProtoStatementID(v20);
  sub_22C25A5EC();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v9 + 8))(v2, v34);
  *v4 = v18;
  *(v4 + 8) = v19;
  *(v4 + 16) = v3;
  v22 = sub_22BE360A0();
  sub_22BE19DC4(v22, v23, v24, v21);
  sub_22BE22814();
  sub_22C259FC4();
  sub_22BE46914();
  type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  sub_22C259804();
  sub_22BE19DC4(v25, v26, v27, v28);
  sub_22C259804();
  sub_22BE19DC4(v29, v30, v31, v32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3E76C();
  sub_22BE1AE58();
  *v0 = v37;
  *(v0 + 8) = v36;
  *(v0 + 16) = v35;
  sub_22BE2343C();
  sub_22C18FCEC();
  sub_22BE2343C();
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoTypeConversionRequest.init(handwritten:)()
{
  sub_22BE19130();
  v74 = v4;
  sub_22BE4066C();
  sub_22C26E684();
  sub_22BE179D8();
  v66 = v6;
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v65 = v7;
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22C25984C(v10);
  v11 = sub_22C2725A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  sub_22BE28E74(v13);
  v72 = sub_22C2728A4();
  sub_22BE179D8();
  v71 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  v70 = v16;
  v17 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1A174();
  sub_22BE183BC();
  sub_22C272594();
  sub_22BE41130();
  v69 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BE18DFC();
  sub_22C272874();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v21);
  sub_22BE2379C();
  v22 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v22);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1A174();
  v68 = v24;
  v25 = sub_22C259C00();
  v28 = sub_22C259E00(v25, v26, v27);
  type metadata accessor for TranscriptProtoTypeConversionRequest(v28);
  sub_22BE1A140();
  sub_22BE19DC4(v29, v30, v31, v11);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22C25976C();
  sub_22BE19DC4(v32, v33, v34, v35);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v36 = sub_22C259D90();
  v37(v36, v74, v3);
  sub_22C272854();
  if (v0)
  {
    sub_22BE3AEE0();
    sub_22BE1AE58();
    v38 = sub_22BE1B73C();
    v39(v38);
    sub_22BE1AE58();
  }

  else
  {
    v40 = sub_22BE1B73C();
    v41(v40);
    (*(v69 + 32))(v68, v1, v2);
    sub_22BE25FFC();
    sub_22BE19DC4(v42, v43, v44, v45);
    sub_22BE2343C();
    v46 = type metadata accessor for TypeConversionRequest(0);
    (*(v71 + 16))(v70, v74 + *(v46 + 20), v72);
    sub_22C272884();
    v47 = sub_22BE2684C();
    v48(v47);
    v49 = sub_22BE36658();
    v50(v49);
    v51 = sub_22C259724();
    sub_22BE19DC4(v51, v52, v53, v54);
    sub_22BE2343C();
    (*(v66 + 16))(v65, v74 + *(v46 + 24), v67);
    v73 = sub_22C26E674();
    v55 = sub_22C26E654();
    v57 = v56;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3AEE0();
    sub_22BE1AE58();
    v58 = sub_22BE37B20();
    v59(v58);
    *v64 = v73;
    *(v64 + 8) = v55;
    *(v64 + 16) = v57;
    v60 = sub_22C259724();
    sub_22BE19DC4(v60, v61, v62, v63);
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoTypeConversionResult.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C25A93C(v10);
  sub_22BE4066C();
  sub_22C26E684();
  sub_22BE179D8();
  v67 = v12;
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  sub_22BE3668C(v13);
  v14 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE417B4(v16);
  sub_22C272594();
  sub_22BE41130();
  MEMORY[0x28223BE20](v17);
  sub_22BE17CBC();
  sub_22C272874();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v18);
  sub_22BE2379C();
  v19 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A8B4();
  v21 = sub_22C259C00();
  v24 = sub_22C259E00(v21, v22, v23);
  type metadata accessor for TranscriptProtoTypeConversionResult(v24);
  v25 = sub_22C25AA2C();
  v26 = type metadata accessor for TranscriptProtoStatementID(v25);
  sub_22C25975C();
  sub_22BE19DC4(v27, v28, v29, v30);
  sub_22C25975C();
  sub_22BE19DC4(v31, v32, v33, v34);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259E94();
  sub_22BE25300();
  v35();
  sub_22C272854();
  if (v70)
  {
    sub_22C259AD0();
    sub_22BE1AE58();
    v36 = sub_22BE336E8();
    v37(v36);
    sub_22BE1B154();
    sub_22BE1AE58();
  }

  else
  {
    v38 = sub_22BE336E8();
    v39(v38);
    v40 = sub_22BE392D4();
    v41(v40);
    sub_22BE25FFC();
    sub_22BE19DC4(v42, v43, v44, v45);
    sub_22BE2BA80();
    sub_22BE2343C();
    v65 = type metadata accessor for TypeConversionResult(0);
    v46 = *(v67 + 16);
    v46(v66, a10 + *(v65 + 20), v69);
    v63 = sub_22C26E674();
    v47 = sub_22C26E654();
    v49 = v48;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v68 = *(v67 + 8);
    v50 = sub_22BE261AC();
    v51(v50);
    *v64 = v63;
    *(v64 + 8) = v47;
    *(v64 + 16) = v49;
    v52 = sub_22C25974C();
    sub_22BE19DC4(v52, v53, v54, v26);
    sub_22BE2343C();
    sub_22C25AD94();
    v46(v66, a10 + v55, v69);
    LODWORD(v47) = sub_22C26E674();
    v56 = sub_22C26E654();
    v58 = v57;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C259AD0();
    sub_22BE1AE58();
    v59 = sub_22BE261AC();
    v68(v59);
    *v64 = v47;
    *(v64 + 8) = v56;
    *(v64 + 16) = v58;
    v60 = sub_22C25974C();
    sub_22BE19DC4(v60, v61, v62, v26);
    sub_22BE2343C();
  }

  sub_22BE18478();
}

void TranscriptProtoQueryDecorationPrePlannerResult.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C18F3A4();
  v52 = v13;
  v14 = sub_22BE5CE4C(&qword_27D90F138, &unk_22C2AE7F0);
  sub_22BE19448(v14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE415D8(v16);
  v17 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v18);
  sub_22BE2379C();
  v19 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B01C();
  v21 = sub_22BE37EE0();
  v22(v21, v11, v17);
  v23 = sub_22C26E674();
  v24 = sub_22C26E654();
  v25 = sub_22BE32C3C();
  v26 = type metadata accessor for TranscriptProtoStatementID(v25);
  sub_22C25A4E8();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v27 = sub_22BE31038();
  v28(v27);
  *v12 = v23;
  *(v12 + 8) = v24;
  *(v12 + 16) = v10;
  v29 = v11;
  v30 = sub_22BE22B8C();
  v33 = sub_22C18F17C(v30, v31, v32, v26);
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(v33);
  v35 = *(DecorationPrePlannerResult + 24);
  v36 = (v11 + *(DecorationPrePlannerResult + 20));
  v37 = *v36;
  v38 = v36[1];
  LOBYTE(v36) = *(v29 + v35 + 8);
  v53 = *(v29 + v35);
  v54 = v36;

  TranscriptProtoQueryDecorationPrePlannerResultPayload.init(handwritten:)(&v53);
  if (a10)
  {
    sub_22BE310A4();
    sub_22BE1AE58();

    sub_22BE233E8(v12, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  else
  {
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
    v39 = sub_22C259724();
    v43 = sub_22C18F17C(v39, v40, v41, v42);
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v43);
    sub_22C25975C();
    sub_22BE19DC4(v44, v45, v46, v47);
    sub_22BE32EE0();
    sub_22BE19DC4(v48, v49, v50, v51);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE310A4();
    sub_22BE1AE58();
    sub_22BE2343C();
    *v52 = v37;
    v52[1] = v38;
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoExecutionPreconditionEvaluatorRequest.init(handwritten:)()
{
  sub_22BE19130();
  v3 = v2;
  v52 = v4;
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE48A8C(v6);
  v54 = sub_22C26E684();
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v10);
  sub_22C259BC0();
  v11 = type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(0);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE17CBC();
  v13 = sub_22BE5CE4C(&qword_27D90F1A8, &qword_22C297140);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B72C();
  sub_22C25A0E0();
  v15 = sub_22BE392D4();
  sub_22BE1AA68(v15, v16);
  v17 = sub_22C259EBC();
  TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest.init(handwritten:)(v17);
  if (v1)
  {
    sub_22C259900();
    sub_22BE1AE58();
LABEL_14:
    sub_22BE18478();
  }

  else
  {
    type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
    v18 = sub_22BE2500C();
    v50 = v19;
    v22 = sub_22C18F17C(v18, v20, v21, v19);
    v23 = *(v3 + *(type metadata accessor for ExecutionPreconditionEvaluatorRequest(v22) + 20));
    sub_22BE5CE4C(&qword_27D915600, &unk_22C2CC8E0);
    sub_22C273D04();
    v24 = 0;
    sub_22BE18010();
    sub_22C25A350();
    v51 = v26;
    v53 = v27;
    while (v25)
    {
      sub_22BE22BE8();
      v55 = v29;
LABEL_11:
      v32 = v28 | (v24 << 6);
      v33 = (*(v23 + 48) + 16 * v32);
      v34 = v33[1];
      v59 = *v33;
      v35 = v8[2];
      v35(v0, *(v23 + 56) + v8[9] * v32, v54);
      v36 = sub_22BE27A44();
      (v35)(v36);

      v58 = sub_22C26E674();
      v37 = sub_22C26E654();
      v56 = v38;
      v57 = v37;
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v39 = v8[1];
      v40 = sub_22BE261AC();
      v39(v40);
      *v34 = v58;
      *(v34 + 8) = v57;
      *(v34 + 16) = v56;
      v41 = sub_22BE36318();
      v39(v41);
      sub_22C259F84();
      sub_22C25977C(v42);
      v43 = (*(v53 + 48) + 16 * v32);
      *v43 = v59;
      v43[1] = v34;
      sub_22BE3B168();
      sub_22BE3B620(v34, v44);
      sub_22C25A500();
      if (v46)
      {
        goto LABEL_16;
      }

      *(v53 + 16) = v45;
      v25 = v55;
    }

    v30 = v24;
    while (1)
    {
      v24 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v24 >= v51)
      {
        type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
        sub_22C25A7AC();
        sub_22BE1A140();
        sub_22BE19DC4(v47, v48, v49, v50);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22C259900();
        sub_22BE1AE58();
        sub_22BE2343C();
        *v52 = v53;
        goto LABEL_14;
      }

      ++v30;
      if (*(v23 + 64 + 8 * v24))
      {
        sub_22BE4878C();
        v55 = v31;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void TranscriptProtoRequestAmendment.init(handwritten:)()
{
  sub_22BE19130();
  v5 = sub_22BE1B254();
  v6 = type metadata accessor for RequestContent(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE294E0();
  v8 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  v10 = sub_22C26E184();
  v11 = sub_22C25A788();
  type metadata accessor for RequestAmendment(v11);
  sub_22BE35EE0();
  sub_22BE1AA68(v1 + v12, v4);
  TranscriptProtoRequestContent.init(handwritten:)();
  if (v2)
  {
    sub_22BE35908();
    sub_22BE1AE58();
  }

  else
  {
    type metadata accessor for TranscriptProtoRequestContent(0);
    sub_22C2597F4();
    v17 = sub_22C18F17C(v13, v14, v15, v16);
    type metadata accessor for TranscriptProtoRequestAmendment(v17);
    sub_22C25976C();
    sub_22BE19DC4(v18, v19, v20, v21);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE35908();
    sub_22BE1AE58();
    *v0 = v10;
    v0[1] = v3;
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoIntermediateSystemResponse.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE308C4();
  v4 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A8B4();
  v6 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE23E58();
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  v10 = sub_22BE5CE4C(&qword_27D911F40, &qword_22C2B5CA8);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE2C64C();
  v12 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE234F4();
  sub_22C270044();
  sub_22C106164();
  if (v1)
  {
    sub_22C270074();
    sub_22BE18524();
    (*(v14 + 8))(v2);
  }

  else
  {
    v15 = sub_22C270034();
    v38 = v16;
    v39 = v15;
    v17 = sub_22C270064();
    v36 = v18;
    v37 = v17;
    sub_22C270004();
    sub_22BE46914();
    sub_22C26FF64();
    sub_22C26E1D4();
    sub_22BE23B00(v3);
    if (v19)
    {
      sub_22BE233E8(v3, &qword_27D9082F0, &qword_22C27AB00);
      v40 = 0;
      v35 = 0;
    }

    else
    {
      v40 = sub_22C26E184();
      v35 = v20;
      sub_22BE1BC24();
      v21 = sub_22BE2BA80();
      v22(v21);
    }

    v23 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
    type metadata accessor for TranscriptProtoResponseOutput(0);
    sub_22BE1A140();
    sub_22BE19DC4(v24, v25, v26, v27);
    v28 = (v0 + *(v23 + 24));
    type metadata accessor for TranscriptProtoStatementID(0);
    sub_22BE1A140();
    sub_22BE19DC4(v29, v30, v31, v32);
    v33 = (v0 + *(v23 + 32));
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C270074();
    sub_22BE18524();
    (*(v34 + 8))(v2);
    sub_22BE2343C();
    *v28 = v39;
    v28[1] = v38;
    *v0 = v37;
    v0[1] = v36;
    sub_22BE2343C();
    *v33 = v40;
    v33[1] = v35;
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoIntermediateSystemResponseRendered.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE308C4();
  v3 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE2C64C();
  v5 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE25CD0();
  v28 = sub_22C2701D4();
  v27 = sub_22C270224();
  v10 = v9;
  sub_22C2701E4();
  sub_22C25A08C();
  sub_22BE46914();
  sub_22C26FF64();
  v11 = sub_22C26E1D4();
  v12 = sub_22BE3C688();
  sub_22BE1AB5C(v12, v13, v11);
  if (v14)
  {
    sub_22BE233E8(v2, &qword_27D9082F0, &qword_22C27AB00);
    v15 = 0;
    v17 = 0;
  }

  else
  {
    v15 = sub_22C26E184();
    v17 = v16;
    sub_22BE1BC24();
    v18 = sub_22C259FF4();
    v19(v18);
  }

  v20 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v21, v22, v23, v24);
  v25 = (v0 + *(v20 + 28));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C270234();
  sub_22BE18524();
  (*(v26 + 8))(v1);
  *v0 = v28 & 1;
  *(v0 + 8) = v27;
  *(v0 + 16) = v10;
  sub_22BE2343C();
  *v25 = v15;
  v25[1] = v17;
  sub_22C18F0A4();
  sub_22BE18478();
}

void TranscriptProtoAgentPrimitiveAction.init(handwritten:)()
{
  sub_22BE19130();
  v3 = sub_22BE1B254();
  v4 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v3);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE1955C();
  v6 = sub_22BE5CE4C(&qword_27D90F248, &unk_22C2CC860);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25CD0();
  v9 = *v1;
  v8 = v1[1];
  type metadata accessor for AgentPrimitiveAction(0);
  sub_22BE3E784();
  v11 = sub_22C25A70C(v10);
  sub_22BE1AA68(v11, v12);

  sub_22C25A518();
  TranscriptProtoPrimitiveAction.init(handwritten:)();
  if (v2)
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
    v14 = sub_22BE3C530();
    v17 = sub_22C18F17C(v14, v15, v16, v13);
    type metadata accessor for TranscriptProtoAgentPrimitiveAction(v17);
    sub_22BE28D2C();
    sub_22BE19DC4(v18, v19, v20, v21);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C0E9A74();
    sub_22BE1AE58();
    *v0 = v9;
    v0[1] = v8;
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void LocaleSettings.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BE3C358();
  sub_22BE28CF0();
  v18 = sub_22C26E244();
  v19 = sub_22BE19448(v18);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE20324();
  MEMORY[0x28223BE20](v21);
  sub_22BE181E4();

  sub_22BE1B18C();
  sub_22C26E1E4();

  sub_22BE1B18C();
  sub_22C26E1E4();

  sub_22BE1B18C();
  sub_22C26E1E4();
  sub_22BE1B328();
  sub_22C26EC54();
  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE267B8();
}

void DeviceDetails.init(transcript:)()
{
  sub_22BE2BB34();
  v1 = sub_22BE3C4D0();
  v2 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(v1);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE18DFC();
  v4 = sub_22C26EA34();
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE294E0();
  type metadata accessor for TranscriptProtoDeviceDetails(0);

  sub_22C101398();
  if (v0)
  {
    sub_22BE26148();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C26EA14();
    sub_22C0E9830();
    sub_22BE1AE58();
    sub_22BF0AFB8();
    sub_22C26EA44();
    sub_22BE26148();
    sub_22BE1AE58();
  }

  sub_22BE36324();
  sub_22BEE93D4();
}

uint64_t DeviceDetails.DeviceType.init(transcript:)(unsigned int *a1)
{
  sub_22C26EA14();
  sub_22BE26148();
  return sub_22BE1AE58();
}

void TranscriptProtoDeviceDetails.init(handwritten:)()
{
  sub_22BE19460();
  v5 = v4;
  sub_22BE1A5E4();
  sub_22C26EA34();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE28FD8();
  v7 = sub_22BE5CE4C(&qword_27D90F0E8, &qword_22C2B5C90);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  sub_22C26EA54();
  sub_22C1CF16C();
  sub_22C26EA64();
  v9 = sub_22C26EA24();
  v10 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  sub_22C25A548();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v11 = sub_22BE191C0();
  v12(v11);
  *v1 = v9;
  v13 = sub_22BE22B8C();
  v16 = sub_22C18F17C(v13, v14, v15, v10);
  type metadata accessor for TranscriptProtoDeviceDetails(v16);
  sub_22C259804();
  sub_22C25ACD8(v17, v18, v19, v20);
  sub_22C26EA84();
  sub_22BE18524();
  (*(v21 + 8))(v5);
  *v0 = v2;
  v0[1] = v3;
  sub_22BE2343C();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init(handwritten:)()
{
  sub_22C259E88();
  v2 = sub_22C26EA24();
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26EA34();
  sub_22BE18524();
  result = (*(v3 + 8))(v1);
  *v0 = v2;
  return result;
}

uint64_t GenderSettings.Gender.init(transcript:)()
{
  sub_22C26EC14();
  sub_22BE18000();
  v0 = sub_22BE460A4();

  return v1(v0);
}

void GenderSettings.init(transcript:)()
{
  sub_22BE19460();
  sub_22C259C10(v3);
  v4 = sub_22C26EC14();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v8);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v9);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v10);
  sub_22BE2EDB8();
  v11 = *(v6 + 104);
  v11(v2, **(&unk_278725C58 + *v0), v4);
  v12 = *(v6 + 32);
  v13 = sub_22BE18240();
  v12(v13);
  v11(v1, **(&unk_278725C58 + v0[1]), v4);
  v14 = sub_22BE1B328();
  v12(v14);
  sub_22BE33560();
  sub_22C26EBF4();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoGender.init(handwritten:)()
{
  sub_22BE1B254();
  sub_22C26EC14();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  sub_22BE29400();
  v2 = sub_22BE3C5E4();
  v3(v2);
  v4 = sub_22BE26264();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D1C5F8])
  {
    v7 = 0;
LABEL_9:
    v8 = sub_22BE18040();
    result = v9(v8);
    *v0 = v7;
    return result;
  }

  if (v6 == *MEMORY[0x277D1C608])
  {
    v7 = 1;
    goto LABEL_9;
  }

  if (v6 == *MEMORY[0x277D1C600])
  {
    v7 = 2;
    goto LABEL_9;
  }

  if (v6 == *MEMORY[0x277D1C610])
  {
    v7 = 3;
    goto LABEL_9;
  }

  result = sub_22C25AE4C();
  __break(1u);
  return result;
}

void TranscriptProtoGenderSettings.init(handwritten:)()
{
  sub_22BE19460();
  v4 = v3;
  sub_22BE3C4D0();
  v5 = sub_22C26EC14();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v9);
  sub_22BE19490();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v10);
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v11);
  sub_22BE26800();
  MEMORY[0x2318A7300]();
  v12 = sub_22BE18240();
  v24 = v13;
  v13(v12);
  v14 = *(v7 + 88);
  v15 = v14(v2, v5);
  v16 = *MEMORY[0x277D1C5F8];
  v27 = v0;
  if (v15 == *MEMORY[0x277D1C5F8])
  {
    v25 = 0;
  }

  else
  {
    if (v15 == *MEMORY[0x277D1C608])
    {
      v17 = 1;
    }

    else if (v15 == *MEMORY[0x277D1C600])
    {
      v17 = 2;
    }

    else
    {
      if (v15 != *MEMORY[0x277D1C610])
      {
        goto LABEL_19;
      }

      v17 = 3;
    }

    v25 = v17;
  }

  v18 = *(v7 + 8);
  v18(v1, v5);
  sub_22C26EBE4();
  v19 = sub_22BE29454();
  v24(v19);
  v20 = sub_22BE232C8();
  v21 = (v14)(v20);
  if (v21 == v16)
  {
    v22 = 0;
LABEL_18:
    v18(v26, v5);
    type metadata accessor for TranscriptProtoGenderSettings(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26EC34();
    sub_22BE18524();
    (*(v23 + 8))(v4);
    *v27 = v25;
    v27[1] = v22;
    sub_22BE1AABC();
    return;
  }

  if (v21 == *MEMORY[0x277D1C608])
  {
    v22 = 1;
    goto LABEL_18;
  }

  if (v21 == *MEMORY[0x277D1C600])
  {
    v22 = 2;
    goto LABEL_18;
  }

  if (v21 == *MEMORY[0x277D1C610])
  {
    v22 = 3;
    goto LABEL_18;
  }

LABEL_19:
  sub_22C25AE4C();
  __break(1u);
}

void TranscriptProtoDateTimeContext.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259F34();
  v1 = sub_22C26E164();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v2);
  sub_22BE294E0();
  v3 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22BE3A208();
  type metadata accessor for TranscriptProtoDateTimeContext(v5);
  sub_22C25AA2C();
  v6 = sub_22C270454();
  sub_22BE32EE0();
  sub_22BE19DC4(v7, v8, v9, v10);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v11 = sub_22BE38FD8();
  v12(v11);
  sub_22C270444();
  sub_22BE25FFC();
  sub_22BE19DC4(v13, v14, v15, v16);
  sub_22BE2343C();
  type metadata accessor for DateTimeContext(0);
  sub_22C25A73C();
  sub_22C26E264();
  sub_22BE3D554();
  sub_22C0E9830();
  sub_22BE1AE58();
  *v0 = v6;
  v0[1] = v1;
  sub_22BE3C298();
  sub_22BE18478();
}

void DateTimeContext.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A430();
  v21 = v3;
  v4 = sub_22BE5CE4C(&qword_27D9152F8, &unk_22C2CC8F0);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE250C8();
  sub_22C26E2A4();
  sub_22BE1A3D8();
  v20 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BE1AD20();
  sub_22C270454();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v8);
  sub_22BE28FD8();
  type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_22C25A53C();
  sub_22BE34128();
  sub_22C102C6C();
  if (v0)
  {
    sub_22C259D48();
  }

  else
  {
    sub_22C270434();
    v9 = sub_22BE191C0();
    v10(v9);
    sub_22C26E254();
    v11 = sub_22BFB1A7C();
    sub_22BE1AB5C(v11, v12, v1);
    if (v13)
    {
      sub_22BE233E8(v2, &qword_27D9152F8, &unk_22C2CC8F0);
      v14 = sub_22C108358();
      v15 = sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v14);
      sub_22BE3C904(v15, v16);
      sub_22C259D48();
      sub_22C26E164();
      sub_22BE18524();
      (*(v17 + 8))(v21);
    }

    else
    {
      sub_22C259D48();
      v18 = *(v20 + 32);
      v19 = sub_22BE196A8();
      (v18)(v19);
      type metadata accessor for DateTimeContext(0);
      sub_22C18FD4C();
      v18();
    }
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t StatementID.init(transcript:)()
{
  sub_22BE28CF0();

  sub_22C259FD0();
  sub_22C26E664();
  sub_22BE18B80();
  return sub_22BE1AE58();
}

void UserTurn.init(transcript:)()
{
  sub_22BE2BB34();
  v3 = v2;
  v4 = sub_22BE289D8();
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE1AB08();
  v9 = type metadata accessor for TranscriptProtoUserTurnEnum(v8);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE1955C();
  sub_22BE37490();
  sub_22BE22814();
  v11 = sub_22BE23E90();
  sub_22BE1AB5C(v11, v12, v9);
  if (v13)
  {
    sub_22BE233E8(v0, &qword_27D90E4F0, &qword_22C2CC7E0);
    v14 = sub_22BE5CE4C(&qword_27D9155D0, &qword_22C2CC7E8);
    sub_22BE43258(v14);
    sub_22C1163A0();
    v15 = sub_22C108598();
    v16 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v15);
    *v17 = v3;
    v17[1] = v9;
    sub_22C25A590(v16, v17, v18, v19, v20, v21);
    sub_22BE1A94C();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE1A94C();
    sub_22BE1AE58();
    v22 = sub_22C1088E8();
    sub_22BE3B620(v22, v1);
    sub_22BE33560();
    v23 = swift_getEnumCaseMultiPayload() == 1;
    sub_22BE1AE58();
    *v3 = v23;
  }

  sub_22BE36324();
  sub_22BEE93D4();
}

uint64_t TranscriptProtoStatementID.init(handwritten:)()
{
  sub_22C259E88();
  v4 = sub_22C26E674();
  sub_22C26E654();
  sub_22C1163A0();
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22C25A67C();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26E684();
  sub_22BE18524();
  result = (*(v5 + 8))(v1);
  *v0 = v4;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
  return result;
}

void TranscriptProtoUserTurn.init(handwritten:)()
{
  sub_22BE1B214();
  sub_22C25AA94();
  v0 = sub_22BE2590C();
  v2 = sub_22BE5CE4C(v0, v1);
  sub_22BE19448(v2);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE234F4();
  v4 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  sub_22C25976C();
  v9 = sub_22C18F17C(v5, v6, v7, v8);
  type metadata accessor for TranscriptProtoUserTurn(v9);
  sub_22BE38954();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AEE4();
  swift_storeEnumTagMultiPayload();
  v10 = sub_22C25974C();
  sub_22BE19DC4(v10, v11, v12, v4);
  sub_22BE35838();
  sub_22C18FCEC();
  sub_22BE2343C();
  sub_22BE25C6C();
}

void RequestContent.init(transcript:)()
{
  sub_22BE19130();
  v86 = v5;
  v6 = sub_22C0B1E74();
  v7 = type metadata accessor for TranscriptProtoSystemPromptResolution(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  v18 = sub_22BE22D7C(v10, v11, v12, v13, v14, v15, v16, v17, v80);
  v19 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(v18);
  v20 = sub_22BE19448(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v21);
  sub_22C10887C(v22, v23, v24, v25, v26, v27, v28, v29, v81);
  v30 = type metadata accessor for TranscriptProtoStatementID(0);
  v31 = sub_22BE19448(v30);
  MEMORY[0x28223BE20](v31);
  sub_22BE17A44();
  sub_22BE3E890(v32);
  sub_22C26E684();
  sub_22BE179D8();
  v82 = v34;
  v83 = v33;
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v84 = v35;
  v36 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoRequestContentTextContent(v36);
  sub_22BE18000();
  MEMORY[0x28223BE20](v37);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v38);
  sub_22BE25A90();
  v39 = sub_22BE3C968();
  v41 = sub_22BE5CE4C(v39, v40);
  sub_22BE19448(v41);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE19668();
  v43 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v44);
  sub_22BE294E0();
  sub_22C0B1AF0();
  sub_22BE22814();
  v45 = sub_22BE1B010();
  sub_22BE1AB5C(v45, v46, v43);
  if (v47)
  {
    sub_22BE233E8(v0, &qword_27D90E580, &qword_22C2AE4F0);
    v48 = sub_22BE5CE4C(&qword_27D915608, &unk_22C2CC900);
    sub_22BE43258(v48);
    sub_22BE3D554();
    v49 = sub_22C108598();
    v50 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v49);
    sub_22C259EA0(v50, v51, v52, v53, v54, v55);
    sub_22BE29048();
LABEL_4:
    sub_22BE1AE58();
  }

  else
  {
    v56 = sub_22BE431F0();
    sub_22BE3B620(v56, v4);
    sub_22BE196A8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22BE44744();
        sub_22BE341B0();
        sub_22BE3B620(v66, v67);
        v68 = sub_22BE431F0();
        sub_22BE1AA68(v68, v85);
        v69 = sub_22C259EBC();
        RequestContent.SpeechContent.init(transcript:)(v69, v70, v71, v72, v73, v74, v75, v76, v82, v83);
        sub_22BE29048();
        sub_22BE1AE58();
        sub_22C2596E0();
        sub_22BE1AE58();
        if (!v1)
        {
          goto LABEL_10;
        }

        break;
      case 2:
        sub_22BE44744();
        sub_22BE2BB28();
        sub_22BE3B620(v62, v63);
        sub_22BE431F0();
        sub_22C0E9A68();
        sub_22BE1AA68(v64, v65);
        sub_22C259EBC();
        RequestContent.SystemPromptResolution.init(transcript:)();
        sub_22BE29048();
        sub_22BE1AE58();
        sub_22C0E9A74();
        sub_22BE1AE58();
        if (!v1)
        {
LABEL_10:
          type metadata accessor for RequestContent(0);
          sub_22BE23BA8();
          goto LABEL_15;
        }

        break;
      case 3:
        sub_22BE29048();
        sub_22BE1AE58();
        sub_22BE3ACD8();
        sub_22BE1AE58();
        type metadata accessor for RequestContent(0);
        sub_22C25ADD4();
        swift_storeEnumTagMultiPayload();
        break;
      default:
        v58 = sub_22BE44744();
        sub_22BE3B620(v58, v2);
        v59 = sub_22BE385E4();
        sub_22BE1AA68(v59, v3);
        v61 = *v3;
        v60 = v3[1];

        sub_22C1026C4();
        if (v1)
        {

          sub_22BE29048();
          sub_22BE1AE58();
          sub_22C259AA8();
          sub_22BE1AE58();
          sub_22BE1AB74();
          goto LABEL_4;
        }

        sub_22BE1804C();
        sub_22C26E664();
        sub_22BE29048();
        sub_22BE1AE58();
        sub_22BE18B80();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE3C5E4();
        sub_22BE1AE58();
        *v86 = v61;
        v86[1] = v60;
        v77 = type metadata accessor for RequestContent.TextContent(0);
        v78 = sub_22C25A688(*(v77 + 20));
        v79(v78, v84);
        type metadata accessor for RequestContent(0);
        sub_22BE1ACEC();
LABEL_15:
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void RequestContent.TextContent.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v13 = sub_22BE4066C();
  v14 = type metadata accessor for TranscriptProtoStatementID(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE19820();
  sub_22C26E684();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v16);
  sub_22BE1955C();
  v17 = v12[1];
  v18 = sub_22C25A424(*v12);
  v19 = *(type metadata accessor for TranscriptProtoRequestContentTextContent(v18) + 20);

  sub_22BE3CD7C();
  sub_22C1026C4();
  if (v19)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {

    sub_22C25A1C4();
    sub_22BE289C0();
    sub_22C26E664();
    sub_22BE379D8();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    *v10 = a10;
    v10[1] = v17;
    v20 = type metadata accessor for RequestContent.TextContent(0);
    v21 = sub_22C25AC20(*(v20 + 20));
    v22(v21);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void RequestContent.SpeechContent.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C25A50C();
  v13 = sub_22C25A8F4(v12);
  v14 = type metadata accessor for TranscriptProtoStatementID(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE1955C();
  sub_22C26E684();
  sub_22BE179D8();
  v42 = v17;
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  sub_22BE35E00(v18);
  v19 = sub_22BE1AB74();
  v21 = sub_22BE5CE4C(v19, v20);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1B01C();
  v23 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
  v24 = sub_22BE19448(v23);
  MEMORY[0x28223BE20](v24);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v25);
  sub_22BE32374();
  v26 = v10[1];
  v27 = sub_22C18F934(*v10);
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(v27);
  sub_22C25A530();
  sub_22C25A3C4();
  sub_22BE22814();

  sub_22C0FE3E4(v11);
  sub_22C26EBC4();
  sub_22C259804();
  sub_22BE3A034(v28, v29, v30, v31);
  sub_22C25AB04();
  sub_22C1026C4();
  if (a10)
  {

    sub_22C2596E0();
    sub_22BE1AE58();
    v32 = sub_22BE33FCC();
    sub_22BE233E8(v32, v33, &unk_22C2CC910);
    v34 = sub_22BE3C968();
    sub_22BE233E8(v34, v35, &unk_22C2CC910);
  }

  else
  {

    sub_22BE1B5EC();
    sub_22C26E664();
    sub_22C2596E0();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    v36 = type metadata accessor for RequestContent.SpeechContent(0);
    sub_22C259804();
    sub_22BE19DC4(v37, v38, v39, v40);
    *v44 = v41;
    *(v44 + 1) = v26;
    sub_22C18FCEC();
    sub_22BE2343C();
    sub_22C18FCEC();
    sub_22BE424BC();
    (*(v42 + 32))(&v44[*(v36 + 24)], v45, v43);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void RequestContent.SystemPromptResolution.init(transcript:)()
{
  sub_22BE19130();
  sub_22C18F140();
  v62 = v9;
  v59 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v61 = v11;
  v12 = sub_22BE183BC();
  v58 = type metadata accessor for RequestContent.SystemPromptResolution(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v15 = sub_22C259A68(v14);
  v16 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(v15);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v18 = sub_22BE5CE4C(&qword_27D9120D0, &qword_22C2B5F20);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v21 = sub_22BE1B278(v20);
  v22 = type metadata accessor for TranscriptProtoStatementID(v21);
  v23 = sub_22BE19448(v22);
  MEMORY[0x28223BE20](v23);
  sub_22BE19820();
  sub_22C26E684();
  sub_22BE179D8();
  v64 = v25;
  v65 = v24;
  MEMORY[0x28223BE20](v24);
  sub_22BE17A44();
  v27 = sub_22C259814(v26);
  v28 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(v27);
  v29 = sub_22BE19448(v28);
  MEMORY[0x28223BE20](v29);
  v30 = sub_22BE1AD20();
  v31 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v30);
  v32 = sub_22BE19448(v31);
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  sub_22BE4682C(v33);
  sub_22C26E1D4();
  sub_22C2594A0();
  v68 = v34;
  MEMORY[0x28223BE20](v35);
  sub_22BE28FD8();
  v36 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v37 = sub_22BE19448(v36);
  MEMORY[0x28223BE20](v37);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v38);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v39);
  sub_22BE181E4();
  if (*(v0 + 24))
  {
    sub_22C26E174();
    sub_22C25ABB4();
    sub_22C101298();
    v3 = v2;
    if (v2)
    {
LABEL_12:
      sub_22BE233E8(v1, &qword_27D9082F0, &qword_22C27AB00);
      goto LABEL_13;
    }

    sub_22BE233E8(v1, &qword_27D9082F0, &qword_22C27AB00);
  }

  v40 = sub_22BE40694();
  sub_22BE19DC4(v40, v41, v42, v6);
  sub_22C26E174();
  sub_22C101298();
  if (v3)
  {
    sub_22BE233E8(v7, &qword_27D9082F0, &qword_22C27AB00);
LABEL_11:
    v1 = v4;
    goto LABEL_12;
  }

  sub_22BE233E8(v7, &qword_27D9082F0, &qword_22C27AB00);
  type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  sub_22C1044CC();
  RequestContent.SystemPromptResolution.UserAction.init(transcript:)();
  sub_22C25ABD8();
  sub_22C1026C4();
  v43 = *v5;

  sub_22BE1804C();
  sub_22C26E664();
  sub_22BE18B80();
  sub_22BE1AE58();
  sub_22C25ABD8();
  sub_22C1045BC();
  if (v43)
  {
    (*(v64 + 8))(v66, v65);
    sub_22BE361FC();
    sub_22BE1AE58();
    sub_22C25AB70();
    v44 = sub_22C259FF4();
    v45(v44);
    goto LABEL_11;
  }

  RequestContent.SystemPromptResolution.ResolutionInput.init(transcript:)();
  sub_22BE187DC();
  sub_22BE19DC4(v46, v47, v48, v59);
  sub_22BE28D2C();
  sub_22BE19DC4(v49, v50, v51, v52);
  v53 = v58[8];
  swift_storeEnumTagMultiPayload();
  sub_22BE29454();
  sub_22BE2343C();
  (*(v68 + 32))(v60 + v58[5], v8, v6);
  sub_22BE3B620(v67, v60 + v58[6]);
  (*(v64 + 32))(v60 + v58[7], v66, v65);
  sub_22BE3E950(v63);
  if (v54)
  {
    v56 = v61;
    sub_22BE36658();
    swift_storeEnumTagMultiPayload();
    sub_22BE3E950(v63);
    if (!v54)
    {
      sub_22BE233E8(v63, &qword_27D9120D0, &qword_22C2B5F20);
    }
  }

  else
  {
    v55 = sub_22C1088AC();
    v56 = v61;
    sub_22BE3B620(v55, v61);
  }

  sub_22C250DB8(v56, v60 + v53);
  v57 = sub_22C1088E8();
  sub_22BE3B620(v57, v62);
LABEL_13:
  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE19650();
  sub_22BE18478();
}

void TranscriptProtoRequestContentTextContent.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE3129C();
  sub_22BE3C4D0();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE2379C();
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A8B4();
  v23 = *v0;
  v22 = v0[1];
  type metadata accessor for RequestContent.TextContent(0);
  v6 = sub_22BE48FCC();
  v7(v6);

  v8 = sub_22C26E674();
  v9 = sub_22C26E654();
  v10 = sub_22BE32C3C();
  v11 = type metadata accessor for TranscriptProtoStatementID(v10);
  sub_22C25A3A8();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v12 = sub_22C259ED8();
  v13(v12);
  *v2 = v8;
  *(v2 + 8) = v9;
  *(v2 + 16) = v0;
  v14 = sub_22BE33C68();
  v17 = sub_22C18F17C(v14, v15, v16, v11);
  type metadata accessor for TranscriptProtoRequestContentTextContent(v17);
  sub_22C25A7AC();
  sub_22C259860();
  sub_22BE19DC4(v18, v19, v20, v21);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  *v1 = v23;
  v1[1] = v22;
  sub_22BE2343C();
  sub_22BE3C298();
  sub_22BE18478();
}

void TranscriptProtoRequestContentSpeechContent.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259FE8();
  sub_22C25A554(v3);
  sub_22C26E684();
  sub_22BE179D8();
  v76 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE36294(v8);
  v9 = sub_22C26EBC4();
  sub_22BE179D8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v13);
  sub_22BE2EDB8();
  v14 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
  sub_22BE19448(v14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE23E58();
  v16 = sub_22BE5CE4C(&qword_27D90E5B0, &unk_22C2AE500);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE29178(v18, v76);
  MEMORY[0x28223BE20](v19);
  sub_22BE19E94();
  sub_22BE35E00(v20);
  v21 = v0[1];
  v79 = *v0;
  type metadata accessor for RequestContent.SpeechContent(0);
  sub_22C25A694();
  sub_22C25A4B8();
  sub_22BE22814();
  sub_22BE18190(v2);
  v78 = v21;
  if (v22)
  {
    type metadata accessor for TranscriptProtoSpeechPackage(0);
    sub_22C25975C();
    sub_22BE19DC4(v23, v24, v25, v26);
  }

  else
  {
    sub_22C25A35C();
    v27 = sub_22BE33B3C();
    v28(v27);
    sub_22C1CF23C();
    v29 = sub_22BE3AF28();
    v30(v29);

    v31 = sub_22C26EAE4();
    sub_22C1C3E60(v31, v32, v33, v34, v35, v36, v37, v38, v77, v21);
    v40 = v39;
    type metadata accessor for TranscriptProtoSpeechPackage(0);
    sub_22C25AAAC();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v41 = v1;
    v1 = *(v11 + 8);
    (v1)(v41, v9);
    *v82 = v40;
    v42 = sub_22BE39EAC();
    v1(v42);
    sub_22C2597D4();
    sub_22BE19DC4(v43, v44, v45, v46);
  }

  v47 = sub_22C25A794();
  v48(v47);
  v49 = sub_22C26E674();
  v50 = sub_22C26E654();
  v51 = sub_22C25A788();
  v52 = type metadata accessor for TranscriptProtoStatementID(v51);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v53 = sub_22BE31038();
  v54(v53);
  *v80 = v49;
  *(v80 + 8) = v50;
  *(v80 + 16) = v1;
  v55 = sub_22BE19198();
  v58 = sub_22C18F17C(v55, v56, v57, v52);
  type metadata accessor for TranscriptProtoSpeechPackage(v58);
  sub_22C25975C();
  v63 = sub_22C18F17C(v59, v60, v61, v62);
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(v63);
  sub_22C25975C();
  sub_22BE19DC4(v64, v65, v66, v67);
  sub_22BE28D2C();
  sub_22BE19DC4(v68, v69, v70, v71);
  sub_22C25975C();
  sub_22BE19DC4(v72, v73, v74, v75);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259A90();
  sub_22BE1AE58();
  *v81 = v79;
  v81[1] = v78;
  sub_22BE27B84();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE27B84();
  sub_22BE2343C();
  sub_22BE3C298();
  sub_22BE18478();
}

void TranscriptProtoSystemPromptResolution.init(handwritten:)()
{
  sub_22BE19130();
  v5 = v4;
  v7 = sub_22C25A554(v6);
  v8 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v75 = v10;
  v11 = sub_22BE5CE4C(&qword_27D90ECB0, &unk_22C2AE730);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE23A90(v13);
  v74 = sub_22C26E684();
  sub_22BE179D8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  v18 = v17;
  v19 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BE25334();
  v22 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v21);
  v23 = sub_22BE19448(v22);
  MEMORY[0x28223BE20](v23);
  sub_22BE28FD8();
  v24 = sub_22BE5CE4C(&qword_27D90ECC0, &qword_22C297098);
  sub_22BE19448(v24);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1A174();
  v26 = sub_22BE3AF28();
  v28 = sub_22BE5CE4C(v26, v27);
  sub_22BE19448(v28);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE19668();
  sub_22BE25EFC();
  sub_22BE22814();
  v30 = sub_22C26E1D4();
  v31 = sub_22BE1B010();
  sub_22BE1AB5C(v31, v32, v30);
  if (v33)
  {
    sub_22BE233E8(v0, &qword_27D9082F0, &qword_22C27AB00);
    v72 = 0;
    v35 = 0;
  }

  else
  {
    v72 = sub_22C26E184();
    v35 = v34;
    sub_22BE1BC24();
    v36 = sub_22BE336E8();
    v37(v36);
  }

  v38 = type metadata accessor for RequestContent.SystemPromptResolution(0);
  sub_22BE1AA68(v5 + v38[6], v3);
  TranscriptProtoSystemPromptResolutionUserAction.init(handwritten:)();
  if (v1)
  {
    sub_22BE3CC1C();
    sub_22BE1AE58();
  }

  else
  {
    type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
    v39 = sub_22BE22B8C();
    v68 = v40;
    sub_22BE19DC4(v39, v41, v42, v40);
    v69 = sub_22C26E184();
    v71 = v43;
    (*(v15 + 16))(v18, v5 + v38[7], v74);
    v76 = v5;
    v70 = sub_22C26E674();
    v44 = sub_22C26E654();
    v46 = v45;
    v47 = type metadata accessor for TranscriptProtoStatementID(0);
    sub_22C25A3A8();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v48 = sub_22BE39EAC();
    v49(v48);
    *v2 = v70;
    *(v2 + 8) = v44;
    *(v2 + 16) = v46;
    v50 = sub_22BE33C68();
    sub_22BE19DC4(v50, v51, v52, v47);
    sub_22BE1AA68(v76 + v38[8], v75);
    TranscriptProtoSystemPromptResolutionInput.init(handwritten:)();
    type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
    sub_22BE25FFC();
    v57 = sub_22C18F17C(v53, v54, v55, v56);
    type metadata accessor for TranscriptProtoSystemPromptResolution(v57);
    sub_22BE1A140();
    sub_22BE19DC4(v58, v59, v60, v68);
    sub_22BE1A140();
    sub_22BE19DC4(v61, v62, v63, v47);
    sub_22BE32EE0();
    sub_22BE19DC4(v64, v65, v66, v67);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3CC1C();
    sub_22BE1AE58();
    v73[2] = v72;
    v73[3] = v35;
    sub_22BE2343C();
    *v73 = v69;
    v73[1] = v71;
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BE34134();
  sub_22BE18478();
}

uint64_t sub_22C21DD28(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{

  v6 = a2(v5);
  a3(v6);
  sub_22BE200D4();
  return sub_22BE1AE58();
}

uint64_t sub_22C21DF28@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  v11 = a2();
  v12 = a3(v11);
  a4(0);
  sub_22C25A548();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  a5(0);
  sub_22BE18524();
  result = (*(v13 + 8))(a1);
  *a6 = v12;
  return result;
}

uint64_t SpeechPackage.Token.init(transcript:)()
{
  sub_22BE28CF0();

  sub_22C25A84C();
  sub_22C259FD0();
  sub_22C26EB24();
  sub_22BE26148();
  return sub_22BE1AE58();
}

uint64_t TranscriptProtoSpeechPackage.Token.init(handwritten:)()
{
  sub_22C259E88();
  v2 = sub_22C26EB34();
  v4 = v3;
  v5 = sub_22C26EB04();
  sub_22C26EB54();
  v7 = v6;
  sub_22C26EB14();
  v9 = v8;
  sub_22C26EB44();
  v11 = v10;
  type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26EB64();
  sub_22BE18524();
  result = (*(v12 + 8))(v1);
  *v0 = v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v7;
  v0[4] = v9;
  v0[5] = v11;
  return result;
}

void RequestPrescribedPlan.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v16 = sub_22C25A8F4(v15);
  v17 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(v16);
  v18 = sub_22BE19448(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  v20 = sub_22BE28E74(v19);
  v21 = type metadata accessor for TranscriptProtoStatementID(v20);
  v22 = sub_22BE19448(v21);
  MEMORY[0x28223BE20](v22);
  sub_22BE3C444(v23, v87);
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v24);
  sub_22BE17A44();
  v26 = sub_22C259A68(v25);
  v90 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v26);
  sub_22BE18000();
  MEMORY[0x28223BE20](v27);
  sub_22BE29178(v28, v88);
  MEMORY[0x28223BE20](v29);
  sub_22C1CEC08(v30, v31, v32, v33, v34, v35, v36, v37, v89);
  v38 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v39 = sub_22BE19448(v38);
  MEMORY[0x28223BE20](v39);
  sub_22BE17A44();
  v41 = sub_22BE4682C(v40);
  v42 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(v41);
  v43 = sub_22BE19448(v42);
  MEMORY[0x28223BE20](v43);
  v44 = sub_22BE1AD20();
  v45 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(v44);
  v46 = sub_22BE19448(v45);
  MEMORY[0x28223BE20](v46);
  sub_22BE28FD8();
  v47 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v48 = sub_22BE19448(v47);
  MEMORY[0x28223BE20](v48);
  sub_22BE17CBC();
  v49 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  v50 = sub_22BE19448(v49);
  MEMORY[0x28223BE20](v50);
  sub_22BE197B8();
  v51 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  v52 = sub_22BE19448(v51);
  MEMORY[0x28223BE20](v52);
  sub_22BE18DFC();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v53);
  sub_22BE188B0();
  sub_22C102E5C();
  if (a10)
  {
    sub_22BE1C40C();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE1824C();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BE1C40C();
        sub_22BE1AE58();
        v74 = sub_22C259E7C();
        sub_22BE3B620(v74, v10);
        v75 = *v10;
        v76 = v10[1];

        sub_22BE26148();
        sub_22BE1AE58();
        *v93 = v75;
        *(v93 + 8) = v76;
        type metadata accessor for RequestPrescribedPlan(0);
        sub_22BE39250();
        goto LABEL_14;
      case 2u:
        sub_22BE1C40C();
        sub_22BE1AE58();
        v60 = sub_22C259E7C();
        sub_22BE3B620(v60, v11);

        sub_22BE291DC();
        sub_22BE1AE58();
        sub_22C25A3F0();
        goto LABEL_14;
      case 3u:
        sub_22BE1C40C();
        sub_22BE1AE58();
        v61 = sub_22C259E7C();
        sub_22BE3B620(v61, v14);
        v63 = *v14;
        v62 = *(v14 + 8);
        v64 = *(v14 + 16);
        v66 = *(v14 + 24);
        v65 = *(v14 + 32);
        v68 = *(v14 + 40);
        v67 = *(v14 + 48);

        sub_22BE3E76C();
        sub_22BE1AE58();
        *v93 = v63;
        *(v93 + 8) = v62;
        *(v93 + 16) = v64;
        *(v93 + 24) = v66;
        *(v93 + 32) = v65;
        *(v93 + 40) = v68;
        *(v93 + 48) = v67;
        type metadata accessor for RequestPrescribedPlan(0);
        sub_22BE23BA8();
        goto LABEL_14;
      case 4u:
        sub_22BE1C40C();
        sub_22BE1AE58();
        v59 = sub_22C259E7C();
        sub_22BE3B620(v59, v13);

        sub_22BE3ACD8();
        sub_22BE1AE58();
        sub_22C25A3F0();
        goto LABEL_14;
      case 5u:
        sub_22BE1C40C();
        sub_22BE1AE58();
        v77 = sub_22C259E7C();
        sub_22BE3B620(v77, v94);

        sub_22C25A2A8();
        sub_22BE1AE58();
        sub_22C25A3F0();
        goto LABEL_14;
      case 6u:
        v78 = sub_22C259E7C();
        sub_22BE3B620(v78, v92);
        v79 = sub_22C259E7C();
        sub_22BE1AA68(v79, v91);
        sub_22C1026C4();

        sub_22C25A1C4();
        sub_22BE354D0();
        sub_22C26E664();
        sub_22BE1C40C();
        sub_22BE1AE58();
        sub_22BE18B80();
        sub_22BE1AE58();
        sub_22C25A290();
        sub_22BE1AE58();
        v80 = v91 + *(v90 + 20);
        v81 = *v80;
        v82 = *(v80 + 8);
        sub_22BE33FCC();
        sub_22BE1AE58();
        if (v82)
        {
          v83 = 0;
        }

        else
        {
          v83 = v81;
        }

        v84 = v93 + *(type metadata accessor for RequestPrescribedPlan.OpenTool(0) + 20);
        v85 = sub_22BE3AF28();
        v86(v85);
        *v84 = v83;
        *(v84 + 8) = v82;
        type metadata accessor for RequestPrescribedPlan(0);
        sub_22BE31160();
        swift_storeEnumTagMultiPayload();
        break;
      case 7u:
        sub_22BE1C40C();
        sub_22BE1AE58();
        sub_22C259E7C();
        sub_22C0E9A68();
        sub_22BE3B620(v69, v70);
        v71 = *v94;
        v72 = *(v94 + 8);
        sub_22BE379D8();
        sub_22BE1AE58();
        if (v72)
        {
          v73 = 0;
        }

        else
        {
          v73 = v71;
        }

        *v93 = v73;
        *(v93 + 8) = v72;
        type metadata accessor for RequestPrescribedPlan(0);
        sub_22BE23BA8();
        goto LABEL_14;
      default:
        sub_22BE1C40C();
        sub_22BE1AE58();
        v54 = sub_22C259E7C();
        sub_22BE3B620(v54, v12);
        v56 = *v12;
        v55 = *(v12 + 8);
        v57 = *(v12 + 16);
        v58 = *(v12 + 17);

        sub_22C0E9830();
        sub_22BE1AE58();
        *v93 = v56;
        *(v93 + 8) = v55;
        *(v93 + 16) = v57;
        *(v93 + 17) = v58;
        type metadata accessor for RequestPrescribedPlan(0);
        sub_22BE31160();
LABEL_14:
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t RequestPrescribedPlan.SearchTool.init(transcript:)()
{
  sub_22C25A3E0();
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);

  sub_22C0E9918();
  result = sub_22BE1AE58();
  *v0 = v3;
  *(v0 + 8) = v2;
  *(v0 + 16) = v4;
  *(v0 + 17) = v5;
  return result;
}

void RequestPrescribedPlan.ConvertTool.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A3E0();
  sub_22C25AD04();

  sub_22C0E9918();
  sub_22BE1AE58();
  sub_22C25A900();
  sub_22BE18478();
}

void sub_22C21EAA8()
{
  sub_22BE2BB34();
  sub_22C25AD18();
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v6 = v1[3];
  v5 = v1[4];

  sub_22BE1B5EC();
  sub_22BE1AE58();
  *v0 = v3;
  *(v0 + 8) = v2;
  *(v0 + 16) = v4;
  *(v0 + 24) = v6;
  *(v0 + 32) = v5;
  sub_22BEE93D4();
}

void RequestPrescribedPlan.OpenTool.init(transcript:)()
{
  sub_22BE19130();
  v2 = sub_22BE1B254();
  v3 = type metadata accessor for TranscriptProtoStatementID(v2);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE1955C();
  sub_22C26E684();
  sub_22C259488();
  MEMORY[0x28223BE20](v5);
  sub_22BE19338();
  sub_22C25AB10();
  sub_22C1026C4();
  if (v1)
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A9B4();
    sub_22C25A5A8();
    sub_22BE18B80();
    sub_22BE1AE58();
    type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
    sub_22BE38954();
    v7 = *v6;
    v8 = *(v6 + 8);
    sub_22C0E9A74();
    sub_22BE1AE58();
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v10 = v0 + *(type metadata accessor for RequestPrescribedPlan.OpenTool(0) + 20);
    v11 = sub_22BE37490();
    v12(v11);
    *v10 = v9;
    *(v10 + 8) = v8;
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.init(transcript:)()
{
  sub_22BE48AF0();
  v2 = *v1;
  v3 = *(v1 + 8);
  result = sub_22BE1AE58();
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  *v0 = v5;
  *(v0 + 8) = v3;
  return result;
}

void TranscriptProtoRequestPrescribedPlan.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE3129C();
  sub_22BE4066C();
  sub_22C26E684();
  sub_22BE179D8();
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22BE2379C();
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE3A208();
  v10 = type metadata accessor for RequestPrescribedPlan.OpenTool(v9);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v12);
  v21 = sub_22BE22D7C(v13, v14, v15, v16, v17, v18, v19, v20, v76);
  type metadata accessor for RequestPrescribedPlan(v21);
  sub_22BE18000();
  MEMORY[0x28223BE20](v22);
  sub_22BE294E0();
  v23 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  v25 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(v25);
  v26 = sub_22C259C00();
  v30 = sub_22C18F17C(v26, v27, v28, v29);
  type metadata accessor for TranscriptProtoRequestPrescribedPlan(v30);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v31 = sub_22BE19EBC();
  sub_22BE1AA68(v31, v4);
  sub_22BE196A8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v47 = *v4;
      v48 = *(v4 + 8);
      type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
      sub_22C25A948();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE46BE4();
      *v2 = v47;
      *(v2 + 8) = v48;
      break;
    case 2:
      v38 = sub_22C25A044();
      type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(v38);
      goto LABEL_12;
    case 3:
      v40 = *v4;
      v39 = *(v4 + 8);
      v41 = *(v4 + 16);
      v43 = *(v4 + 24);
      v42 = *(v4 + 32);
      v44 = *(v4 + 48);
      v81 = *(v4 + 40);
      type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE46BE4();

      *v2 = v40;
      *(v2 + 8) = v39;
      *(v2 + 16) = v41;
      *(v2 + 24) = v43;
      *(v2 + 32) = v42;
      *(v2 + 40) = v81;
      *(v2 + 48) = v44;
      break;
    case 4:
      v37 = sub_22C25A044();
      type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(v37);
      goto LABEL_12;
    case 5:
      v49 = sub_22C25A044();
      type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(v49);
LABEL_12:

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE46BE4();

      *v2 = v10;
      *(v2 + 8) = v0;
      *(v2 + 16) = v3;
      *(v2 + 24) = EnumCaseMultiPayload;
      *(v2 + 32) = v1;
      break;
    case 6:
      sub_22BE44744();
      sub_22C25A724();
      sub_22BE3B620(v50, v51);
      v52 = sub_22BE19EBC();
      sub_22BE1AA68(v52, v3);
      v53 = sub_22C259E94();
      v54(v53, v3, v80);
      v79 = sub_22C26E674();
      v55 = sub_22C26E654();
      v77 = v56;
      v78 = v55;
      v57 = type metadata accessor for TranscriptProtoStatementID(0);
      sub_22C25A5EC();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v58 = sub_22BE18944();
      v59(v58);
      *v5 = v79;
      *(v5 + 8) = v78;
      *(v5 + 16) = v77;
      v60 = sub_22BE360A0();
      sub_22BE19DC4(v60, v61, v62, v57);
      v63 = v3 + *(v10 + 20);
      v64 = *(v63 + 8);
      if (v64)
      {
        v65 = 0;
      }

      else
      {
        v65 = *v63;
      }

      sub_22BE28D2C();
      v70 = sub_22C18F17C(v66, v67, v68, v69);
      v71 = v2 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v70) + 20);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AE58();
      sub_22BF6AC14();
      sub_22BE2343C();
      *v71 = v65;
      *(v71 + 8) = v64;
      sub_22BE46BE4();
      sub_22C25A870();
      sub_22BE1AE58();
      break;
    case 7:
      v45 = *(v4 + 8);
      if (v45)
      {
        v46 = 0;
      }

      else
      {
        v46 = *v4;
      }

      type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
      sub_22C25A948();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE46BE4();
      *v2 = v46;
      *(v2 + 8) = v45;
      break;
    default:
      v33 = *v4;
      v34 = *(v4 + 8);
      v35 = *(v4 + 16);
      v36 = *(v4 + 17);
      type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE46BE4();
      *v2 = v33;
      *(v2 + 8) = v34;
      *(v2 + 16) = v35;
      *(v2 + 17) = v36;
      break;
  }

  sub_22C25A018();
  swift_storeEnumTagMultiPayload();
  v72 = sub_22C259724();
  sub_22BE19DC4(v72, v73, v74, v75);
  sub_22BE2343C();
  sub_22BE3C298();
  sub_22BE18478();
}

uint64_t TranscriptProtoRequestPrescribedPlanSearchTool.init(handwritten:)()
{
  sub_22BE48AF0();
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = v2;
  *(v0 + 8) = v3;
  *(v0 + 16) = v4;
  *(v0 + 17) = v5;
  return result;
}

void TranscriptProtoRequestPrescribedPlanConvertTool.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE48AF0();
  sub_22C25AD04();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

  sub_22C25A900();
  sub_22BE18478();
}

void sub_22C21F36C()
{
  sub_22BE1B214();
  sub_22BE48AF0();
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v6 = v1[3];
  v5 = v1[4];
  v7(0);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

  *v0 = v3;
  *(v0 + 8) = v2;
  *(v0 + 16) = v4;
  *(v0 + 24) = v6;
  *(v0 + 32) = v5;
  sub_22BE25C6C();
}

void TranscriptProtoRequestPrescribedPlanOpenTool.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE3129C();
  v29 = v5;
  sub_22BE3C4D0();
  v6 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v7);
  sub_22BE2379C();
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A8B4();
  v10 = sub_22BE37EE0();
  v11(v10, v0, v6);
  v12 = sub_22C26E674();
  sub_22C26E654();
  sub_22C25A2F0();
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22C25A3A8();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v13 = sub_22C259ED8();
  v14(v13);
  *v4 = v12;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  sub_22BE25FFC();
  v19 = sub_22C18F17C(v15, v16, v17, v18);
  v20 = (v29 + *(type metadata accessor for RequestPrescribedPlan.OpenTool(v19) + 20));
  v21 = *(v20 + 8);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v20;
  }

  sub_22BE32EE0();
  v27 = sub_22C18F17C(v23, v24, v25, v26);
  v28 = v1 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v27) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9848();
  sub_22BE1AE58();
  sub_22BE392D4();
  sub_22BE2343C();
  *v28 = v22;
  *(v28 + 8) = v21;
  sub_22BE3C298();
  sub_22BE18478();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init(handwritten:)()
{
  sub_22BE48AF0();
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  sub_22BE38954();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = v3;
  *(v0 + 8) = v2;
  return result;
}

uint64_t sub_22C21F620()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_22C1F4EB0(*v0, *(v0 + 8), v1 | *(v0 + 16));
}

uint64_t sub_22C21F9B8()
{
  sub_22BE48AF0();
  v2 = *v1;
  v3 = v1[1];
  v4(0);
  sub_22BE38954();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = v2;
  v0[1] = v3;
  return result;
}

void GlobalToolIdentifier.init(transcript:)()
{
  sub_22BE3C358();
  sub_22BE28CF0();
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[3];
  v4 = v1[4];
  v6 = *(v1 + 16);

  sub_22BE40CB0();
  sub_22BE1AE58();
  *v0 = v3;
  *(v0 + 8) = v2;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v6;
  sub_22BE267B8();
}

void TranscriptProtoGlobalToolIdentifier.init(handwritten:)()
{
  sub_22BE3C358();
  v1 = v0;
  v4 = *v2;
  v3 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = *(v2 + 32);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

  *v1 = v4;
  *(v1 + 8) = v3;
  *(v1 + 24) = v6;
  *(v1 + 32) = v5;
  *(v1 + 16) = v7;
  sub_22BE267B8();
}

uint64_t Array<A>.init(transcript:)()
{

  sub_22C0F4BDC();
  v1 = v0;
  sub_22BE26148();
  sub_22BE1AE58();
  return v1;
}

uint64_t sub_22C21FC2C@<X0>(uint64_t *a1@<X8>)
{
  result = Array<A>.init(transcript:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void ClientAction.ShimParameter.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  sub_22C25AD88();
  v17 = sub_22C25A554(v16);
  v18 = type metadata accessor for TranscriptProtoPhotosCandidates(v17);
  v19 = sub_22BE19448(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE28A70(v20, v77);
  MEMORY[0x28223BE20](v21);
  sub_22BE2BB70(v22, v23, v24, v25, v26, v27, v28, v29, v78);
  v30 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  sub_22BE19448(v30);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  v33 = sub_22BE415D8(v32);
  v80 = type metadata accessor for TranscriptProtoPersonQuery(v33);
  sub_22BE18000();
  MEMORY[0x28223BE20](v34);
  sub_22BE29178(v35, v79);
  MEMORY[0x28223BE20](v36);
  v37 = sub_22BE2558C();
  v38 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(v37);
  v39 = sub_22BE19448(v38);
  MEMORY[0x28223BE20](v39);
  sub_22BE19820();
  sub_22C272594();
  sub_22BE179D8();
  v81 = v40;
  MEMORY[0x28223BE20](v41);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v42);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v43);
  v44 = sub_22C2595B4();
  type metadata accessor for TranscriptProtoShimParameterEnum(v44);
  sub_22BE18000();
  MEMORY[0x28223BE20](v45);
  sub_22BE1955C();
  sub_22C1043DC();
  if (v86)
  {
    sub_22BE2B948();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE27BA4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BE2B948();
        sub_22BE1AE58();
        v65 = sub_22C1088AC();
        sub_22BE3B620(v65, v14);
        v67 = *v14;
        v66 = v14[1];

        sub_22C0E9848();
        sub_22BE1AE58();
        *v84 = v67;
        *(v84 + 8) = v66;
        type metadata accessor for ClientAction.ShimParameter(0);
        sub_22BE31160();
        break;
      case 2u:
        sub_22BE39424();
        sub_22BE3B620(v15, v13);
        v50 = sub_22BE385E4();
        sub_22BE1AA68(v50, v82);
        v51 = *(v82 + 8);
        v52 = *(v82 + 16);
        sub_22BE22814();

        sub_22C0FE2E8();
        sub_22BE2B948();
        sub_22BE1AE58();
        sub_22BE1AE58();
        v68 = *v82;
        v69 = (v82 + *(v80 + 28));
        v71 = *v69;
        v70 = v69[1];

        sub_22BE191CC();
        sub_22BE1AE58();
        *v84 = v51;
        *(v84 + 8) = v52;
        *(v84 + 16) = a13;
        *(v84 + 17) = v68;
        *(v84 + 24) = v71;
        *(v84 + 32) = v70;
        type metadata accessor for ClientAction.ShimParameter(0);
        sub_22BE39250();
        break;
      case 3u:
        v53 = sub_22C1088AC();
        sub_22BE3B620(v53, v85);
        v54 = sub_22BE19EBC();
        sub_22BE1AA68(v54, v83);
        v56 = *(v83 + 8);
        v55 = *(v83 + 16);

        sub_22C0F2F3C(v57, v58, v59, v60, v61, v62, v63, v64);
        v73 = v72;
        sub_22BE2B948();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE33560();
        sub_22BE1AE58();
        *v84 = v56;
        *(v84 + 8) = v55;
        *(v84 + 16) = v73;
        type metadata accessor for ClientAction.ShimParameter(0);
        sub_22BE31160();
        break;
      default:
        sub_22C18F338();
        v46();
        v47 = *(v81 + 16);
        v48 = sub_22BE1B18C();
        v47(v48);
        v49 = sub_22BE25C94();
        v47(v49);
        sub_22C272864();
        v74 = *(v81 + 8);
        v75 = sub_22BE23108();
        v74(v75);
        sub_22BE2B948();
        sub_22BE1AE58();
        v76 = sub_22BE33B3C();
        v74(v76);
        type metadata accessor for ClientAction.ShimParameter(0);
        break;
    }

    swift_storeEnumTagMultiPayload();
  }

  sub_22BE18478();
}

uint64_t ClientAction.StringQuery.init(transcript:)()
{
  sub_22BE28CF0();
  v3 = *v1;
  v2 = v1[1];

  sub_22BE26148();
  result = sub_22BE1AE58();
  *v0 = v3;
  v0[1] = v2;
  return result;
}

void PersonQuery.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  sub_22BE271BC();
  v16 = sub_22BE1AEE4();
  v18 = sub_22BE5CE4C(v16, v17);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE23E58();
  v21 = *(v14 + 1);
  v20 = *(v14 + 2);
  v22 = type metadata accessor for TranscriptProtoPersonQuery(0);
  sub_22BE22814();

  sub_22C0FE2E8();
  if (v15)
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
  }

  else
  {
    v23 = *v14;
    v24 = &v14[*(v22 + 28)];
    v26 = *v24;
    v25 = v24[1];

    sub_22C0E9A74();
    sub_22BE1AE58();
    *v13 = v21;
    *(v13 + 8) = v20;
    *(v13 + 16) = a13;
    *(v13 + 17) = v23;
    *(v13 + 24) = v26;
    *(v13 + 32) = v25;
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void ClientAction.PhotosCandidates.init(transcript:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);

  sub_22C0F2F3C(v6, v7, v8, v9, v10, v11, v12, v13);
  v15 = v14;
  sub_22C0E9848();
  sub_22BE1AE58();
  if (v2)
  {
  }

  else
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v15;
  }
}

void TranscriptProtoShimParameter.init(handwritten:)()
{
  sub_22BE19130();
  v60 = v2;
  v5 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  v8 = sub_22BE36294(v7);
  v57 = type metadata accessor for TranscriptProtoPersonQuery(v8);
  sub_22BE18000();
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  sub_22BE48A8C(v10);
  sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v11);
  sub_22BE197B8();
  sub_22C272874();
  sub_22BE1A3D8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22BE25544();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE195C4();
  type metadata accessor for ClientAction.ShimParameter(v16);
  sub_22BE18000();
  MEMORY[0x28223BE20](v17);
  sub_22BE17CBC();
  v18 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BE1AB08();
  type metadata accessor for TranscriptProtoShimParameterEnum(v20);
  sub_22BE1A140();
  v25 = sub_22C18F17C(v21, v22, v23, v24);
  type metadata accessor for TranscriptProtoShimParameter(v25);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v26 = sub_22C259E7C();
  sub_22BE1AA68(v26, v3);
  sub_22BE1BF88();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v40 = sub_22C25AA38();
      type metadata accessor for TranscriptProtoShimParameter.StringQuery(v40);
      sub_22C25A548();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22C259578();
      *v4 = v0;
      v4[1] = v1;
      goto LABEL_14;
    case 2u:
      v33 = *v3;
      v32 = *(v3 + 8);
      v34 = *(v3 + 17);
      v35 = *(v3 + 24);
      v0 = *(v3 + 32);
      v36 = *(v3 + 16);

      sub_22C107718(v36, v59);
      if (v60)
      {
        swift_bridgeObjectRelease_n();

        goto LABEL_8;
      }

      v61 = v35;
      type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
      v41 = sub_22C259B90();
      sub_22BE19DC4(v41, v42, v43, v44);
      v45 = (v58 + *(v57 + 28));

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22C259578();
      *(v58 + 8) = v33;
      *(v58 + 16) = v32;
      sub_22BE2343C();

      *v58 = v34;
      *v45 = v61;
      v45[1] = v0;
      sub_22BE39424();
      v46 = sub_22BE29454();
      sub_22BE3B620(v46, v47);
      goto LABEL_14;
    case 3u:
      v37 = *v3;
      v0 = *(v3 + 8);

      sub_22C220C88(v38);
      if (!v2)
      {
        v48 = v39;
        type metadata accessor for TranscriptProtoPhotosCandidates(0);
        sub_22C25A4E8();
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22C259578();

        v4[1] = v37;
        v4[2] = v0;
        *v4 = v48;
        goto LABEL_14;
      }

      swift_bridgeObjectRelease_n();
LABEL_8:
      sub_22C259578();
      goto LABEL_9;
    default:
      sub_22C18F458();
      sub_22C259FD0();
      v27();
      sub_22C259E4C();
      sub_22C18FD4C();
      v28();
      sub_22C272854();
      if (v2)
      {
        sub_22C259578();
        v29 = *(v13 + 8);
        v30 = sub_22BE336E8();
        v29(v30);
        v31 = sub_22BE38FD8();
        v29(v31);
LABEL_9:
        sub_22BE2B948();
        sub_22BE1AE58();
      }

      else
      {
        sub_22C259578();
        v49 = *(v13 + 8);
        v50 = sub_22BE336E8();
        v49(v50);
        v51 = sub_22BE38FD8();
        v49(v51);
        v52 = sub_22BE291B0();
        v53(v52);
LABEL_14:
        sub_22C25A724();
        swift_storeEnumTagMultiPayload();
        v54 = sub_22BE22B8C();
        sub_22BE19DC4(v54, v55, v56, v0);
        sub_22C25A888();
        sub_22BE2343C();
      }

      sub_22BE46D98();
      sub_22BE18478();
      return;
  }
}

uint64_t TranscriptProtoShimParameter.StringQuery.init(handwritten:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  sub_22BE48874();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a2 = v3;
  a2[1] = v4;
  return result;
}

void TranscriptProtoPersonQuery.init(handwritten:)()
{
  sub_22BE19130();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  v10 = *v4;
  v9 = v4[1];
  v11 = *(v4 + 17);
  v13 = v4[3];
  v12 = v4[4];
  v14 = *(v4 + 16);

  sub_22C107718(v14, v1);
  if (v2)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoPersonQuery(0);
    type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
    v16 = sub_22C259DDC();
    sub_22BE19DC4(v16, v17, v18, v19);
    v20 = (v6 + *(v15 + 28));

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *(v6 + 8) = v10;
    *(v6 + 16) = v9;
    sub_22BE2343C();

    *v6 = v11;
    *v20 = v13;
    v20[1] = v12;
  }

  sub_22BE19650();
  sub_22BE18478();
}

void TranscriptProtoPhotosCandidates.init(handwritten:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v5 = a1[1];

  sub_22C220C88(v7);
  if (v2)
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v8 = sub_22C25A764();
    type metadata accessor for TranscriptProtoPhotosCandidates(v8);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

    a2[1] = v6;
    a2[2] = v5;
    *a2 = v3;
  }
}

void sub_22C220C88(uint64_t a1)
{
  v71 = sub_22C272594();
  v2 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v55 - v6;
  MEMORY[0x28223BE20](v7);
  v66 = &v55 - v8;
  MEMORY[0x28223BE20](v9);
  v62 = &v55 - v10;
  v11 = sub_22C272874();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v17);
  v65 = &v55 - v18;
  MEMORY[0x28223BE20](v19);
  v64 = &v55 - v20;
  v21 = *(a1 + 16);
  v76 = MEMORY[0x277D84F90];
  sub_22BE702DC(0, v21, 0);
  v22 = v21;
  v75 = v76;
  v23 = a1;
  v69 = v2;
  v70 = a1;
  v67 = v11;
  v68 = v12;
  if (v22)
  {
    v59 = v4;
    v24 = 0;
    v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v60 = *(a1 + 16);
    v58 = a1 + v25;
    v56 = v16;
    v57 = v12 + 16;
    v72 = (v12 + 8);
    v73 = v22;
    v55 = (v2 + 32);
    v26 = v74;
    while (v60 != v24)
    {
      if (v24 >= *(v23 + 16))
      {
        goto LABEL_23;
      }

      v27 = v26;
      v28 = v75;
      v29 = *(v12 + 16);
      v29(v16, v58 + *(v12 + 72) * v24, v11);
      v30 = v63;
      v29(v63, v16, v11);
      v31 = v59;
      sub_22C272854();
      v74 = v27;
      if (v27)
      {
        v42 = v30;
        v46 = v16;
LABEL_20:

        v54 = *v72;
        (*v72)(v42, v11);
        v54(v46, v11);

        return;
      }

      v32 = *v72;
      (*v72)(v30, v11);
      v32(v16, v11);
      v33 = *v55;
      v34 = v61;
      v35 = v71;
      (*v55)(v61, v31, v71);
      v76 = v28;
      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_22BE702DC(v36 > 1, v37 + 1, 1);
        v35 = v71;
        v75 = v76;
      }

      ++v24;
      v38 = v75;
      *(v75 + 16) = v37 + 1;
      v2 = v69;
      v33((v38 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v69 + 72) * v37), v34, v35);
      v22 = v73;
      v26 = v74;
      v23 = v70;
      v11 = v67;
      v12 = v68;
      v16 = v56;
      if (v73 == v24)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v26 = v74;
LABEL_11:
    v63 = (v12 + 16);
    v72 = (v12 + 8);
    v39 = (v2 + 32);
    while (1)
    {
      v40 = *(v23 + 16);
      v42 = v65;
      v41 = v66;
      if (v22 == v40)
      {

        return;
      }

      if (v22 >= v40)
      {
        break;
      }

      v43 = v23 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v44 = *(v12 + 72);
      v73 = v22;
      v45 = *(v12 + 16);
      v46 = v64;
      v45(v64, v43 + v44 * v22, v11);
      v45(v42, v46, v11);
      sub_22C272854();
      if (v26)
      {
        goto LABEL_20;
      }

      v74 = 0;
      v47 = *v72;
      (*v72)(v42, v11);
      v47(v46, v11);
      v48 = *v39;
      v49 = v62;
      v50 = v71;
      (*v39)(v62, v41, v71);
      v76 = v75;
      v52 = *(v75 + 16);
      v51 = *(v75 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_22BE702DC(v51 > 1, v52 + 1, 1);
        v50 = v71;
        v75 = v76;
      }

      v53 = v75;
      *(v75 + 16) = v52 + 1;
      v48((v53 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v52), v49, v50);
      v26 = v74;
      v22 = v73 + 1;
      v23 = v70;
      v11 = v67;
      v12 = v68;
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_22C221268(uint64_t a1)
{
  v70 = sub_22C272574();
  v2 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v55 - v6;
  MEMORY[0x28223BE20](v7);
  v67 = &v55 - v8;
  MEMORY[0x28223BE20](v9);
  v63 = &v55 - v10;
  v11 = sub_22C272754();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v64 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v17);
  v65 = &v55 - v18;
  MEMORY[0x28223BE20](v19);
  v66 = &v55 - v20;
  v21 = *(a1 + 16);
  v76 = MEMORY[0x277D84F90];
  sub_22BE70FB4(0, v21, 0);
  v22 = v21;
  v75 = v76;
  v68 = v12;
  v69 = a1;
  v71 = v2;
  if (v21)
  {
    v59 = v16;
    v60 = v4;
    v23 = 0;
    v61 = *(a1 + 16);
    v58 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v56 = v11;
    v57 = v12 + 16;
    v72 = (v12 + 8);
    v73 = v21;
    v55 = (v2 + 32);
    while (1)
    {
      v24 = v74;
      if (v61 == v23)
      {
        break;
      }

      if (v23 >= *(a1 + 16))
      {
        goto LABEL_22;
      }

      v25 = v23;
      v26 = v58 + *(v12 + 72) * v23;
      v27 = *(v12 + 16);
      v28 = v59;
      v27(v59, v26, v11);
      v29 = v64;
      v27(v64, v28, v11);
      sub_22C259290(&qword_27D915C98, MEMORY[0x277D728E8]);
      v30 = v60;
      sub_22C2703C4();
      if (v24)
      {
        v46 = v29;
        v45 = v28;
LABEL_19:

        v54 = *v72;
        (*v72)(v46, v11);
        v54(v45, v11);

        return;
      }

      v74 = 0;
      v31 = *v72;
      (*v72)(v29, v11);
      v31(v28, v11);
      v32 = *v55;
      v33 = v62;
      v34 = v70;
      (*v55)(v62, v30, v70);
      v76 = v75;
      v36 = *(v75 + 16);
      v35 = *(v75 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22BE70FB4(v35 > 1, v36 + 1, 1);
        v34 = v70;
        v75 = v76;
      }

      v23 = v25 + 1;
      v37 = v75;
      *(v75 + 16) = v36 + 1;
      v32((v37 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v36), v33, v34);
      v22 = v73;
      v12 = v68;
      a1 = v69;
      v11 = v56;
      if (v73 == v23)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v64 = (v12 + 16);
    v72 = (v12 + 8);
    v38 = (v71 + 32);
    while (1)
    {
      v39 = v74;
      v40 = *(a1 + 16);
      v41 = v67;
      if (v22 == v40)
      {

        return;
      }

      if (v22 >= v40)
      {
        break;
      }

      v42 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v43 = *(v12 + 72);
      v73 = v22;
      v44 = *(v12 + 16);
      v45 = v66;
      v44(v66, v42 + v43 * v22, v11);
      v46 = v65;
      v44(v65, v45, v11);
      sub_22C259290(&qword_27D915C98, MEMORY[0x277D728E8]);
      sub_22C2703C4();
      if (v39)
      {
        goto LABEL_19;
      }

      v74 = 0;
      v47 = *v72;
      (*v72)(v46, v11);
      v47(v45, v11);
      v48 = *v38;
      v49 = v63;
      v50 = v70;
      (*v38)(v63, v41, v70);
      v76 = v75;
      v52 = *(v75 + 16);
      v51 = *(v75 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_22BE70FB4(v51 > 1, v52 + 1, 1);
        v50 = v70;
        v75 = v76;
      }

      v53 = v75;
      *(v75 + 16) = v52 + 1;
      v48((v53 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v52), v49, v50);
      v22 = v73 + 1;
      v12 = v68;
      a1 = v69;
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void PersonQuery.Handle.init(transcript:)()
{
  sub_22C259EE8();
  sub_22BE1AE58();
  sub_22C25AB64();
}

void TranscriptProtoPersonQuery.Handle.init(handwritten:)()
{
  sub_22C259EE8();
  v0 = sub_22C25AB58(3);
  type metadata accessor for TranscriptProtoPersonQuery.Handle(v0);
  sub_22BE38954();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25AB64();
}

void QueryPayload.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  v223 = v20;
  v216 = v26;
  v27 = type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(0);
  v28 = sub_22BE19448(v27);
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  v206 = v29;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v30);
  sub_22BE19E94();
  v205 = v31;
  v32 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(v32);
  sub_22BE18000();
  MEMORY[0x28223BE20](v33);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v34);
  sub_22BE19E94();
  sub_22BE18950(v35);
  v36 = sub_22C2725C4();
  v37 = sub_22BE18910(v36, &v222);
  MEMORY[0x28223BE20](v37);
  sub_22BE17B98();
  sub_22C259D70();
  MEMORY[0x28223BE20](v38);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v39);
  sub_22C259B7C();
  MEMORY[0x28223BE20](v40);
  sub_22BE19E94();
  sub_22BE18950(v41);
  sub_22C272984();
  sub_22BE179D8();
  v209 = v42;
  MEMORY[0x28223BE20](v42);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v43);
  sub_22BE19E94();
  v45 = sub_22BE18950(v44);
  v46 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(v45);
  v47 = sub_22BE290A0(v46, &v224);
  MEMORY[0x28223BE20](v47);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v48);
  sub_22BE19E94();
  sub_22BE190A8(v49);
  v50 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  sub_22BE19448(v50);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v51);
  sub_22BE1A174();
  v53 = sub_22BE18950(v52);
  v54 = type metadata accessor for TranscriptProtoPersonQuery(v53);
  v55 = sub_22BE290A0(v54, &a10);
  MEMORY[0x28223BE20](v55);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v56);
  sub_22BE19E94();
  sub_22BE18950(v57);
  v219 = sub_22C272874();
  sub_22BE179D8();
  v222 = v58;
  MEMORY[0x28223BE20](v59);
  sub_22BE17B98();
  v202 = v60;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v61);
  sub_22BE409D8();
  MEMORY[0x28223BE20](v62);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v63);
  sub_22BE3CEC0(v64, v65, v66, v67, v68, v69, v70, v71, v198);
  sub_22C272594();
  sub_22BE179D8();
  v220 = v73;
  v221 = v72;
  MEMORY[0x28223BE20](v72);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v74);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v75);
  sub_22BE19490();
  v204 = v76;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v77);
  sub_22BEC0508();
  MEMORY[0x28223BE20](v78);
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v79);
  v80 = sub_22BE195C4();
  v81 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(v80);
  v82 = sub_22BE19448(v81);
  MEMORY[0x28223BE20](v82);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v83);
  v84 = sub_22BE20558();
  type metadata accessor for TranscriptProtoQueryPayloadEnum(v84);
  sub_22BE18000();
  MEMORY[0x28223BE20](v85);
  sub_22BE17CBC();
  v86 = v223;
  sub_22C1042EC();
  v223 = v86;
  if (v86)
  {
    sub_22BE1B544();
LABEL_36:
    sub_22BE1AE58();
LABEL_37:
    sub_22BE18478();
  }

  else
  {
    sub_22BE3911C();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BE39424();
        sub_22C25A8AC();
        sub_22BE3B620(v168, v169);
        sub_22C1088E8();
        sub_22C25ABA8();
        sub_22BE1AA68(v170, v171);
        v173 = *(v209 + 1);
        v172 = *(v209 + 2);
        sub_22BE22944();
        sub_22BE22814();

        v174 = v223;
        sub_22C0FE2E8();
        v223 = v174;
        if (v174)
        {

          sub_22BE1B544();
          sub_22C1CEFC8();
          sub_22BE1AE58();
          sub_22BE1AE58();
          goto LABEL_36;
        }

        sub_22BE1B544();
        sub_22C1CEFC8();
        sub_22BE1AE58();
        sub_22BE1AE58();
        v175 = HIBYTE(a10);
        v176 = *v209;
        v177 = &v209[*(v199 + 28)];
        v179 = *v177;
        v178 = v177[1];

        sub_22BE2565C();
        sub_22BE1AE58();
        *v216 = v173;
        *(v216 + 8) = v172;
        *(v216 + 16) = v175;
        *(v216 + 17) = v176;
        *(v216 + 24) = v179;
        *(v216 + 32) = v178;
        type metadata accessor for QueryPayload(0);
        sub_22BE1ACEC();
        goto LABEL_43;
      case 2u:
        sub_22BE385E4();
        sub_22C25A87C();
        sub_22BE3B620(v150, v151);
        sub_22C259FB8();
        sub_22BE46048();
        sub_22BE1AA68(v152, v153);
        sub_22BE2ED7C();
        sub_22BE3C6E0();
        v154 = v223;
        sub_22C1022DC();
        v223 = v154;
        if (v154)
        {
          goto LABEL_29;
        }

        sub_22BE2BD40();
        sub_22BE260B8();
        sub_22C25A5E0();
        v155();
        sub_22BE44844();
        v156 = v223;
        sub_22C272974();
        v223 = v156;
        if (!v156)
        {
          v180 = sub_22BE1AB74();
          v181(v180);
          sub_22BE1B544();
          sub_22C1CEFC8();
          sub_22BE1AE58();
          sub_22C25A164();
          sub_22BE1AE58();
          v183 = *v22;
          v182 = v22[1];

          sub_22BE39EAC();
          sub_22BE1AE58();
          v184 = sub_22BE1A6BC();
          v185(v184);
          type metadata accessor for QueryPayload.StringQuery(0);
          sub_22BE48874();
          *v186 = v183;
          v186[1] = v182;
          type metadata accessor for QueryPayload(0);
          sub_22BE23BA8();
          goto LABEL_43;
        }

        v157 = sub_22BE1AB74();
        v158(v157);
LABEL_29:
        sub_22BE1B544();
        sub_22C1CEFC8();
        sub_22BE1AE58();
        sub_22C25A164();
        sub_22BE1AE58();
        goto LABEL_36;
      case 3u:
        sub_22BE385E4();
        sub_22BE46048();
        sub_22BE3B620(v159, v160);
        sub_22C1088AC();
        sub_22BE37B14();
        sub_22BE1AA68(v161, v162);
        sub_22BE351B8();
        v163 = v223;
        sub_22C1022DC();
        v223 = v163;
        if (v163)
        {
          goto LABEL_33;
        }

        sub_22BE2BD40();
        sub_22BE37B20();
        sub_22C25A5E0();
        v164();
        v165 = v223;
        sub_22C272974();
        v223 = v165;
        if (!v165)
        {
          v187 = sub_22BE33FCC();
          v188(v187);
          sub_22BE1B544();
          sub_22C1CEFC8();
          sub_22BE1AE58();
          sub_22C25A14C();
          sub_22BE1AE58();
          v189 = *v21;

          sub_22BE1AB74();
          sub_22BE1AE58();
          v190 = sub_22BE29264();
          v191(v190);
          *(v216 + *(type metadata accessor for QueryPayload.IdentifierQuery(0) + 20)) = v189;
          type metadata accessor for QueryPayload(0);
          sub_22BE23BA8();
          goto LABEL_43;
        }

        v166 = sub_22BE33FCC();
        v167(v166);
LABEL_33:
        sub_22BE1B544();
        sub_22C1CEFC8();
        sub_22BE1AE58();
        sub_22C25A14C();
        sub_22BE1AE58();
        goto LABEL_36;
      case 4u:
        v122 = sub_22BE385E4();
        sub_22BE3B620(v122, v205);
        v123 = sub_22BE385E4();
        sub_22BE1AA68(v123, v206);
        sub_22BE5CE4C(&qword_27D9155C8, &unk_22C2CC7D0);
        v124 = sub_22C273D04();
        v125 = 0;
        sub_22BE26A98();
        v208 = (v220 + 8);
        sub_22C25AA88(v222 + 32);
        sub_22BE36638(v126);
        v127 = v216;
        sub_22C1CEFC8();
        v212 = v124;
        v200 = v129;
        while (2)
        {
          if (v128)
          {
            sub_22BE22BE8();
            v214 = v131;
          }

          else
          {
            v132 = v125;
            do
            {
              v125 = v132 + 1;
              if (__OFADD__(v132, 1))
              {
                __break(1u);
                goto LABEL_47;
              }

              if (v125 >= v129)
              {
                sub_22BE1B544();
                sub_22BE1AE58();
                sub_22BE1AE58();
                sub_22BE19454();
                sub_22BE1AE58();
                *v127 = v124;
                type metadata accessor for QueryPayload(0);
                sub_22BE31160();
                goto LABEL_43;
              }

              sub_22C25AC58();
            }

            while (!v133);
            sub_22BE4878C();
            v214 = v134;
          }

          v135 = v130 | (v125 << 6);
          sub_22C25A8B8();
          v137 = v136[1];
          v215 = *v136;
          v139 = *(v138 + 16);
          v140 = sub_22C25A794();
          (v139)(v140);
          sub_22C25A254();
          v139();
          v141 = sub_22BE1B18C();
          (v139)(v141);

          sub_22C25A610();
          v142 = v223;
          sub_22C272864();
          v223 = v142;
          if (v142)
          {
            v192 = *v208;
            v193 = sub_22BE1AEE4();
            v192(v193);

            v194 = sub_22BE31038();
            v192(v194);
            sub_22BE1B544();
            sub_22C1CEFC8();
            sub_22BE1AE58();
            sub_22BE1AE58();
            goto LABEL_36;
          }

          v143 = *v208;
          v144 = sub_22BE1AEE4();
          v143(v144);
          v145 = v222;
          v146 = *(v222 + 32);
          v146(v217, v202, v219);
          (v143)(v204, v221);
          sub_22C259F70();
          sub_22C25977C(v147);
          v124 = v212;
          v148 = (v212[6] + 16 * v135);
          *v148 = v215;
          v148[1] = v137;
          v146(v212[7] + *(v145 + 72) * v135, v217, v219);
          sub_22C25A864();
          if (!v120)
          {
            v212[2] = v149;
            v127 = v216;
            sub_22C1CEFC8();
            v129 = v200;
            v128 = v214;
            continue;
          }

          goto LABEL_48;
        }

      default:
        v87 = sub_22BE385E4();
        v89 = v88;
        sub_22BE3B620(v87, v88);
        sub_22BE19EBC();
        sub_22BEE94A4();
        sub_22BE1AA68(v90, v91);
        v92 = *v89;
        sub_22BE5CE4C(&qword_27D9155C8, &unk_22C2CC7D0);
        sub_22BE3D3E0();
        sub_22C273D04();
        v93 = 0;
        sub_22C25A43C();
        sub_22BE26A98();
        v96 = v95 >> 6;
        v207 = (v220 + 8);
        v210 = v92;
        v218 = v97;
        v203 = v95 >> 6;
        break;
    }

    while (v94)
    {
      sub_22BE22BE8();
      v211 = v100;
LABEL_12:
      v104 = v98 | (v93 << 6);
      v105 = (*(v210 + 48) + 16 * v104);
      v106 = v105[1];
      v213 = *v105;
      v107 = *(v99 + 16);
      v107(v23, *(v210 + 56) + *(v99 + 72) * v104, v221);
      v108 = sub_22BE31038();
      (v107)(v108);
      v109 = sub_22BE36680();
      (v107)(v109);

      v110 = v223;
      sub_22C272864();
      v223 = v110;
      if (v110)
      {
        v195 = *v207;
        v196 = sub_22BE336E8();
        v195(v196);

        v197 = sub_22BE38FD8();
        v195(v197);
        sub_22BE1B544();
        sub_22C1CEFC8();
        sub_22BE1AE58();
        sub_22C25A134();
        sub_22BE1AE58();
        goto LABEL_36;
      }

      v111 = *v207;
      v112 = sub_22BE336E8();
      v111(v112);
      v113 = *(v222 + 32);
      v114 = sub_22BE27BA4();
      v113(v114);
      v115 = sub_22BE1AB1C();
      v111(v115);
      sub_22C259DA0();
      sub_22C25977C(v116);
      v118 = (v218[6] + 16 * v117);
      *v118 = v213;
      v118[1] = v106;
      (v113)(v218[7] + *(v222 + 72) * v117, v201, v219);
      v119 = v218[2];
      v120 = __OFADD__(v119, 1);
      v121 = v119 + 1;
      if (v120)
      {
        goto LABEL_49;
      }

      v218[2] = v121;
      v96 = v203;
      v94 = v211;
    }

    v101 = v93;
    while (1)
    {
      v93 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        break;
      }

      if (v93 >= v96)
      {
        sub_22BE1B544();
        sub_22BE1AE58();
        sub_22C25A134();
        sub_22BE1AE58();
        sub_22BE18944();
        sub_22BE1AE58();
        *v216 = v218;
        type metadata accessor for QueryPayload(0);
        sub_22BE23BA8();
LABEL_43:
        swift_storeEnumTagMultiPayload();
        goto LABEL_37;
      }

      sub_22C25AC58();
      if (v102)
      {
        sub_22BE4878C();
        v211 = v103;
        goto LABEL_12;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }
}

void TranscriptProtoQueryPayload.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v25;
  a20 = v26;
  v27 = sub_22C259F34();
  v28 = type metadata accessor for QueryPayload.IdentifierQuery(v27);
  v29 = sub_22BE290A0(v28, &a16);
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v30);
  sub_22BE19E94();
  sub_22BE18950(v31);
  sub_22C272984();
  sub_22BE179D8();
  v200 = v32;
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  v33 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v33);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1A174();
  v35 = sub_22BE183BC();
  v36 = type metadata accessor for QueryPayload.StringQuery(v35);
  v37 = sub_22BE290A0(v36, &a13);
  MEMORY[0x28223BE20](v37);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v38);
  sub_22BE19E94();
  sub_22C259DB4(v39);
  v40 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  sub_22BE19448(v40);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A174();
  v43 = v42;
  sub_22BE183BC();
  v218 = sub_22C272594();
  sub_22BE179D8();
  v216 = v44;
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  v206 = v46;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v47);
  sub_22BE19490();
  v215 = v48;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v49);
  sub_22C1CEC1C();
  MEMORY[0x28223BE20](v50);
  sub_22C259838(v51, v52, v53, v54, v55, v56, v57, v58, v192);
  v220 = sub_22C272874();
  sub_22BE179D8();
  v217 = v59;
  MEMORY[0x28223BE20](v60);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v61);
  sub_22C259B7C();
  MEMORY[0x28223BE20](v62);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v63);
  sub_22BE19E94();
  v65 = sub_22C259DF0(v64);
  Payload = type metadata accessor for QueryPayload(v65);
  sub_22BE18000();
  MEMORY[0x28223BE20](v67);
  v68 = sub_22BE1AD20();
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(v68);
  sub_22BE18000();
  MEMORY[0x28223BE20](v70);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v71);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v72);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v73);
  sub_22BE19E94();
  v207 = v74;
  v75 = sub_22BE183BC();
  v76 = type metadata accessor for TranscriptProtoQueryPayload(v75);
  MEMORY[0x28223BE20](v76);
  sub_22BE1955C();
  sub_22C25975C();
  sub_22BE19DC4(v77, v78, v79, v80);
  v213 = v22;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v81 = sub_22BE3D5C8();
  v208 = PayloadEnum;
  sub_22BE19DC4(v81, v82, v83, PayloadEnum);
  v212 = v23;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25A20C();
  v84 = sub_22BE36658();
  sub_22BE1AA68(v84, v85);
  sub_22BE2BA80();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v170 = *v24;
      v169 = v24[1];
      v222 = *(v24 + 17);
      v171 = v24[4];
      v219 = v24[3];
      v172 = *(v24 + 16);

      sub_22C107718(v172, v43);
      if (v21)
      {
        swift_bridgeObjectRelease_n();

        goto LABEL_28;
      }

      v180 = type metadata accessor for TranscriptProtoPersonQuery(0);
      type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
      sub_22BE1A140();
      sub_22BE19DC4(v181, v182, v183, v184);
      v185 = (v20 + *(v180 + 28));

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1B6AC();
      sub_22BE1B544();
      sub_22BE1AE58();
      *(v20 + 8) = v170;
      *(v20 + 16) = v169;
      sub_22BE2343C();

      *v20 = v222;
      *v185 = v219;
      v185[1] = v171;
      v152 = v208;
      sub_22BE447E4();
      swift_storeEnumTagMultiPayload();
      sub_22BE324B0();
      sub_22BE3B620(v20, v207);
      v86 = v213;
      goto LABEL_32;
    case 2u:
      sub_22BE44744();
      sub_22C108C10();
      sub_22BE3B620(v134, v135);
      sub_22BE29370();
      sub_22C25A87C();
      sub_22BE1AA68(v136, v137);
      v138 = sub_22C259D90();
      v139(v138, Payload, v200);
      sub_22C272964();
      v140 = sub_22BE18944();
      v141(v140);
      v142 = sub_22C2725C4();
      v143 = sub_22BE360A0();
      sub_22BE19DC4(v143, v144, v145, v142);
      sub_22BE2ED7C();
      v147 = (Payload + v146);
      v148 = v147[1];
      v221 = *v147;
      type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
      sub_22BE1A140();
      sub_22BE19DC4(v149, v150, v151, v142);

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1B6AC();
      v86 = type metadata accessor for QueryPayload.StringQuery;
      sub_22BE1AE58();
      sub_22BE431C0();
      sub_22BE1AE58();
      sub_22BE1B544();
      sub_22C25ADEC();
      sub_22BE2343C();
      *v207 = v221;
      v207[1] = v148;
      v152 = PayloadEnum;
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    case 3u:
      sub_22BE44744();
      sub_22C25A87C();
      sub_22BE3B620(v153, v154);
      v155 = sub_22C259FB8();
      sub_22BE1AA68(v155, v199);
      v156 = sub_22C259D90();
      v157(v156, v199, v200);
      sub_22C272964();
      v158 = sub_22BE18944();
      v159(v158);
      v160 = sub_22C2725C4();
      v161 = sub_22C25974C();
      sub_22BE19DC4(v161, v162, v163, v160);
      sub_22BE2ED7C();
      v165 = *(v199 + v164);
      type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
      sub_22BE33FC0();
      sub_22BE1A140();
      sub_22BE19DC4(v166, v167, v168, v160);

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1B6AC();
      v86 = type metadata accessor for QueryPayload.IdentifierQuery;
      sub_22BE1AE58();
      sub_22C0B1AF0();
      sub_22BE1AE58();
      sub_22BE1B544();
      sub_22C25ADEC();
      sub_22BE2343C();
      *v207 = v165;
      v152 = PayloadEnum;
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    case 4u:
      v111 = *v24;
      sub_22BE5CE4C(&qword_27D9155F0, &qword_22C2CC8C8);
      sub_22BE3D3E0();
      v86 = sub_22C273D04();
      v112 = 0;
      sub_22C25A43C();
      v198 = v113;
      sub_22BE185B4();
      v116 = v115 & v114;
      sub_22C25A350();
      sub_22C1CEFB0(v117);
      v202 = (v217 + 8);
      sub_22C25AA88(v216 + 32);
      sub_22BE417A8(v118);
      v204 = v119;
      while (2)
      {
        if (v116)
        {
          sub_22C25A478();
        }

        else
        {
          v121 = v112;
          do
          {
            v112 = v121 + 1;
            if (__OFADD__(v121, 1))
            {
              __break(1u);
              goto LABEL_38;
            }

            if (v112 >= v195)
            {

              type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(0);
              v173 = v194;
              _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
              sub_22BE1B6AC();
              sub_22BE1B544();
              sub_22C25ADEC();
              *v194 = v86;
              v152 = PayloadEnum;
              goto LABEL_31;
            }

            ++v121;
          }

          while (!*(v198 + 8 * v112));
          sub_22BE29270();
          v116 = v123 & v122;
        }

        v124 = v120 | (v112 << 6);
        v125 = *(v217 + 16);
        v125(v211, *(v111 + 56) + *(v217 + 72) * v124, v220);
        v126 = sub_22BF6AC14();
        (v125)(v126);

        sub_22C272854();
        if (v21)
        {
          v186 = *v202;
          v187 = sub_22BE1824C();
          v186(v187);

          v188 = sub_22BE29454();
          v186(v188);

          goto LABEL_28;
        }

        v127 = *v202;
        v128 = sub_22BE1824C();
        v127(v128);
        v129 = *(v216 + 32);
        v129(v215, v206, v218);
        v130 = sub_22C25AD50();
        v127(v130);
        sub_22BE270BC();
        sub_22C25977C(v131);
        v86 = v204;
        sub_22C25A8D0((*(v204 + 48) + 16 * v124));
        (v129)(v132 + *(v216 + 72) * v124);
        sub_22C25A500();
        if (!v110)
        {
          *(v204 + 16) = v133;
          continue;
        }

        goto LABEL_39;
      }

    default:
      sub_22BE5CE4C(&qword_27D9155F0, &qword_22C2CC8C8);
      sub_22BE3D3E0();
      v86 = sub_22C273D04();
      v87 = 0;
      sub_22C25A43C();
      v196 = v88;
      sub_22BE26A98();
      v90 = v89 >> 6;
      v201 = (v217 + 8);
      sub_22C25AA88(v216 + 32);
      sub_22BE417A8(v91);
      v93 = v21;
      v203 = v94;
      v197 = v90;
      break;
  }

  while (1)
  {
    if (!v92)
    {
      v97 = v87;
      while (1)
      {
        v87 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          break;
        }

        if (v87 >= v90)
        {

          type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
          v173 = v193;
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          sub_22BE1B6AC();
          sub_22BE1B544();
          sub_22C25ADEC();
          *v193 = v86;
          v152 = v208;
          sub_22BE34198();
LABEL_31:
          swift_storeEnumTagMultiPayload();
          sub_22BE324B0();
          sub_22BE3B620(v173, v207);
LABEL_32:
          sub_22BE233E8(v212, &qword_27D90EA88, &unk_22C2AE690);
          sub_22BE324B0();
          v174 = sub_22BE33FCC();
          sub_22BE3B620(v174, v175);
          v176 = sub_22BE2500C();
          sub_22BE19DC4(v176, v177, v178, v152);
          v179 = sub_22BE19EBC();
          sub_22BE1AA68(v179, v86);
          sub_22BE1B544();
          goto LABEL_33;
        }

        ++v97;
        if (*(v196 + 8 * v87))
        {
          v223 = v93;
          sub_22BE4878C();
          v210 = v98;
          goto LABEL_10;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    v223 = v93;
    sub_22BE22BE8();
    v210 = v96;
LABEL_10:
    v99 = v95 | (v87 << 6);
    sub_22C25A8B8();
    v101 = *(v217 + 16);
    v101(v209, v100 + *(v217 + 72) * v99, v220);
    v102 = sub_22BE33BE8();
    (v101)(v102);

    sub_22C272854();
    if (v223)
    {
      break;
    }

    v103 = *v201;
    v104 = sub_22BE3E79C();
    v103(v104);
    v105 = *(v216 + 32);
    v105(v214, v205, v218);
    v106 = sub_22BE426E8();
    v103(v106);
    sub_22C259F70();
    sub_22C25977C(v107);
    v86 = v203;
    sub_22C25A8D0((*(v203 + 48) + 16 * v99));
    (v105)(v108 + *(v216 + 72) * v99);
    sub_22C25A500();
    if (v110)
    {
      goto LABEL_40;
    }

    *(v203 + 16) = v109;
    v93 = 0;
    v90 = v197;
    v92 = v210;
  }

  v189 = *v201;
  v190 = sub_22BE3E79C();
  v189(v190);

  v191 = sub_22BE426E8();
  v189(v191);

LABEL_28:
  sub_22BE1B6AC();
  sub_22BE1AE58();
LABEL_33:
  sub_22BE1AE58();
  sub_22BE46D98();
  sub_22BE18478();
}

void QueryPayload.StringQuery.init(transcript:)()
{
  sub_22BE19130();
  sub_22BE38A98();
  sub_22BE2054C(v2);
  sub_22C2725C4();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v4);
  sub_22BE39EE8();
  sub_22C272984();
  sub_22BE41130();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE1AD20();
  type metadata accessor for TranscriptProtoQueryPayload.StringQuery(v6);
  sub_22C25A53C();
  sub_22C25AB04();
  sub_22C1022DC();
  if (v0)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A858();
    v7 = sub_22BF0AFB8();
    v8(v7);
    sub_22BE44844();
    sub_22C272974();
    v9 = sub_22BE33560();
    v10(v9);
    v11 = *v1;
    v12 = v1[1];

    sub_22BE379D8();
    sub_22BE1AE58();
    v13 = sub_22BE354DC();
    v14(v13);
    type metadata accessor for QueryPayload.StringQuery(0);
    sub_22C25A0A4();
    *v15 = v11;
    v15[1] = v12;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void QueryPayload.IdentifierQuery.init(transcript:)()
{
  sub_22BE19130();
  sub_22C18F140();
  sub_22BE2054C(v2);
  sub_22C2725C4();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v4);
  sub_22BE39EE8();
  sub_22C272984();
  sub_22BE41130();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE1AD20();
  type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(v6);
  sub_22C1022DC();
  if (v1)
  {
    sub_22BE26148();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A080();
    v7 = sub_22BF0AFB8();
    v8(v7);
    sub_22BE44844();
    sub_22C272974();
    v9 = sub_22BE33560();
    v10(v9);
    v11 = *v0;

    sub_22BE26148();
    sub_22BE1AE58();
    v12 = sub_22BE1A6BC();
    v13(v12);
    *(v14 + *(type metadata accessor for QueryPayload.IdentifierQuery(0) + 20)) = v11;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C223BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE3129C();
  sub_22BE417A8(v13);
  v66 = sub_22C272874();
  sub_22BE179D8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE17B98();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v17);
  sub_22BE4202C(v18, v19, v20, v21, v22, v23, v24, v25, v58);
  sub_22C272594();
  sub_22C2594A0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v29);
  sub_22BE426BC();
  MEMORY[0x28223BE20](v30);
  sub_22BE324EC();
  v31 = *v10;
  sub_22BE5CE4C(&qword_27D9155C8, &unk_22C2CC7D0);
  sub_22BE3D3E0();
  v32 = sub_22C273D04();
  v33 = 0;
  sub_22C25A43C();
  v59 = v34;
  sub_22BE26A98();
  v37 = v36 >> 6;
  v63 = v27;
  v61 = (v27 + 8);
  v60 = v36 >> 6;
  v62 = v38;
  while (1)
  {
    if (!v35)
    {
      v41 = v33;
      while (1)
      {
        v33 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v33 >= v37)
        {
          sub_22BE1AE58();
          sub_22C1CF2AC();
          *v54 = v32;
          goto LABEL_13;
        }

        ++v41;
        if (*(v59 + 8 * v33))
        {
          sub_22BE4878C();
          v64 = v42;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    sub_22BE22BE8();
    v64 = v40;
LABEL_9:
    v43 = *(v63 + 16);
    v43(v12, *(v31 + 56) + *(v63 + 72) * (v39 | (v33 << 6)), v11);
    v44 = sub_22BE25D0C();
    (v43)(v44);
    v45 = sub_22BE3CC34();
    (v43)(v45);

    sub_22C272864();
    if (a10)
    {
      break;
    }

    a10 = 0;
    v46 = *v61;
    v47 = sub_22BE3AF28();
    v46(v47);
    v48 = *(v15 + 32);
    v48(v65, v67, v66);
    (v46)(v12, v11);
    sub_22C259DA0();
    sub_22C25977C(v49);
    v32 = v62;
    sub_22C25AB88(v62[6]);
    v48(v62[7] + *(v15 + 72) * v50, v65, v66);
    v51 = v62[2];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      goto LABEL_16;
    }

    v62[2] = v53;
    v37 = v60;
    v35 = v64;
  }

  v55 = *v61;
  v56 = sub_22BE3AF28();
  v55(v56);

  v57 = sub_22C259FF4();
  v55(v57);
  sub_22BE1AE58();
LABEL_13:
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoQueryPayload.StringQuery.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259F34();
  v2 = sub_22C272984();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE2379C();
  v4 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A8B4();
  v6 = sub_22C259E4C();
  v7(v6, v1, v2);
  sub_22C272964();
  v8 = sub_22BE3E8FC();
  v9(v8);
  v10 = sub_22C2725C4();
  v11 = sub_22BE33C68();
  v14 = sub_22C18F17C(v11, v12, v13, v10);
  type metadata accessor for QueryPayload.StringQuery(v14);
  sub_22C25A948();
  v16 = *v15;
  v17 = v15[1];
  type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  sub_22BE1A140();
  sub_22BE19DC4(v18, v19, v20, v10);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9830();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v0 = v16;
  v0[1] = v17;
  sub_22BE22978();
  sub_22BE18478();
}

void TranscriptProtoQueryPayload.IdentifierQuery.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259F34();
  v2 = sub_22C272984();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE2379C();
  v4 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A8B4();
  v6 = sub_22C259E4C();
  v7(v6, v1, v2);
  sub_22C272964();
  v8 = sub_22BE3E8FC();
  v9(v8);
  v10 = sub_22C2725C4();
  v11 = sub_22BE33C68();
  v14 = sub_22C18F17C(v11, v12, v13, v10);
  v15 = *(v1 + *(type metadata accessor for QueryPayload.IdentifierQuery(v14) + 20));
  type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  sub_22BE1A140();
  sub_22BE19DC4(v16, v17, v18, v10);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9830();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v0 = v15;
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C224310()
{
  sub_22BE19130();
  v41 = v4;
  v42 = v5;
  v6 = v1;
  sub_22BE23C8C();
  v50 = sub_22C272594();
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  v51 = v10;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E94();
  sub_22C259814(v12);
  sub_22C272874();
  sub_22C259488();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE324EC();
  v17 = *v0;
  sub_22BE5CE4C(&qword_27D9155F0, &qword_22C2CC8C8);
  v18 = sub_22C273D04();
  v19 = 0;
  v44 = v17 + 64;
  sub_22BE26A98();
  v43 = v21 >> 6;
  v47 = v22;
  v46 = (v14 + 8);
  v45 = v8;
  while (1)
  {
    if (!v20)
    {
      v25 = v19;
      while (1)
      {
        v19 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v19 >= v43)
        {

          v41(0);
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          *v42 = v18;
          goto LABEL_13;
        }

        ++v25;
        if (*(v44 + 8 * v19))
        {
          sub_22BE4878C();
          v48 = v26;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    sub_22BE22BE8();
    v48 = v24;
LABEL_9:
    v27 = v23 | (v19 << 6);
    sub_22C25A8B8();
    v29 = *(v14 + 16);
    v29(v3, v28 + *(v14 + 72) * v27, v2);
    v30 = sub_22BE25D0C();
    (v29)(v30);

    sub_22C272854();
    if (v6)
    {
      break;
    }

    v31 = *v46;
    v32 = sub_22BE1B328();
    v31(v32);
    v33 = *(v45 + 32);
    v33(v49, v51, v50);
    (v31)(v3, v2);
    sub_22C259F70();
    sub_22C25977C(v34);
    v18 = v47;
    sub_22C25A8D0((*(v47 + 48) + 16 * v27));
    v33(v35 + *(v45 + 72) * v27, v49, v50);
    sub_22C25A500();
    if (v37)
    {
      goto LABEL_16;
    }

    *(v47 + 16) = v36;
    v6 = 0;
    v20 = v48;
  }

  v38 = *v46;
  v39 = sub_22BE1B328();
  v38(v39);

  v40 = sub_22BE3CEF4();
  v38(v40);

LABEL_13:
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t IntelligenceFlowError.init(transcript:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

  v3 = sub_22BE1A8C4();
  sub_22C24F544(v3, v4, v1, 0);
  sub_22C26E5E4();
  sub_22C259990();
  return sub_22BE1AE58();
}

uint64_t TranscriptProtoIntelligenceFlowError.init(handwritten:)()
{
  sub_22C259E88();
  v2 = sub_22C26E5A4();
  v3 = [v2 domain];

  v4 = sub_22C273024();
  v6 = v5;

  v7 = sub_22C26E5A4();
  v8 = [v7 code];

  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22C25A67C();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26E5D4();
  sub_22BE18524();
  result = (*(v9 + 8))(v1);
  *v0 = v4;
  v0[1] = v6;
  v0[2] = v8;
  return result;
}

void RequestContent.SystemPromptResolution.UserAction.init(transcript:)()
{
  sub_22BE19130();
  v54 = v4;
  v5 = sub_22C25A764();
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE1955C();
  sub_22C272594();
  sub_22BE179D8();
  v53 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v10);
  sub_22BE2351C();
  MEMORY[0x28223BE20](v11);
  sub_22C1CEC08(v12, v13, v14, v15, v16, v17, v18, v19, v52);
  v20 = sub_22BE2590C();
  v22 = sub_22BE5CE4C(v20, v21);
  sub_22BE19448(v22);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE46DE8();
  v25 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(v24);
  sub_22BE18000();
  MEMORY[0x28223BE20](v26);
  sub_22BE28FD8();
  sub_22BE291B0();
  sub_22C18FCEC();
  sub_22BE22814();
  v27 = sub_22BE391E8();
  sub_22BE1AB5C(v27, v28, v25);
  if (v29)
  {
    sub_22BE233E8(v0, &qword_27D90ED58, &qword_22C2CC940);
    v30 = sub_22BE5CE4C(&qword_27D915610, &qword_22C2CC948);
    sub_22BE43258(v30);
    sub_22BE3D554();
    v31 = sub_22C108598();
    v32 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v31);
    sub_22C259EA0(v32, v33, v34, v35, v36, v37);
    sub_22BE1A0B4();
    sub_22BE1AE58();
  }

  else
  {
    v38 = sub_22BE19EBC();
    sub_22BE3B620(v38, v3);
    sub_22C0B1AF0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        (*(v53 + 32))();
        v43 = *(v53 + 16);
        v44 = sub_22BE2BA80();
        v43(v44);
        v45 = sub_22BE180C8();
        v43(v45);
        sub_22C272864();
        if (v1)
        {
          v46 = *(v53 + 8);
          v47 = sub_22BE194C4();
          v46(v47);
          sub_22BE1A0B4();
          sub_22BE1AE58();
          v48 = sub_22BE25C94();
          v46(v48);
        }

        else
        {
          v49 = *(v53 + 8);
          v50 = sub_22BE194C4();
          v49(v50);
          sub_22BE1A0B4();
          sub_22BE1AE58();
          v51 = sub_22BE25C94();
          v49(v51);
          type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
          sub_22BE1ACEC();
          swift_storeEnumTagMultiPayload();
        }

        break;
      case 3:
        sub_22BE1A0B4();
        sub_22BE1AE58();
        *v54 = *v3;
        type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
        sub_22BE23BA8();
        goto LABEL_11;
      case 4:
        sub_22BE1A0B4();
        sub_22BE1AE58();
        v41 = sub_22C259FB8();
        sub_22BE3B620(v41, v2);
        v42 = *v2;
        sub_22BE291DC();
        sub_22BE1AE58();
        *v54 = v42;
        type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
        sub_22BE1ACEC();
        goto LABEL_11;
      case 5:
        sub_22BE1A0B4();
        sub_22BE1AE58();
        sub_22BE3E76C();
        sub_22BE1AE58();
        type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
        sub_22C25ADD4();
        goto LABEL_11;
      default:
        sub_22BE1A0B4();
        sub_22BE1AE58();
        v40 = sub_22BE3859C(*v3);
        type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v40);
        sub_22BE23BA8();
LABEL_11:
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  sub_22BE19650();
  sub_22BE18478();
}

void RequestContent.SystemPromptResolution.ResolutionInput.init(transcript:)()
{
  sub_22BE19130();
  v5 = sub_22C25A3B4(v4);
  v6 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE28A70(v8, v63);
  MEMORY[0x28223BE20](v9);
  v18 = sub_22BE4202C(v10, v11, v12, v13, v14, v15, v16, v17, v64);
  v19 = type metadata accessor for TranscriptProtoStatementID(v18);
  v20 = sub_22BE19448(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE3C444(v21, v65);
  sub_22C26E684();
  sub_22BE179D8();
  v66 = v23;
  v67 = v22;
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  v25 = sub_22BE48A8C(v24);
  type metadata accessor for TranscriptProtoRequestContentTextContent(v25);
  sub_22BE18000();
  MEMORY[0x28223BE20](v26);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v27);
  sub_22BE32374();
  v28 = sub_22BE2565C();
  v30 = sub_22BE5CE4C(v28, v29);
  sub_22BE19448(v30);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  v32 = sub_22BE250C8();
  v33 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(v32);
  sub_22BE18000();
  MEMORY[0x28223BE20](v34);
  sub_22BE18DFC();
  sub_22BE1BF88();
  sub_22BE22814();
  v35 = sub_22BFB1A7C();
  sub_22BE1AB5C(v35, v36, v33);
  if (v37)
  {
    sub_22BE233E8(v1, &qword_27D90ECD8, &qword_22C2CC950);
    v38 = sub_22BE5CE4C(&qword_27D915618, &qword_22C2CC958);
    sub_22BE43258(v38);
    sub_22BE3D554();
    v39 = sub_22C108598();
    v40 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v39);
    sub_22C259EA0(v40, v41, v42, v43, v44, v45);
    sub_22BE18334();
LABEL_4:
    sub_22BE1AE58();
  }

  else
  {
    v46 = sub_22C1088AC();
    sub_22BE3B620(v46, v0);
    sub_22BE29454();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v52 = sub_22BE29370();
        sub_22BE3B620(v52, v70);
        v53 = sub_22BE431F0();
        sub_22BE1AA68(v53, v69);
        v54 = sub_22C259EBC();
        RequestContent.SpeechContent.init(transcript:)(v54, v55, v56, v57, v58, v59, v60, v61, v66, v67);
        sub_22BE18334();
        sub_22BE1AE58();
        sub_22C2596E0();
        sub_22BE1AE58();
        if (!v72)
        {
          type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
          sub_22BE23BA8();
          goto LABEL_12;
        }

        break;
      case 2:
      case 3:
        sub_22BE18334();
        sub_22BE1AE58();
        type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
        sub_22C25ADD4();
        goto LABEL_12;
      default:
        v48 = sub_22BE29370();
        sub_22BE3B620(v48, v2);
        v49 = sub_22C259E7C();
        sub_22BE1AA68(v49, v3);
        v51 = *v3;
        v50 = v3[1];

        sub_22C1026C4();
        if (v72)
        {

          sub_22BE18334();
          sub_22BE1AE58();
          sub_22C259AA8();
          sub_22BE1AE58();
          sub_22BE3C968();
          goto LABEL_4;
        }

        sub_22C26E664();
        sub_22BE18334();
        sub_22BE1AE58();
        sub_22BE18B80();
        sub_22BE1AE58();
        sub_22C259AA8();
        sub_22BE1AE58();
        sub_22BE3C968();
        sub_22BE1AE58();
        *v71 = v51;
        *(v71 + 1) = v50;
        v62 = type metadata accessor for RequestContent.TextContent(0);
        (*(v66 + 32))(&v71[*(v62 + 20)], v68, v67);
        type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
        sub_22BE23BA8();
LABEL_12:
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoSystemPromptResolutionInput.init(handwritten:)()
{
  sub_22BE19130();
  v5 = sub_22BE3C4D0();
  v6 = type metadata accessor for RequestContent.SpeechContent(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v8);
  sub_22C10887C(v9, v10, v11, v12, v13, v14, v15, v16, v67);
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v17);
  sub_22BE2379C();
  v18 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BE25334();
  type metadata accessor for RequestContent.TextContent(v20);
  sub_22BE18000();
  MEMORY[0x28223BE20](v21);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v22);
  v31 = sub_22BE22D7C(v23, v24, v25, v26, v27, v28, v29, v30, v68);
  type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(v31);
  sub_22BE18000();
  MEMORY[0x28223BE20](v32);
  sub_22BE18DFC();
  v33 = sub_22BE5CE4C(&qword_27D90ECD8, &qword_22C2CC950);
  sub_22BE19448(v33);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  v35 = sub_22BE1AB08();
  v36 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(v35);
  sub_22BE28D2C();
  v41 = sub_22C18F17C(v37, v38, v39, v40);
  type metadata accessor for TranscriptProtoSystemPromptResolutionInput(v41);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v42 = sub_22BE385E4();
  sub_22BE1AA68(v42, v2);
  sub_22BE25D0C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE29370();
      sub_22BE341B0();
      sub_22BE3B620(v64, v65);
      v66 = sub_22BE431F0();
      sub_22BE1AA68(v66, v73);
      sub_22C25A524();
      TranscriptProtoRequestContentSpeechContent.init(handwritten:)();
      sub_22BE37D50();
      sub_22C259A90();
      sub_22BE1AE58();
      if (!v1)
      {
        goto LABEL_4;
      }

      sub_22BE18334();
      sub_22BE1AE58();
      break;
    case 2u:
    case 3u:
      sub_22BE37D50();
      goto LABEL_4;
    default:
      v43 = sub_22BE29370();
      sub_22BE3B620(v43, v75);
      v44 = sub_22C259E5C();
      sub_22BE1AA68(v44, v45);
      v72 = v0[1];
      v74 = *v0;
      v46 = sub_22BE48FCC();
      v47(v46);

      v71 = sub_22C26E674();
      v48 = sub_22C26E654();
      v69 = v49;
      v70 = v48;
      v50 = type metadata accessor for TranscriptProtoStatementID(0);
      sub_22C25A3A8();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v51 = sub_22BE3E8FC();
      v52(v51);
      *v4 = v71;
      *(v4 + 8) = v70;
      *(v4 + 16) = v69;
      v53 = sub_22BE33C68();
      v56 = sub_22C18F17C(v53, v54, v55, v50);
      type metadata accessor for TranscriptProtoRequestContentTextContent(v56);
      sub_22BE3AE2C();
      sub_22BE3A034(v57, v58, v59, v60);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE37D50();
      sub_22BE1AE58();
      sub_22C25A870();
      sub_22BE1AE58();
      *v3 = v74;
      v3[1] = v72;
      sub_22BE2343C();
LABEL_4:
      sub_22BE1B18C();
      swift_storeEnumTagMultiPayload();
      v61 = sub_22BE22B8C();
      sub_22BE19DC4(v61, v62, v63, v36);
      sub_22C25A888();
      sub_22BE2343C();
      break;
  }

  sub_22BE22978();
  sub_22BE18478();
}

void TranscriptProtoSystemPromptResolutionUserAction.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE33FA8();
  sub_22C272594();
  sub_22BE179D8();
  v34 = v4;
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22C259814(v5);
  sub_22C272874();
  sub_22C259488();
  v36 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BE25544();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE20558();
  type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v9);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE28FD8();
  v11 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE1AB08();
  v14 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(v13);
  sub_22C25976C();
  v19 = sub_22C18F17C(v15, v16, v17, v18);
  type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(v19);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v20 = sub_22C259E7C();
  sub_22BE1AA68(v20, v2);
  sub_22C259FF4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C18F338();
      v22 = sub_22BE41FB4();
      v23(v22);
      sub_22BE37EE0();
      sub_22BE36674();
      v24();
      sub_22C272854();
      if (!v0)
      {
        sub_22BE361FC();
        sub_22BE1AE58();
        v31 = *(v36 + 8);
        v32 = sub_22BE1A8C4();
        v31(v32);
        v33 = sub_22BE260B8();
        v31(v33);
        (*(v34 + 32))(v1, v37, v35);
        goto LABEL_8;
      }

      sub_22BE361FC();
      sub_22BE1AE58();
      v25 = *(v36 + 8);
      v26 = sub_22BE1A8C4();
      v25(v26);
      v27 = sub_22BE260B8();
      v25(v27);
      sub_22BE1A0B4();
      sub_22BE1AE58();
      goto LABEL_9;
    case 3u:
      sub_22BE361FC();
      sub_22BE1AE58();
      *v1 = *v2;
      goto LABEL_8;
    case 4u:
      v21 = *v2;
      type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
      sub_22C25A548();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE361FC();
      sub_22BE1AE58();
      *v1 = v21;
      goto LABEL_8;
    case 5u:
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE361FC();
      sub_22BE1AE58();
      goto LABEL_8;
    default:
      sub_22BE361FC();
      sub_22BE1AE58();
      *v1 = *v2;
LABEL_8:
      sub_22BE3EA80();
      swift_storeEnumTagMultiPayload();
      v28 = sub_22BE22B8C();
      sub_22BE19DC4(v28, v29, v30, v14);
      sub_22C25A6D0();
      sub_22BE2343C();
LABEL_9:
      sub_22BE34134();
      sub_22BE18478();
      return;
  }
}

void ResponseOutput.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  sub_22C26F4A4();
  sub_22BE179D8();
  v52 = v12;
  v53 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22BE28A70(v13, v49);
  MEMORY[0x28223BE20](v14);
  sub_22BE19E94();
  v16 = sub_22BE4682C(v15);
  v17 = type metadata accessor for TranscriptProtoVisualOutputOptions(v16);
  v18 = sub_22BE19448(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  sub_22C259814(v19);
  sub_22C26F474();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v20);
  sub_22BE1955C();
  v21 = sub_22BE5CE4C(&qword_27D90EAF0, &qword_22C2B5C30);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1B01C();
  v23 = sub_22BE5CE4C(&qword_27D911EF0, &qword_22C2B5C10);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE1A8B4();
  v25 = sub_22BE5CE4C(&qword_27D90EB10, &qword_22C2CC960);
  v26 = sub_22BE19448(v25);
  MEMORY[0x28223BE20](v26);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v27);
  sub_22BE324EC();
  v28 = sub_22BE5CE4C(&qword_27D911EF8, &unk_22C2B5C18);
  v29 = sub_22BE19448(v28);
  MEMORY[0x28223BE20](v29);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v30);
  sub_22BE32374();

  sub_22C0FB498();
  if (!a10)
  {
    type metadata accessor for TranscriptProtoResponseOutput(0);
    sub_22BE22814();
    sub_22C1006AC();
    sub_22BE22814();
    sub_22C25A918();
    sub_22C1006AC();
    sub_22BE22814();
    sub_22C25A6DC();
    sub_22C100880();

    sub_22C0F4874(v31, v32, v33, v34, v35, v36, v37, v38, v50, v10);
    sub_22C104C4C();
    sub_22C26F454();
    sub_22C0E9830();
    sub_22BE1AE58();
    (*(v52 + 104))(v51, **(&unk_278725C78 + MEMORY[8]), v53);
    sub_22C18F458();
    v39 = sub_22BE2590C();
    v40(v39);

    sub_22C0FB724(v41, v42, v43, v44, v45, v46, v47, v48);
    sub_22C26F484();
  }

  sub_22BE38444();
  sub_22BE1AE58();
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoInterpretedStatementResult.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A05C();
  v99 = v5;
  v6 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE20168(v8, v82);
  sub_22C26E684();
  sub_22BE179D8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BE294E0();
  v12 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v14);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v15);
  sub_22C2595A0();
  v16 = sub_22C26F894();
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE17CBC();
  v18 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE234F4();
  v105 = v1;
  sub_22C2700E4();
  v20 = sub_22C25A6C4();
  TranscriptProtoStatementOutcome.init(handwritten:)(v20, v21, v22, v23, v24, v25, v26, v27, v83, v85, v87, v89, v91, v93, v94, v95, v96, v99, v101, v103);
  if (v2)
  {
    sub_22C2700F4();
    sub_22BE18524();
    (*(v28 + 8))(v1);
  }

  else
  {
    v92 = type metadata accessor for TranscriptProtoStatementOutcome(0);
    v29 = sub_22C25974C();
    sub_22BE19DC4(v29, v30, v31, v32);
    sub_22C2700A4();
    v33 = sub_22C26E674();
    v34 = sub_22C26E654();
    v104 = v0;
    v35 = sub_22BE32C3C();
    v36 = type metadata accessor for TranscriptProtoStatementID(v35);
    sub_22C25A4E8();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v37 = *(v10 + 8);
    v38 = sub_22BE2BA80();
    v37(v38);
    *v3 = v33;
    *(v3 + 8) = v34;
    *(v3 + 16) = v0;
    v39 = sub_22BE22B8C();
    sub_22BE19DC4(v39, v40, v41, v36);
    sub_22C270094();
    v42 = sub_22C26E674();
    sub_22C26E654();
    sub_22BE29328();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v43 = sub_22BE2BA80();
    v86 = v37;
    v37(v43);
    *v104 = v42;
    *(v104 + 8) = v4;
    *(v104 + 16) = v33;
    sub_22C2597E4();
    sub_22BE19DC4(v44, v45, v46, v47);
    sub_22C26FF64();
    v48 = sub_22C26E1D4();
    v49 = sub_22BE391E8();
    sub_22BE1AB5C(v49, v50, v48);
    if (v51)
    {
      sub_22BE233E8(v97, &qword_27D9082F0, &qword_22C27AB00);
      v88 = 0;
      v90 = 0;
    }

    else
    {
      v52 = sub_22C26E184();
      v88 = v53;
      v90 = v52;
      sub_22BE1BC24();
      v54 = sub_22BE260B8();
      v55(v54);
    }

    v98 = sub_22C2700D4();
    v84 = v56;
    sub_22C270084();
    v57 = sub_22C26E674();
    sub_22C26E654();
    sub_22BE29328();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v58 = sub_22BE194C4();
    v86(v58);
    *v102 = v57;
    *(v102 + 8) = v4;
    *(v102 + 16) = v48;
    sub_22C2597E4();
    sub_22BE19DC4(v59, v60, v61, v62);
    sub_22BE1A140();
    v66 = sub_22C18F17C(v63, v64, v65, v92);
    type metadata accessor for TranscriptProtoInterpretedStatementResult(v66);
    sub_22C25A658();
    sub_22BE3AE2C();
    sub_22BE19DC4(v67, v68, v69, v70);
    sub_22BE3AE2C();
    sub_22BE19DC4(v71, v72, v73, v74);
    v75 = (v100 + *(v57 + 28));
    v76 = (v100 + *(v57 + 32));
    sub_22BE3AE2C();
    sub_22BE19DC4(v77, v78, v79, v80);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C2700F4();
    sub_22BE18524();
    (*(v81 + 8))(v105);
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
    *v75 = v90;
    v75[1] = v88;
    *v76 = v98;
    v76[1] = v84;
    sub_22BE27B84();
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoParameterSet.handwrittenParameters.getter()
{
  sub_22BE19130();
  v4 = v2;
  v5 = type metadata accessor for Candidate(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE20558();
  v100 = type metadata accessor for TranscriptProtoCandidate(v8);
  sub_22BE18000();
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  v91 = v10;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  sub_22C259824(v12, v13, v14, v15, v16, v17, v18, v19, v86);
  v20 = sub_22BE5CE4C(&qword_27D9091B8, &qword_22C27FDB0);
  v21 = sub_22BE19448(v20);
  MEMORY[0x28223BE20](v21);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v22);
  sub_22BE25A90();
  v23 = sub_22BE5CE4C(&qword_27D915620, &qword_22C2CC968);
  v24 = sub_22BE19448(v23);
  MEMORY[0x28223BE20](v24);
  sub_22BE17B98();
  v90 = v25;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22C259838(v27, v28, v29, v30, v31, v32, v33, v34, v87);
  type metadata accessor for TranscriptProtoParameter(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v35);
  sub_22BE17A44();
  sub_22BE3668C(v36);
  v97 = *(*v1 + 16);
  if (v97)
  {
    v37 = 0;
    sub_22BE19E14();
    v40 = MEMORY[0x277D84F98];
    v96 = v38 + v41;
    v89 = v0;
    v101 = v3;
    v94 = v38;
    v95 = v39;
    while (v37 < *(v38 + 16))
    {
      sub_22BE1AA68(v96 + *(v39 + 72) * v37, v102);
      v42 = *(v102 + 8);
      v43 = *(v102 + 16);
      v44 = *(v102 + 24);
      if (v44)
      {
        v43 = 0;
      }

      v103 = v43;
      v104 = *v102;
      sub_22BE22814();
      sub_22BE22814();
      v45 = sub_22BE26188();
      sub_22BE1AB5C(v45, v46, v100);
      if (v47)
      {

        v48 = sub_22BE194F8();
        sub_22BE233E8(v48, v49, &qword_22C27FDB0);
        v50 = sub_22BE29454();
        sub_22BE233E8(v50, v51, &qword_22C27FDB0);
        v52 = v99;
      }

      else
      {
        v53 = sub_22BE29370();
        sub_22BE3B620(v53, v92);
        v54 = sub_22BE29370();
        sub_22BE1AA68(v54, v91);

        v55 = v89;
        v56 = sub_22C259EBC();
        Candidate.init(transcript:)(v56, v57, v58, v59, v60, v61, v62, v63, v88, v89);
        if (v4)
        {

          sub_22BE37964();
          sub_22BE1AE58();
          sub_22BE233E8(v101, &qword_27D9091B8, &qword_22C27FDB0);
          sub_22BE2BB00();

          goto LABEL_30;
        }

        sub_22BE37964();
        sub_22BE1AE58();
        sub_22BE233E8(v101, &qword_27D9091B8, &qword_22C27FDB0);
        sub_22BE48E7C();
        v52 = v99;
        sub_22BE3B620(v55, v99);
      }

      v64 = sub_22BE40694();
      sub_22BE19DC4(v64, v65, v66, v5);
      sub_22BE23B00(v52);
      if (v47)
      {
        sub_22BE233E8(v52, &qword_27D915620, &qword_22C2CC968);
        sub_22C25A9EC();
        v68 = v67;

        if (v68)
        {
          swift_isUniquelyReferenced_nonNull_native();
          sub_22BE5CE4C(&qword_27D915628, &unk_22C2CC970);
          sub_22BE489B0();
          sub_22C273C44();

          sub_22C25A7B8();
          sub_22BE48E7C();
          v69 = v90;
          sub_22BE3B620(v70, v90);
          sub_22BE5CF7C();
          sub_22BE19454();
          sub_22C273C64();
          sub_22BE2BB00();
          v71 = 0;
        }

        else
        {
          sub_22BE2BB00();
          v71 = 1;
          v69 = v90;
        }

        sub_22BE19DC4(v69, v71, 1, v5);
        sub_22BE233E8(v69, &qword_27D915620, &qword_22C2CC968);
      }

      else
      {
        v93 = v4;
        sub_22BE48E7C();
        sub_22BE3B620(v52, v98);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C25A9EC();
        sub_22C1CF0B4();
        if (__OFADD__(v74, v75))
        {
          goto LABEL_32;
        }

        v76 = v72;
        v77 = v73;
        sub_22BE5CE4C(&qword_27D915628, &unk_22C2CC970);
        sub_22BE489B0();
        if (sub_22C273C44())
        {
          v78 = sub_22C25A9EC();
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_34;
          }

          v76 = v78;
        }

        if (v77)
        {

          sub_22C25A7B8();
          sub_22C250DB8(v98, v80 + v81 * v76);
          sub_22BE2BB00();
        }

        else
        {
          sub_22BE45B78(v40 + 8 * (v76 >> 6));
          v82 = *(v40 + 48) + 32 * v76;
          *v82 = v104;
          *(v82 + 8) = v42;
          *(v82 + 16) = v103;
          *(v82 + 24) = v44;
          sub_22C25A7B8();
          sub_22BE48E7C();
          sub_22BE3B620(v98, v83);
          sub_22BE2BB00();
          sub_22C25A500();
          if (v85)
          {
            goto LABEL_33;
          }

          *(v40 + 16) = v84;
        }

        v4 = v93;
      }

      ++v37;
      v38 = v94;
      v39 = v95;
      if (v97 == v37)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_22C2740B4();
    __break(1u);
  }

  else
  {
LABEL_30:
    sub_22BE467E4();
    sub_22BE18478();
  }
}

void TranscriptProtoParameterSet.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = v13;
  v16 = v15;
  v17 = sub_22BE5CE4C(&qword_27D9091B8, &qword_22C27FDB0);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE19668();
  v83 = sub_22BE5CE4C(&qword_27D909008, &qword_22C27FC60);
  sub_22BE18000();
  MEMORY[0x28223BE20](v19);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v20);
  sub_22C259B68();
  MEMORY[0x28223BE20](v21);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v22);
  sub_22BE2351C();
  MEMORY[0x28223BE20](v23);
  sub_22BE19E94();
  v25 = sub_22C259AC0(v24);
  type metadata accessor for TranscriptProtoParameter(v25);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v26);
  sub_22BE28FD8();
  v77 = *(type metadata accessor for TranscriptProtoParameterSet(0) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v27 = *(v14 + 16);
  if (v27)
  {
    v76 = v16;
    sub_22BE3122C(MEMORY[0x277D84F90]);
    sub_22BE34198();
    sub_22BE7085C(v28, v29, v30);
    v32 = sub_22BE308D0();
    v34 = v33;
    v79 = v14;
    v80 = v14 + 64;
    v35 = &qword_22C27FC60;
    v78 = v11;
    while ((v32 & 0x8000000000000000) == 0)
    {
      sub_22C25A46C();
      if (v32 >= v36)
      {
        break;
      }

      if (((*(v80 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_19;
      }

      if (*(v14 + 36) != v34)
      {
        goto LABEL_20;
      }

      v85 = v27;
      v87 = a10;
      v37 = v11;
      v38 = *(v83 + 48);
      v39 = *(v14 + 48);
      v40 = *(v14 + 56);
      v41 = (v39 + 32 * v32);
      v42 = *v41;
      v43 = v41[1];
      v44 = v41[2];
      LOBYTE(v41) = *(v41 + 24);
      *v81 = v42;
      *(v81 + 8) = v43;
      *(v81 + 16) = v44;
      *(v81 + 24) = v41;
      v45 = v35;
      v46 = type metadata accessor for Candidate(0);
      sub_22BE19448(v46);
      sub_22BE1AA68(v40 + *(v47 + 72) * v32, v81 + v38);
      v48 = *(v81 + 16);
      v49 = *(v81 + 24);
      *v12 = *v81;
      *(v12 + 16) = v48;
      *(v12 + 24) = v49;
      sub_22BE48E7C();
      sub_22BE3B620(v81 + v38, v12 + v50);
      sub_22BE2BA80();
      sub_22BE22814();
      v84 = *v37;
      v86 = v37[1];
      sub_22BE25300();
      sub_22BE22814();
      v51 = v12;
      v52 = *(v82 + 16);
      v53 = *(v82 + 24);

      sub_22BE41F2C();
      sub_22BE1AE58();
      sub_22BE22814();

      TranscriptProtoCandidate.init(handwritten:)();
      if (v10)
      {

        sub_22BE41F2C();
        sub_22BE1AE58();

        sub_22BE233E8(v51, &qword_27D909008, &qword_22C27FC60);

        sub_22C2704B4();
        sub_22BE18524();
        (*(v72 + 8))(&v76[v77]);
        goto LABEL_17;
      }

      if (v53)
      {
        v52 = 0;
      }

      v54 = type metadata accessor for TranscriptProtoCandidate(0);
      v55 = sub_22BE19198();
      sub_22BE19DC4(v55, v56, v57, v54);
      sub_22C259860();
      v59 = v58;
      sub_22BE19DC4(v60, v61, v62, v63);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v59 = v84;
      *(v59 + 8) = v86;
      *(v59 + 16) = v52;
      *(v59 + 24) = v53;
      sub_22BE2343C();
      sub_22BE41F2C();
      v11 = v78;
      sub_22BE1AE58();
      v35 = v45;
      sub_22BE233E8(v51, &qword_27D909008, v45);
      a10 = v87;
      v65 = *(v87 + 16);
      v64 = *(v87 + 24);
      v12 = v51;
      if (v65 >= v64 >> 1)
      {
        sub_22BE3D1E4(v64);
        sub_22BE39E18();
        sub_22BE7085C(v69, v70, v71);
        a10 = v87;
      }

      *(a10 + 16) = v65 + 1;
      sub_22BE25AD8();
      v66 = sub_22C259FB8();
      sub_22BE3B620(v66, v67);
      v14 = v79;
      v32 = sub_22C18DDA4();
      v34 = v68;
      --v27;
      if (v85 == 1)
      {

        v73 = sub_22BE39EAC();
        sub_22BE2FC64(v73, v74, v75);
        v16 = v76;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {

    a10 = MEMORY[0x277D84F90];
LABEL_16:
    *v16 = a10;
LABEL_17:
    sub_22BE18478();
  }
}

void TranscriptProtoCandidate.init(handwritten:)()
{
  sub_22BE19130();
  v3 = v2;
  sub_22C25A554(v4);
  sub_22C26E684();
  sub_22BE179D8();
  v67 = v6;
  v68 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v66 = v7;
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v11 = sub_22BE36294(v10);
  v72 = type metadata accessor for TranscriptProtoCandidatePromptStatus(v11);
  sub_22BE18000();
  MEMORY[0x28223BE20](v12);
  sub_22BE1955C();
  v13 = sub_22BE5CE4C(&qword_27D909208, &unk_22C2AE560);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE23A90(v15);
  v71 = sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v16);
  sub_22BE17CBC();
  v17 = sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v18);
  sub_22BE2379C();
  v19 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B72C();
  v21 = sub_22C259E94();
  v22(v21, v3, v17);
  sub_22C272854();
  if (v0)
  {
    sub_22BE41F2C();
    sub_22BE1AE58();
    v23 = sub_22BE31038();
    v24(v23);
  }

  else
  {
    v25 = sub_22BE31038();
    v26(v25);
    v27 = sub_22BE260B8();
    v28(v27);
    v29 = sub_22BE2500C();
    v32 = sub_22C18F17C(v29, v30, v31, v71);
    v33 = type metadata accessor for Candidate(v32);
    v34 = *(v33 + 24);
    v65 = *(v3 + *(v33 + 20));
    v35 = *(v3 + v34);
    v36 = *(v3 + v34 + 8);
    *v1 = 0;
    *(v1 + 8) = 256;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v37 = v35 != 0;
    if (!v36)
    {
      v37 = v35;
    }

    *v1 = v37;
    *(v1 + 8) = v36;
    *(v1 + 9) = 0;
    v38 = sub_22C1088AC();
    sub_22BE3B620(v38, v73);
    sub_22C2597D4();
    sub_22C25AE64(v39, v40, v41, v42);
    (*(v67 + 16))(v66, v3 + v43, v68);
    v44 = sub_22C26E674();
    v45 = sub_22C26E654();
    v46 = sub_22C25A4A0();
    type metadata accessor for TranscriptProtoStatementID(v46);
    sub_22C25A8C4();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v47 = sub_22BE27A44();
    v48(v47);
    *v69 = v44;
    *(v69 + 8) = v45;
    *(v69 + 16) = v1;
    sub_22C2597F4();
    v53 = sub_22C18F17C(v49, v50, v51, v52);
    type metadata accessor for TranscriptProtoCandidate(v53);
    sub_22C25ACC0();
    sub_22BE1A140();
    sub_22BE19DC4(v54, v55, v56, v57);
    sub_22BE1A140();
    sub_22BE19DC4(v58, v59, v60, v72);
    sub_22C25976C();
    sub_22BE19DC4(v61, v62, v63, v64);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE41F2C();
    sub_22BE1AE58();
    sub_22BE2343C();
    *v70 = v65;
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void VariableSetter.init(transcript:)()
{
  sub_22BE19130();
  v3 = v2;
  v29 = v4;
  v5 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE22BFC();
  sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v7);
  sub_22BE25544();
  MEMORY[0x28223BE20](v8);
  sub_22BE20558();
  v9 = sub_22C272874();
  sub_22BE179D8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BE17CBC();

  Dictionary<>.init(transcript:)();
  if (v0)
  {
    sub_22C259D20();
  }

  else
  {
    v28 = v13;
    v14 = v3 + *(type metadata accessor for TranscriptProtoVariableSetter(0) + 20);
    sub_22C101488();
    sub_22BE36288();
    v15 = sub_22BE1AB74();
    v16(v15);
    sub_22BE489C8();
    sub_22C272864();
    v17 = sub_22BE41FB4();
    v18(v17);
    sub_22C259D20();
    sub_22C26E614();
    sub_22BE32EE0();
    v23 = sub_22C18F17C(v19, v20, v21, v22);
    type metadata accessor for VariableSetter(v23);
    sub_22BE46004();
    sub_22BE32EE0();
    sub_22BE19DC4(v24, v25, v26, v27);
    *v29 = v28;
    (*(v11 + 32))(&v29[*(v14 + 20)], v1, v9);
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void Dictionary<>.init(transcript:)()
{
  sub_22BE19130();
  v3 = v1;
  sub_22BE17BC4();
  v4 = sub_22C272594();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v89 = v8;
  sub_22BE183BC();
  sub_22C272874();
  sub_22C259488();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v12);
  sub_22C1CEC1C();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E94();
  sub_22C259A68(v14);
  v15 = sub_22C26E684();
  sub_22BE179D8();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  sub_22BE32C08();
  MEMORY[0x28223BE20](v19);
  sub_22C259838(v20, v21, v22, v23, v24, v25, v26, v27, v82);
  v88 = sub_22BE5CE4C(&qword_27D9091A0, &unk_22C2CC980);
  sub_22BE18000();
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  v100 = v29;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v30);
  sub_22C1CEC08(v31, v32, v33, v34, v35, v36, v37, v38, v83);
  sub_22C259290(&qword_28107F2F0, MEMORY[0x277D1C338]);
  v98 = v15;
  v95 = v2;
  v39 = sub_22C272E84();
  v40 = v0 + 64;
  sub_22BE18010();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;
  v90 = v6;
  v93 = (v10 + 32);
  sub_22BE417A8(v10 + 16);
  v84 = v17;
  v87 = (v17 + 8);
  sub_22C1CEFB0(v10 + 8);
  v92 = v0;

  v46 = v45;
  v47 = 0;
  v85 = v0 + 64;
  v86 = v4;
  if (v43)
  {
    while (1)
    {
      v94 = v39;
      v102 = v3;
LABEL_7:
      sub_22C25AC70();
      v50 = v49 | (v47 << 6);
      v51 = *(*(v92 + 48) + 4 * v50);
      v52 = *(v90 + 16);
      v52(&v99[*(v88 + 48)], *(v92 + 56) + *(v90 + 72) * v50, v4);
      *v99 = v51;
      sub_22C26E664();
      sub_22BE22814();
      v52(v89, v100 + *(v88 + 48), v4);
      sub_22C25A6DC();
      sub_22C272864();
      if (v102)
      {
        break;
      }

      v53 = sub_22BE3928C();
      v54(v53);
      v55 = *v93;
      v56 = sub_22BE37490();
      v55(v56);
      v57 = sub_22BE36318();
      v91 = v58;
      (v58)(v57);
      sub_22BE33554();
      sub_22BE354D0();
      v60(v59);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22BE602B4();
      sub_22C1CF0B4();
      if (__OFADD__(v64, v65))
      {
        goto LABEL_22;
      }

      v66 = v62;
      v67 = v63;
      sub_22BE5CE4C(&qword_27D911FF8, &unk_22C2B5DD0);
      sub_22BE489B0();
      if (sub_22C273C44())
      {
        sub_22BE602B4();
        if ((v67 & 1) != (v69 & 1))
        {
          goto LABEL_24;
        }

        v66 = v68;
      }

      v39 = v94;
      if (v67)
      {
        v70 = sub_22C25ABF8(v94[7]);
        (*(isUniquelyReferenced_nonNull_native + 40))(v70, v96, v95);
        v71 = *v87;
        (*v87)(v101, v98);
        v72 = sub_22C25A8DC();
        v73(v72);
        v71(v97, v98);
        sub_22BE233E8(v99, &qword_27D9091A0, &unk_22C2CC980);
      }

      else
      {
        sub_22BE45B78(&v94[v66 >> 6]);
        v91(v94[6] + *(v84 + 72) * v66, v101, v98);
        v74 = sub_22C25ABF8(v94[7]);
        (v55)(v74, v96, v95);
        v75 = *(v84 + 8);
        v75(v101, v98);
        v76 = sub_22C25A8DC();
        v77(v76);
        v75(v97, v98);
        sub_22BE233E8(v99, &qword_27D9091A0, &unk_22C2CC980);
        sub_22C25A864();
        if (v79)
        {
          goto LABEL_23;
        }

        v94[2] = v78;
      }

      v43 &= v43 - 1;
      v3 = 0;
      v4 = v86;
      v40 = v85;
      v46 = v45;
      if (!v43)
      {
        goto LABEL_3;
      }
    }

    (*v87)(v97, v98);
    sub_22BE233E8(v99, &qword_27D9091A0, &unk_22C2CC980);

    v80 = sub_22BE3928C();
    v81(v80);
LABEL_19:

    sub_22BE1AB28();
    sub_22BE18478();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v46)
      {

        goto LABEL_19;
      }

      v43 = *(v40 + 8 * v48);
      ++v47;
      if (v43)
      {
        v94 = v39;
        v102 = v3;
        v47 = v48;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_22C2740B4();
    __break(1u);
  }
}

void TranscriptProtoVariableSetter.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE2054C(v3);
  sub_22C272594();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE2F294();
  sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE28FD8();
  v6 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE1AB08();
  type metadata accessor for VariableSetter(v8);
  sub_22C25ADA0();
  v9(v2);
  sub_22C272854();
  if (v0)
  {
    sub_22BE3639C();
    v10 = sub_22BE37B20();
    v11(v10);
  }

  else
  {
    v12 = sub_22BE37B20();
    v13(v12);
    v14 = sub_22BE23108();
    v15(v14);
    v16 = sub_22BE22B8C();
    sub_22BE19DC4(v16, v17, v18, v1);

    Dictionary<>.init(handwritten:)();
    v20 = v19;
    type metadata accessor for TranscriptProtoVariableSetter(0);
    sub_22BE3AE2C();
    sub_22BE19DC4(v21, v22, v23, v24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3639C();
    sub_22BE2343C();
    *v25 = v20;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void Dictionary<>.init(handwritten:)()
{
  sub_22BE19130();
  v83 = v1;
  sub_22BE17BC4();
  sub_22C272594();
  sub_22BE41130();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE28A70(v8, v63);
  MEMORY[0x28223BE20](v9);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  sub_22C10887C(v11, v12, v13, v14, v15, v16, v17, v18, v64);
  v82 = sub_22BE5CE4C(&qword_27D909040, &qword_22C2CC990);
  sub_22BE18000();
  MEMORY[0x28223BE20](v19);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v20);
  sub_22C1CEC88();
  MEMORY[0x28223BE20](v21);
  sub_22BE2BB70(v22, v23, v24, v25, v26, v27, v28, v29, v65);
  v30 = sub_22C272E84();
  v31 = v0 + 64;
  sub_22BE185B4();
  v34 = v33 & v32;
  v36 = (v35 + 63) >> 6;
  v68 = v6;
  v69 = (v6 + 16);
  sub_22BE417A8(v6 + 40);
  v73 = v0;

  v37 = 0;
  v66 = v36;
  v67 = v0 + 64;
  v70 = v2;
  v71 = v4;
  if (v34)
  {
    while (1)
    {
      v75 = v30;
LABEL_7:
      sub_22C25AC70();
      v40 = v39 | (v37 << 6);
      v41 = *(v73 + 48);
      sub_22C26E684();
      sub_22BE41130();
      v43 = v42;
      (*(v44 + 16))(v84, v41 + *(v44 + 72) * v40, v2);
      v45 = *(v73 + 56);
      sub_22C272874();
      sub_22C2594A0();
      v47 = v46;
      (*(v46 + 16))(v84 + *(v82 + 48), v45 + *(v48 + 72) * v40, v3);
      sub_22BE22814();
      v49 = *(v82 + 48);
      v74 = sub_22C26E674();
      v79 = v2;
      v76 = *(v43 + 8);
      v76(v72, v2);
      v50 = *(v47 + 8);
      v77 = v3;
      v50(v72 + v49, v3);
      sub_22BE22814();
      v51 = *(v82 + 48);
      sub_22C272854();
      if (v83)
      {
        break;
      }

      v50(v71 + v51, v77);
      v52 = sub_22BE261AC();
      v78 = v53;
      (v53)(v52);
      v76(v71, v79);
      v2 = v70;
      (*v69)(v81, v80, v70);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22BE60364(v74);
      sub_22C1CF0B4();
      if (__OFADD__(v56, v57))
      {
        goto LABEL_22;
      }

      v58 = v54;
      v3 = v55;
      sub_22BE5CE4C(&qword_27D915598, &qword_22C2CC610);
      sub_22BE489B0();
      if (sub_22C273C44())
      {
        v59 = sub_22BE60364(v74);
        if ((v3 & 1) != (v60 & 1))
        {
          goto LABEL_24;
        }

        v58 = v59;
      }

      v30 = v75;
      if (v3)
      {
        (*(v68 + 40))(v75[7] + *(v68 + 72) * v58, v81, v70);
        (*(v68 + 8))(v80, v70);
        sub_22BE233E8(v84, &qword_27D909040, &qword_22C2CC990);
      }

      else
      {
        sub_22BE45B78(&v75[v58 >> 6]);
        *(v75[6] + 4 * v58) = v74;
        v78(v75[7] + *(v68 + 72) * v58, v81, v70);
        (*(v68 + 8))(v80, v70);
        sub_22BE233E8(v84, &qword_27D909040, &qword_22C2CC990);
        sub_22C25A864();
        if (v62)
        {
          goto LABEL_23;
        }

        v75[2] = v61;
      }

      v34 &= v34 - 1;
      v36 = v66;
      v31 = v67;
      if (!v34)
      {
        goto LABEL_3;
      }
    }

    sub_22BE233E8(v84, &qword_27D909040, &qword_22C2CC990);

    v50(v71 + v51, v77);
    v76(v71, v79);
LABEL_19:

    sub_22BE18478();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v36)
      {

        goto LABEL_19;
      }

      v34 = *(v31 + 8 * v38);
      ++v37;
      if (v34)
      {
        v75 = v30;
        v37 = v38;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_22C2740B4();
    __break(1u);
  }
}

void RequestContent.SystemPromptResolution.RequirementResolution.init(transcript:)()
{
  sub_22C259EE8();
  sub_22BE1AE58();
  sub_22C25AB64();
}

void TranscriptProtoSystemPromptResolutionRequirementResolution.init(handwritten:)()
{
  sub_22C259EE8();
  type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  sub_22BE38954();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25AB64();
}

uint64_t ResponseOutput.VisualOutputOptions.init(transcript:)(unsigned __int8 *a1)
{
  sub_22C26F454();
  sub_22BE26148();
  return sub_22BE1AE58();
}

uint64_t ResponseOutput.ResponseType.init(transcript:)()
{
  sub_22C26F4A4();
  sub_22BE18000();
  v0 = sub_22BE460A4();

  return v1(v0);
}

void TranscriptProtoResponseOutput.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A770();
  v98 = v4;
  v5 = sub_22BE5CE4C(&qword_27D911EF0, &qword_22C2B5C10);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE35C94(v7, v93);
  v8 = sub_22BE5CE4C(&qword_27D90EAF0, &qword_22C2B5C30);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE23A90(v10);
  sub_22C26F474();
  sub_22BE179D8();
  v101 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  v100 = v13;
  v14 = sub_22BE5CE4C(&qword_27D90EB00, &unk_22C2AE6B0);
  sub_22BE19448(v14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE3FE6C(v16);
  v17 = sub_22C26F4A4();
  sub_22BE179D8();
  v99 = v18;
  MEMORY[0x28223BE20](v19);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v20);
  v22 = &v93 - v21;
  v23 = sub_22BE5CE4C(&qword_27D911EF8, &unk_22C2B5C18);
  v24 = sub_22BE19448(v23);
  MEMORY[0x28223BE20](v24);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v25);
  sub_22BE26800();
  v26 = sub_22BE5CE4C(&qword_27D90EB10, &qword_22C2CC960);
  v27 = sub_22BE19448(v26);
  MEMORY[0x28223BE20](v27);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v28);
  sub_22BE25A90();
  v29 = sub_22C26F494();
  sub_22C1C7730(v29, v30, v31, v32, v33, v34, v35, v36, v93, v94);
  if (v2)
  {
    sub_22C26F524();
    sub_22BE18524();
    (*(v38 + 8))(v0);
LABEL_16:
    sub_22BE46D98();
    sub_22BE18478();
    return;
  }

  v95 = v22;
  v96 = v3;
  v97 = v37;
  sub_22C26F324();
  sub_22C25A610();
  sub_22C107378();
  sub_22C26F314();
  sub_22C107378();
  sub_22C26F4D4();
  v39 = v99;
  sub_22C25A068();
  v40 = sub_22BE29454();
  v41(v40);
  sub_22C25AA50();
  v42 = sub_22BE36658();
  v44 = v43(v42);
  v45 = *MEMORY[0x277D1C9B0];
  v94 = v1;
  if (v44 == v45)
  {
    HIDWORD(v93) = 0;
LABEL_7:
    v46 = v95;
LABEL_15:
    (*(v39 + 8))(v46, v17);
    v48 = sub_22C26F4F4();
    sub_22C1C1424(v48, v49, v50, v51, v52, v53, v54, v55, v93, v94);
    v57 = v56;
    v58 = v0;
    sub_22C26F504();
    v59 = sub_22C26F464();
    v60 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
    v61 = v103;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE190E4();
    v62 = sub_22BE33560();
    v63(v62);
    *v61 = v59 & 1;
    v64 = sub_22BE360A0();
    sub_22BE19DC4(v64, v65, v66, v60);
    sub_22C26F4C4();
    sub_22C107548();
    v104 = v57;
    v67 = sub_22C26F4E4();
    v69 = v68;
    v70 = sub_22C26F514();
    sub_22C221268(v70);
    v102 = v71;
    v72 = type metadata accessor for TranscriptProtoResponseOutput(0);
    v99 = *(v72 + 32);
    type metadata accessor for TranscriptProtoDialogType(0);
    v101 = v67;
    v73 = v98;
    sub_22C259860();
    sub_22BE19DC4(v74, v75, v76, v77);
    v100 = v69;
    sub_22C259860();
    sub_22BE19DC4(v78, v79, v80, v81);
    sub_22C25976C();
    sub_22BE19DC4(v82, v83, v84, v85);
    type metadata accessor for TranscriptProtoVisualOutput(0);
    v86 = sub_22C259B90();
    sub_22BE19DC4(v86, v87, v88, v89);
    v90 = (v73 + *(v72 + 48));
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26F524();
    sub_22BE18524();
    (*(v91 + 8))(v58);
    *v73 = v97;
    sub_22BE2343C();
    sub_22BE2343C();
    *(v73 + 8) = BYTE4(v93);
    *(v73 + 16) = v104;
    sub_22BE2343C();
    sub_22BE2343C();
    v92 = v100;
    *v90 = v101;
    v90[1] = v92;
    *(v73 + 24) = v102;
    goto LABEL_16;
  }

  if (v44 == *MEMORY[0x277D1C9C0])
  {
    HIDWORD(v93) = 1;
    goto LABEL_7;
  }

  v46 = v95;
  if (v44 == *MEMORY[0x277D1C9B8])
  {
    v47 = 2;
LABEL_14:
    HIDWORD(v93) = v47;
    goto LABEL_15;
  }

  if (v44 == *MEMORY[0x277D1C9D0])
  {
    v47 = 3;
    goto LABEL_14;
  }

  if (v44 == *MEMORY[0x277D1C9C8])
  {
    v47 = 4;
    goto LABEL_14;
  }

  sub_22C274004();
  __break(1u);
}

void TranscriptProtoResponseType.init(handwritten:)()
{
  sub_22BE4111C();
  sub_22C26F4A4();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v0);
  sub_22BE19338();
  v1 = sub_22C259870();
  v2(v1);
  v3 = sub_22C1CEBF4();
  v5 = v4(v3);
  if (v5 == *MEMORY[0x277D1C9B0] || v5 == *MEMORY[0x277D1C9C0] || v5 == *MEMORY[0x277D1C9B8] || v5 == *MEMORY[0x277D1C9D0] || v5 == *MEMORY[0x277D1C9C8])
  {
    v6 = sub_22BE2590C();
    v7(v6);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t TranscriptProtoVisualOutputOptions.init(handwritten:)()
{
  sub_22C259E88();
  v2 = sub_22C26F464();
  type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26F474();
  sub_22BE18524();
  result = (*(v3 + 8))(v1);
  *v0 = v2 & 1;
  return result;
}

uint64_t sub_22C229E50@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  result = a2(*a1);
  if (!v4)
  {
    v9 = sub_22BE48298();
    a3(v9);
    sub_22BE48874();
    result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *a4 = v5;
  }

  return result;
}

void ActionParameterContext.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C25AA20();
  v15 = sub_22C25A424(v14);
  v16 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v15);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE1955C();
  v18 = type metadata accessor for TranscriptProtoStatementID(0);
  v19 = sub_22BE19448(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE2F294();
  sub_22C26E684();
  sub_22BE41130();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BE1AD20();
  type metadata accessor for TranscriptProtoActionParameterContext(v21);
  sub_22C25AA44();
  sub_22C1026C4();
  if (v10)
  {
    sub_22C259CF8();
  }

  else
  {
    v22 = *v13;

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v23 = *(v11 + 16);
    sub_22C25AB10();
    sub_22C10289C();
    if (v22)
    {
      sub_22C259CF8();
      v24 = sub_22BE194C4();
      v25(v24);
    }

    else
    {
      v26 = v12[1];
      v27 = v12[4];
      v36 = v12[3];
      v37 = *v12;
      v35 = *(v12 + 16);

      sub_22BE40CB0();
      sub_22BE1AE58();
      v29 = *v11;
      v28 = v11[1];

      sub_22C259CF8();
      v30 = sub_22BE354DC();
      v31(v30);
      v32 = type metadata accessor for ActionParameterContext(0);
      *(a10 + *(v32 + 28)) = v23;
      v33 = a10 + *(v32 + 24);
      *v33 = v37;
      *(v33 + 8) = v26;
      *(v33 + 16) = v36;
      *(v33 + 24) = v27;
      *(v33 + 32) = v35;
      sub_22C25A0A4();
      *v34 = v29;
      v34[1] = v28;
    }
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoActionParameterContext.init(handwritten:)()
{
  sub_22BE19460();
  v4 = v3;
  v45 = v5;
  v6 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1AB08();
  v8 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE2379C();
  v10 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE23E58();
  v12 = sub_22BE37EE0();
  v13(v12, v4, v8);
  v14 = sub_22C26E674();
  v15 = sub_22C26E654();
  v16 = sub_22C25A628();
  v43 = type metadata accessor for TranscriptProtoStatementID(v16);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v17 = sub_22BE261AC();
  v18(v17);
  *v2 = v14;
  *(v2 + 8) = v15;
  *(v2 + 16) = v1;
  v19 = sub_22BE360A0();
  v22 = sub_22C18F17C(v19, v20, v21, v43);
  v23 = type metadata accessor for ActionParameterContext(v22);
  v24 = v23[6];
  v25 = (v4 + v23[5]);
  v44 = *v25;
  v42 = v25[1];
  v27 = *(v4 + v24);
  v26 = *(v4 + v24 + 8);
  v29 = *(v4 + v24 + 16);
  v28 = *(v4 + v24 + 24);
  v41 = *(v4 + v24 + 32);
  v30 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = v27;
  *(v0 + 8) = v26;
  *(v0 + 24) = v29;
  *(v0 + 32) = v28;
  *(v0 + 16) = v41;
  v31 = sub_22BE22B8C();
  sub_22BE19DC4(v31, v32, v33, v30);
  LOBYTE(v4) = *(v4 + v23[7]);
  type metadata accessor for TranscriptProtoActionParameterContext(0);
  sub_22BE1A140();
  sub_22BE19DC4(v34, v35, v36, v43);
  sub_22C25976C();
  sub_22BE19DC4(v37, v38, v39, v40);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE291DC();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v45 = v44;
  *(v45 + 8) = v42;
  sub_22BE2343C();
  *(v45 + 16) = v4;
  sub_22BE1AABC();
}

void ActionConfirmation.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  sub_22C18F0F4();
  sub_22C25A344(v26);
  v27 = sub_22C26F7C4();
  v28 = sub_22BE18910(v27, &a15);
  v200 = v29;
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v30);
  sub_22BE19E94();
  v32 = sub_22BE18950(v31);
  v183 = type metadata accessor for TranscriptProtoPromptSelection(v32);
  sub_22BE18000();
  MEMORY[0x28223BE20](v33);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v34);
  sub_22C259DC4(v35, v36, v37, v38, v39, v40, v41, v42, v161);
  v43 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  v44 = sub_22BE19448(v43);
  MEMORY[0x28223BE20](v44);
  sub_22BE17B98();
  v182 = v45;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v46);
  sub_22C259BC0();
  v47 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v47);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  sub_22BE1A174();
  sub_22C259DB4(v49);
  v50 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v50);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v51);
  sub_22BE1A174();
  v192 = v52;
  sub_22BE183BC();
  v193 = sub_22C272594();
  sub_22BE179D8();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  sub_22BE17B98();
  v189 = v56;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v57);
  sub_22BE19E94();
  sub_22C259AC0(v58);
  v185 = sub_22C272874();
  sub_22BE179D8();
  v168 = v59;
  MEMORY[0x28223BE20](v60);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v61);
  sub_22BE4202C(v62, v63, v64, v65, v66, v67, v68, v69, v162);
  v70 = sub_22C26F2A4();
  v71 = sub_22BE18910(v70, &a13);
  v73 = v72;
  MEMORY[0x28223BE20](v71);
  sub_22BE17A44();
  v75 = sub_22BE18950(v74);
  v76 = type metadata accessor for TranscriptProtoParameterValue(v75);
  v77 = sub_22BE18910(v76, &a18);
  v191 = v78;
  MEMORY[0x28223BE20](v77);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v79);
  sub_22BE355FC(v80, v81, v82, v83, v84, v85, v86, v87, v163);
  v88 = sub_22BE5CE4C(&qword_27D90E6C8, &unk_22C2AE530);
  sub_22BE19448(v88);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v89);
  sub_22BE1A174();
  sub_22BE190A8(v90);
  v91 = sub_22BE5CE4C(&qword_27D911EE8, &unk_22C2B5C00);
  sub_22BE19448(v91);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v92);
  sub_22BE1A174();
  sub_22BE190A8(v93);
  v167 = v20;
  v94 = *v20;
  v95 = v23;
  sub_22BE5CE4C(&qword_27D915630, &unk_22C2CC998);
  sub_22C273D04();
  v96 = 0;
  v173 = v94 + 64;
  v190 = v94;
  sub_22BE26A98();
  v172 = v97 >> 6;
  v186 = v54 + 16;
  v187 = v54 + 32;
  v188 = v54 + 8;
  v181 = v168 + 32;
  v166 = *MEMORY[0x277D1CAF0];
  v170 = v200 + 104;
  v165 = *MEMORY[0x277D1CAF8];
  v164 = *MEMORY[0x277D1CB00];
  sub_22C25A4F4(v200 + 32);
  v176 = v98 + 64;
  v178 = v73;
  v175 = v73 + 32;
  v194 = v21;
  v184 = v98;
  v171 = v23;
  if (v99)
  {
    while (1)
    {
      v200 = v22;
      sub_22BE22BE8();
      v195 = v101;
LABEL_8:
      v104 = v100 | (v96 << 6);
      v105 = *(v190 + 56);
      v106 = (*(v190 + 48) + 16 * v104);
      v107 = v106[1];
      v196 = *v106;
      v108 = v199;
      sub_22BE1AA68(v105 + *(v191 + 72) * v104, v199);
      v109 = sub_22BE33560();
      sub_22BE1AA68(v109, v110);
      v111 = v192;
      sub_22BE22814();
      v112 = sub_22BE406A0();
      v113 = v193;
      sub_22BE1AB5C(v112, v114, v193);
      if (v115)
      {
        break;
      }

      v116 = sub_22BE1A6BC();
      v117(v116);
      v118 = sub_22BE33FCC();
      v119(v118);
      v197 = v107;

      sub_22C25A338();
      v120 = v200;
      sub_22C272864();
      v22 = v120;
      if (v120)
      {
        v159 = sub_22BE37490();
        v160(v159);
        sub_22BE35C4C();
        sub_22BE1AE58();
        goto LABEL_21;
      }

      v121 = sub_22BE37490();
      v122(v121);
      sub_22BE33554();
      v123(v198, v95, v185);
      sub_22BE2ED7C();
      sub_22BE22814();
      sub_22C25A368();
      sub_22BE22814();
      v124 = sub_22BE2BA98();
      sub_22BE1AB5C(v124, v125, v183);
      if (v115)
      {
        v126 = sub_22BE1824C();
        sub_22BE233E8(v126, v127, &qword_22C296F40);
        v128 = sub_22BE194F8();
        sub_22BE233E8(v128, v129, &qword_22C296F40);
      }

      else
      {
        v130 = v174;
        v131 = v180;
        sub_22C259680();
        sub_22C108C10();
        sub_22BE3B620(v132, v133);
        sub_22BE29370();
        sub_22C108C10();
        sub_22BE1AA68(v134, v135);
        sub_22BE3767C();
        sub_22BE1AE58();
        v200 = v120;
        *v130 = 0x70004C824;
        sub_22BE33554();
        v136(v130, v166, v131);
        v137 = *v169;
        v138 = sub_22BE196A8();
        v137(v138);
        sub_22BE233E8(v194, &qword_27D90E688, &qword_22C296F40);
        sub_22BE3767C();
        sub_22BE406B8();
        sub_22BE1AE58();
        v139 = sub_22BE1AEE4();
        v137(v139);
        v22 = v200;
        v95 = v171;
      }

      v140 = sub_22BE40694();
      sub_22BE19DC4(v140, v141, v142, v143);
      v144 = v177;
      sub_22C26F284();
      sub_22BE1AE58();
      sub_22BE194F8();
      sub_22BE1AE58();
      sub_22BE3CD8C();
      sub_22C25A924(v145);
      v146 = v184;
      v147 = (*(v184 + 48) + 16 * v104);
      v148 = v197;
      *v147 = v196;
      v147[1] = v148;
      (*(v178 + 32))(*(v146 + 56) + *(v178 + 72) * v104, v144, v179);
      sub_22C25AB9C();
      if (v150)
      {
LABEL_25:
        __break(1u);
        return;
      }

      *(v146 + 16) = v149;
      if (!v195)
      {
        goto LABEL_3;
      }
    }

    sub_22BE233E8(v111, &qword_27D909128, &qword_22C294AA0);
    v151 = sub_22BE5CE4C(&qword_27D911F88, &qword_22C2B5D10);
    sub_22BE43258(v151);
    sub_22C25A2F0();
    v152 = sub_22C108598();
    v153 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v152);
    *v154 = v113;
    v154[1] = v108;
    sub_22C25A590(v153, v154, v155, v156, v157, v158);
    sub_22BE35C4C();
    sub_22BE1AE58();
LABEL_21:

    sub_22BE35C4C();
    sub_22BE1AE58();
    sub_22BE351F8();
    goto LABEL_22;
  }

LABEL_3:
  v102 = v96;
  while (1)
  {
    v96 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v96 >= v172)
    {
      break;
    }

    ++v102;
    if (*(v173 + 8 * v96))
    {
      v200 = v22;
      sub_22BE4878C();
      v195 = v103;
      goto LABEL_8;
    }
  }

  type metadata accessor for TranscriptProtoActionConfirmation(0);
  sub_22BE22944();
  sub_22BE22814();
  sub_22BE362B8();
  sub_22C0FFF34();
  if (v22)
  {
    sub_22BE351F8();
    sub_22BE1AE58();

    goto LABEL_23;
  }

  sub_22BE2590C();
  sub_22C26FB64();
  sub_22BE351F8();
LABEL_22:
  sub_22BE1AE58();
LABEL_23:
  sub_22BE1AB28();
  sub_22BE18478();
}

void TranscriptProtoActionConfirmation.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_22BE19130();
  sub_22C25A770();
  v26 = sub_22C25A344(v25);
  v27 = type metadata accessor for TranscriptProtoPromptSelection(v26);
  sub_22BE18000();
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  sub_22BE18950(v29);
  v156 = sub_22C26F7C4();
  v30 = sub_22BE17A18(v156);
  v159 = v31;
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v32);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v33);
  sub_22C259DC4(v34, v35, v36, v37, v38, v39, v40, v41, v137);
  v42 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  v43 = sub_22BE19448(v42);
  MEMORY[0x28223BE20](v43);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v44);
  sub_22BE19E94();
  sub_22C0B1ABC(v45);
  v46 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  sub_22BE19448(v46);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE1A174();
  sub_22BE18950(v48);
  sub_22C272594();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v49);
  sub_22BE17A44();
  sub_22C259DF0(v50);
  sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v51);
  sub_22BE17A44();
  v151 = v52;
  v53 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v53);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  sub_22BE1A174();
  v56 = sub_22BE18950(v55);
  type metadata accessor for TranscriptProtoParameterValue(v56);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v57);
  sub_22BE17B98();
  v150 = v58;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v59);
  sub_22BE19E94();
  sub_22BE18950(v60);
  v157 = sub_22C26F2A4();
  sub_22BE179D8();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v64);
  sub_22BE324EC();
  v65 = sub_22BE5CE4C(&qword_27D911EE8, &unk_22C2B5C00);
  sub_22BE19448(v65);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v66);
  sub_22BE1A174();
  sub_22BE190A8(v67);
  v68 = sub_22BE5CE4C(&qword_27D90E6C8, &unk_22C2AE530);
  sub_22BE19448(v68);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v69);
  sub_22BE1A174();
  sub_22BE190A8(v70);
  v139 = v21;
  v71 = MEMORY[0x2318A8270]();
  sub_22BE5CE4C(&qword_27D915638, &unk_22C2CC9A8);
  sub_22C273D04();
  v72 = 0;
  sub_22BE26A98();
  v140 = v73 >> 6;
  sub_22BE417A8(v62 + 16);
  v142 = (v159 + 16);
  v145 = *MEMORY[0x277D1CAF0];
  sub_22C25A4F4(v159 + 8);
  v148 = (v62 + 8);
  v152 = v75;
  v158 = v27;
  v149 = v24;
  v155 = v23;
  while (1)
  {
    if (!v74)
    {
      v78 = v72;
      while (1)
      {
        v72 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          break;
        }

        if (v72 >= v140)
        {

          sub_22C26FB54();
          sub_22C25A524();
          sub_22C106F58();
          type metadata accessor for TranscriptProtoActionConfirmation(0);
          sub_22C25ACB4();
          type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
          sub_22BE1A140();
          sub_22BE3A034(v128, v129, v130, v131);
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          sub_22C26FB84();
          sub_22BE18524();
          (*(v132 + 8))(v139);
          *v138 = v152;
          sub_22BE2343C();
          goto LABEL_29;
        }

        ++v78;
        if (*(v71 + 64 + 8 * v72))
        {
          v160 = v22;
          sub_22BE4878C();
          v154 = v79;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_22C274004();
      __break(1u);
      return;
    }

    v160 = v22;
    sub_22BE22BE8();
    v154 = v77;
LABEL_9:
    v80 = *(v62 + 16);
    v80(v24, *(v71 + 56) + *(v62 + 72) * (v76 | (v72 << 6)), v157);
    v81 = sub_22BE3E79C();
    (v80)(v81);
    sub_22BE3AE2C();
    sub_22BE19DC4(v82, v83, v84, v85);
    sub_22BE1A140();
    sub_22BE19DC4(v86, v87, v88, v158);

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26E984();
    sub_22C272854();
    if (v160)
    {
      break;
    }

    v89 = sub_22BE425F8();
    v90(v89);
    sub_22BE33554();
    v91 = sub_22C259EC8();
    v92(v91);
    sub_22C2597E4();
    sub_22BE19DC4(v93, v94, v95, v96);
    sub_22BE3911C();
    sub_22BE2343C();
    sub_22C26F274();
    sub_22C25A8AC();
    sub_22BE22814();
    v97 = sub_22BE23E90();
    sub_22BE1AB5C(v97, v98, v156);
    if (v115)
    {
      v99 = sub_22BE1B5E0();
      sub_22BE233E8(v99, v100, &unk_22C27FCA0);
      v101 = sub_22BE25C08();
      sub_22BE233E8(v101, v102, &unk_22C27FCA0);
      v103 = 1;
      v104 = v147;
    }

    else
    {
      sub_22BE33554();
      v105 = sub_22BE194F8();
      v106(v105);
      v107 = *v142;
      v108 = sub_22BE1B5E0();
      v107(v108);
      v109 = sub_22BE1BF88();
      v107(v109);
      sub_22BE33554();
      v110 = sub_22BE3911C();
      if (v111(v110) == v145)
      {
        sub_22BE33554();
        v113 = v156;
        v114(v143, v156);
        v112 = *v143;
      }

      else
      {
        sub_22C25A700();
        if (v115)
        {
          v112 = 0;
        }

        else
        {
          sub_22C25A700();
          if (!v115)
          {
            goto LABEL_33;
          }

          v112 = 1;
        }

        v113 = v156;
      }

      sub_22C25A700();
      if (v115)
      {
        v116 = 0;
      }

      else
      {
        v116 = 1;
      }

      *v144 = 0;
      *(v144 + 8) = 256;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v117 = *v141;
      v118 = sub_22C25A640();
      v117(v118, v113);
      *v144 = v112;
      *(v144 + 8) = v116;
      *(v144 + 9) = 0;
      sub_22C259680();
      v104 = v147;
      sub_22BE3B620(v144, v147);
      sub_22BE233E8(v153, &qword_27D909088, &unk_22C27FCA0);
      v119 = sub_22BE406B8();
      v117(v119, v113);
      v103 = 0;
    }

    sub_22BE19DC4(v104, v103, 1, v158);
    v120 = *v148;
    (*v148)(v155, v157);
    sub_22BE2343C();
    sub_22BE3B620(v150, v146);
    v24 = v149;
    v121 = sub_22C259FF4();
    (v120)(v121);
    sub_22C259DA0();
    sub_22C25977C(v122);
    sub_22C25AB88(*(v152 + 48));
    sub_22C25AC90();
    sub_22BE3B620(v146, v123 + v124 * v125);
    sub_22C25AB9C();
    if (v127)
    {
      goto LABEL_32;
    }

    *(v152 + 16) = v126;
    v22 = 0;
    v74 = v154;
  }

  v133 = *v148;
  sub_22BE2BB28();
  v133();
  v134 = sub_22BE425F8();
  v135(v134);
  sub_22BE35C4C();
  sub_22BE1AE58();

  (v133)(v149, v151);

  sub_22C26FB84();
  sub_22BE18524();
  (*(v136 + 8))(v139);
LABEL_29:
  sub_22BE46D98();
  sub_22BE18478();
}

void ActionConfirmation.SystemStyle.init(transcript:)()
{
  sub_22BE19130();
  v5 = sub_22C25A8F4(v4);
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  sub_22BE4682C(v8);
  v9 = sub_22C26FB14();
  sub_22BE179D8();
  v31 = v10;
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE19820();
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE2558C();
  v16 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(v15);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE188B0();
  sub_22C101B38();
  if (v0)
  {
    sub_22C2598A4();
  }

  else
  {
    v18 = sub_22C259E7C();
    sub_22BE3B620(v18, v1);
    v19 = sub_22BE385E4();
    sub_22BE1AA68(v19, v2);

    sub_22C101A48();
    v20 = *v33;
    if (v20 != 4)
    {
      sub_22BE28690();
      sub_22BE1AE58();
      (*(v31 + 104))(v3, **(&unk_278725CA0 + v20), v9);
      sub_22BE261AC();
      sub_22C26FAE4();
      sub_22C2598A4();
      sub_22BE1AE58();
      sub_22C25A278();
      sub_22BE1AE58();
      sub_22BE1AE58();
      v29 = *MEMORY[0x277D1CD60];
      sub_22C26FB44();
      sub_22BE1834C();
      (*(v30 + 104))(v32, v29);
      goto LABEL_8;
    }

    v21 = sub_22BE5CE4C(&qword_27D9155C0, &unk_22C2CC7C0);
    sub_22BE43258(v21);
    sub_22BE3D554();
    v22 = sub_22C108598();
    v23 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v22);
    sub_22C259EA0(v23, v24, v25, v26, v27, v28);
    sub_22BE28690();
    sub_22BE1AE58();

    sub_22C2598A4();
    sub_22BE1AE58();
    sub_22C25A278();
    sub_22BE1AE58();
    sub_22BE1AB74();
  }

  sub_22BE1AE58();
LABEL_8:
  sub_22BE46D98();
  sub_22BE18478();
}

void ActionConfirmation.SystemStyle.MontaraEnablement.init(transcript:)()
{
  sub_22BE19130();
  v5 = sub_22BE2054C(v4);
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE18DFC();
  sub_22C26FB14();
  sub_22C2594A0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE294E0();
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);

  sub_22C101A48();
  if (!v0)
  {
    v11 = *v1;
    if (v11 != 4)
    {
      sub_22BE28690();
      sub_22BE1AE58();
      (*(v9 + 104))(v3, **(&unk_278725CA0 + v11), v2);
      sub_22C26FAE4();
      sub_22BE26148();
      sub_22BE1AE58();
      goto LABEL_5;
    }

    v12 = sub_22BE5CE4C(&qword_27D9155C0, &unk_22C2CC7C0);
    sub_22BE43258(v12);
    sub_22C25A2F0();
    v13 = sub_22C108598();
    v14 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v13);
    *v15 = v9;
    v15[1] = v2;
    sub_22C25A590(v14, v15, v16, v17, v18, v19);
    sub_22BE28690();
    sub_22BE1AE58();
  }

  sub_22BE26148();
  sub_22BE1AE58();

LABEL_5:
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoActionConfirmationSystemStyle.init(handwritten:)()
{
  sub_22BE19460();
  sub_22BE1A5E4();
  sub_22C26FB34();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v2);
  sub_22BE2558C();
  sub_22C26FB44();
  sub_22BE41130();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE188B0();
  v6 = sub_22BE5CE4C(&qword_27D90E6E0, &qword_22C2B5BF0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE250C8();
  v9 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(v8);
  v10 = sub_22BE38960();
  v13 = sub_22C18F17C(v10, v11, v12, v9);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(v13);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v4 + 16))(v0);
  v14 = sub_22BE1824C();
  if (v15(v14) == *MEMORY[0x277D1CD60])
  {
    v16 = sub_22BE1824C();
    v17(v16);
    sub_22C18F458();
    v18 = sub_22BE3911C();
    v19(v18);
    sub_22C11634C();
    v20 = sub_22BE1B328();
    v21(v20);
    TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.init(handwritten:)();
    v22 = sub_22BE37490();
    v23(v22);
    v24 = sub_22BE3C5E4();
    v25(v24);
    v26 = sub_22C25974C();
    sub_22BE19DC4(v26, v27, v28, v9);
    sub_22BE2343C();
    sub_22BE1AABC();
  }

  else
  {
    sub_22C274004();
    __break(1u);
  }
}

void TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.init(handwritten:)()
{
  sub_22BE19460();
  sub_22BE1B254();
  v4 = sub_22C26FB14();
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE294E0();
  v6 = sub_22BE5CE4C(&qword_27D90E6F8, &qword_22C2B5BE0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25CD0();
  sub_22C26EF64();
  sub_22C25A2F0();
  sub_22C26FB24();
  sub_22BE3D5BC();
  TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.init(handwritten:)();
  v8 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v9 = sub_22BE3C530();
  sub_22BE19DC4(v9, v10, v11, v8);
  v12 = sub_22C26EF44();
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  sub_22C25976C();
  sub_22BE19DC4(v13, v14, v15, v16);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26FB34();
  sub_22BE18524();
  (*(v17 + 8))(v1);
  *v0 = v2;
  *(v0 + 8) = v3;
  sub_22BE2343C();
  *(v0 + 16) = v12 & 1;
  sub_22BE1AABC();
}

uint64_t ActionConfirmation.SystemStyle.MontaraEnablement.Source.init(transcript:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (v4 == 4)
  {
    v5 = sub_22BE5CE4C(&qword_27D9155C0, &unk_22C2CC7C0);
    sub_22C25AA08(v5, v6);
    sub_22C25A64C();
    v7 = sub_22C108598();
    v8 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v7);
    *v9 = v2;
    v9[1] = v3;
    sub_22C25A590(v8, v9, v10, v11, v12, v13);
    sub_22BE28690();
    return sub_22BE1AE58();
  }

  else
  {
    sub_22BE28690();
    sub_22BE1AE58();
    sub_22C26FB14();
    sub_22BE18000();
    switch(v4)
    {
      case 1:
        v18 = MEMORY[0x277D1CD40];
        break;
      case 2:
        v18 = MEMORY[0x277D1CD38];
        break;
      case 3:
        v18 = MEMORY[0x277D1CD30];
        break;
      default:
        v18 = MEMORY[0x277D1CD48];
        break;
    }

    return (*(v17 + 104))(a2, *v18, v16);
  }
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.init(handwritten:)()
{
  sub_22BE1B254();
  sub_22C26FB14();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  v2 = sub_22BE3859C(4);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(v2);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE29400();
  v3 = sub_22BE3C5E4();
  v4(v3);
  v5 = sub_22BE26264();
  v7 = v6(v5);
  if (v7 == *MEMORY[0x277D1CD48])
  {
    v8 = 0;
LABEL_9:
    v9 = sub_22BE18040();
    result = v10(v9);
    *v0 = v8;
    return result;
  }

  if (v7 == *MEMORY[0x277D1CD40])
  {
    v8 = 1;
    goto LABEL_9;
  }

  if (v7 == *MEMORY[0x277D1CD38])
  {
    v8 = 2;
    goto LABEL_9;
  }

  if (v7 == *MEMORY[0x277D1CD30])
  {
    v8 = 3;
    goto LABEL_9;
  }

  result = sub_22C25AE4C();
  __break(1u);
  return result;
}

void TranscriptProtoParameterValue.init(handwritten:)()
{
  sub_22BE19130();
  v34 = v1;
  v2 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v2);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE20168(v4, v33);
  v5 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE415D8(v7);
  sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v8);
  sub_22BE28FD8();
  sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE18DFC();
  v10 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E64();
  v12 = sub_22BE38960();
  v15 = sub_22BE3FEC8(v12, v13, v14);
  type metadata accessor for TranscriptProtoParameterValue(v15);
  v16 = sub_22C25AA2C();
  type metadata accessor for TranscriptProtoPromptSelection(v16);
  sub_22BE1A140();
  sub_22BE3A034(v17, v18, v19, v20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26E984();
  sub_22C272854();
  if (v0)
  {
    sub_22C26F2A4();
    sub_22BE18524();
    (*(v21 + 8))(v34);
    v22 = sub_22BE22DF4();
    v23(v22);
    sub_22BE35C4C();
    sub_22BE1AE58();
  }

  else
  {
    v24 = sub_22BE22DF4();
    v25(v24);
    v26 = sub_22BE426E8();
    v27(v26);
    sub_22C2597F4();
    sub_22BE19DC4(v28, v29, v30, v31);
    sub_22BE2343C();
    sub_22C26F274();
    sub_22C106334();
    sub_22C26F2A4();
    sub_22BE18524();
    (*(v32 + 8))(v34);
    sub_22BE2343C();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t PromptSelection.init(transcript:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 9))
  {
    v3 = sub_22BE5CE4C(&qword_27D911FB8, &unk_22C2B5D60);
    sub_22C25AA08(v3, v4);
    sub_22BE3D554();
    v5 = sub_22C108598();
    v6 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v5);
    sub_22C259EA0(v6, v7, v8, v9, v10, v11);
    sub_22BE3767C();
    return sub_22BE1AE58();
  }

  else
  {
    v13 = *a1;
    v14 = *(a1 + 8);
    sub_22BE3767C();
    sub_22BE1AE58();
    if (v14)
    {
      sub_22C26F7C4();
      sub_22BE1834C();
      if (v13)
      {
        v16 = MEMORY[0x277D1CAF8];
      }

      else
      {
        v16 = MEMORY[0x277D1CB00];
      }

      return (*(v15 + 104))(a2, *v16);
    }

    else
    {
      *a2 = v13;
      v17 = *MEMORY[0x277D1CAF0];
      sub_22C26F7C4();
      sub_22BE1834C();
      return (*(v18 + 104))(a2, v17);
    }
  }
}

void TranscriptProtoPromptSelection.init(handwritten:)()
{
  sub_22BE3C358();
  sub_22BE1B254();
  sub_22C26F7C4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v2);
  sub_22BE18DFC();
  sub_22C116380();
  v3 = sub_22BE431C0();
  v4(v3);
  v5 = sub_22BE232C8();
  v7 = v6(v5);
  v8 = v7;
  v9 = *MEMORY[0x277D1CAF0];
  if (v7 == *MEMORY[0x277D1CAF0])
  {
    v11 = sub_22BE232C8();
    v12(v11);
    v10 = *v1;
    goto LABEL_7;
  }

  if (v7 == *MEMORY[0x277D1CB00])
  {
    v10 = 0;
LABEL_7:
    *v0 = 0;
    *(v0 + 8) = 256;
    type metadata accessor for TranscriptProtoPromptSelection(0);
    sub_22BE48874();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v13 = sub_22BE18040();
    v14(v13);
    *v0 = v10;
    *(v0 + 8) = v8 != v9;
    sub_22BE267B8();
    return;
  }

  if (v7 == *MEMORY[0x277D1CAF8])
  {
    v10 = 1;
    goto LABEL_7;
  }

  sub_22C25AE4C();
  __break(1u);
}

void ParameterNeedsValue.init(transcript:)()
{
  sub_22BE19130();
  v1 = sub_22BE5CE4C(&qword_27D90E998, &unk_22C2AE640);
  sub_22BE19448(v1);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE35C94(v3, v14);
  v4 = sub_22BE5CE4C(&qword_27D911ED0, &unk_22C2B5BD0);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE20168(v6, v15);
  sub_22C2725A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v7);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v8);
  sub_22C2595A0();
  sub_22C2728A4();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v9);
  sub_22BE197B8();
  type metadata accessor for TranscriptProtoParameterNeedsValue(0);

  sub_22C1024DC();
  if (v0)
  {
    sub_22C2594E8();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C11634C();
    v10 = sub_22BE29454();
    v11(v10);
    sub_22C25A918();
    sub_22C272894();
    v12 = sub_22BE1B18C();
    v13(v12);
    sub_22BE22814();
    sub_22C0FFD60();
    sub_22C26FBD4();
    sub_22C2594E8();
    sub_22BE1AE58();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoParameterNeedsValue.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v45 = v11;
  v12 = sub_22BE5CE4C(&qword_27D911ED0, &unk_22C2B5BD0);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE20310(v14, v44);
  v15 = sub_22BE5CE4C(&qword_27D90E998, &unk_22C2AE640);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE23A90(v17);
  sub_22C2725A4();
  sub_22BE179D8();
  v46 = v18;
  MEMORY[0x28223BE20](v18);
  sub_22BE18DFC();
  sub_22C2728A4();
  sub_22C259488();
  MEMORY[0x28223BE20](v19);
  sub_22BE28FD8();
  v20 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v20);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1A174();
  v22 = sub_22C26E894();
  v24 = v23;
  sub_22C26FBF4();
  sub_22C272884();
  if (a10)
  {

    sub_22C26FC54();
    sub_22BE18524();
    (*(v25 + 8))(v10);
    v26 = sub_22BE3CEF4();
    v27(v26);
  }

  else
  {
    v28 = sub_22BE3CEF4();
    v29(v28);
    v30 = sub_22BE1AB1C();
    v31(v30);
    v32 = sub_22BE22B8C();
    sub_22BE19DC4(v32, v33, v34, v46);
    sub_22C26FC44();
    sub_22C106D88();
    type metadata accessor for TranscriptProtoParameterNeedsValue(0);
    sub_22C25ACB4();
    sub_22C25975C();
    sub_22BE19DC4(v35, v36, v37, v38);
    type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
    sub_22BE1A140();
    sub_22C25AE64(v39, v40, v41, v42);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26FC54();
    sub_22BE18524();
    (*(v43 + 8))(v10);
    *v45 = v22;
    v45[1] = v24;
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ParameterNeedsValue.Context.init(transcript:)()
{
  v4 = sub_22BE1B254();
  v5 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(v4);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C2595A0();
  v9 = type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum(v8);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE1955C();
  sub_22C101C28();
  if (v1)
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
  }

  else
  {
    v11 = sub_22C1088AC();
    sub_22BE3B620(v11, v3);
    v12 = sub_22C1088E8();
    sub_22BE1AA68(v12, v2);

    sub_22BE236C8();
    sub_22C26ED04();
    sub_22C0E9A74();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE36680();
    sub_22BE1AE58();
    v13 = *MEMORY[0x277D1CDE0];
    sub_22C26FC34();
    sub_22BE1834C();
    (*(v14 + 104))(v0, v13);
  }

  sub_22C25A6E8();
}

void TranscriptProtoParameterNeedsValueContext.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C25A93C(v12);
  sub_22C26FC24();
  sub_22BE1A3D8();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22BE25544();
  MEMORY[0x28223BE20](v16);
  sub_22BE39EE8();
  v17 = sub_22C26FC34();
  sub_22BE179D8();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22BE197B8();
  v21 = sub_22BE5CE4C(&qword_27D90E9B0, &qword_22C2B5BC0);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  v23 = sub_22BE3A208();
  type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum(v23);
  sub_22BE1A140();
  v46 = v24;
  v28 = sub_22C18F17C(v25, v26, v27, v24);
  type metadata accessor for TranscriptProtoParameterNeedsValueContext(v28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C11634C();
  v29(v10, a10, v17);
  v30 = sub_22BE1A6BC();
  if (v31(v30) == *MEMORY[0x277D1CDE0])
  {
    v32 = sub_22BE1A6BC();
    v33(v32);
    sub_22BE286F0();
    v34 = sub_22BE39EAC();
    v35(v34);
    sub_22C259D90();
    sub_22BE39E94();
    v36();
    v37 = sub_22C26ED64();
    v39 = v38;
    type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v19 + 8))(a10, v17);
    v40 = *(v14 + 8);
    v41 = sub_22BE336E8();
    v40(v41);
    v42 = sub_22BE33560();
    v40(v42);
    *v11 = v37;
    v11[1] = v39;
    v43 = sub_22BE360A0();
    sub_22BE19DC4(v43, v44, v45, v46);
    sub_22BE2343C();
    sub_22BE18478();
  }

  else
  {
    sub_22C274004();
    __break(1u);
  }
}

void ParameterConfirmation.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE3129C();
  v10 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE29200(v12);
  v13 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE36644(v15);
  sub_22C272594();
  sub_22BE179D8();
  v41 = v17;
  v42 = v16;
  MEMORY[0x28223BE20](v16);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v18);
  sub_22BE19490();
  v39 = v19;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v20);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE195C4();
  v38 = sub_22C272874();
  sub_22BE18000();
  MEMORY[0x28223BE20](v22);
  sub_22BE3C444(v23, v37);
  sub_22C26F774();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v24);
  sub_22BE17CBC();
  type metadata accessor for TranscriptProtoParameterConfirmation(0);

  sub_22C101488();
  if (a10)
  {
    sub_22BE41688();
    sub_22BE1AE58();
  }

  else
  {
    v25 = *(v41 + 16);
    v26 = sub_22BE1A6BC();
    v25(v26);
    sub_22C259FDC();
    sub_22C272864();
    v40 = v25;
    v27 = *(v41 + 8);
    v28 = sub_22BE2565C();
    v27(v28);
    sub_22C26E614();
    v29 = sub_22BE38960();
    sub_22BE19DC4(v29, v30, v31, v32);
    sub_22BE39EAC();
    sub_22C26F764();
    sub_22C101488();
    v33 = sub_22BE354DC();
    v40(v33);
    sub_22C272864();
    (v27)(v39, v42);
    sub_22BE187DC();
    sub_22BE19DC4(v34, v35, v36, v38);
    sub_22C26FE44();
    sub_22BE41688();
    sub_22BE1AE58();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoParameterConfirmation.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v65 = v11;
  v12 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE20168(v14, v62);
  sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v15);
  sub_22BE2F294();
  sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v16);
  sub_22BE19338();
  v17 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v18 = sub_22BE19448(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v19);
  sub_22C10887C(v20, v21, v22, v23, v24, v25, v26, v27, v63);
  v28 = sub_22C26E894();
  v30 = v29;
  v31 = MEMORY[0x2318A8570]();
  v33 = v32;
  if (v32)
  {
    v34 = 0;
  }

  else
  {
    v34 = v31;
  }

  sub_22C26FE84();
  sub_22C272854();
  if (a10)
  {

    sub_22C26FE94();
    sub_22BE18524();
    (*(v35 + 8))(v10);
    v36 = sub_22C25A888();
    v37(v36);
  }

  else
  {
    v38 = sub_22C25A888();
    v39(v38);
    v40 = sub_22BE191C0();
    v41(v40);
    sub_22C2597D4();
    sub_22BE19DC4(v42, v43, v44, v45);
    sub_22C26FE64();
    sub_22C105684(v67, v46, v47, v48, v49, v50, v51, v52, v34, v65);
    type metadata accessor for TranscriptProtoParameterConfirmation(0);
    sub_22BE46004();
    sub_22C25975C();
    sub_22BE19DC4(v53, v54, v55, v56);
    sub_22C25975C();
    sub_22BE19DC4(v57, v58, v59, v60);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26FE94();
    sub_22BE18524();
    (*(v61 + 8))(v10);
    *v66 = v28;
    *(v66 + 8) = v30;
    *(v66 + 16) = v64;
    *(v66 + 24) = v33 & 1;
    sub_22BE27B84();
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ParameterDisambiguation.init(transcript:)()
{
  sub_22BE1B214();

  sub_22C0F2F3C(v1, v2, v3, v4, v5, v6, v7, v8);
  if (v0)
  {
    sub_22BE26148();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE431C0();
    sub_22C26FFB4();
    sub_22BE26148();
    sub_22BE1AE58();
  }

  sub_22BE25C6C();
}

void TranscriptProtoParameterDisambiguation.init(handwritten:)()
{
  sub_22BE2BB34();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C26FFC4();
  v7 = v6;
  v8 = MEMORY[0x2318A86D0]();
  v10 = v9;
  v11 = sub_22C26FFE4();
  sub_22C220C88(v11);
  if (v0)
  {
    sub_22C26FFF4();
    sub_22BE18524();
    (*(v13 + 8))(v2);
  }

  else
  {
    v14 = v12;
    v15 = v10 & 1;
    if (v15)
    {
      v8 = 0;
    }

    type metadata accessor for TranscriptProtoParameterDisambiguation(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26FFF4();
    sub_22BE18524();
    (*(v16 + 8))(v2);
    *v4 = v5;
    *(v4 + 8) = v7;
    *(v4 + 32) = v15;
    *(v4 + 16) = v14;
    *(v4 + 24) = v8;
  }

  sub_22BEE93D4();
}

void ParameterNotAllowed.init(transcript:)()
{
  sub_22BE19130();
  v2 = sub_22BE5CE4C(&qword_27D915640, &qword_22C2CC9B8);
  sub_22BE19448(v2);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE3FE6C(v4);
  v19 = sub_22C26FCB4();
  sub_22BE179D8();
  v18 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22BE2F294();
  sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v7);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v8);
  sub_22C2595A0();
  v9 = sub_22C272874();
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE17CBC();
  type metadata accessor for TranscriptProtoParameterNotAllowed(0);

  sub_22C101488();
  if (v0)
  {
    sub_22C2599C0();
    sub_22BE1AE58();
  }

  else
  {
    v11 = sub_22BE29454();
    v12(v11);
    sub_22C25A918();
    sub_22C272864();
    v13 = sub_22BE36318();
    v14(v13);
    sub_22C26FC94();
    sub_22BE3E950(v20);
    if (v15)
    {
      (*(v18 + 104))(v1, *MEMORY[0x277D1CE08], v19);
      sub_22BE3E950(v20);
      if (!v15)
      {
        sub_22BE233E8(v20, &qword_27D915640, &qword_22C2CC9B8);
      }
    }

    else
    {
      v16 = sub_22BE23108();
      v17(v16);
    }

    sub_22BE33FCC();
    sub_22C26FC64();
    sub_22C2599C0();
    sub_22BE1AE58();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoParameterNotAllowed.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C18F0F4();
  sub_22BE2054C(v3);
  v30 = sub_22C26FCB4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE1955C();
  v29 = sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE17CBC();
  sub_22C272874();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE28FD8();
  v7 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE23E58();
  v28 = sub_22C26E894();
  v32 = v9;
  sub_22C26FC84();
  sub_22C272854();
  if (v2)
  {

    sub_22C26FCD4();
    sub_22BE18524();
    (*(v10 + 8))(v0);
    v11 = sub_22BE2684C();
    v12(v11);
  }

  else
  {
    v13 = sub_22BE2684C();
    v14(v13);
    v15 = sub_22BE33BE8();
    v16(v15);
    v17 = sub_22BE360A0();
    sub_22BE19DC4(v17, v18, v19, v29);
    sub_22C26FCC4();
    v20 = sub_22C26FCA4();
    sub_22BE190E4();
    v21(v1, v30);
    if (v20 == 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v20 == 1;
    }

    type metadata accessor for TranscriptProtoParameterNotAllowed(0);
    sub_22C259860();
    sub_22C25AE64(v23, v24, v25, v26);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26FCD4();
    sub_22BE18524();
    (*(v27 + 8))(v0);
    *v31 = v28;
    *(v31 + 8) = v32;
    sub_22BE2343C();
    *(v31 + 16) = v22;
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void ParameterCandidatesNotFound.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A424(v1);
  sub_22C272594();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v2);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v3);
  sub_22C2595A0();
  v4 = sub_22C272874();
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE28FD8();
  type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);

  sub_22C101488();
  if (v0)
  {
    sub_22BE26148();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A080();
    v6 = sub_22BE194C4();
    v7(v6);
    sub_22C272864();
    v8 = sub_22BE1AB1C();
    v9(v8);
    sub_22BE315FC();
    sub_22C270194();
    sub_22BE26148();
    sub_22BE1AE58();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoParameterCandidatesNotFound.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE3129C();
  sub_22BE2054C(v12);
  sub_22C272594();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v13);
  sub_22BE2F294();
  sub_22C272874();
  sub_22BE41130();
  MEMORY[0x28223BE20](v14);
  sub_22BE17CBC();
  v15 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE234F4();
  v35 = sub_22C26E894();
  v18 = v17;
  sub_22C2701B4();
  sub_22C272854();
  if (a10)
  {

    sub_22C2701C4();
    sub_22BE18524();
    (*(v19 + 8))(v10);
    v20 = sub_22BE194F8();
    v21(v20);
  }

  else
  {
    v22 = sub_22BE194F8();
    v23(v22);
    v24 = sub_22BE33B3C();
    v25(v24);
    v26 = sub_22C25974C();
    v29 = sub_22C18F17C(v26, v27, v28, v11);
    type metadata accessor for TranscriptProtoParameterCandidatesNotFound(v29);
    sub_22BE3AE2C();
    sub_22C25AD2C(v30, v31, v32, v33);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C2701C4();
    sub_22BE18524();
    (*(v34 + 8))(v10);
    *v36 = v35;
    v36[1] = v18;
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void Candidate.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v13 = sub_22C25A554(v12);
  v14 = type metadata accessor for TranscriptProtoStatementID(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE3C444(v16, v48);
  sub_22C26E684();
  sub_22BE179D8();
  v50 = v18;
  v51 = v17;
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v20 = sub_22BE3C768(v19);
  v21 = type metadata accessor for TranscriptProtoCandidatePromptStatus(v20);
  v22 = sub_22BE19448(v21);
  MEMORY[0x28223BE20](v22);
  sub_22BE197B8();
  sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v23);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v24);
  sub_22BE195C4();
  sub_22C272874();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v25);
  v26 = sub_22BE19820();
  type metadata accessor for TranscriptProtoCandidate(v26);
  sub_22C101488();
  if (a10)
  {
    sub_22BE37964();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A080();
    v27 = sub_22BE180C8();
    v28(v27);
    sub_22C25ABCC();
    sub_22C272864();
    v29 = sub_22BE196A8();
    v30(v29);
    v31 = *v11;
    sub_22C1034E4();
    v32 = *v10;
    v33 = *(v10 + 8);
    v34 = *(v10 + 9);
    sub_22BE291DC();
    sub_22BE1AE58();
    v35 = v32 != 0;
    if (v33)
    {
      v36 = 1;
    }

    else
    {
      v35 = v32;
      v36 = 0;
    }

    v37 = (v34 & 1) == 0;
    v38 = (v34 & 1) == 0 && v35;
    if (v37)
    {
      v39 = v36;
    }

    else
    {
      v39 = 1;
    }

    v53 = v39;
    sub_22C1026C4();

    sub_22BE354D0();
    sub_22C26E664();
    sub_22BE37964();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    v40 = type metadata accessor for Candidate(0);
    v41 = v52 + v40[6];
    *v41 = 0;
    *(v41 + 8) = 1;
    sub_22C26E614();
    sub_22BE1A140();
    sub_22BE19DC4(v42, v43, v44, v45);
    v46 = sub_22BE2590C();
    v47(v46);
    *(v52 + v40[5]) = v31;
    *v41 = v38;
    *(v41 + 8) = v53;
    (*(v50 + 32))(v52 + v40[7], v49, v51);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t Candidate.PromptStatus.init(transcript:)()
{
  sub_22BE48AF0();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  result = sub_22BE1AE58();
  if (v4)
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = v2 != 0;
    if (v3)
    {
      v7 = 1;
    }

    else
    {
      v6 = v2;
      v7 = 0;
    }
  }

  *v0 = v6;
  *(v0 + 8) = v7;
  return result;
}

uint64_t TranscriptProtoCandidatePromptStatus.init(handwritten:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  *a2 = 0;
  *(a2 + 8) = 256;
  type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  sub_22BE48874();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v6 = v3 != 0;
  if (!v4)
  {
    v6 = v3;
  }

  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22C22F58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *a1;
  v5 = v2;
  return TranscriptProtoCandidatePromptStatus.init(handwritten:)(&v4, a2);
}

IntelligenceFlowPlannerSupport::Session::Plan::Source __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Session.Plan.Source.init(transcript:)(IntelligenceFlowPlannerSupport::Session::Plan::Source transcript)
{
  v2 = 2;
  switch(*transcript)
  {
    case 1:
      v2 = 0;
      goto LABEL_7;
    case 2:
      v2 = 1;
      goto LABEL_7;
    case 3:
      goto LABEL_7;
    case 4:
      v2 = 3;
      goto LABEL_7;
    case 5:
      v2 = 4;
LABEL_7:
      *v1 = v2;
      break;
    default:
      v3 = sub_22C108358();
      v4 = sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v3);
      transcript = sub_22BE3C904(v4, v5);
      break;
  }

  return transcript;
}

void Session.PlanGenerationError.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v16 = sub_22C259C10(v15);
  v17 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v16);
  v18 = sub_22BE19448(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  sub_22C259BA0(v19);
  sub_22C26E5D4();
  sub_22C259488();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BE1AD20();
  v22 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v21);
  sub_22BE18000();
  MEMORY[0x28223BE20](v23);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v24);
  v25 = sub_22C2595B4();
  v26 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(v25);
  v27 = sub_22BE19448(v26);
  MEMORY[0x28223BE20](v27);
  sub_22BE1955C();
  sub_22C25AB04();
  sub_22C103304();
  if (v10)
  {
    sub_22C259698();
  }

  else
  {
    v43 = v11;
    v28 = sub_22C1088AC();
    sub_22BE3B620(v28, v13);
    v29 = sub_22C259E7C();
    sub_22BE1AA68(v29, v14);
    v31 = *v14;
    v30 = v14[1];
    v32 = v14[3];
    v42 = v14[2];
    v33 = *(v22 + 24);

    sub_22C25ACCC();
    sub_22C103214();
    if (!v33)
    {
      v41 = v31;
      v34 = *(a10 + 16);
      v35 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_22C25AC4C();

      v36 = sub_22BE336E8();
      sub_22C25A990(v36, v37, v34);
      sub_22C26E5E4();
      sub_22C259698();
      sub_22BE1AE58();
      sub_22C259990();
      sub_22BE1AE58();
      sub_22BE1AE58();
      sub_22BE25EFC();
      sub_22BE1AE58();
      *v44 = v41;
      v44[1] = v30;
      v44[2] = v42;
      v44[3] = v32;
      v38 = type metadata accessor for Session.PlanGenerationModelOutputError(0);
      v39 = sub_22C25A688(*(v38 + 24));
      v40(v39, v12, v43);
      goto LABEL_6;
    }

    sub_22C259698();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE3C968();
  }

  sub_22BE1AE58();
LABEL_6:
  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoPlanGenerationError.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A6AC();
  sub_22BE2054C(v5);
  v45 = sub_22C26E5D4();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE197B8();
  v9 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE250C8();
  v12 = type metadata accessor for Session.PlanGenerationModelOutputError(v11);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22C2595A0();
  v16 = type metadata accessor for Session.PlanGenerationError(v15);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BE1AD20();
  v44 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(v18);
  sub_22BE18000();
  MEMORY[0x28223BE20](v19);
  sub_22BE188B0();
  v20 = sub_22C259FB8();
  sub_22BE1AA68(v20, v3);
  v21 = sub_22BE44744();
  sub_22BE3B620(v21, v2);
  v22 = sub_22C1088E8();
  sub_22BE1AA68(v22, v1);
  v23 = *(v1 + 1);
  v24 = *(v1 + 3);
  v42 = *(v1 + 2);
  v43 = *v1;
  (*(v7 + 16))(v0, &v1[*(v13 + 32)], v45);

  sub_22C259FDC();
  TranscriptProtoIntelligenceFlowError.init(handwritten:)();
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE25FFC();
  v29 = sub_22C18F17C(v25, v26, v27, v28);
  type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v29);
  sub_22BE32EE0();
  sub_22BE19DC4(v30, v31, v32, v33);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE291B0();
  sub_22BE1AE58();
  *v4 = v43;
  v4[1] = v23;
  v4[2] = v42;
  v4[3] = v24;
  sub_22BE2343C();
  v34 = sub_22BE38960();
  v37 = sub_22C18F17C(v34, v35, v36, v44);
  type metadata accessor for TranscriptProtoPlanGenerationError(v37);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259A50();
  sub_22BE1AE58();
  sub_22BE233E8(v46, &qword_27D90EA20, &qword_22C2B5BA0);
  v38 = sub_22C259E7C();
  sub_22BE3B620(v38, v46);
  v39 = sub_22BE2500C();
  sub_22BE19DC4(v39, v40, v41, v44);
  sub_22BE3C298();
  sub_22BE18478();
}

void Session.PlanGenerationModelOutputError.init(transcript:)()
{
  sub_22BE19130();
  v3 = sub_22C259D80();
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v3);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE19820();
  sub_22C26E5D4();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE1955C();
  v7 = v1[1];
  v8 = v1[3];
  v17 = v1[2];
  v18 = *v1;
  v9 = *(type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0) + 24);

  sub_22BE3CD7C();
  sub_22C103214();
  if (v9)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    v16 = *(v2 + 16);
    v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_22C25AC4C();

    v11 = sub_22BE336E8();
    sub_22C25A990(v11, v12, v16);
    sub_22C26E5E4();
    sub_22BE379D8();
    sub_22BE1AE58();
    sub_22C259990();
    sub_22BE1AE58();
    *v0 = v18;
    v0[1] = v7;
    v0[2] = v17;
    v0[3] = v8;
    v13 = type metadata accessor for Session.PlanGenerationModelOutputError(0);
    v14 = sub_22C25AC20(*(v13 + 24));
    v15(v14);
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

void TranscriptProtoPlanGenerationModelOutputError.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  v3 = v2;
  v4 = sub_22C26E5D4();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE18DFC();
  v8 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE234F4();
  v10 = *v0;
  v11 = *(v0 + 1);
  v12 = *(v0 + 3);
  v13 = sub_22BE2054C(*(v0 + 2));
  v14 = type metadata accessor for Session.PlanGenerationModelOutputError(v13);
  (*(v6 + 16))(v1, &v0[*(v14 + 24)], v4);

  TranscriptProtoIntelligenceFlowError.init(handwritten:)();
  v15 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v16 = sub_22C25974C();
  v19 = sub_22C18F17C(v16, v17, v18, v15);
  type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v19);
  sub_22BE3AE2C();
  sub_22BE19DC4(v20, v21, v22, v23);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE379D8();
  sub_22BE1AE58();
  *v3 = v10;
  v3[1] = v11;
  v3[2] = v24;
  v3[3] = v12;
  sub_22BE2343C();
  sub_22BE3C298();
  sub_22BE18478();
}

void Expression.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  sub_22C18F3A4();
  v28 = sub_22BE3BD70(v27);
  v29 = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(v28);
  v30 = sub_22BE19448(v29);
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  i = v31;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  v463 = v33;
  v34 = sub_22BE183BC();
  v35 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(v34);
  v36 = sub_22BE19448(v35);
  MEMORY[0x28223BE20](v36);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E94();
  v462 = v38;
  v39 = sub_22BE183BC();
  v40 = type metadata accessor for TranscriptProtoUserConfirmExpression(v39);
  v41 = sub_22BE19448(v40);
  MEMORY[0x28223BE20](v41);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v42);
  v51 = sub_22BE3CEC0(v43, v44, v45, v46, v47, v48, v49, v50, v441);
  v52 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(v51);
  v53 = sub_22BE19448(v52);
  MEMORY[0x28223BE20](v53);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v54);
  sub_22BE19E94();
  v56 = sub_22BE18950(v55);
  v57 = type metadata accessor for TranscriptProtoFormatExpression(v56);
  v58 = sub_22BE19448(v57);
  MEMORY[0x28223BE20](v58);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v59);
  sub_22BE19E94();
  v61 = sub_22BE18950(v60);
  v62 = type metadata accessor for TranscriptProtoPayloadExpression(v61);
  v63 = sub_22BE19448(v62);
  MEMORY[0x28223BE20](v63);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v64);
  sub_22BE19E94();
  v66 = sub_22BE18950(v65);
  v67 = type metadata accessor for TranscriptProtoOpenExpression(v66);
  v68 = sub_22BE19448(v67);
  MEMORY[0x28223BE20](v68);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v69);
  sub_22BE19E94();
  v71 = sub_22BE18950(v70);
  v72 = type metadata accessor for TranscriptProtoCancelExpression(v71);
  v73 = sub_22BE19448(v72);
  MEMORY[0x28223BE20](v73);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v74);
  sub_22BE19E94();
  v76 = sub_22BE18950(v75);
  v77 = type metadata accessor for TranscriptProtoRejectExpression(v76);
  v78 = sub_22BE19448(v77);
  MEMORY[0x28223BE20](v78);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v79);
  sub_22BE19E94();
  v81 = sub_22BE18950(v80);
  v82 = type metadata accessor for TranscriptProtoUndoExpression(v81);
  v83 = sub_22BE19448(v82);
  MEMORY[0x28223BE20](v83);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v84);
  sub_22BE19E94();
  v86 = sub_22BE18950(v85);
  v87 = type metadata accessor for TranscriptProtoResolveToolExpression(v86);
  v88 = sub_22BE19448(v87);
  MEMORY[0x28223BE20](v88);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v89);
  sub_22BE19E94();
  v91 = sub_22BE18950(v90);
  v92 = type metadata accessor for TranscriptProtoPickOneExpression(v91);
  v93 = sub_22BE19448(v92);
  MEMORY[0x28223BE20](v93);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v94);
  sub_22BE19E94();
  sub_22BE190A8(v95);
  v96 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v96);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v97);
  sub_22BE1A174();
  sub_22BE190A8(v98);
  v99 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  sub_22BE19448(v99);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v100);
  sub_22BE1A174();
  v102 = sub_22BE18950(v101);
  v103 = type metadata accessor for TranscriptProtoStructuredSearchExpression(v102);
  v104 = sub_22BE290A0(v103, &v458);
  MEMORY[0x28223BE20](v104);
  sub_22BE17B98();
  v465 = v105;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v106);
  sub_22C259824(v107, v108, v109, v110, v111, v112, v113, v114, v442);
  v115 = type metadata accessor for TranscriptProtoSearchExpression(0);
  v116 = sub_22BE19448(v115);
  MEMORY[0x28223BE20](v116);
  sub_22BE17A44();
  v118 = sub_22BE18950(v117);
  v119 = type metadata accessor for TranscriptProtoConfirmExpression(v118);
  v120 = sub_22BE19448(v119);
  MEMORY[0x28223BE20](v120);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v121);
  sub_22BE19E94();
  v123 = sub_22BE18950(v122);
  v124 = type metadata accessor for TranscriptProtoPickExpression(v123);
  v125 = sub_22BE290A0(v124, &v466);
  MEMORY[0x28223BE20](v125);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v126);
  sub_22BE19E94();
  v128 = sub_22BE18950(v127);
  v129 = type metadata accessor for TranscriptProtoSayExpression(v128);
  v130 = sub_22BE19448(v129);
  MEMORY[0x28223BE20](v130);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v131);
  sub_22BE19E94();
  v133 = sub_22BE18950(v132);
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(v133);
  v135 = sub_22BE19448(ToolsExpression);
  MEMORY[0x28223BE20](v135);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v136);
  sub_22BE19E94();
  v138 = sub_22BE18950(v137);
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(v138);
  v140 = sub_22BE19448(SpansExpression);
  MEMORY[0x28223BE20](v140);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v141);
  sub_22BE19E94();
  v143 = sub_22BE18950(v142);
  v144 = type metadata accessor for TranscriptProtoCallExpression(v143);
  v145 = sub_22BE19448(v144);
  MEMORY[0x28223BE20](v145);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v146);
  sub_22BE19E94();
  v148 = sub_22BE18950(v147);
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(v148);
  v150 = sub_22BE19448(updated);
  MEMORY[0x28223BE20](v150);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v151);
  sub_22BE19E94();
  v153 = sub_22BE18950(v152);
  v154 = type metadata accessor for TranscriptProtoIndexExpression(v153);
  v155 = sub_22BE19448(v154);
  MEMORY[0x28223BE20](v155);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v156);
  sub_22BE19E94();
  v158 = sub_22BE18950(v157);
  v159 = type metadata accessor for TranscriptProtoInfixExpression(v158);
  v160 = sub_22BE19448(v159);
  MEMORY[0x28223BE20](v160);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v161);
  sub_22BE19E94();
  sub_22BE18950(v162);
  v468 = sub_22C26E684();
  sub_22BE179D8();
  v471 = v163;
  MEMORY[0x28223BE20](v164);
  sub_22BE17B98();
  v467 = v165;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v166);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v167);
  sub_22BE19E94();
  v169 = sub_22BE18950(v168);
  v170 = type metadata accessor for TranscriptProtoPrefixExpression(v169);
  v171 = sub_22BE290A0(v170, v459);
  MEMORY[0x28223BE20](v171);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v172);
  sub_22BE19E94();
  v174 = sub_22BE18950(v173);
  v175 = type metadata accessor for TranscriptProtoStatementID(v174);
  v176 = sub_22BE17A18(v175);
  v466 = v177;
  MEMORY[0x28223BE20](v176);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v178);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v179);
  sub_22BE19490();
  v470 = v180;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v181);
  sub_22BE19E94();
  v183 = sub_22C259DF0(v182);
  v472 = type metadata accessor for Expression(v183);
  sub_22BE18000();
  MEMORY[0x28223BE20](v184);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v185);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v186);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v187);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v188);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v189);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v190);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v191);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v192);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v193);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v194);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v195);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v196);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v197);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v198);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v199);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v200);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v201);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v202);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v203);
  v204 = sub_22BE20558();
  v205 = type metadata accessor for TranscriptProtoValueExpression(v204);
  v206 = sub_22BE19448(v205);
  MEMORY[0x28223BE20](v206);
  sub_22BE18928();
  MEMORY[0x28223BE20](v207);
  sub_22BE181E4();
  v208 = sub_22C0B1AF0();
  v210 = sub_22BE5CE4C(v208, v209);
  sub_22BE19448(v210);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v211);
  v212 = sub_22BE3A208();
  v213 = type metadata accessor for TranscriptProtoExpressionEnum(v212);
  sub_22BE18000();
  MEMORY[0x28223BE20](v214);
  sub_22BE294E0();
  sub_22BE3911C();
  sub_22BE22814();
  sub_22BE1AB5C(v26, 1, v213);
  if (v215)
  {
    sub_22BE233E8(v26, &qword_27D90EEA0, &qword_22C2970E0);
    *&v474 = v213;
    sub_22BE5CE4C(&qword_27D915648, &unk_22C2CC9C0);
    sub_22C273074();
    sub_22BE3D554();
    v216 = sub_22C108598();
    v217 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v216);
    sub_22C259EA0(v217, v218, v219, v220, v221, v222);
    sub_22BE1C0C8();
  }

  else
  {
    v452 = v22;
    sub_22BE37A20();
    v223 = sub_22BE180C8();
    sub_22BE3B620(v223, v224);
    sub_22BE194C4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22BE3B168();
        v322 = v469;
        sub_22BE3B620(v25, v469);
        sub_22BE2C73C();
        sub_22BE1AA68(v322, v470);

        sub_22BE354D0();
        sub_22C26E664();
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22C259638();
        sub_22BE1AE58();
        sub_22BE291B0();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_46;
      case 2:
        sub_22BE44744();
        sub_22BE46048();
        sub_22BE3B620(v305, v306);
        sub_22C1088AC();
        sub_22C25ABA8();
        sub_22BE1AA68(v307, v308);
        v309 = *v25;
        sub_22BE2ED7C();
        sub_22C1026C4();
        if (a10)
        {
          sub_22BE1C0C8();
          sub_22BE286FC();
          goto LABEL_67;
        }

        sub_22BE1B754();
        sub_22BE354D0();
        sub_22C26E664();
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE18B80();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE39EAC();
        sub_22BE1AE58();
        v20 = v448;
        *v448 = v309;
        v417 = type metadata accessor for PrefixExpression(0);
        (*(v471 + 32))(&v448[*(v417 + 20)], v23, v468);
        sub_22BE2384C();
        goto LABEL_82;
      case 3:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v314, v315);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v316, v317);
        sub_22BE28D3C();
        InfixExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE229AC();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_87;
      case 4:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v278, v279);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v280, v281);
        sub_22BE28D3C();
        IndexExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE335D8();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_87;
      case 5:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v333, v334);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v335, v336);
        v337 = sub_22BE28D3C();
        UpdateParametersExpression.init(transcript:)(v337, v338, v339, v340, v341, v342, v343, v344, v443, v446);
        if (v21)
        {
          goto LABEL_62;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE22EF8();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_87;
      case 6:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v363, v364);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v365, v366);
        sub_22C259FC4();
        CallExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22C259918();
        sub_22BE1AE58();
        v419 = *(&v474 + 1);
        v420 = v476;
        v421 = v477;
        v20 = v446;
        *v446 = v474;
        *(v446 + 8) = v419;
        *(v446 + 16) = v475;
        *(v446 + 32) = v420;
        *(v446 + 40) = v421;
        sub_22BE2384C();
        goto LABEL_82;
      case 7:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v318, v319);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v320, v321);
        SayExpression.init(transcript:)(&qword_22C2970E0);
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE26148();
        sub_22BE1AE58();
        *v473 = v474;
        goto LABEL_46;
      case 8:
        sub_22BE44744();
        sub_22C108C10();
        sub_22BE3B620(v375, v376);
        sub_22BE29370();
        sub_22BE37B14();
        sub_22BE1AA68(v377, v378);
        sub_22BE2ED7C();
        sub_22BE351B8();
        sub_22C1026C4();
        if (a10)
        {
          sub_22BE1C0C8();
          sub_22BE286FC();
          sub_22C25A0C8();
          sub_22BE1AE58();
          goto LABEL_63;
        }

        sub_22C25A1C4();
        sub_22BE354D0();
        sub_22C26E664();
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE18B80();
        sub_22BE1AE58();
        sub_22C25A0C8();
        sub_22BE1AE58();
        v422 = *v22;
        sub_22BE1AB74();
        sub_22BE1AE58();
        v20 = v449;
        v423 = sub_22BE1B62C();
        v424(v423);
        *(v449 + *(type metadata accessor for PickExpression(0) + 20)) = v422;
        sub_22BE2384C();
        goto LABEL_82;
      case 9:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v286, v287);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v288, v289);
        v290 = sub_22BE28D3C();
        ConfirmExpression.init(transcript:)(v290);
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 10:
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE44744();
        sub_22BE46048();
        sub_22BE3B620(v367, v368);
        v370 = *v24;
        v369 = *(v24 + 8);
        v371 = *(v24 + 16);
        v372 = *(v24 + 17);
        v373 = *(v24 + 18);

        sub_22BE291DC();
        sub_22BE1AE58();
        v374 = v473;
        *v473 = v370;
        v374[1] = v369;
        *(v374 + 16) = v371;
        *(v374 + 17) = v372;
        *(v374 + 18) = v373;
        goto LABEL_46;
      case 11:
        v249 = sub_22BE44744();
        sub_22BE3B620(v249, v464);
        v250 = sub_22BE19EBC();
        v251 = v465;
        sub_22BE1AA68(v250, v465);
        v252 = *v251;
        sub_22BE5CE4C(&qword_27D9155B8, &unk_22C2CC7B0);
        sub_22BE3D3E0();
        v253 = sub_22C273D04();
        v254 = 0;
        v255 = v252 + 64;
        v459[10] = v252;
        sub_22BE26A98();
        v257 = v256 >> 6;
        sub_22BE36638(v258 + 64);
        sub_22C1CEFB0(v471 + 32);
        v460 = v259;
        if (v260)
        {
          goto LABEL_14;
        }

        break;
      case 12:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v282, v283);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v284, v285);
        sub_22BE28D3C();
        PickOneExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 13:
        sub_22BE44744();
        sub_22C108C10();
        sub_22BE3B620(v349, v350);
        sub_22BE29370();
        sub_22BE37B14();
        sub_22BE1AA68(v351, v352);

        sub_22C0F45F8(v353, v354, v355, v356, v357, v358, v359, v360, v443, v446);
        v362 = v361;
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE1AE58();
        sub_22BE431C0();
        sub_22BE1AE58();
        *v473 = v362;
        goto LABEL_46;
      case 14:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v244, v245);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v246, v247);
        v248 = sub_22BE28D3C();
        UndoExpression.init(transcript:)(v248);
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 15:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v310, v311);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v312, v313);
        sub_22BE28D3C();
        RejectExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 16:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v240, v241);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v242, v243);
        sub_22BE28D3C();
        CancelExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 17:
      case 18:
      case 19:
      case 20:
      case 22:
        sub_22BE1C0C8();
        sub_22BE286FC();
        swift_storeEnumTagMultiPayload();
        sub_22BE3ACD8();
        sub_22BE1AE58();
        goto LABEL_64;
      case 21:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v345, v346);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v347, v348);
        sub_22BE28D3C();
        OpenExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 23:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v391, v392);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v393, v394);
        PayloadExpression.init(transcript:)(&qword_22C2970E0);
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE26148();
        sub_22BE1AE58();
        *v473 = v474;
        goto LABEL_46;
      case 24:
        sub_22BE44744();
        sub_22C108C10();
        sub_22BE3B620(v291, v292);
        sub_22BE29370();
        sub_22BE37B14();
        sub_22BE1AA68(v293, v294);

        sub_22C0F4874(v295, v296, v297, v298, v299, v300, v301, v302, v443, v446);
        v304 = v303;
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE1AE58();
        sub_22BE431C0();
        sub_22BE1AE58();
        *v473 = v304;
        goto LABEL_46;
      case 25:
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE3ACD8();
        sub_22BE1AE58();
LABEL_46:
        swift_storeEnumTagMultiPayload();
        goto LABEL_64;
      case 26:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v404, v405);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v406, v407);
        v408 = sub_22BE28D3C();
        RetrieveSpansExpression.init(transcript:)(v408);
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 27:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v235, v236);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v237, v238);
        v239 = sub_22BE28D3C();
        RetrieveToolsExpression.init(transcript:)(v239);
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 28:
        sub_22BE44744();
        sub_22BEE94A4();
        sub_22BE3B620(v395, v396);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v397, v398);
        v399 = sub_22BE28D3C();
        SiriXFallbackExpression.init(transcript:)(v399);
        if (v21)
        {
          goto LABEL_62;
        }

LABEL_86:
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE26148();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_87;
      case 29:
        sub_22BE44744();
        sub_22C25AAA0();
        sub_22BE3B620(v400, v401);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v402, v403);
        sub_22BE28D3C();
        UserConfirmExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE39030();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_87;
      case 30:
        sub_22BE44744();
        sub_22C25AB7C();
        sub_22BE3B620(v379, v380);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v381, v382);
        v383 = sub_22BE28D3C();
        UserDisambiguateExpression.init(transcript:)(v383, v384, v385, v386, v387, v388, v389, v390, v443, v446);
        if (v21)
        {
          goto LABEL_62;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE3A54C();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_87;
      case 31:
        v323 = sub_22BE44744();
        sub_22BE3B620(v323, v463);
        v324 = sub_22BE19EBC();
        sub_22BE1AA68(v324, i);
        v325 = sub_22BE28D3C();
        AnswerSynthesisExpression.init(transcript:)(v325, v326, v327, v328, v329, v330, v331, v332, v443, v446);
        if (v21)
        {
LABEL_62:
          sub_22BE1C0C8();
          sub_22BE286FC();
          goto LABEL_63;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE3EB38();
        sub_22BE1AE58();
        sub_22C25A00C();
LABEL_87:
        swift_storeEnumTagMultiPayload();
        sub_22BE460D8();
        v425 = v22;
        goto LABEL_88;
      default:
        v226 = sub_22BE44744();
        sub_22BE3B620(v226, v23);
        v227 = sub_22BE29370();
        sub_22BE1AA68(v227, v24);
        ValueExpression.init(transcript:)(v24, v228, v229, v230, v231, v232, v233, v234, v443, v446);
        if (a10)
        {
          sub_22BE1C0C8();
          sub_22BE286FC();
          sub_22C259458();
          goto LABEL_63;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22C259458();
        sub_22BE1AE58();
        v418 = v475;
        *v20 = v474;
        v20[16] = v418;
        sub_22BE2384C();
LABEL_82:
        swift_storeEnumTagMultiPayload();
        sub_22BE460D8();
        v425 = v20;
        goto LABEL_88;
    }

LABEL_15:
    v263 = v254;
    while (1)
    {
      v254 = v263 + 1;
      if (__OFADD__(v263, 1))
      {
        __break(1u);
LABEL_91:
        __break(1u);
        return;
      }

      if (v254 >= v257)
      {
        break;
      }

      ++v263;
      if (*(v255 + 8 * v254))
      {
        sub_22BE4878C();
        for (i = v264; ; i = v262)
        {
          v265 = v261 | (v254 << 6);
          sub_22C25A7E8();
          v267 = *v266;
          v462 = v266[1];
          v463 = v267;
          sub_22BE34170();
          v268 = v469;
          sub_22BE1AA68(v269, v469);
          v270 = v470;
          sub_22BE1AA68(v268, v470);
          v21 = *v270;

          v271 = v467;
          sub_22C26E664();
          sub_22C25A194();
          sub_22BE1AE58();
          sub_22BE336E8();
          sub_22BE1AE58();
          sub_22BE3CD8C();
          sub_22C25A924(v272);
          v253 = v460;
          v273 = (*(v460 + 48) + 16 * v265);
          v274 = v462;
          *v273 = v463;
          v273[1] = v274;
          (*(v471 + 32))(*(v253 + 56) + *(v471 + 72) * v265, v271, v468);
          v275 = *(v253 + 16);
          v276 = __OFADD__(v275, 1);
          v277 = v275 + 1;
          if (v276)
          {
            break;
          }

          *(v253 + 16) = v277;
          if (!i)
          {
            goto LABEL_15;
          }

LABEL_14:
          sub_22BE22BE8();
        }

        goto LABEL_91;
      }
    }

    sub_22BE22944();
    sub_22BE22814();
    sub_22BE1B754();
    v409 = sub_22C259FC4();
    sub_22C0FE908(v409, v410, v411, v412, v413, v414, v415, v416, v443, v446);
    if (!v21)
    {

      sub_22C0F92F4(v426, v427, v428, v429, v430, v431, v432, v433, v444, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457);
      v435 = v434;
      sub_22BE1C0C8();
      sub_22BE1AE58();
      sub_22BE1AE58();
      sub_22BE1B5E0();
      sub_22BE1AE58();
      v436 = type metadata accessor for StructuredSearchExpression(0);
      sub_22C2728A4();
      sub_22BE1A140();
      sub_22BE19DC4(v437, v438, v439, v440);
      *v445 = v253;
      sub_22BE2343C();
      *(v445 + *(v436 + 28)) = v435;
      *(v445 + *(v436 + 24)) = 0;
      swift_storeEnumTagMultiPayload();
      sub_22BE460D8();
      v425 = v445;
LABEL_88:
      sub_22BE3B620(v425, v473);
      goto LABEL_64;
    }

    sub_22BE1C0C8();
    sub_22BE1AE58();
LABEL_67:
    sub_22BE1AE58();
  }

LABEL_63:
  sub_22BE1AE58();
LABEL_64:
  sub_22BE467E4();
  sub_22BE18478();
}

void ValueExpression.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = sub_22C18F934(v13);
  v15 = type metadata accessor for TranscriptProtoStatementID(v14);
  v16 = sub_22BE17A18(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v17);
  sub_22BE39EE8();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  v20 = sub_22BE28E74(v19);
  v21 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(v20);
  v22 = sub_22BE19448(v21);
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  v60 = v23;
  v24 = sub_22BE37B20();
  v26 = sub_22BE5CE4C(v24, v25);
  sub_22BE19448(v26);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  v28 = sub_22BE22BFC();
  v29 = type metadata accessor for TranscriptProtoValueExpressionEnum(v28);
  sub_22BE18000();
  MEMORY[0x28223BE20](v30);
  sub_22BE197B8();
  sub_22BE2590C();
  sub_22BE22814();
  v31 = sub_22BE26188();
  sub_22BE1AB5C(v31, v32, v29);
  if (v33)
  {
    sub_22BE233E8(v11, &qword_27D90EEC0, &qword_22C2970F0);
    v34 = sub_22BE5CE4C(&qword_27D915650, &unk_22C2CC9D0);
    sub_22BE43258(v34);
    sub_22BE3D554();
    v35 = sub_22C108598();
    v36 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v35);
    sub_22C259EA0(v36, v37, v38, v39, v40, v41);
    sub_22C259458();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE20130();
    v42 = sub_22BE200D4();
    sub_22BE3B620(v42, v43);
    sub_22BE19454();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22C259458();
        sub_22BE1AE58();
        v45 = 0;
        v47 = *v10;
        v46 = 1;
        break;
      case 2:
        sub_22C259458();
        sub_22BE1AE58();
        v45 = 0;
        v47 = *v10;
        v46 = 2;
        break;
      case 3:
        sub_22C259458();
        sub_22BE1AE58();
        v47 = *v10;
        v45 = v10[1];
        v46 = 3;
        break;
      case 4:
        v48 = sub_22BE19EBC();
        sub_22BE3B620(v48, v60);
        v49 = *v60;
        v50 = *(*v60 + 16);
        if (v50)
        {
          sub_22BE3122C(MEMORY[0x277D84F90]);
          sub_22C25A930();
          sub_22BE71084();
          v47 = a10;
          sub_22BE25AD8();
          v52 = v49 + v51;
          v61 = *(v53 + 72);
          do
          {
            sub_22C25A0F8();
            sub_22BE1AA68(v52, v12);
            v54 = sub_22BE18240();
            sub_22BE1AA68(v54, v55);

            sub_22BE1804C();
            sub_22C26E664();
            sub_22BE3AD30();
            sub_22BE1AE58();
            sub_22BE35838();
            sub_22BE1AE58();
            v57 = *(a10 + 16);
            v56 = *(a10 + 24);
            if (v57 >= v56 >> 1)
            {
              sub_22BE3D1E4(v56);
              sub_22BE71084();
            }

            *(a10 + 16) = v57 + 1;
            sub_22BE25AD8();
            (*(v59 + 32))(a10 + v58 + *(v59 + 72) * v57);
            v52 += v61;
            --v50;
          }

          while (v50);
          sub_22C259458();
          sub_22BE1AE58();
          sub_22BE1AE58();
        }

        else
        {
          sub_22C259458();
          sub_22BE1AE58();
          sub_22BE379D8();
          sub_22BE1AE58();
          v47 = MEMORY[0x277D84F90];
        }

        v45 = 0;
        v46 = 4;
        break;
      case 5:
        sub_22C259458();
        sub_22BE1AE58();
        v47 = *v10;
        v45 = v10[1];
        v46 = 5;
        break;
      case 6:
        sub_22C259458();
        sub_22BE1AE58();
        v47 = 0;
        v45 = 0;
        v46 = 6;
        break;
      default:
        sub_22C259458();
        sub_22BE1AE58();
        v45 = 0;
        v46 = 0;
        v47 = *v10;
        break;
    }

    *v62 = v47;
    *(v62 + 8) = v45;
    *(v62 + 16) = v46;
  }

  sub_22BE19650();
  sub_22BE18478();
}

void PrefixExpression.init(transcript:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE25DC4();
  v5 = type metadata accessor for TranscriptProtoStatementID(v4);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE19820();
  sub_22C26E684();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v7);
  sub_22BE1955C();
  v8 = *v3;
  type metadata accessor for TranscriptProtoPrefixExpression(0);
  sub_22C25A53C();
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {

    sub_22C25A1C4();
    sub_22C26E664();
    sub_22BE379D8();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    *v1 = v8;
    type metadata accessor for PrefixExpression(0);
    sub_22BE39E94();
    v9();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void InfixExpression.init(transcript:)()
{
  sub_22BE19130();
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE18928();
  MEMORY[0x28223BE20](v11);
  sub_22BE41E38();
  sub_22C26E684();
  sub_22BE41130();
  MEMORY[0x28223BE20](v12);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v13);
  sub_22BE32374();
  if (v0)
  {
    sub_22BE229AC();
    sub_22BE1AE58();
  }

  else
  {
    v23 = v14;
    v22 = v8;
    v21 = *v6;
    type metadata accessor for TranscriptProtoInfixExpression(0);
    sub_22C25A6A0();
    sub_22C1026C4();
    v15 = *(v4 + 16);

    sub_22C25A61C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22C25AB04();
    sub_22C1026C4();
    if (v15)
    {
      sub_22BE229AC();
      sub_22BE1AE58();
      sub_22C25AB70();
      v16 = sub_22BE1824C();
      v17(v16);
    }

    else
    {
      v18 = *(v2 + 8);

      sub_22BE1804C();
      sub_22C26E664();
      sub_22BE229AC();
      sub_22BE1AE58();
      sub_22BE18B80();
      sub_22BE1AE58();
      *v22 = v21;
      type metadata accessor for InfixExpression(0);
      sub_22C25A530();
      v19 = *(v23 + 32);
      sub_22C25A4B8();
      v19(v20);
      (v19)(&v22[*(v18 + 24)], v3, v1);
    }
  }

  sub_22BE22978();
  sub_22BE18478();
}

void IndexExpression.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A430();
  v2 = sub_22C25A424(v1);
  v3 = type metadata accessor for TranscriptProtoStatementID(v2);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE18928();
  MEMORY[0x28223BE20](v5);
  sub_22BE41E38();
  sub_22C26E684();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v9);
  sub_22BE32374();
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE335D8();
    sub_22BE1AE58();
  }

  else
  {

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    type metadata accessor for TranscriptProtoIndexExpression(0);
    sub_22C25A53C();
    sub_22C1026C4();

    sub_22BE354D0();
    sub_22C26E664();
    sub_22BE335D8();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    v10 = *(v7 + 32);
    v11 = sub_22BE3E8FC();
    (v10)(v11);
    type metadata accessor for IndexExpression(0);
    sub_22C18FD4C();
    v10();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void UpdateParametersExpression.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v17 = v16;
  v79 = v18;
  v19 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  v22 = sub_22BE36644(v21);
  type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v22);
  sub_22BE179D8();
  v92 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v25);
  sub_22C1CEC08(v26, v27, v28, v29, v30, v31, v32, v33, v77);
  type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
  sub_22BE179D8();
  v90 = v34;
  MEMORY[0x28223BE20](v34);
  sub_22BE3C444(v35, v78);
  v36 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v37);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v38);
  sub_22BE20558();
  sub_22C26E684();
  sub_22C259488();
  v80 = v39;
  MEMORY[0x28223BE20](v40);
  sub_22BE18928();
  MEMORY[0x28223BE20](v41);
  v42 = sub_22BE374E4();
  type metadata accessor for TranscriptProtoUpdateParametersExpression(v42);
  sub_22C1026C4();
  if (v10)
  {
    sub_22BE22EF8();
    sub_22BE1AE58();
LABEL_14:
    sub_22BEE94B0();
    sub_22BE18478();
    return;
  }

  v88 = v36;
  v89 = v11;
  v87 = v14;

  sub_22C25A61C();
  sub_22C26E664();
  sub_22BE18B80();
  sub_22BE1AE58();
  v43 = *v17;
  v44 = *(*v17 + 16);
  if (!v44)
  {
    sub_22BE22EF8();
    sub_22BE1AE58();
    v75 = v79;
    v59 = *(v80 + 32);
    v47 = MEMORY[0x277D84F90];
LABEL_13:
    v76 = sub_22BE336E8();
    v59(v76);
    *(v75 + *(type metadata accessor for UpdateParametersExpression(0) + 20)) = v47;
    goto LABEL_14;
  }

  v84 = v15;
  v45 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE71838(v45, v44, 0);
  v46 = 0;
  v47 = a10;
  sub_22BE25AD8();
  v85 = v43 + v48;
  v81 = (v80 + 32);
  sub_22BE36638((v80 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
  v50 = v93;
  v86 = v12;
  v82 = v44;
  v83 = v43;
  while (v46 < *(v43 + 16))
  {
    sub_22BE1AA68(v85 + *(v49 + 72) * v46, v50);
    v51 = sub_22BE27A44();
    sub_22BE1AA68(v51, v52);
    v54 = *v13;
    v53 = v13[1];
    v55 = *(v13 + 16);
    sub_22BE22814();
    v56 = sub_22BE2BA98();
    sub_22BE1AB5C(v56, v57, v88);
    if (v58)
    {
      sub_22BE233E8(v91, &qword_27D9090F8, &unk_22C2AE4A0);
      v67 = sub_22BE5CE4C(&qword_27D911F78, &qword_22C2B5D00);
      sub_22BE3369C(v67);
      sub_22C25A64C();
      v68 = sub_22C108598();
      v69 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v68);
      *v70 = v53;
      v70[1] = v91;
      sub_22C25A590(v69, v70, v71, v72, v73, v74);
      sub_22BE1AE58();
      sub_22BE1AE58();
      (*(v80 + 8))(v86, v89);
      sub_22BE22EF8();
      sub_22C1CEFC8();
      sub_22BE1AE58();

      goto LABEL_14;
    }

    sub_22BE3B168();
    sub_22BE3B620(v91, v84);

    sub_22C25A1C4();
    sub_22C25A368();
    v50 = v93;
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE1A8C4();
    sub_22BE1AE58();
    *v94 = v54;
    *(v94 + 8) = v53;
    *(v94 + 16) = 0;
    *(v94 + 24) = 1;
    *(v94 + 25) = v55;
    v59 = *v81;
    (*v81)(v94 + *(v90 + 28), v87, v89);
    v61 = *(a10 + 16);
    v60 = *(a10 + 24);
    if (v61 >= v60 >> 1)
    {
      sub_22BE3D1E4(v60);
      sub_22BE31778();
      sub_22BE71838(v64, v65, v66);
      v50 = v93;
    }

    ++v46;
    *(a10 + 16) = v61 + 1;
    sub_22BE25AD8();
    v62 = sub_22C1088AC();
    sub_22BE3B620(v62, v63);
    v43 = v83;
    v49 = v92;
    if (v82 == v46)
    {
      sub_22BE22EF8();
      sub_22C1CEFC8();
      sub_22BE1AE58();
      v75 = v79;
      sub_22C1CF148();
      goto LABEL_13;
    }
  }

  __break(1u);
}

void CallExpression.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AA94();
  v38 = v5;
  v6 = sub_22C26E684();
  sub_22BE179D8();
  v42 = v7;
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE2F294();
  v10 = type metadata accessor for TranscriptProtoStatementID(v9);
  v11 = sub_22BE17A18(v10);
  MEMORY[0x28223BE20](v11);
  sub_22BE18928();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE374E4();
  v14 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE17CBC();
  type metadata accessor for TranscriptProtoCallExpression(0);
  sub_22C10289C();
  if (v0)
  {
    sub_22C259918();
    sub_22BE1AE58();
LABEL_14:
    sub_22BE22978();
    sub_22BE18478();
  }

  else
  {
    v40 = v2;
    v41 = v4;
    v16 = v1[1];
    v37 = *v1;
    v35 = v1[4];
    v36 = v1[3];
    v34 = *(v1 + 16);

    sub_22BE40CB0();
    sub_22BE1AE58();
    v17 = *v3;
    sub_22BE5CE4C(&qword_27D9155B8, &unk_22C2CC7B0);
    v18 = sub_22C273D04();
    v19 = 0;
    v39 = v18;
    sub_22BE26A98();
    v22 = v21 >> 6;
    while (v20)
    {
      sub_22BE22BE8();
      v43 = v24;
LABEL_11:
      v27 = v23 | (v19 << 6);
      sub_22BE34170();
      sub_22BE1AA68(v28, v40);
      v29 = sub_22BE3C5E4();
      sub_22BE1AA68(v29, v30);

      sub_22C26E664();
      sub_22C25A194();
      sub_22BE1AE58();
      sub_22BE2590C();
      sub_22BE1AE58();
      v18 = v39;
      sub_22BE3CD8C();
      sub_22C25A924(v31);
      sub_22C25ADB4(v39[6]);
      (*(v42 + 32))(v39[7] + *(v42 + 72) * v27, v41, v6);
      sub_22C25A8A0();
      if (v33)
      {
        goto LABEL_16;
      }

      v39[2] = v32;
      v20 = v43;
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v22)
      {
        sub_22C259918();
        sub_22BE1AE58();
        *v38 = v37;
        *(v38 + 8) = v16;
        *(v38 + 16) = v36;
        *(v38 + 24) = v35;
        *(v38 + 32) = v34;
        *(v38 + 40) = v18;
        goto LABEL_14;
      }

      ++v25;
      if (*(v17 + 64 + 8 * v19))
      {
        sub_22BE4878C();
        v43 = v26;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void sub_22C2335E0()
{
  sub_22BE19130();
  v26[0] = v2;
  v26[1] = v3;
  sub_22C25A50C();
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE18928();
  MEMORY[0x28223BE20](v5);
  sub_22BE1C17C();
  v6 = sub_22BE3C5E4();
  v8 = sub_22BE5CE4C(v6, v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  v13 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B01C();
  sub_22BE200D4();
  sub_22C25AAC4();
  sub_22BE22814();
  sub_22BE29264();
  sub_22C25AAC4();
  sub_22BE22814();
  sub_22BE23B00(v1);
  if (v15)
  {
    sub_22C25AD50();
    sub_22BE1AE58();
    sub_22BE233E8(v12, &qword_27D9090F8, &unk_22C2AE4A0);
    v20 = 1;
    v12 = v1;
  }

  else
  {
    v16 = sub_22BE180C8();
    sub_22BE3B620(v16, v17);
    sub_22BE2C73C();
    v18 = sub_22BE196A8();
    sub_22BE1AA68(v18, v19);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22C25AD50();
    sub_22BE1AE58();
    sub_22BE3AD30();
    sub_22BE1AE58();
    sub_22BE2565C();
    sub_22BE1AE58();
    v20 = 0;
  }

  sub_22BE233E8(v12, &qword_27D9090F8, &unk_22C2AE4A0);
  v21 = sub_22C26E684();
  sub_22BE19DC4(v0, v20, 1, v21);
  sub_22BE32EE0();
  sub_22BE19DC4(v22, v23, v24, v25);
  sub_22BE36680();
  sub_22BE2343C();
  sub_22BE3C298();
  sub_22BE18478();
}

void PickExpression.init(transcript:)()
{
  sub_22BE19130();
  v3 = sub_22C259D80();
  v4 = type metadata accessor for TranscriptProtoStatementID(v3);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE19820();
  sub_22C26E684();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE1955C();
  type metadata accessor for TranscriptProtoPickExpression(0);
  sub_22C25A53C();
  sub_22C1026C4();
  if (v1)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {

    sub_22C25A1C4();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v7 = *v2;
    sub_22BE379D8();
    sub_22BE1AE58();
    sub_22BE39E94();
    v8();
    *(v0 + *(type metadata accessor for PickExpression(0) + 20)) = v7;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C2339C0()
{
  sub_22BE19130();
  sub_22C25A770();
  v1 = sub_22BE25DC4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE19820();
  sub_22C26E684();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE294E0();
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE1A8C4();
    sub_22BE1AE58();
  }

  else
  {

    sub_22BE289C0();
    sub_22C26E664();
    sub_22BE1A8C4();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22C18FD4C();
    v5();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

void SearchExpression.init(transcript:)()
{
  sub_22BE3C358();
  sub_22BE28CF0();
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = *(v1 + 18);

  sub_22BE26148();
  sub_22BE1AE58();
  *v0 = v3;
  *(v0 + 8) = v2;
  *(v0 + 16) = v4;
  *(v0 + 17) = v5;
  *(v0 + 18) = v6;
  sub_22BE267B8();
}

void StructuredSearchExpression.init(transcript:)()
{
  sub_22BE19130();
  v2 = v1;
  v65 = v3;
  v78 = sub_22C26E684();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v8 = sub_22BE3E890(v7);
  v9 = type metadata accessor for TranscriptProtoStatementID(v8);
  v10 = sub_22BE17A18(v9);
  v76 = v11;
  MEMORY[0x28223BE20](v10);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E94();
  v73 = v13;
  v14 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  v68 = v16;
  v17 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1A174();
  v69 = v19;
  v70 = v2;
  v20 = *v2;
  sub_22BE5CE4C(&qword_27D9155B8, &unk_22C2CC7B0);
  sub_22BE3D3E0();
  v21 = sub_22C273D04();
  v22 = 0;
  v23 = v20 + 64;
  v72 = v20;
  sub_22BE26A98();
  v25 = v24 >> 6;
  v71 = (v26 + 8);
  v75 = v26;
  if (v27)
  {
    while (1)
    {
      sub_22BE22BE8();
      v79 = v29;
LABEL_8:
      v32 = v28 | (v22 << 6);
      v33 = (*(v72 + 48) + 16 * v32);
      v81 = *v33;
      v80 = v33[1];
      sub_22BE1AA68(*(v72 + 56) + *(v76 + 72) * v32, v73);
      sub_22BE315FC();
      sub_22BE1AA68(v34, v35);

      sub_22C26E664();
      sub_22BE1AE58();
      sub_22BE1824C();
      sub_22BE1AE58();
      sub_22BE3CD8C();
      sub_22C25A924(v36);
      v21 = v75;
      v37 = (v75[6] + 16 * v32);
      *v37 = v81;
      v37[1] = v80;
      (*(v5 + 32))(v75[7] + *(v5 + 72) * v32, v77, v78);
      sub_22C25A864();
      if (v39)
      {
        break;
      }

      v75[2] = v38;
      if (!v79)
      {
        goto LABEL_3;
      }
    }

LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_3:
    v30 = v22;
    while (1)
    {
      v22 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      if (v22 >= v25)
      {
        break;
      }

      ++v30;
      if (*(v23 + 8 * v22))
      {
        sub_22BE4878C();
        v79 = v31;
        goto LABEL_8;
      }
    }

    type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
    sub_22BE22814();
    v40 = sub_22C259FDC();
    sub_22C0FE908(v40, v41, v42, v43, v44, v45, v46, v47, v63, v65);
    if (v0)
    {
      sub_22C0E9A74();
      sub_22BE1AE58();
    }

    else
    {

      sub_22C0F92F4(v48, v49, v50, v51, v52, v53, v54, v55, v64, v66, v68, v69, 0, v70, v5 + 32, v71, v72, v73, v74, v75);
      v57 = v56;
      sub_22C0E9A74();
      sub_22BE1AE58();
      v58 = type metadata accessor for StructuredSearchExpression(0);
      sub_22C2728A4();
      sub_22BE1A140();
      sub_22BE19DC4(v59, v60, v61, v62);
      *v67 = v21;
      sub_22BE2343C();
      *(v67 + *(v58 + 28)) = v57;
      *(v67 + *(v58 + 24)) = 0;
    }

    sub_22BE22978();
    sub_22BE18478();
  }
}

void sub_22C2340C4()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = sub_22BE17A18(v6);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v10);
  sub_22C2595A0();
  v24 = sub_22C26E684();
  sub_22BE179D8();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BE188B0();
  v14 = *v3;
  v15 = *(*v3 + 16);
  if (v15)
  {
    v25 = MEMORY[0x277D84F90];
    sub_22BE71084();
    v16 = v25;
    sub_22BE19E14();
    v18 = v14 + v17;
    v23 = *(v9 + 72);
    do
    {
      sub_22BE1AA68(v18, v0);
      v19 = sub_22BE1AB1C();
      sub_22BE1AA68(v19, v20);

      sub_22C26E664();
      sub_22BE3AD30();
      sub_22BE1AE58();
      sub_22BE36680();
      sub_22BE1AE58();
      v21 = *(v25 + 16);
      if (v21 >= *(v25 + 24) >> 1)
      {
        sub_22BE71084();
      }

      *(v25 + 16) = v21 + 1;
      sub_22BE19E14();
      (*(v12 + 32))(v25 + v22 + *(v12 + 72) * v21, v1, v24);
      v18 += v23;
      --v15;
    }

    while (v15);
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE1B5E0();
    sub_22BE1AE58();
    v16 = MEMORY[0x277D84F90];
  }

  *v5 = v16;
  sub_22BE1AABC();
}

uint64_t sub_22C234350@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t *a2@<X8>)
{

  v5 = a1(v4);
  sub_22BE1AB74();
  result = sub_22BE1AE58();
  *a2 = v5;
  return result;
}

void sub_22C2343E4()
{
  sub_22BE2BB34();
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE1955C();
  v4 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE1B328();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A9B4();
    sub_22C25A5A8();
    sub_22BE1B328();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    v6 = sub_22C26E684();
    v7 = sub_22BE22B8C();
    sub_22BE19DC4(v7, v8, v9, v6);
    v10 = sub_22BE38960();
    sub_22BE19DC4(v10, v11, v12, v6);
    sub_22BE291B0();
    sub_22BE2343C();
  }

  sub_22BE36324();
  sub_22BEE93D4();
}

void UserConfirmExpression.init(transcript:)()
{
  sub_22BE19130();
  sub_22C259E88();
  v1 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v1);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE1B01C();
  v3 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE374E4();
  v7 = type metadata accessor for TranscriptProtoStatementID(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE28FD8();
  sub_22C26E684();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v9);
  sub_22BE188B0();
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE39030();
    sub_22BE1AE58();
  }

  else
  {

    sub_22BE1B5EC();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    type metadata accessor for TranscriptProtoUserConfirmExpression(0);
    sub_22C25A374();
    sub_22C25A3C4();
    sub_22BE22814();
    sub_22C25A08C();
    sub_22C0FD140();
    sub_22C25A3C4();
    sub_22BE22814();
    sub_22C0FD140();
    sub_22BE39030();
    sub_22BE1AE58();
    type metadata accessor for UserConfirmExpression(0);
    sub_22C25A658();
    sub_22BE28D2C();
    sub_22BE19DC4(v10, v11, v12, v13);
    sub_22BE28D2C();
    sub_22BE19DC4(v14, v15, v16, v17);
    v18 = sub_22BE22DF4();
    v19(v18);
    sub_22BE27B84();
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void UserDisambiguateExpression.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v15 = v14;
  v17 = sub_22C18F934(v16);
  v18 = type metadata accessor for TranscriptProtoStatementID(v17);
  v19 = sub_22BE17A18(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE18928();
  MEMORY[0x28223BE20](v20);
  sub_22BE20324();
  MEMORY[0x28223BE20](v21);
  sub_22BE195C4();
  v22 = sub_22C26E684();
  sub_22BE179D8();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v26);
  v27 = sub_22C2595A0();
  type metadata accessor for TranscriptProtoUserDisambiguateExpression(v27);
  sub_22C25A73C();
  sub_22C1026C4();
  if (v10)
  {
    sub_22BE3A54C();
    sub_22BE1AE58();
  }

  else
  {
    v46 = v11;
    v47 = v22;

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v28 = *v15;
    v29 = *(*v15 + 16);
    if (v29)
    {
      sub_22BE3122C(MEMORY[0x277D84F90]);
      sub_22BE71084();
      v30 = a10;
      sub_22BE25AD8();
      v32 = v28 + v31;
      v45 = *(v33 + 72);
      v34 = v13;
      do
      {
        sub_22C25A0F8();
        sub_22BE1AA68(v32, v46);
        v35 = sub_22BF0AFB8();
        sub_22BE1AA68(v35, v36);

        sub_22BE1804C();
        sub_22C26E664();
        sub_22BE3AD30();
        sub_22BE1AE58();
        sub_22BE25EFC();
        sub_22BE1AE58();
        v37 = v34;
        v39 = *(a10 + 16);
        v38 = *(a10 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_22BE3D1E4(v38);
          sub_22BE71084();
        }

        *(a10 + 16) = v39 + 1;
        sub_22BE19E14();
        v41 = *(v24 + 32);
        v41(a10 + v40 + *(v24 + 72) * v39, v37, v47);
        v32 += v45;
        --v29;
        v34 = v37;
      }

      while (v29);
      sub_22BE3A54C();
      sub_22BE1AE58();
      v42 = v44;
      v43 = v47;
    }

    else
    {
      sub_22BE3A54C();
      sub_22BE1AE58();
      v41 = *(v24 + 32);
      v30 = MEMORY[0x277D84F90];
      v43 = v47;
      v42 = v44;
    }

    v41(v42, v12, v43);
    *(v42 + *(type metadata accessor for UserDisambiguateExpression(0) + 20)) = v30;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void AnswerSynthesisExpression.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v17 = v16;
  v76 = v18;
  v19 = sub_22BE5CE4C(&qword_27D909158, &qword_22C27FD50);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  v22 = sub_22BE415D8(v21);
  v74 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(v22);
  sub_22BE18000();
  MEMORY[0x28223BE20](v23);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v24);
  v25 = sub_22C2595B4();
  v26 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate(v25);
  v27 = sub_22BE17A18(v26);
  v77 = v28;
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v69 = v29;
  v30 = sub_22BE183BC();
  type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate(v30);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v31);
  sub_22BE17CBC();
  v32 = type metadata accessor for TranscriptProtoStatementID(0);
  v33 = sub_22BE19448(v32);
  MEMORY[0x28223BE20](v33);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v34);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v35);
  sub_22BE39EE8();
  v36 = sub_22C26E684();
  sub_22BE179D8();
  v67 = v37;
  MEMORY[0x28223BE20](v38);
  sub_22BE18DFC();
  type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
  sub_22C1026C4();
  if (v10)
  {
    sub_22BE3EB38();
    sub_22BE1AE58();
LABEL_17:
    sub_22BEE94B0();
    sub_22BE18478();
    return;
  }

  v68 = v13;
  v73 = v36;

  sub_22BE1804C();
  sub_22C26E664();
  sub_22BE18B80();
  sub_22BE1AE58();
  v39 = *v17;
  if (!*(*v17 + 16))
  {
    sub_22BE3EB38();
    sub_22BE1AE58();
    v43 = MEMORY[0x277D84F90];
    v59 = v76;
LABEL_16:
    v64 = sub_22BE33560();
    v65(v64);
    *(v59 + *(type metadata accessor for AnswerSynthesisExpression(0) + 20)) = v43;
    goto LABEL_17;
  }

  v66 = v12;
  v40 = sub_22BE3122C(MEMORY[0x277D84F90]);
  v70 = v41;
  sub_22BE71890(v40, v41, 0);
  v42 = 0;
  v43 = a10;
  sub_22BE25AD8();
  v71 = v39 + v45;
  v72 = v39;
  v46 = v69;
  while (v42 < *(v72 + 16))
  {
    sub_22BE1AA68(v71 + *(v44 + 72) * v42, v46);
    sub_22BE22814();
    v47 = sub_22BFB1A7C();
    sub_22BE1AB5C(v47, v48, v74);
    if (v49)
    {
      sub_22BE233E8(v75, &qword_27D909158, &qword_22C27FD50);
      v61 = sub_22C108358();
      v62 = sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v61);
      sub_22BE3C904(v62, v63);
      sub_22BE3EB38();
      sub_22BE1AE58();
      sub_22C0E9848();
      sub_22BE1AE58();
      (*(v67 + 8))(v66, v73);

      goto LABEL_17;
    }

    v50 = sub_22C1088AC();
    sub_22BE3B620(v50, v15);
    v51 = sub_22C259E7C();
    sub_22BE1AA68(v51, v14);
    sub_22BE2BA80();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE20118();
      sub_22BE1AE58();
      v52 = v14[1];
      *v11 = *v14;
      v11[1] = v52;
    }

    else
    {
      sub_22BE3B168();
      sub_22BE3B620(v14, v68);
      sub_22BE2C73C();
      v53 = sub_22BE291B0();
      sub_22BE1AA68(v53, v54);

      sub_22BE315FC();
      sub_22C26E664();
      sub_22BE1AE58();
      v46 = v69;
      sub_22BE1AE58();
      sub_22BE20118();
      sub_22BE1AE58();
    }

    swift_storeEnumTagMultiPayload();
    sub_22C0E9848();
    sub_22BE1AE58();
    v56 = *(a10 + 16);
    v55 = *(a10 + 24);
    if (v56 >= v55 >> 1)
    {
      v60 = sub_22BE3D1E4(v55);
      sub_22BE71890(v60, v56 + 1, 1);
    }

    ++v42;
    *(a10 + 16) = v56 + 1;
    sub_22BE25AD8();
    v57 = sub_22BE385E4();
    sub_22BE3B620(v57, v58);
    v59 = v76;
    v44 = v77;
    if (v70 == v42)
    {
      sub_22BE3EB38();
      sub_22BE1AE58();
      goto LABEL_16;
    }
  }

  __break(1u);
}

void TranscriptProtoExpression.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  v376 = v29;
  v381 = v30;
  v31 = type metadata accessor for AnswerSynthesisExpression(0);
  v32 = sub_22BE19448(v31);
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v33);
  sub_22BE19E94();
  v35 = sub_22BE18950(v34);
  v36 = type metadata accessor for UserDisambiguateExpression(v35);
  v37 = sub_22BE19448(v36);
  MEMORY[0x28223BE20](v37);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v38);
  sub_22BE19E94();
  v40 = sub_22BE18950(v39);
  v41 = type metadata accessor for UserConfirmExpression(v40);
  v42 = sub_22BE19448(v41);
  MEMORY[0x28223BE20](v42);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v43);
  sub_22BE19E94();
  v45 = sub_22BE18950(v44);
  v46 = type metadata accessor for SiriXFallbackExpression(v45);
  v47 = sub_22BE19448(v46);
  MEMORY[0x28223BE20](v47);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v48);
  sub_22BE19E94();
  v50 = sub_22BE18950(v49);
  v51 = type metadata accessor for OpenExpression(v50);
  v52 = sub_22BE19448(v51);
  MEMORY[0x28223BE20](v52);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v53);
  sub_22BE19E94();
  v55 = sub_22BE18950(v54);
  v56 = type metadata accessor for CancelExpression(v55);
  v57 = sub_22BE19448(v56);
  MEMORY[0x28223BE20](v57);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v58);
  sub_22BE19E94();
  v60 = sub_22BE18950(v59);
  v61 = type metadata accessor for RejectExpression(v60);
  v62 = sub_22BE19448(v61);
  MEMORY[0x28223BE20](v62);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v63);
  sub_22BE19E94();
  sub_22BE190A8(v64);
  v65 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v65);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v66);
  sub_22BE1A174();
  v365 = v67;
  v68 = sub_22BE183BC();
  v69 = type metadata accessor for UndoExpression(v68);
  v70 = sub_22BE19448(v69);
  MEMORY[0x28223BE20](v70);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v71);
  sub_22BE19E94();
  v73 = sub_22BE18950(v72);
  v74 = type metadata accessor for PickOneExpression(v73);
  v75 = sub_22BE19448(v74);
  MEMORY[0x28223BE20](v75);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v76);
  sub_22BE19E94();
  v78 = sub_22BE18950(v77);
  v373 = type metadata accessor for TranscriptProtoStatementID(v78);
  sub_22BE179D8();
  v368 = v79;
  MEMORY[0x28223BE20](v80);
  sub_22BE17A44();
  v367 = v81;
  v82 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  sub_22BE19448(v82);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v83);
  sub_22BE1A174();
  sub_22BE190A8(v84);
  v85 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v85);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v86);
  sub_22BE1A174();
  v88 = sub_22BE18950(v87);
  v89 = type metadata accessor for StructuredSearchExpression(v88);
  v90 = sub_22BE290A0(v89, &v363);
  MEMORY[0x28223BE20](v90);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v91);
  sub_22BE19E94();
  v93 = sub_22BE18950(v92);
  v94 = type metadata accessor for ConfirmExpression(v93);
  v95 = sub_22BE19448(v94);
  MEMORY[0x28223BE20](v95);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v96);
  sub_22BE19E94();
  sub_22BE190A8(v97);
  v98 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v98);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v99);
  sub_22BE1A174();
  v366 = v100;
  v101 = sub_22BE183BC();
  v102 = type metadata accessor for PickExpression(v101);
  v103 = sub_22BE290A0(v102, &v374);
  MEMORY[0x28223BE20](v103);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v104);
  v113 = sub_22BE3CEC0(v105, v106, v107, v108, v109, v110, v111, v112, v352);
  ToolsExpression = type metadata accessor for RetrieveToolsExpression(v113);
  v115 = sub_22BE19448(ToolsExpression);
  MEMORY[0x28223BE20](v115);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v116);
  sub_22BE19E94();
  v118 = sub_22BE18950(v117);
  SpansExpression = type metadata accessor for RetrieveSpansExpression(v118);
  v120 = sub_22BE19448(SpansExpression);
  MEMORY[0x28223BE20](v120);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v121);
  sub_22BE19E94();
  v123 = sub_22BE18950(v122);
  updated = type metadata accessor for UpdateParametersExpression(v123);
  v125 = sub_22BE19448(updated);
  MEMORY[0x28223BE20](v125);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v126);
  sub_22BE19E94();
  v128 = sub_22BE18950(v127);
  v129 = type metadata accessor for IndexExpression(v128);
  v130 = sub_22BE19448(v129);
  MEMORY[0x28223BE20](v130);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v131);
  v132 = sub_22BE20558();
  v133 = type metadata accessor for InfixExpression(v132);
  v134 = sub_22BE19448(v133);
  MEMORY[0x28223BE20](v134);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v135);
  v136 = sub_22BE195C4();
  v137 = type metadata accessor for PrefixExpression(v136);
  v138 = sub_22BE19448(v137);
  MEMORY[0x28223BE20](v138);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v139);
  sub_22C259BC0();
  sub_22C26E684();
  sub_22BE179D8();
  v371 = v140;
  v372 = v141;
  MEMORY[0x28223BE20](v140);
  sub_22BE17B98();
  v369 = v142;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v143);
  sub_22BE19E94();
  v370 = v144;
  v145 = sub_22BE183BC();
  type metadata accessor for Expression(v145);
  sub_22BE18000();
  MEMORY[0x28223BE20](v146);
  v147 = sub_22BE19820();
  v375 = type metadata accessor for TranscriptProtoExpressionEnum(v147);
  sub_22BE18000();
  MEMORY[0x28223BE20](v148);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v149);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v150);
  sub_22BE3173C(v151, v152, v153, v154, v155, v156, v157, v158, v353);
  sub_22C25A2C0();
  sub_22BE1AA68(v381, v25);
  sub_22BE1B18C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v252 = v372;
      sub_22C25A35C();
      v253 = sub_22BE1824C();
      v254(v253);
      sub_22C1CF23C();
      v255 = v369;
      v256 = sub_22BE191C0();
      v257(v256);
      v258 = sub_22C26E674();
      sub_22C26E654();
      sub_22BE29328();
      v259 = v374;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v260 = *(v252 + 8);
      v261 = sub_22BE25C94();
      v260(v261);
      v262 = sub_22BE1824C();
      v260(v262);
      *v259 = v258;
      *(v259 + 8) = v255;
      *(v259 + 16) = v23;
      sub_22BE41554();
      goto LABEL_38;
    case 2u:
      v244 = sub_22C1088E8();
      sub_22BE3B620(v244, v21);
      v245 = sub_22BE431F0();
      sub_22BE1AA68(v245, v28);
      sub_22C259FAC();
      TranscriptProtoPrefixExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 3u:
      v250 = sub_22C1088E8();
      sub_22BE3B620(v250, v26);
      v251 = sub_22BE44744();
      sub_22BE1AA68(v251, v23);
      sub_22C259FAC();
      TranscriptProtoInfixExpression.init(handwritten:)();
      sub_22BE3ACD8();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 4u:
      v224 = sub_22C1088E8();
      sub_22BE3B620(v224, v20);
      v225 = sub_22BE19EBC();
      sub_22BE1AA68(v225, v24);
      sub_22C259FAC();
      TranscriptProtoIndexExpression.init(handwritten:)();
      sub_22BE26148();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 5u:
      sub_22C1088E8();
      sub_22BE22944();
      sub_22BE3B620(v276, v277);
      sub_22BE431F0();
      sub_22BEE94A4();
      sub_22BE1AA68(v278, v279);
      sub_22BE46D28();
      TranscriptProtoUpdateParametersExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 6u:
      v286 = *(v25 + 8);
      v287 = *(v25 + 32);
      v288 = *(v25 + 40);
      *&v377 = *v25;
      *(&v377 + 1) = v286;
      v378 = *(v25 + 16);
      v379 = v287;
      v380 = v288;
      sub_22C259FAC();
      TranscriptProtoCallExpression.init(handwritten:)();
      sub_22BE41554();
      goto LABEL_38;
    case 7u:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
      sub_22C259FAC();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE41554();
      goto LABEL_38;
    case 8u:
      sub_22C1088E8();
      sub_22BE22944();
      sub_22BE3B620(v294, v295);
      sub_22BE431F0();
      sub_22BEE94A4();
      sub_22BE1AA68(v296, v297);
      v298 = sub_22BE46D28();
      TranscriptProtoRetrieveSpansExpression.init(handwritten:)(v298);
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 9u:
      sub_22C1088E8();
      sub_22BE22944();
      sub_22BE3B620(v231, v232);
      sub_22BE431F0();
      sub_22BEE94A4();
      sub_22BE1AA68(v233, v234);
      v235 = sub_22BE46D28();
      TranscriptProtoRetrieveToolsExpression.init(handwritten:)(v235);
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0xAu:
      *&v377 = *v25;
      sub_22C259FAC();
      TranscriptProtoSayExpression.init(handwritten:)(v293);
      sub_22BE41554();
      goto LABEL_38;
    case 0xBu:
      sub_22C1088E8();
      sub_22C25AAA0();
      sub_22BE3B620(v202, v203);
      sub_22BE19EBC();
      sub_22C25A87C();
      sub_22BE1AA68(v204, v205);
      sub_22C1CF23C();
      v206 = v370;
      v207 = sub_22BE3E79C();
      v208(v207);
      v209 = sub_22C26E674();
      sub_22C26E654();
      sub_22BE29328();
      v210 = v373;
      v211 = v366;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v212 = sub_22BF0AFB8();
      v213(v212);
      *v211 = v209;
      *(v211 + 8) = v206;
      *(v211 + 16) = v23;
      v214 = sub_22BE22B8C();
      sub_22BE19DC4(v214, v215, v216, v210);
      sub_22BE2ED7C();
      v218 = *(v28 + v217);
      type metadata accessor for TranscriptProtoPickExpression(0);
      sub_22C25A658();
      v219 = v374;
      sub_22BE3AE2C();
      sub_22BE19DC4(v220, v221, v222, v223);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AE58();
      sub_22BE1AE58();
      sub_22BE2343C();
      *v219 = v218;
      sub_22BE41554();
      goto LABEL_38;
    case 0xCu:
      sub_22C1088E8();
      sub_22BE22944();
      sub_22BE3B620(v226, v227);
      sub_22BE431F0();
      sub_22BEE94A4();
      sub_22BE1AA68(v228, v229);
      v230 = sub_22BE46D28();
      TranscriptProtoConfirmExpression.init(handwritten:)(v230);
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0xDu:
      v281 = *v25;
      v282 = *(v25 + 8);
      v23 = *(v25 + 16);
      v283 = *(v25 + 17);
      v284 = *(v25 + 18);
      type metadata accessor for TranscriptProtoSearchExpression(0);
      v285 = v374;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v285 = v281;
      *(v285 + 8) = v282;
      *(v285 + 16) = v23;
      *(v285 + 17) = v283;
      *(v285 + 18) = v284;
      sub_22BE41554();
      goto LABEL_38;
    case 0xEu:
      sub_22C1088E8();
      sub_22BEE94A4();
      sub_22BE3B620(v169, v170);
      sub_22BE19EBC();
      sub_22BEE94A4();
      sub_22BE1AA68(v171, v172);
      sub_22BE5CE4C(&qword_27D915600, &unk_22C2CC8E0);
      sub_22BE3D3E0();
      v173 = sub_22C273D04();
      v174 = 0;
      sub_22C25A43C();
      sub_22BE26A98();
      v176 = v175 >> 6;
      v360 = v372 + 16;
      v359 = v175 >> 6;
      v361 = v177;
      if (v178)
      {
        goto LABEL_5;
      }

      break;
    case 0xFu:
      sub_22C1088E8();
      sub_22BE22944();
      sub_22BE3B620(v246, v247);
      sub_22BE431F0();
      sub_22BEE94A4();
      sub_22BE1AA68(v248, v249);
      sub_22BE46D28();
      TranscriptProtoPickOneExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0x10u:
      v167 = sub_22C1EE9C4(*v25);

      type metadata accessor for TranscriptProtoResolveToolExpression(0);
      v168 = v374;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v168 = v167;
      sub_22BE41554();
      goto LABEL_38;
    case 0x11u:
      sub_22C1088E8();
      sub_22C25A8AC();
      sub_22BE3B620(v263, v264);
      sub_22C1088E8();
      sub_22BE37B14();
      sub_22BE1AA68(v265, v266);
      sub_22BE22814();
      sub_22BE46914();
      v267 = sub_22BE3D5C8();
      v271 = sub_22C18F17C(v267, v268, v269, v270);
      type metadata accessor for TranscriptProtoUndoExpression(v271);
      sub_22BE34080();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AE58();
      sub_22BE291B0();
      sub_22BE1AE58();
      sub_22BE1B73C();
      sub_22BE2343C();
      sub_22BE41554();
      goto LABEL_38;
    case 0x12u:
      sub_22C1088E8();
      sub_22BE22944();
      sub_22BE3B620(v289, v290);
      sub_22BE431F0();
      sub_22BEE94A4();
      sub_22BE1AA68(v291, v292);
      sub_22BE46D28();
      TranscriptProtoRejectExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0x13u:
      sub_22C1088E8();
      sub_22BE22944();
      sub_22BE3B620(v302, v303);
      sub_22BE431F0();
      sub_22BEE94A4();
      sub_22BE1AA68(v304, v305);
      sub_22BE46D28();
      TranscriptProtoCancelExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0x14u:
      sub_22C1088E8();
      sub_22BE22944();
      sub_22BE3B620(v272, v273);
      sub_22BE431F0();
      sub_22BEE94A4();
      sub_22BE1AA68(v274, v275);
      sub_22BE46D28();
      TranscriptProtoOpenExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0x15u:
      *&v377 = *v25;
      sub_22C259FAC();
      TranscriptProtoPayloadExpression.init(handwritten:)(v280);
      sub_22BE41554();
      goto LABEL_38;
    case 0x16u:
      sub_22C1C1424(*v25, v159, v160, v161, v162, v163, v164, v165, v354, v357);
      v300 = v299;
      type metadata accessor for TranscriptProtoFormatExpression(0);
      v301 = v374;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v301 = v300;
      sub_22BE41554();
      goto LABEL_38;
    case 0x17u:
      sub_22C1088E8();
      sub_22BE37B14();
      sub_22BE3B620(v306, v307);
      sub_22BE385E4();
      sub_22BE22944();
      sub_22BE1AA68(v308, v309);
      sub_22BE22814();
      sub_22C25A524();
      sub_22BE46914();
      v310 = sub_22BE3D5C8();
      v314 = sub_22C18F17C(v310, v311, v312, v313);
      type metadata accessor for TranscriptProtoSiriXFallbackExpression(v314);
      sub_22BE34080();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AE58();
      sub_22BE1AB74();
      sub_22BE1AE58();
      sub_22BE1B18C();
      sub_22BE2343C();
      sub_22BE41554();
      goto LABEL_38;
    case 0x18u:
      sub_22C1088E8();
      sub_22BE22944();
      sub_22BE3B620(v240, v241);
      sub_22BE431F0();
      sub_22BEE94A4();
      sub_22BE1AA68(v242, v243);
      sub_22BE46D28();
      TranscriptProtoUserConfirmExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0x19u:
      sub_22C1088E8();
      sub_22BE22944();
      sub_22BE3B620(v236, v237);
      sub_22BE431F0();
      sub_22BEE94A4();
      sub_22BE1AA68(v238, v239);
      sub_22BE46D28();
      TranscriptProtoUserDisambiguateExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0x1Au:
      sub_22C1088E8();
      sub_22BEE94A4();
      sub_22BE3B620(v325, v326);
      sub_22BE19EBC();
      sub_22BE22944();
      sub_22BE1AA68(v327, v328);
      sub_22C259F64();
      TranscriptProtoAnswerSynthesisExpression.init(handwritten:)();
      if (v22)
      {
        sub_22BE3C9DC();
        sub_22BE1AE58();
        sub_22BE3C950();
        goto LABEL_45;
      }

      sub_22BE3C950();
      sub_22BE1AE58();
      v23 = v375;
      swift_storeEnumTagMultiPayload();
      sub_22BE37A20();
      v337 = v27;
      goto LABEL_48;
    default:
      v166 = *(v25 + 16);
      v377 = *v25;
      LOBYTE(v378) = v166;
      sub_22C259FAC();
      TranscriptProtoValueExpression.init(handwritten:)();
      sub_22BE41554();
LABEL_38:
      swift_storeEnumTagMultiPayload();
      goto LABEL_39;
  }

LABEL_6:
  v181 = v174;
  while (1)
  {
    v174 = v181 + 1;
    if (__OFADD__(v181, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      return;
    }

    if (v174 >= v176)
    {
      break;
    }

    sub_22C25AC58();
    if (v182)
    {
      sub_22BE4878C();
      for (i = v183; ; i = v180)
      {
        v184 = v179 | (v174 << 6);
        sub_22C25A7E8();
        v186 = *v185;
        v365 = v185[1];
        v187 = v365;
        v366 = v186;
        v188 = v372;
        v190 = *(v372 + 16);
        v190(v370, v189 + *(v372 + 72) * v184, v371);
        v191 = sub_22BE261AC();
        (v190)(v191);

        v364 = sub_22C26E674();
        sub_22C26E654();
        sub_22C25A2F0();
        v192 = v367;
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v193 = *(v188 + 8);
        v194 = sub_22BE31038();
        v193(v194);
        *v192 = v364;
        *(v192 + 8) = v360;
        *(v192 + 16) = v187;
        v195 = sub_22BE37B20();
        v193(v195);
        sub_22C259F84();
        sub_22C25977C(v196);
        v173 = v361;
        v197 = (*(v361 + 48) + 16 * v184);
        v198 = v365;
        *v197 = v366;
        v197[1] = v198;
        sub_22BE3B168();
        sub_22BE3B620(v192, v199);
        sub_22C25A864();
        if (v201)
        {
          break;
        }

        *(v361 + 16) = v200;
        v176 = v359;
        if (!i)
        {
          goto LABEL_6;
        }

LABEL_5:
        sub_22BE22BE8();
      }

      goto LABEL_50;
    }
  }

  sub_22BEE94A4();
  sub_22BE22814();
  v329 = sub_22C25A524();
  sub_22C105B04(v329, v330, v331, v332, v333, v334, v335, v336, v354, v357);
  if (v22)
  {

    sub_22BE3C9DC();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE39EAC();
LABEL_45:
    sub_22BE1AE58();
  }

  else
  {

    sub_22C1C0A8C(v338, v339, v340, v341, v342, v343, v344, v345, v355, v358);
    v347 = v346;
    type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
    sub_22BE46004();
    sub_22C2725A4();
    sub_22BE1A140();
    sub_22C25AE64(v348, v349, v350, v351);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    sub_22BE35838();
    sub_22BE1AE58();
    *v356 = v173;
    sub_22BE2343C();
    v356[1] = v347;
    v23 = v375;
    swift_storeEnumTagMultiPayload();
    sub_22BE37A20();
    v337 = v356;
LABEL_48:
    sub_22BE3B620(v337, v374);
LABEL_39:
    v315 = v376;
    v316 = sub_22BE38960();
    v319 = sub_22C18F17C(v316, v317, v318, v23);
    type metadata accessor for TranscriptProtoExpression(v319);
    sub_22BE48874();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3C9DC();
    sub_22BE1AE58();
    sub_22BE233E8(v315, &qword_27D90EEA0, &qword_22C2970E0);
    sub_22BE37A20();
    v320 = sub_22BE39EAC();
    sub_22BE3B620(v320, v321);
    v322 = sub_22BE2500C();
    sub_22BE19DC4(v322, v323, v324, v23);
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoValueExpression.init(handwritten:)()
{
  sub_22BE19460();
  sub_22BE28CF0();
  sub_22C26E684();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE28A70(v7, v58);
  MEMORY[0x28223BE20](v8);
  sub_22C10887C(v9, v10, v11, v12, v13, v14, v15, v16, v59);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v17);
  sub_22BE3C444(v18, v60);
  type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v19);
  sub_22BE18928();
  MEMORY[0x28223BE20](v20);
  sub_22BE181E4();
  v21 = *v0;
  v22 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 1:
    case 2:
      *v2 = v21;
      sub_22BE1B328();
      goto LABEL_12;
    case 3:
    case 5:
      *v2 = v21;
      v2[1] = v22;
      sub_22BE1B328();
      goto LABEL_12;
    case 4:
      v23 = *(v21 + 16);
      v24 = MEMORY[0x277D84F90];
      if (v23)
      {
        v65 = MEMORY[0x277D84F90];
        v25 = sub_22C18E984();
        sub_22BE705F4(v25, v26, v27);
        v24 = v65;
        v28 = v5 + 16;
        sub_22BE19E14();
        v30 = v21 + v29;
        v61 = *(v28 + 56);
        v62 = v31;
        do
        {
          v64 = v23;
          v32 = sub_22BE3C968();
          v62(v32);
          v33 = sub_22BE3E8FC();
          v62(v33);
          v34 = sub_22C26E674();
          sub_22C26E654();
          sub_22C1CF16C();
          sub_22C25AD94();
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          v35 = *(v28 - 8);
          v36 = sub_22BE27A44();
          v35(v36);
          v37 = sub_22BE1824C();
          v35(v37);
          *v63 = v34;
          *(v63 + 8) = v62;
          *(v63 + 16) = v21;
          v21 = *(v65 + 16);
          v38 = *(v65 + 24);
          if (v21 >= v38 >> 1)
          {
            sub_22BE1AAE4(v38);
            sub_22BE447E4();
            sub_22BE705F4(v40, v41, v42);
          }

          *(v65 + 16) = v21 + 1;
          sub_22BE25AD8();
          sub_22BE3B168();
          sub_22BE3B620(v63, v39);
          v30 += v61;
          --v23;
        }

        while (v64 != 1);
      }

      type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
      sub_22BE34080();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v54 = sub_22BE289D8();
      sub_22BECD0DC(v54, v55, 4);
      *v3 = v24;
      sub_22BE1B5E0();
      swift_storeEnumTagMultiPayload();
      sub_22BE20130();
      v56 = sub_22BE33560();
      sub_22BE3B620(v56, v57);
      goto LABEL_13;
    case 6:
      sub_22BE1B328();
      goto LABEL_12;
    default:
      *v2 = v21 & 1;
      sub_22BE1B328();
LABEL_12:
      swift_storeEnumTagMultiPayload();
LABEL_13:
      sub_22C259804();
      v47 = sub_22C18F17C(v43, v44, v45, v46);
      type metadata accessor for TranscriptProtoValueExpression(v47);
      sub_22BE38954();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE233E8(v1, &qword_27D90EEC0, &qword_22C2970F0);
      sub_22BE20130();
      v48 = sub_22BE431C0();
      sub_22BE3B620(v48, v49);
      sub_22C2597C4();
      sub_22BE19DC4(v50, v51, v52, v53);
      sub_22BE1AABC();
      return;
  }
}

void TranscriptProtoPrefixExpression.init(handwritten:)()
{
  sub_22BE19460();
  v6 = v5;
  sub_22BE1A5E4();
  sub_22C26E684();
  sub_22C2594A0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE2379C();
  v10 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v27 = *v6;
  v12 = type metadata accessor for PrefixExpression(0);
  (*(v8 + 16))(v1, &v6[*(v12 + 20)], v3);
  v13 = sub_22C26E674();
  v14 = sub_22C26E654();
  v15 = sub_22C25A77C();
  v16 = type metadata accessor for TranscriptProtoStatementID(v15);
  sub_22C25A4E8();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v17 = sub_22BE1B73C();
  v18(v17);
  *v2 = v13;
  *(v2 + 8) = v14;
  *(v2 + 16) = v4;
  v19 = sub_22BE22B8C();
  v22 = sub_22C18F17C(v19, v20, v21, v16);
  type metadata accessor for TranscriptProtoPrefixExpression(v22);
  sub_22C259804();
  sub_22C25ACD8(v23, v24, v25, v26);
  sub_22C0E9918();
  sub_22BE1AE58();
  *v0 = v27;
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoInfixExpression.init(handwritten:)()
{
  sub_22BE19460();
  v4 = v3;
  sub_22BE2054C(v5);
  sub_22C26E684();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE2379C();
  v9 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v11);
  sub_22BE2EDB8();
  v39 = *v4;
  type metadata accessor for InfixExpression(0);
  v38 = *(v7 + 16);
  v12 = sub_22C25A794();
  v13(v12);
  v14 = sub_22C26E674();
  v15 = sub_22C26E654();
  v17 = v16;
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22C25A414();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v37 = *(v7 + 8);
  v18 = sub_22BE31038();
  v19(v18);
  *v1 = v14;
  *(v1 + 8) = v15;
  *(v1 + 16) = v17;
  v20 = sub_22C25974C();
  sub_22BE19DC4(v20, v21, v22, v2);
  v23 = sub_22C25A794();
  v38(v23);
  LODWORD(v17) = sub_22C26E674();
  sub_22C26E654();
  sub_22C1163A0();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v24 = sub_22BE31038();
  v37(v24);
  *v0 = v17;
  *(v0 + 8) = v14;
  *(v0 + 16) = v15;
  v25 = sub_22BE22B8C();
  v28 = sub_22C18F17C(v25, v26, v27, v2);
  type metadata accessor for TranscriptProtoInfixExpression(v28);
  sub_22C25ACB4();
  sub_22C25975C();
  sub_22BE19DC4(v29, v30, v31, v32);
  sub_22C25975C();
  sub_22BE19DC4(v33, v34, v35, v36);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3E76C();
  sub_22BE1AE58();
  *v40 = v39;
  sub_22BE2343C();
  sub_22BE2EDC8();
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoIndexExpression.init(handwritten:)()
{
  sub_22BE19460();
  v5 = v4;
  sub_22C26E684();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE2379C();
  v9 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v11);
  sub_22BE2EDB8();
  v39 = *(v7 + 16);
  v12 = sub_22BE1A8C4();
  v13(v12);
  v14 = sub_22C26E674();
  sub_22C26E654();
  sub_22C1163A0();
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22C25A414();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v15 = *(v7 + 8);
  v16 = sub_22BE31038();
  v17(v16);
  *v2 = v14;
  *(v2 + 8) = v5;
  *(v2 + 16) = v0;
  v18 = sub_22C25974C();
  v21 = sub_22C18F17C(v18, v19, v20, v3);
  type metadata accessor for IndexExpression(v21);
  v22 = sub_22C25A794();
  v39(v22);
  LODWORD(v5) = sub_22C26E674();
  v23 = sub_22C26E654();
  v25 = v24;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v26 = sub_22BE31038();
  v15(v26);
  *v1 = v5;
  *(v1 + 8) = v23;
  *(v1 + 16) = v25;
  v27 = sub_22BE22B8C();
  sub_22BE19DC4(v27, v28, v29, v3);
  sub_22C25975C();
  v34 = sub_22C18F17C(v30, v31, v32, v33);
  type metadata accessor for TranscriptProtoIndexExpression(v34);
  sub_22C25ACB4();
  sub_22C25975C();
  sub_22BE19DC4(v35, v36, v37, v38);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  sub_22BE2EDC8();
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoUpdateParametersExpression.init(handwritten:)()
{
  sub_22BE19460();
  v6 = v5;
  sub_22BE417A8(v7);
  updated = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  v67 = v9;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E94();
  v68 = v11;
  v12 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v12);
  sub_22BE179D8();
  v66 = v13;
  MEMORY[0x28223BE20](v13);
  sub_22BE38390();
  sub_22C26E684();
  sub_22C259488();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE28FD8();
  v17 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v18 = sub_22BE19448(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  v63 = v19;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v20);
  sub_22BE181E4();
  sub_22C25A068();
  v21 = sub_22BE37B20();
  v62 = v22;
  (v22)(v21);
  v23 = sub_22C26E674();
  v24 = sub_22C26E654();
  v25 = sub_22BE32C3C();
  v26 = type metadata accessor for TranscriptProtoStatementID(v25);
  sub_22C25A840();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v64 = v4;
  v65 = v2;
  v61 = *(v15 + 8);
  v61(v4, v2);
  *v3 = v23;
  *(v3 + 8) = v24;
  *(v3 + 16) = v0;
  v27 = sub_22BE3C530();
  v70 = v26;
  v30 = sub_22C18F17C(v27, v28, v29, v26);
  v31 = *(v6 + *(type metadata accessor for UpdateParametersExpression(v30) + 20));
  v32 = *(v31 + 16);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v77 = MEMORY[0x277D84F90];
    sub_22BE7064C(0, v32, 0);
    v33 = v77;
    sub_22BE25AD8();
    v35 = v31 + v34;
    v60 = *(v36 + 72);
    do
    {
      v75 = v32;
      v76 = v33;
      v74 = v35;
      sub_22BE1AA68(v35, v68);
      v37 = sub_22BE22DF4();
      sub_22BE1AA68(v37, v38);
      v73 = *v67;
      v71 = v67[1];
      v72 = *(v67 + 25);
      v62(v64, v67 + *(updated + 28), v65);

      v39 = sub_22C26E674();
      sub_22C26E654();
      sub_22BE29328();
      v40 = v1;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v41 = sub_22BE33FCC();
      (v61)(v41);
      *v63 = v39;
      *(v63 + 8) = v64;
      *(v63 + 16) = v31;
      v42 = sub_22BE22B8C();
      sub_22BE19DC4(v42, v43, v44, v70);
      v45 = *(v67 + 24);
      if (v45)
      {
        v46 = 0;
      }

      else
      {
        v46 = v67[2];
      }

      sub_22BE1A140();
      sub_22BE19DC4(v47, v48, v49, v70);
      v50 = v1 + *(v66 + 28);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AE58();
      sub_22BE431C0();
      sub_22BE1AE58();
      *v40 = v73;
      *(v40 + 8) = v71;
      *(v40 + 16) = v72;
      sub_22BE2343C();
      *v50 = v46;
      v33 = v76;
      *(v50 + 8) = v45;
      v31 = *(v76 + 16);
      v51 = *(v76 + 24);
      if (v31 >= v51 >> 1)
      {
        v54 = sub_22BE1AAE4(v51);
        sub_22BE7064C(v54, v31 + 1, 1);
        v33 = v76;
      }

      *(v33 + 16) = v31 + 1;
      sub_22BE25AD8();
      sub_22BE46DDC();
      v52 = sub_22C259FB8();
      sub_22BE3B620(v52, v53);
      v35 = v74 + v60;
      --v32;
      v1 = v40;
    }

    while (v75 != 1);
    v55 = v59;
  }

  else
  {
    v55 = v59;
  }

  type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  sub_22C25ACA8();
  sub_22BE1A140();
  sub_22C25ACD8(v56, v57, v58, v70);
  sub_22BE3ACD8();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v55 = v33;
  sub_22BE1AABC();
}

void TranscriptProtoCallExpression.init(handwritten:)()
{
  sub_22BE19460();
  v1 = v0;
  v52 = v2;
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22C259A68(v4);
  v57 = sub_22C26E684();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E94();
  v54 = v9;
  v10 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A174();
  v51 = v12;
  v49 = v1[1];
  v50 = *v1;
  sub_22BE36638(v1[3]);
  v47 = *(v1 + 32);
  v13 = v1[5];
  sub_22BE5CE4C(&qword_27D915600, &unk_22C2CC8E0);
  v14 = sub_22C273D04();
  v15 = 0;
  sub_22BE26A98();
  v17 = v16 >> 6;
  v55 = v18;
  v56 = v6;
  v53 = v6 + 2;
  if (v19)
  {
    while (1)
    {
      sub_22BE22BE8();
      v59 = v21;
LABEL_8:
      v24 = v20 | (v15 << 6);
      v25 = (*(v13 + 48) + 16 * v24);
      v26 = v25[1];
      v61 = *v25;
      v27 = v56[2];
      v27(v54, *(v13 + 56) + v56[9] * v24, v57);
      v28 = sub_22BE31038();
      (v27)(v28);

      v60 = sub_22C26E674();
      sub_22C26E654();
      sub_22C1163A0();
      sub_22C25AD94();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v29 = v56[1];
      v30 = sub_22BE18040();
      v29(v30);
      (v29)(v54, v57);
      *v58 = v60;
      *(v58 + 8) = v53;
      *(v58 + 16) = v26;
      sub_22BE270BC();
      sub_22C25977C(v31);
      v14 = v55;
      v32 = (*(v55 + 48) + 16 * v24);
      *v32 = v61;
      v32[1] = v26;
      sub_22BE3B168();
      sub_22BE3B620(v58, v33);
      v34 = *(v55 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      *(v55 + 16) = v36;
      if (!v59)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v17)
      {
        type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        *v51 = v50;
        *(v51 + 8) = v49;
        sub_22C1CF2AC();
        *(v51 + 24) = v37;
        *(v51 + 32) = v48;
        *(v51 + 16) = v47;
        v38 = sub_22C259724();
        v42 = sub_22C18F17C(v38, v39, v40, v41);
        type metadata accessor for TranscriptProtoCallExpression(v42);
        sub_22C25ACA8();
        sub_22BE32EE0();
        sub_22BE19DC4(v43, v44, v45, v46);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        *v52 = v14;
        sub_22BE2343C();
        sub_22BE1AABC();
        return;
      }

      ++v22;
      if (*(v13 + 64 + 8 * v15))
      {
        sub_22BE4878C();
        v59 = v23;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C237BD8()
{
  sub_22BE19460();
  v32 = v4;
  v6 = v5;
  sub_22BE1A5E4();
  sub_22C26E684();
  sub_22BE41130();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE25544();
  MEMORY[0x28223BE20](v10);
  sub_22BE1C17C();
  v11 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE23E58();
  v13 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE234F4();
  sub_22BE289C0();
  sub_22BE22814();
  if (sub_22BE1AEA8(v3, 1, v0) == 1)
  {
    v3 = type metadata accessor for TranscriptProtoStatementID(0);
    v15 = sub_22BFB1A7C();
  }

  else
  {
    sub_22BE286F0();
    v17 = sub_22BE289D8();
    v18(v17);
    v19 = sub_22C259D90();
    v20(v19, v2, v0);
    v31 = sub_22C26E674();
    v21 = sub_22C26E654();
    v22 = sub_22C25A788();
    type metadata accessor for TranscriptProtoStatementID(v22);
    sub_22C25A414();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v23 = *(v8 + 8);
    v24 = sub_22BE27A44();
    v23(v24);
    v25 = sub_22BE194C4();
    v23(v25);
    *v1 = v31;
    *(v1 + 8) = v21;
    *(v1 + 16) = v6;
    v15 = v1;
    v16 = 0;
  }

  v26 = sub_22C18F17C(v15, v16, 1, v3);
  type metadata accessor for TranscriptProtoStatementID(v26);
  v27 = sub_22BE38960();
  v30 = sub_22C18F17C(v27, v28, v29, v3);
  v32(v30);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE39EAC();
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoPickExpression.init(handwritten:)()
{
  sub_22BE19460();
  v5 = v4;
  sub_22BE1A5E4();
  sub_22C26E684();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v6);
  sub_22BE2379C();
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  v9 = sub_22BE37EE0();
  v10(v9, v5, v2);
  v11 = sub_22C26E674();
  v12 = sub_22C26E654();
  v13 = sub_22C25A77C();
  v14 = type metadata accessor for TranscriptProtoStatementID(v13);
  sub_22C25A4E8();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v15 = sub_22BE1B73C();
  v16(v15);
  *v1 = v11;
  *(v1 + 8) = v12;
  *(v1 + 16) = v3;
  v17 = sub_22BE22B8C();
  v20 = sub_22C18F17C(v17, v18, v19, v14);
  v21 = *(v5 + *(type metadata accessor for PickExpression(v20) + 20));
  type metadata accessor for TranscriptProtoPickExpression(0);
  sub_22C259804();
  sub_22C25ACD8(v22, v23, v24, v25);
  sub_22C0E9918();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v0 = v21;
  sub_22BE1AABC();
}

void sub_22C237FF4()
{
  sub_22BE19460();
  v22 = v4;
  sub_22C259D80();
  v5 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE2379C();
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE23E58();
  v9 = sub_22BE37EE0();
  v10(v9, v0, v5);
  v11 = sub_22C26E674();
  sub_22C26E654();
  sub_22C25A2F0();
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22C25A5EC();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v13 = sub_22BE31038();
  v14(v13);
  *v3 = v11;
  *(v3 + 8) = v1;
  *(v3 + 16) = v2;
  v15 = sub_22BE360A0();
  sub_22BE19DC4(v15, v16, v17, v12);
  v18 = sub_22BE38960();
  v21 = sub_22C18F17C(v18, v19, v20, v12);
  v22(v21);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE3C968();
  sub_22BE2343C();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoSearchExpression.init(handwritten:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(a1 + 18);
  type metadata accessor for TranscriptProtoSearchExpression(0);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 17) = v6;
  *(a2 + 18) = v7;
  return result;
}

void TranscriptProtoStructuredSearchExpression.init(handwritten:)()
{
  sub_22BE19130();
  v2 = v1;
  sub_22BE417A8(v3);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE3C768(v5);
  v78 = sub_22C26E684();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  sub_22BE3173C(v10, v11, v12, v13, v14, v15, v16, v17, v67);
  v18 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v20 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v20);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1A174();
  v22 = *v2;
  sub_22BE5CE4C(&qword_27D915600, &unk_22C2CC8E0);
  sub_22BE3D3E0();
  v23 = sub_22C273D04();
  v24 = 0;
  sub_22C25A43C();
  v74 = v25;
  sub_22BE26A98();
  v73 = v26 >> 6;
  v75 = v22;
  v77 = v27;
  if (v28)
  {
    while (1)
    {
      sub_22BE22BE8();
      v80 = v30;
LABEL_8:
      v33 = v7[2];
      v33(v76, *(v75 + 56) + v7[9] * (v29 | (v24 << 6)), v78);
      v34 = sub_22BE336E8();
      (v33)(v34);

      v81 = sub_22C26E674();
      v35 = sub_22C26E654();
      v37 = v36;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v38 = v7[1];
      v39 = sub_22BE1B73C();
      v38(v39);
      *v79 = v81;
      *(v79 + 8) = v35;
      *(v79 + 16) = v37;
      v40 = sub_22BE3AF28();
      v38(v40);
      sub_22BE270BC();
      sub_22C25977C(v41);
      v23 = v77;
      sub_22C25ADB4(*(v77 + 48));
      sub_22BE3B168();
      sub_22BE3B620(v79, v42);
      sub_22C25AB9C();
      if (v44)
      {
        break;
      }

      *(v77 + 16) = v43;
      if (!v80)
      {
        goto LABEL_3;
      }
    }

LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_3:
    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      if (v24 >= v73)
      {
        break;
      }

      ++v31;
      if (*(v74 + 8 * v24))
      {
        sub_22BE4878C();
        v80 = v32;
        goto LABEL_8;
      }
    }

    type metadata accessor for StructuredSearchExpression(0);
    sub_22C25A530();
    sub_22C25AAA0();
    sub_22BE22814();
    v45 = sub_22C25A718();
    sub_22C105B04(v45, v46, v47, v48, v49, v50, v51, v52, v68, v70);
    if (v0)
    {
      sub_22BE291DC();
      sub_22BE1AE58();
    }

    else
    {

      sub_22C1C0A8C(v53, v54, v55, v56, v57, v58, v59, v60, v69, v71);
      v62 = v61;
      type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
      sub_22C2725A4();
      sub_22BE1A140();
      sub_22BE19DC4(v63, v64, v65, v66);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE291DC();
      sub_22BE1AE58();
      *v72 = v23;
      sub_22BE2343C();
      v72[1] = v62;
    }

    sub_22BE22978();
    sub_22BE18478();
  }
}

uint64_t TranscriptProtoResolveToolExpression.init(handwritten:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22C1EE9C4(*a1);

  type metadata accessor for TranscriptProtoResolveToolExpression(0);
  sub_22BE48874();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a2 = v3;
  return result;
}

void sub_22C238770()
{
  sub_22BE19460();
  v3 = v2;
  sub_22BE28CF0();
  sub_22C26E684();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE28A70(v7, v39);
  MEMORY[0x28223BE20](v8);
  sub_22C10887C(v9, v10, v11, v12, v13, v14, v15, v16, v40);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v17);
  sub_22BE3C444(v18, v41);
  v19 = *v0;
  v20 = *(v19 + 16);
  if (v20)
  {
    v42 = v3;
    v47 = MEMORY[0x277D84F90];
    v21 = sub_22C18E984();
    sub_22BE705F4(v21, v22, v23);
    v24 = v47;
    v25 = v5 + 16;
    sub_22BE19E14();
    v27 = v19 + v26;
    v43 = *(v25 + 56);
    v44 = v28;
    v45 = v25;
    v29 = (v25 - 8);
    do
    {
      v30 = sub_22BE1B074();
      v44(v30);
      v31 = sub_22BE261AC();
      v44(v31);
      v32 = sub_22C26E674();
      sub_22C26E654();
      sub_22C25A2F0();
      sub_22C25AD94();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v33 = *v29;
      v34 = sub_22BE336E8();
      v33(v34);
      v35 = sub_22BE2684C();
      v33(v35);
      *v46 = v32;
      *(v46 + 8) = v44;
      *(v46 + 16) = v25;
      v37 = *(v47 + 16);
      v36 = *(v47 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_22BE705F4(v36 > 1, v37 + 1, 1);
      }

      *(v47 + 16) = v37 + 1;
      sub_22BE25AD8();
      sub_22BE3B168();
      sub_22BE3B620(v46, v38);
      v27 += v43;
      --v20;
      v25 = v45;
    }

    while (v20);

    v42(0);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
    v3(0);
  }

  sub_22BE38954();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = v24;
  sub_22BE1AABC();
}

uint64_t TranscriptProtoFormatExpression.init(handwritten:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_22C1C1424(*a1, a2, a3, a4, a5, a6, a7, a8, v13, v14);
  v11 = sub_22BE23C8C();
  type metadata accessor for TranscriptProtoFormatExpression(v11);
  sub_22BE48874();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a9 = v9;
  return result;
}

void sub_22C238A80()
{
  sub_22BE19460();
  v1 = v0;
  sub_22BE308C4();
  v2 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v2);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE23E58();
  v4 = sub_22BE1B18C();
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE2C64C();
  sub_22BE3911C();
  sub_22BE22814();
  sub_22BE46914();
  type metadata accessor for TranscriptProtoStatementID(0);
  v8 = sub_22BE38960();
  v12 = sub_22C18F17C(v8, v9, v10, v11);
  v1(v12);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3C5E4();
  sub_22BE1AE58();
  sub_22BE1B074();
  sub_22C25AA5C();
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoUserConfirmExpression.init(handwritten:)()
{
  sub_22BE19460();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE25334();
  v5 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE2379C();
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v9);
  sub_22BE23B44();
  MEMORY[0x28223BE20](v10);
  sub_22BE32374();
  v11 = sub_22C259E4C();
  v12(v11, v2, v5);
  v13 = sub_22C26E674();
  v14 = sub_22C26E654();
  v15 = sub_22C25A4AC();
  v16 = type metadata accessor for TranscriptProtoStatementID(v15);
  sub_22C25A5EC();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v17 = sub_22BE18040();
  v18(v17);
  *v0 = v13;
  *(v0 + 8) = v14;
  *(v0 + 16) = v2;
  v19 = sub_22BE360A0();
  v22 = sub_22C18F17C(v19, v20, v21, v16);
  type metadata accessor for UserConfirmExpression(v22);
  sub_22C25A530();
  sub_22BE22814();
  sub_22BE46914();
  sub_22BE22814();
  sub_22C25A338();
  sub_22BE46914();
  v23 = sub_22BE38960();
  v26 = sub_22C18F17C(v23, v24, v25, v16);
  type metadata accessor for TranscriptProtoUserConfirmExpression(v26);
  sub_22C25ACA8();
  sub_22BE3AE2C();
  sub_22BE19DC4(v27, v28, v29, v30);
  sub_22BE3AE2C();
  sub_22BE19DC4(v31, v32, v33, v34);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9848();
  sub_22BE1AE58();
  sub_22BE3C968();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoUserDisambiguateExpression.init(handwritten:)()
{
  sub_22BE19460();
  v4 = v3;
  v45 = v5;
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE19820();
  sub_22C26E684();
  sub_22C259488();
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22C259D70();
  MEMORY[0x28223BE20](v8);
  sub_22BE324EC();
  v9 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A8B4();
  sub_22C25A068();
  v11 = sub_22C259FF4();
  v49 = v12;
  v12(v11);
  v13 = sub_22C26E674();
  v14 = sub_22C26E654();
  v16 = v15;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v17 = sub_22BE3CEF4();
  v47 = v18;
  v18(v17);
  *v2 = v13;
  *(v2 + 8) = v14;
  *(v2 + 16) = v16;
  v19 = sub_22BE33C68();
  v50 = v0;
  v22 = sub_22C18F17C(v19, v20, v21, v0);
  v23 = *(v4 + *(type metadata accessor for UserDisambiguateExpression(v22) + 20));
  v24 = *(v23 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v52 = MEMORY[0x277D84F90];
    v26 = sub_22C18E984();
    sub_22BE705F4(v26, v27, v28);
    v25 = v52;
    sub_22BE25AD8();
    v30 = v23 + v29;
    v46 = *(v31 + 72);
    do
    {
      v51 = v24;
      v32 = sub_22BE39EAC();
      v49(v32);
      v33 = sub_22C259FF4();
      v49(v33);
      v34 = sub_22C26E674();
      sub_22C26E654();
      sub_22BE29328();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v35 = sub_22BE191C0();
      v47(v35);
      v36 = sub_22BE33B3C();
      v47(v36);
      *v1 = v34;
      *(v1 + 8) = v48;
      *(v1 + 16) = v49;
      v38 = *(v52 + 16);
      v37 = *(v52 + 24);
      if (v38 >= v37 >> 1)
      {
        v40 = sub_22BE1AAE4(v37);
        sub_22BE705F4(v40, v38 + 1, 1);
      }

      *(v52 + 16) = v38 + 1;
      sub_22BE25AD8();
      sub_22BE46DDC();
      sub_22BE3B168();
      sub_22BE3B620(v1, v39);
      v30 += v46;
      --v24;
    }

    while (v51 != 1);
    v41 = v45;
  }

  else
  {
    v41 = v45;
  }

  type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  sub_22C25A7AC();
  sub_22BE1A140();
  sub_22BE19DC4(v42, v43, v44, v50);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE291DC();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v41 = v25;
  sub_22BE1AABC();
}

void TranscriptProtoAnswerSynthesisExpression.init(handwritten:)()
{
  sub_22BE19130();
  v7 = v6;
  v74 = v6;
  v8 = sub_22BE5CE4C(&qword_27D909158, &qword_22C27FD50);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v11 = sub_22C25984C(v10);
  type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate(v11);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v12);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E94();
  v15 = sub_22C259814(v14);
  type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate(v15);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v16);
  sub_22BE29178(v17, v73);
  MEMORY[0x28223BE20](v18);
  sub_22BE374E4();
  sub_22C26E684();
  sub_22BE41130();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v22);
  sub_22C259BC0();
  v23 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE234F4();
  sub_22C259E94();
  sub_22C25A368();
  v77 = v25;
  v25();
  v84 = sub_22C26E674();
  v26 = sub_22C26E654();
  v27 = sub_22C25A4AC();
  type metadata accessor for TranscriptProtoStatementID(v27);
  sub_22C25A414();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v82 = v20;
  v76 = *(v20 + 8);
  v76(v0, v2);
  *v3 = v84;
  *(v3 + 8) = v26;
  *(v3 + 16) = v7;
  sub_22BE187DC();
  v79 = v5;
  v31 = sub_22C18F17C(v28, v29, v30, v5);
  v32 = *(v74 + *(type metadata accessor for AnswerSynthesisExpression(v31) + 20));
  v33 = *(v32 + 16);
  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v89 = MEMORY[0x277D84F90];
    sub_22C25A000();
    sub_22C25A930();
    sub_22BE70754(v35, v36, v37);
    v34 = v89;
    sub_22BE25AD8();
    v39 = v32 + v38;
    v85 = *(v40 + 72);
    sub_22BE417A8(v82 + 32);
    v41 = v88;
    v75 = v4;
    v86 = v1;
    do
    {
      sub_22BE1AA68(v39, v41);
      v42 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(0);
      sub_22C259860();
      sub_22BE19DC4(v43, v44, v45, v46);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v47 = sub_22BE180C8();
      sub_22BE1AA68(v47, v48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22BE20118();
        sub_22BE1AE58();
        v49 = *v4;
        v50 = v4[1];
        sub_22BE233E8(v87, &qword_27D909158, &qword_22C27FD50);
        *v87 = v49;
        v87[1] = v50;
        sub_22BE25D0C();
        swift_storeEnumTagMultiPayload();
        v51 = sub_22BE3C530();
        sub_22BE19DC4(v51, v52, v53, v42);
      }

      else
      {
        sub_22BE33554();
        v54 = sub_22BE1AEE4();
        v55(v54);
        v56 = sub_22BE1B73C();
        (v77)(v56);
        v83 = sub_22C26E674();
        v57 = sub_22C26E654();
        v80 = v58;
        v81 = v57;
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v59 = sub_22BE27A44();
        (v76)(v59);
        v60 = sub_22BE18240();
        (v76)(v60);
        sub_22BE1AE58();
        *v78 = v83;
        *(v78 + 8) = v81;
        *(v78 + 16) = v80;
        v41 = v88;
        sub_22BE2BA80();
        swift_storeEnumTagMultiPayload();
        v61 = sub_22BE33C68();
        sub_22BE19DC4(v61, v62, v63, v42);
        v4 = v75;
        sub_22BE2343C();
      }

      v64 = sub_22BE29370();
      v1 = v86;
      sub_22BE3B620(v64, v86);
      v66 = *(v89 + 16);
      v65 = *(v89 + 24);
      if (v66 >= v65 >> 1)
      {
        v69 = sub_22BE3D1E4(v65);
        sub_22BE70754(v69, v66 + 1, 1);
      }

      *(v89 + 16) = v66 + 1;
      sub_22BE25AD8();
      v67 = sub_22BE29370();
      sub_22BE3B620(v67, v68);
      v39 += v85;
      --v33;
    }

    while (v33);
  }

  sub_22C25AC38();
  type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
  sub_22C25A7AC();
  sub_22BE1A140();
  sub_22BE19DC4(v70, v71, v72, v79);
  sub_22C25AB40();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3C950();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v1 = v34;
  sub_22BE19650();
  sub_22BE18478();
}

void UpdateParametersExpression.UpdateParameter.init(transcript:)()
{
  sub_22BE19130();
  v2 = sub_22C259D80();
  v3 = type metadata accessor for TranscriptProtoStatementID(v2);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE19820();
  sub_22C26E684();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE1955C();
  v6 = v1[1];
  v11 = *v1;
  v12 = *(v1 + 16);
  v7 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 24);

  sub_22BE3CD7C();
  sub_22C1026C4();
  if (v7)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {

    sub_22C25A1C4();
    sub_22BE289C0();
    sub_22C26E664();
    sub_22BE379D8();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    *v0 = v11;
    *(v0 + 8) = v6;
    *(v0 + 16) = 0;
    *(v0 + 24) = 1;
    *(v0 + 25) = v12;
    updated = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
    v9 = sub_22C25AC20(*(updated + 28));
    v10(v9);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoUpdateParameterExpression_UpdateParameter.init(handwritten:)()
{
  sub_22BE19460();
  v3 = v2;
  sub_22BE1A5E4();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE2379C();
  v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  v7 = v3[1];
  v29 = *v3;
  v27 = v7;
  v28 = *(v3 + 25);
  type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
  v8 = sub_22C25A794();
  v9(v8);

  v10 = sub_22C26E674();
  v11 = sub_22C26E654();
  v12 = sub_22C25A4AC();
  v13 = type metadata accessor for TranscriptProtoStatementID(v12);
  sub_22C25A4E8();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v14 = sub_22BE31038();
  v15(v14);
  *v1 = v10;
  *(v1 + 8) = v11;
  *(v1 + 16) = v7;
  v16 = sub_22BE22B8C();
  sub_22BE19DC4(v16, v17, v18, v13);
  v19 = *(v3 + 24);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v3[2];
  }

  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  sub_22BE3AE2C();
  sub_22BE19DC4(v22, v23, v24, v25);
  v26 = v0 + *(updated + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9918();
  sub_22BE1AE58();
  *v0 = v29;
  *(v0 + 8) = v27;
  *(v0 + 16) = v28;
  sub_22BE2343C();
  *v26 = v20;
  *(v26 + 8) = v19;
  sub_22BE1AABC();
}

uint64_t sub_22C23A160()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 16);
  if (*(v0 + 18))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_22C1FE3B8(*v0, *(v0 + 8), v2 | v3);
}

void StructuredSearchExpression.StructuredSearchProperty.init(transcript:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v4 = sub_22BE236C8();
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A8B4();
  v8 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  sub_22BE22814();

  sub_22C25A894();
  sub_22C0FD140();
  sub_22C0E9830();
  sub_22BE1AE58();
  type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
  sub_22C26E684();
  sub_22BE1A140();
  sub_22BE19DC4(v14, v15, v16, v17);
  *v3 = v10;
  v3[1] = v11;
  v3[2] = v12;
  v3[3] = v13;
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.init(handwritten:)()
{
  sub_22BE19460();
  sub_22C259E88();
  v2 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v2);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE2C64C();
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
  sub_22BE22814();

  sub_22BE46914();
  type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v13);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9A74();
  sub_22BE1AE58();
  *v0 = v6;
  v0[1] = v7;
  v0[2] = v8;
  v0[3] = v9;
  sub_22BE2343C();
  sub_22BE1AABC();
}

uint64_t ProgramStatement.ExecutionSupportType.init(transcript:)()
{
  sub_22C259EE8();
  result = sub_22BE1AE58();
  *v0 = v1 & 1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.ExecutionSupportType.init(handwritten:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_22BE3859C(2);
  type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(v4);
  sub_22BE48874();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a2 = v3;
  return result;
}

void ActionRequirement.init(transcript:)()
{
  sub_22BE19130();
  v5 = sub_22C25A3B4(v4);
  v6 = type metadata accessor for TranscriptProtoPermissionRequirement(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v8);
  sub_22C259838(v9, v10, v11, v12, v13, v14, v15, v16, v78);
  v17 = type metadata accessor for TranscriptProtoAppRequirement(0);
  v18 = sub_22BE19448(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BE29178(v19, v79);
  MEMORY[0x28223BE20](v20);
  sub_22C1CEC08(v21, v22, v23, v24, v25, v26, v27, v28, v80);
  sub_22C26F8A4();
  sub_22BE179D8();
  v87 = v30;
  v88 = v29;
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  v82 = v31;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v32);
  sub_22BE426BC();
  MEMORY[0x28223BE20](v33);
  v34 = sub_22BE374E4();
  v35 = type metadata accessor for TranscriptProtoSystemRequirementMessage(v34);
  v36 = sub_22BE19448(v35);
  MEMORY[0x28223BE20](v36);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v37);
  sub_22C259BC0();
  v38 = sub_22BE180C8();
  v40 = sub_22BE5CE4C(v38, v39);
  sub_22BE19448(v40);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  v42 = sub_22BE28E00();
  v43 = type metadata accessor for TranscriptProtoActionRequirementEnum(v42);
  sub_22BE18000();
  MEMORY[0x28223BE20](v44);
  sub_22BE19338();
  sub_22BE426E8();
  sub_22BE22814();
  v45 = sub_22BE3C688();
  sub_22BE1AB5C(v45, v46, v43);
  if (v47)
  {
    sub_22BE233E8(v3, &qword_27D90E848, &qword_22C2AE5C0);
    v48 = sub_22BE5CE4C(&qword_27D915658, &qword_22C2CC9E0);
    sub_22BE43258(v48);
    sub_22BE3D554();
    v49 = sub_22C108598();
    v50 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v49);
    sub_22C259EA0(v50, v51, v52, v53, v54, v55);
    sub_22C259470();
LABEL_4:
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE1B820();
    v56 = sub_22BE25C94();
    sub_22BE3B620(v56, v57);
    sub_22BE1B18C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v73 = sub_22C1088E8();
        sub_22BE3B620(v73, v84);
        v74 = sub_22BE19EBC();
        sub_22BE1AA68(v74, v83);
        v2 = v82;
        v75 = sub_22BE362B8();
        PermissionRequirement.init(transcript:)(v75);
        sub_22C259470();
        sub_22BE1AE58();
        sub_22C259960();
        sub_22BE1AE58();
        if (!v90)
        {
          v72 = MEMORY[0x277D1CC10];
          goto LABEL_13;
        }

        break;
      case 2:
        v70 = sub_22C1088E8();
        sub_22BE3B620(v70, v1);
        v71 = sub_22BE431F0();
        sub_22BE1AA68(v71, v0);
        SystemRequirement.init(transcript:)();
        sub_22C259470();
        sub_22BE1AE58();
        sub_22BE3C8D4();
        sub_22BE1AE58();
        if (!v90)
        {
          v72 = MEMORY[0x277D1CC20];
LABEL_13:
          (*(v87 + 104))(v2, *v72, v88);
          sub_22C25A1E8();
          v76();
        }

        break;
      case 3:
        sub_22C259470();
        sub_22BE1AE58();
        (*(v87 + 104))(v89, *MEMORY[0x277D1CC28], v88);
        break;
      default:
        v59 = sub_22C1088E8();
        sub_22BE3B620(v59, v86);
        v60 = sub_22BE29370();
        sub_22BE1AA68(v60, v85);
        v61 = *v85;
        if (v61 == 3)
        {
          v62 = sub_22BE5CE4C(&qword_27D915660, &unk_22C2CC9E8);
          sub_22BE43258(v62);
          sub_22BE3D554();
          v63 = sub_22C108598();
          v64 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v63);
          sub_22C259EA0(v64, v65, v66, v67, v68, v69);
          sub_22BE26194();
          sub_22BE1AE58();
          sub_22C259470();
          sub_22BE1AE58();
          sub_22BE200D4();
          goto LABEL_4;
        }

        sub_22BE26194();
        sub_22BE1AE58();
        sub_22C26EBD4();
        sub_22BE1834C();
        (*(v77 + 104))(v81, **(&unk_278725CC0 + v61));
        sub_22C259470();
        sub_22BE1AE58();
        sub_22BE200D4();
        sub_22BE1AE58();
        (*(v87 + 104))(v81, *MEMORY[0x277D1CC18], v88);
        (*(v87 + 32))(v89, v81, v88);
        break;
    }
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void SystemRequirement.init(transcript:)()
{
  sub_22BE19130();
  v63 = v6;
  v7 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  sub_22BE32C08();
  MEMORY[0x28223BE20](v9);
  v18 = sub_22BE4202C(v10, v11, v12, v13, v14, v15, v16, v17, v58);
  v19 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(v18);
  v20 = sub_22BE19448(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v21);
  sub_22C1CEC08(v22, v23, v24, v25, v26, v27, v28, v29, v59);
  v30 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  v31 = sub_22BE19448(v30);
  MEMORY[0x28223BE20](v31);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v32);
  sub_22BE324EC();
  v33 = sub_22BE1AB1C();
  v35 = sub_22BE5CE4C(v33, v34);
  sub_22BE19448(v35);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  v37 = sub_22BE3100C();
  v38 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(v37);
  sub_22BE18000();
  MEMORY[0x28223BE20](v39);
  sub_22BE2379C();
  sub_22BE1B5E0();
  sub_22BE22814();
  sub_22BE18190(v2);
  if (v40)
  {
    sub_22BE233E8(v2, &qword_27D90E860, &qword_22C2AE5D0);
    v41 = sub_22BE5CE4C(&qword_27D915668, &qword_22C2CC9F8);
    sub_22BE43258(v41);
    sub_22BE3D554();
    v42 = sub_22C108598();
    v43 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v42);
    sub_22C259EA0(v43, v44, v45, v46, v47, v48);
    sub_22BE3C8D4();
    sub_22BE1AE58();
  }

  else
  {
    v49 = sub_22BE385E4();
    sub_22BE3B620(v49, v0);
    sub_22BE18944();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v55 = sub_22BE431F0();
        v38 = v60;
        sub_22BE3B620(v55, v60);
        v56 = sub_22BE19EBC();
        sub_22BE1AA68(v56, v3);
        sub_22C25A894();
        SystemRequirement.AuthenticationRequest.init(transcript:)();
        sub_22BE3C8D4();
        sub_22BE1AE58();
        sub_22C259948();
        sub_22BE1AE58();
        if (!v1)
        {
          goto LABEL_11;
        }

        break;
      case 2:
        v53 = sub_22BE431F0();
        sub_22BE3B620(v53, v61);
        v54 = sub_22C259FB8();
        sub_22BE1AA68(v54, v62);
        if ((*(v62 + 32) & 1) == 0)
        {
          sub_22C1EED38(*(v62 + 24));
        }

        sub_22C26FA34();
        sub_22BE3C8D4();
        sub_22BE1AE58();
        v38 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest;
        sub_22BE1AE58();
        sub_22BE1B074();
        sub_22BE1AE58();
        goto LABEL_11;
      case 3:
      case 4:
      case 5:
      case 6:
        sub_22BE3C8D4();
        sub_22BE1AE58();
        goto LABEL_11;
      default:
        v51 = sub_22BE431F0();
        sub_22BE3B620(v51, v5);
        v52 = sub_22C259FB8();
        sub_22BE1AA68(v52, v4);

        sub_22BE1B5EC();
        sub_22C26ED04();
        sub_22BE3C8D4();
        sub_22BE1AE58();
        v38 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest;
        sub_22BE1AE58();
        sub_22BE1B074();
        sub_22BE1AE58();
LABEL_11:
        sub_22C25A6B8();
        sub_22C26FAD4();
        sub_22BE1834C();
        (*(v57 + 104))(v63, v38);
        break;
    }
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t AppRequirement.init(transcript:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (v4 == 3)
  {
    v5 = sub_22BE5CE4C(&qword_27D915660, &unk_22C2CC9E8);
    sub_22C25AA08(v5, v6);
    sub_22C25A64C();
    v7 = sub_22C108598();
    v8 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v7);
    *v9 = v2;
    v9[1] = v3;
    sub_22C25A590(v8, v9, v10, v11, v12, v13);
    sub_22C0E9A74();
    return sub_22BE1AE58();
  }

  else
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
    sub_22C26EBD4();
    sub_22BE1834C();
    if (v4)
    {
      if (v4 == 1)
      {
        v17 = MEMORY[0x277D1C5E0];
      }

      else
      {
        v17 = MEMORY[0x277D1C5E8];
      }
    }

    else
    {
      v17 = MEMORY[0x277D1C5D8];
    }

    return (*(v16 + 104))(a2, *v17);
  }
}

uint64_t PermissionRequirement.init(transcript:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 8)
  {
    v3 = sub_22BE5CE4C(&qword_27D915670, &qword_22C2CCA00);
    sub_22C25AA08(v3, v4);
    sub_22BE3D554();
    v5 = sub_22C108598();
    v6 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v5);
    sub_22C259EA0(v6, v7, v8, v9, v10, v11);
    sub_22C259960();
    return sub_22BE1AE58();
  }

  else
  {
    sub_22BE48AF0();
    sub_22C259960();
    sub_22BE1AE58();
    sub_22C26FEA4();
    sub_22BE18000();
    switch(v2)
    {
      case 1:
        v15 = MEMORY[0x277D1CF58];
        break;
      case 2:
        v15 = MEMORY[0x277D1CF20];
        break;
      case 3:
        v15 = MEMORY[0x277D1CF48];
        break;
      case 4:
        v15 = MEMORY[0x277D1CF30];
        break;
      case 5:
        v15 = MEMORY[0x277D1CF50];
        break;
      case 6:
        v15 = MEMORY[0x277D1CF38];
        break;
      case 7:
        v15 = MEMORY[0x277D1CF40];
        break;
      default:
        v15 = MEMORY[0x277D1CF28];
        break;
    }

    return (*(v14 + 104))(v1, *v15, v13);
  }
}

void TranscriptProtoActionRequirement.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A93C(v2);
  sub_22C25A554(v3);
  sub_22C26FEA4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v5);
  sub_22BE3173C(v6, v7, v8, v9, v10, v11, v12, v13, v96);
  sub_22C26EBD4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v15);
  sub_22C259838(v16, v17, v18, v19, v20, v21, v22, v23, v97);
  sub_22C26FAD4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v24);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v25);
  sub_22BE39EE8();
  sub_22C26F8A4();
  sub_22C259488();
  MEMORY[0x28223BE20](v26);
  v27 = sub_22BE19820();
  v102 = type metadata accessor for TranscriptProtoActionRequirementEnum(v27);
  sub_22BE18000();
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  v99 = v29;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v30);
  sub_22BEC0508();
  MEMORY[0x28223BE20](v31);
  sub_22BE2351C();
  MEMORY[0x28223BE20](v32);
  sub_22BE355FC(v33, v34, v35, v36, v37, v38, v39, v40, v98);
  sub_22BE3C6EC();
  v41 = sub_22C25A6D0();
  v42(v41);
  v43 = sub_22BE25C08();
  v45 = v44(v43);
  if (v45 == *MEMORY[0x277D1CC20])
  {
    v46 = sub_22C259BE0();
    v47(v46);
    sub_22C18F338();
    v48 = sub_22BE18240();
    v49(v48);
    sub_22BE29400();
    v50 = sub_22BF0AFB8();
    v51(v50);
    sub_22BE44844();
    TranscriptProtoSystemRequirementMessage.init(handwritten:)();
    if (v103)
    {
      v52 = sub_22C25A3D0();
      v53(v52);
      v54 = sub_22BE39EAC();
      v55(v54);
LABEL_17:
      sub_22BE467E4();
      sub_22BE18478();
      return;
    }

    v78 = sub_22BE39EAC();
    v79(v78);
    v62 = v102;
    swift_storeEnumTagMultiPayload();
    sub_22BE1B820();
    v80 = v0;
LABEL_14:
    v73 = v101;
LABEL_15:
    sub_22BE3B620(v80, v73);
    goto LABEL_16;
  }

  if (v45 == *MEMORY[0x277D1CC18])
  {
    v56 = sub_22C259BE0();
    v57(v56);
    sub_22C25A35C();
    v58 = sub_22BE1824C();
    v59(v58);
    sub_22C1CF23C();
    v60 = sub_22BE22DF4();
    v61(v60);
    TranscriptProtoAppRequirement.init(handwritten:)();
    v62 = v102;
    if (v103)
    {
      v63 = sub_22C25A3D0();
      v64(v63);
      v65 = sub_22BF0AFB8();
      v66(v65);
      goto LABEL_17;
    }

    v81 = sub_22BF0AFB8();
    v82(v81);
    sub_22BE2684C();
    swift_storeEnumTagMultiPayload();
    sub_22BE1B820();
    v80 = v1;
    goto LABEL_14;
  }

  v62 = v102;
  if (v45 == *MEMORY[0x277D1CC10])
  {
    v67 = sub_22C259BE0();
    v68(v67);
    sub_22C18EB74();
    v69 = sub_22BE25C94();
    v70(v69);
    sub_22C25A068();
    v71 = sub_22BE36318();
    v72(v71);
    TranscriptProtoPermissionRequirement.init(handwritten:)();
    v73 = v101;
    if (v103)
    {
      v74 = sub_22C25A3D0();
      v75(v74);
      v76 = sub_22BE37B20();
      v77(v76);
      goto LABEL_17;
    }

    v94 = sub_22BE37B20();
    v95(v94);
    sub_22BE3CC34();
    swift_storeEnumTagMultiPayload();
    sub_22BE1B820();
    v80 = v99;
    goto LABEL_15;
  }

  if (v45 == *MEMORY[0x277D1CC28])
  {
    sub_22BE33560();
    swift_storeEnumTagMultiPayload();
LABEL_16:
    v83 = sub_22BE38960();
    v86 = sub_22C18F17C(v83, v84, v85, v62);
    type metadata accessor for TranscriptProtoActionRequirement(v86);
    sub_22BE48874();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v87 = sub_22C25A3D0();
    v88(v87);
    sub_22BE233E8(v100, &qword_27D90E848, &qword_22C2AE5C0);
    sub_22BE1B820();
    v89 = sub_22BE39EAC();
    sub_22BE3B620(v89, v90);
    v91 = sub_22BE2500C();
    sub_22BE19DC4(v91, v92, v93, v62);
    goto LABEL_17;
  }

  sub_22C274004();
  __break(1u);
}

void TranscriptProtoSystemRequirementMessage.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE1A5E4();
  sub_22C26FA54();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E94();
  sub_22BE183BC();
  sub_22C26FAC4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v7);
  sub_22C10887C(v8, v9, v10, v11, v12, v13, v14, v15, v82);
  sub_22C26FA84();
  sub_22BE1A3D8();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22BE25544();
  MEMORY[0x28223BE20](v19);
  sub_22BE22D7C(v20, v21, v22, v23, v24, v25, v26, v27, v83);
  sub_22C26FAD4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v28);
  sub_22BE17CBC();
  v29 = sub_22BE5CE4C(&qword_27D90E860, &qword_22C2AE5D0);
  sub_22BE19448(v29);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v31 = sub_22BE1AB08();
  type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(v31);
  v32 = sub_22BE38960();
  v86 = v33;
  v36 = sub_22C18F17C(v32, v34, v35, v33);
  type metadata accessor for TranscriptProtoSystemRequirementMessage(v36);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE36288();
  v37 = sub_22BE354DC();
  v38(v37);
  v39 = sub_22BE426E8();
  v41 = v40(v39);
  if (v41 == *MEMORY[0x277D1CD18])
  {
    sub_22C25A32C();
    v42 = sub_22BE426E8();
    v43(v42);
    sub_22C18EB74();
    sub_22C259FD0();
    v44();
    v45 = sub_22C259E94();
    v46(v45, v85, v2);
    v84 = sub_22C26ED64();
    v47 = sub_22C25A4AC();
    type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(v47);
    sub_22C25A548();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v48 = sub_22BE2BA80();
    v49(v48);
    v50 = *(v17 + 8);
    v51 = sub_22BE336E8();
    v50(v51);
    v52 = sub_22BE3CC34();
    v50(v52);
    *v3 = v84;
    v3[1] = v1;
LABEL_3:
    swift_storeEnumTagMultiPayload();
    v53 = sub_22BE22B8C();
    sub_22BE19DC4(v53, v54, v55, v86);
    sub_22C25A6D0();
    sub_22BE2343C();
LABEL_16:
    sub_22BE22978();
    sub_22BE18478();
    return;
  }

  if (v41 == *MEMORY[0x277D1CD10])
  {
    sub_22C25A32C();
    v56 = sub_22BE426E8();
    v57(v56);
    sub_22C25A35C();
    v58 = sub_22BE33BE8();
    v59(v58);
    sub_22C1CF23C();
    v60 = sub_22BE29264();
    v61(v60);
    sub_22C25A524();
    TranscriptProtoSystemRequirementAuthenticationRequest.init(handwritten:)();
    if (v0)
    {
LABEL_6:
      v62 = sub_22C259BF0();
      v63(v62);
      v64 = sub_22BE33BE8();
      v65(v64);
LABEL_15:
      sub_22BE3C8D4();
      sub_22BE1AE58();
      goto LABEL_16;
    }

LABEL_12:
    v72 = sub_22C259BF0();
    v73(v72);
    v74 = sub_22BE33BE8();
    v75(v74);
    goto LABEL_3;
  }

  if (v41 == *MEMORY[0x277D1CCB8])
  {
    sub_22C25A32C();
    v66 = sub_22BE426E8();
    v67(v66);
    sub_22C18F338();
    v68 = sub_22BE33BE8();
    v69(v68);
    sub_22BE29400();
    v70 = sub_22BE29264();
    v71(v70);
    sub_22C25A524();
    TranscriptProtoSystemRequirementUserLocationForSystemRequest.init(handwritten:)();
    if (v0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (v41 == *MEMORY[0x277D1CCE8])
  {
    goto LABEL_20;
  }

  if (v41 == *MEMORY[0x277D1CD00])
  {
    v76 = sub_22C108358();
    sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v76);
    *v77 = 2;
    swift_willThrow();
    v78 = sub_22C259BF0();
    v79(v78);
    goto LABEL_15;
  }

  if (v41 == *MEMORY[0x277D1CCC0] || v41 == *MEMORY[0x277D1CCE0] || v41 == *MEMORY[0x277D1CD08])
  {
LABEL_20:
    v80 = sub_22C259BF0();
    v81(v80);
    goto LABEL_3;
  }

  sub_22C274004();
  __break(1u);
}

void TranscriptProtoAppRequirement.init(handwritten:)()
{
  sub_22BE4111C();
  sub_22C26EBD4();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v0);
  sub_22BE19338();
  v1 = sub_22C25AB58(3);
  type metadata accessor for TranscriptProtoAppRequirement(v1);
  sub_22BE38954();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v2 = sub_22C259870();
  v3(v2);
  v4 = sub_22C1CEBF4();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D1C5D8] || v6 == *MEMORY[0x277D1C5E0] || v6 == *MEMORY[0x277D1C5E8])
  {
    v7 = sub_22BE2590C();
    v8(v7);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

void TranscriptProtoPermissionRequirement.init(handwritten:)()
{
  sub_22BE4111C();
  sub_22C26FEA4();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v0);
  sub_22BE19338();
  v1 = sub_22C25AB58(8);
  type metadata accessor for TranscriptProtoPermissionRequirement(v1);
  sub_22BE38954();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v2 = sub_22C259870();
  v3(v2);
  v4 = sub_22C1CEBF4();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D1CF28] || v6 == *MEMORY[0x277D1CF58] || v6 == *MEMORY[0x277D1CF20] || v6 == *MEMORY[0x277D1CF48] || v6 == *MEMORY[0x277D1CF30] || v6 == *MEMORY[0x277D1CF50] || v6 == *MEMORY[0x277D1CF38] || v6 == *MEMORY[0x277D1CF40])
  {
    v7 = sub_22BE2590C();
    v8(v7);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t sub_22C23CDF0(uint64_t a1, void (*a2)(uint64_t))
{

  v3 = sub_22BE1B18C();
  a2(v3);
  sub_22BE200D4();
  return sub_22BE1AE58();
}

void SystemRequirement.AuthenticationRequest.init(transcript:)()
{
  sub_22BE19130();
  v5 = sub_22BE33FA8();
  v6 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE197B8();
  sub_22C26FA94();
  sub_22BE41130();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE18928();
  MEMORY[0x28223BE20](v11);
  sub_22BE1C17C();
  sub_22C101958();
  if (v1)
  {
LABEL_7:
    sub_22C259948();
    goto LABEL_8;
  }

  v12 = *v0;
  if (v12 != 2)
  {
    sub_22BE29334();
    sub_22BE1AE58();
    v21 = MEMORY[0x277D1CCF8];
    if ((v12 & 1) == 0)
    {
      v21 = MEMORY[0x277D1CCF0];
    }

    (*(v9 + 104))(v4, *v21, v3);
    v22 = sub_22BE196A8();
    v23(v22);
    sub_22BE3D5BC();
    sub_22C26FAA4();
    goto LABEL_7;
  }

  v13 = sub_22BE5CE4C(&qword_27D915678, &qword_22C2CCA08);
  sub_22BE43258(v13);
  sub_22C25A560();
  v14 = sub_22C108598();
  v15 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v14);
  *v16 = v2;
  v16[1] = v3;
  sub_22C25A590(v15, v16, v17, v18, v19, v20);
  sub_22C259948();
  sub_22BE1AE58();
  sub_22BE29334();
LABEL_8:
  sub_22BE1AE58();
  sub_22BE19650();
  sub_22BE18478();
}

void SystemRequirement.UserLocationForSystemRequest.init(transcript:)()
{
  sub_22BE1B214();
  sub_22C25A074();
  if ((*(v1 + 32) & 1) == 0)
  {
    sub_22C1EED38(*(v0 + 24));
  }

  sub_22C26FA34();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE25C6C();
}

void sub_22C23D118()
{
  sub_22BE1B214();
  v3 = v2;
  v5 = v4;
  sub_22C25A05C();
  v7 = v6;
  v9 = v8();
  v10 = sub_22C25A628();
  v5(v10);
  sub_22C25A548();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v3(0);
  sub_22BE18524();
  (*(v11 + 8))(v0);
  *v7 = v9;
  v7[1] = v1;
  sub_22BE25C6C();
}

void TranscriptProtoSystemRequirementAuthenticationRequest.init(handwritten:)()
{
  sub_22BE1B254();
  v2 = sub_22C26FA94();
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE19338();
  v4 = sub_22BE5CE4C(&qword_27D90E880, &unk_22C2AE5E0);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  MEMORY[0x2318A81B0]();
  sub_22C25A08C();
  TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel.init(handwritten:)();
  if (v1)
  {
    sub_22C26FAC4();
    sub_22BE18524();
    (*(v6 + 8))(v0);
  }

  else
  {
    v7 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
    v8 = sub_22BE3C530();
    sub_22BE19DC4(v8, v9, v10, v7);
    v11 = sub_22BE38960();
    v14 = sub_22C259E00(v11, v12, v13);
    type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(v14);
    sub_22BE48874();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26FAC4();
    sub_22BE18524();
    (*(v15 + 8))(v0);
    sub_22BE200D4();
    sub_22BE2343C();
  }

  sub_22C25A6E8();
}

void TranscriptProtoSystemRequirementUserLocationForSystemRequest.init(handwritten:)()
{
  sub_22BE2BB34();
  sub_22C1CECFC();
  v2 = sub_22C26FA44();
  v3 = sub_22C26FA14();
  v5 = v4;
  sub_22C26FA24();
  v7 = v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_22C274284();
  }

  v9 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  sub_22C25AE04(v9);
  sub_22C26FA54();
  sub_22BE18524();
  (*(v10 + 8))(v0);
  *v1 = v2 & 1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v5 & 1;
  *(v1 + 24) = v8;
  *(v1 + 32) = v7 & 1;
  sub_22BEE93D4();
}

uint64_t SystemRequirement.AuthenticationRequest.AuthenticationLevel.init(transcript:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (v4 == 2)
  {
    v5 = sub_22BE5CE4C(&qword_27D915678, &qword_22C2CCA08);
    sub_22C25AA08(v5, v6);
    sub_22BE29328();
    v7 = sub_22C108598();
    v8 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v7);
    *v9 = v2;
    v9[1] = v3;
    sub_22C25A590(v8, v9, v10, v11, v12, v13);
    sub_22BE29334();
    return sub_22BE1AE58();
  }

  else
  {
    sub_22BE29334();
    sub_22BE1AE58();
    sub_22C26FA94();
    sub_22BE1834C();
    if (v4)
    {
      v17 = MEMORY[0x277D1CCF8];
    }

    else
    {
      v17 = MEMORY[0x277D1CCF0];
    }

    return (*(v16 + 104))(a2, *v17);
  }
}

void TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel.init(handwritten:)()
{
  sub_22BE4111C();
  sub_22C26FA94();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v0);
  sub_22BE19338();
  v1 = sub_22C25AB58(2);
  type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(v1);
  sub_22BE38954();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v2 = sub_22C259870();
  v3(v2);
  v4 = sub_22C1CEBF4();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D1CCF0] || v6 == *MEMORY[0x277D1CCF8])
  {
    v7 = sub_22BE2590C();
    v8(v7);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

void ActionSuccess.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v10 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE181D0(v12, v51);
  v13 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE29200(v15);
  v16 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A174();
  v55 = v18;
  v19 = sub_22BE5CE4C(&qword_27D90E8F8, &qword_22C2B5B60);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE29250(v21, v52);
  v22 = sub_22BE5CE4C(&qword_27D911E88, &unk_22C2B5B40);
  sub_22BE19448(v22);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE20168(v24, v53);
  v25 = sub_22BE5CE4C(&qword_27D90E908, &unk_22C2AE600);
  sub_22BE19448(v25);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE35C94(v27, v54);
  v28 = sub_22BE5CE4C(&qword_27D911E90, &unk_22C2CCA10);
  sub_22BE19448(v28);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1AB08();
  sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v30);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v31);
  sub_22BE41E38();
  sub_22C272874();
  sub_22BE179D8();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_22BE1955C();
  type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_22C25A8C4();
  sub_22C101488();
  if (!a10)
  {
    sub_22C25A080();
    v35 = sub_22BE3E79C();
    v36(v35);
    sub_22C25AB1C();
    sub_22C272864();
    v37 = sub_22BE1B074();
    v38(v37);
    sub_22C25A724();
    sub_22BE22814();
    v39 = sub_22C25A524();
    sub_22C100C1C(v39, v40, v41, v42, v43, v44, v45, v46, v33, v55);
    sub_22BE22814();
    sub_22C100EE4();
    sub_22BE22814();

    sub_22C0FD140();
    sub_22C26E614();
    v47 = sub_22BE3D5C8();
    sub_22BE19DC4(v47, v48, v49, v50);
    sub_22C26E974();
  }

  sub_22BE3BFF4();
  sub_22BE1AE58();
  sub_22BEE94B0();
  sub_22BE18478();
}

void SnippetStream.init(transcript:)()
{
  sub_22BE2BB34();
  sub_22BE1B254();
  sub_22C272594();
  sub_22C259488();
  MEMORY[0x28223BE20](v1);
  sub_22BE18928();
  MEMORY[0x28223BE20](v2);
  sub_22C2595A0();
  v3 = sub_22C272874();
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE294E0();
  sub_22C25ABC0();
  sub_22C101488();
  if (!v0)
  {
    sub_22C25A068();
    v5 = sub_22BE18240();
    v6(v5);
    sub_22C272864();
    v7 = sub_22BE25C08();
    v8(v7);
    sub_22C25AD7C();
    sub_22C26EAB4();
  }

  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BEE93D4();
}

void ActionFailure.init(transcript:)()
{
  sub_22BE1B214();
  sub_22C259E88();
  v1 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v1);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE19E64();
  v3 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22BE22BFC();
  v6 = type metadata accessor for TranscriptProtoActionFailureFailure(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE1AD20();
  v8 = sub_22C26E794();
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE1955C();
  sub_22C25ACCC();
  sub_22C104E2C();
  if (!v0)
  {
    sub_22C25A338();
    ActionFailure.Failure.init(transcript:)();
    type metadata accessor for TranscriptProtoActionFailure(0);
    sub_22BE22814();
    sub_22C0FD140();
    sub_22BE33560();
    sub_22C26E834();
  }

  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE25C6C();
}

void TranscriptProtoSnippetStream.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A770();
  sub_22C25A424(v3);
  sub_22C272594();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE2F294();
  sub_22C272874();
  sub_22BE41130();
  MEMORY[0x28223BE20](v5);
  sub_22BE28FD8();
  v6 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A8B4();
  sub_22C26E984();
  sub_22C272854();
  if (v2)
  {
    sub_22C26EAC4();
    sub_22BE18524();
    (*(v8 + 8))(v0);
    v9 = sub_22BE25C94();
    v10(v9);
  }

  else
  {
    v11 = sub_22BE25C94();
    v12(v11);
    v13 = sub_22BE289D8();
    v14(v13);
    v15 = sub_22BE33C68();
    sub_22BE19DC4(v15, v16, v17, v1);
    v18 = sub_22BE38960();
    v21 = sub_22C18F17C(v18, v19, v20, v1);
    type metadata accessor for TranscriptProtoSnippetStream(v21);
    sub_22BE48874();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26EAC4();
    sub_22BE18524();
    (*(v22 + 8))(v0);
    sub_22BE33FCC();
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t TranscriptProtoValueDisambiguation.init(handwritten:)()
{
  sub_22C1CECFC();
  v4 = sub_22C26FD84();
  sub_22C220C88(v4);
  if (v0)
  {
    sub_22C26FD94();
    sub_22BE18524();
    return (*(v5 + 8))(v1);
  }

  else
  {
    v7 = sub_22BE48298();
    type metadata accessor for TranscriptProtoValueDisambiguation(v7);
    sub_22C25A0A4();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26FD94();
    sub_22BE18524();
    result = (*(v8 + 8))(v1);
    *v2 = v3;
  }

  return result;
}

void TranscriptProtoActionFailure.init(handwritten:)()
{
  sub_22BE1B214();
  sub_22BE271BC();
  v2 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v2);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE3100C();
  v6 = sub_22C26E794();
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE294E0();
  v8 = sub_22BE5CE4C(&qword_27D90E8B8, &qword_22C2B5B50);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE234F4();
  sub_22C26E844();
  sub_22C25A338();
  TranscriptProtoActionFailureFailure.init(handwritten:)();
  if (v1)
  {
    sub_22C26E854();
    sub_22BE18524();
    (*(v10 + 8))(v0);
  }

  else
  {
    v11 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
    v12 = sub_22C25974C();
    sub_22BE19DC4(v12, v13, v14, v11);
    sub_22C26E824();
    sub_22C25A610();
    sub_22BE46914();
    v15 = sub_22BE38960();
    v18 = sub_22BE3FEC8(v15, v16, v17);
    type metadata accessor for TranscriptProtoActionFailure(v18);
    type metadata accessor for TranscriptProtoStatementID(0);
    v19 = sub_22C259DDC();
    sub_22BE19DC4(v19, v20, v21, v22);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26E854();
    sub_22BE18524();
    (*(v23 + 8))(v0);
    sub_22BE39EAC();
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BE25C6C();
}

void ResponseManifest.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = v12;
  sub_22C18F934(v14);
  sub_22C26F7D4();
  sub_22BE179D8();
  v57 = v16;
  v58 = v15;
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  sub_22BE32C08();
  MEMORY[0x28223BE20](v17);
  sub_22C10887C(v18, v19, v20, v21, v22, v23, v24, v25, v52);
  v26 = sub_22BE5CE4C(&qword_27D90EC08, &unk_22C2CCA20);
  sub_22BE19448(v26);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE20168(v28, v53);
  v29 = sub_22BE5CE4C(&qword_27D911E68, &qword_22C2B5B18);
  sub_22BE19448(v29);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE2564C(v31);
  v32 = sub_22BE5CE4C(&qword_27D90EC18, &unk_22C2AE700);
  sub_22BE19448(v32);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE234F4();
  v34 = sub_22BE5CE4C(&qword_27D911E78, &qword_22C2B5B28);
  sub_22BE19448(v34);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE19668();
  v36 = sub_22BE5CE4C(&qword_27D90EC28, &unk_22C2CCA30);
  sub_22BE19448(v36);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E64();
  v38 = sub_22BE5CE4C(&qword_27D911E80, &unk_22C2B5B30);
  sub_22BE19448(v38);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE23E58();

  sub_22C0FB054(v40, v41, v42, v43, v44, v45, v46, v47, v54, v55);
  v48 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22C25A368();
  sub_22BE22814();
  sub_22BE489C8();
  sub_22C100108();
  sub_22C25AC20(*(v48 + 24));
  sub_22BE22814();
  sub_22C100304();
  if (v10)
  {

    sub_22C259C58();
    sub_22BE233E8(v11, &qword_27D911E80, &unk_22C2B5B30);
  }

  else
  {
    sub_22BE22814();
    sub_22C1004D8();
    v49 = MEMORY[0x277D1CB68];
    if (*(v13 + *(v48 + 40)))
    {
      v49 = MEMORY[0x277D1CB60];
    }

    (*(v57 + 104))(v56, *v49, v58);
    v50 = sub_22BE25C94();
    v51(v50);

    sub_22C26F7E4();
    sub_22C259C58();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t ResponseManifest.ResponseDialogPresentationHint.init(transcript:)()
{
  sub_22C259EE8();
  sub_22C26F7D4();
  sub_22BE1834C();
  v3 = MEMORY[0x277D1CB60];
  if (!v1)
  {
    v3 = MEMORY[0x277D1CB68];
  }

  return (*(v2 + 104))(v0, *v3);
}

void TranscriptProtoResponseManifest.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  v16 = v15;
  v75 = v17;
  v18 = sub_22BE5CE4C(&qword_27D911E68, &qword_22C2B5B18);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1BCE8(v20, v67);
  v21 = sub_22BE5CE4C(&qword_27D90EC08, &unk_22C2CCA20);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A8B4();
  v23 = sub_22BE5CE4C(&qword_27D911E70, &qword_22C2B5B20);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE2C64C();
  v25 = sub_22BE5CE4C(&qword_27D911E78, &qword_22C2B5B28);
  sub_22BE19448(v25);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1B72C();
  v27 = sub_22BE5CE4C(&qword_27D90EC18, &unk_22C2AE700);
  sub_22BE19448(v27);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE234F4();
  v29 = sub_22BE5CE4C(&qword_27D911E80, &unk_22C2B5B30);
  sub_22BE19448(v29);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE19E64();
  v31 = sub_22BE5CE4C(&qword_27D90EC28, &unk_22C2CCA30);
  sub_22BE19448(v31);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE23E58();
  v33 = MEMORY[0x2318A7EF0]();
  if (!v33)
  {
    v33 = MEMORY[0x277D84F90];
  }

  sub_22C1C6FC0(v33, v34, v35, v36, v37, v38, v39, v40, v68, v70);
  v42 = v41;
  sub_22C26F854();
  sub_22BE489C8();
  sub_22C1064B8();
  sub_22C26F864();
  sub_22C259FDC();
  sub_22C1066D8();
  if (v13)
  {

    sub_22C26F874();
    sub_22BE18524();
    (*(v43 + 8))(v16);
    sub_22BE233E8(v14, &qword_27D90EC28, &unk_22C2CCA30);
  }

  else
  {
    v74 = v42;
    v44 = sub_22C26F804();
    v46 = v45;
    v47 = sub_22C26F824();
    v49 = v48;
    v50 = sub_22C26F834();
    sub_22C26F844();
    sub_22C1068A8();
    v72 = v47;
    v73 = v46;
    sub_22C26F814();
    sub_22C106AEC();
    v51 = type metadata accessor for TranscriptProtoResponseManifest(0);
    type metadata accessor for TranscriptProtoResponseDialog(0);
    sub_22BE1A140();
    sub_22BE19DC4(v52, v53, v54, v55);
    type metadata accessor for TranscriptProtoResponseVisual(0);
    sub_22BE1A140();
    sub_22BE19DC4(v56, v57, v58, v59);
    v60 = (v75 + v51[7]);
    v69 = (v75 + v51[8]);
    v61 = v51[10];
    v71 = v51[9];
    *(v75 + v61) = 2;
    type metadata accessor for TranscriptProtoUIType(0);
    sub_22BE1A140();
    sub_22BE19DC4(v62, v63, v64, v65);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26F874();
    sub_22BE18524();
    (*(v66 + 8))(v16);
    *v75 = v74;
    sub_22BE2343C();
    sub_22BE2343C();
    *v60 = v44;
    v60[1] = v73;
    *v69 = v72;
    v69[1] = v49;
    *(v75 + v71) = v50;
    *(v75 + v61) = a13;
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoResponseDialogPresentationHint.init(handwritten:)()
{
  sub_22BE4111C();
  sub_22C26F7D4();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v0);
  sub_22BE19338();
  v1 = sub_22C259870();
  v2(v1);
  v3 = sub_22C1CEBF4();
  v5 = v4(v3);
  if (v5 == *MEMORY[0x277D1CB68] || v5 == *MEMORY[0x277D1CB60])
  {
    v7 = sub_22BE2590C();
    v8(v7);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t ResponseParameter.init(transcript:)()
{
  sub_22C25A7F8();

  v0 = sub_22BE29454();
  sub_22BF1C1E4(v0, v1);

  sub_22C259F24();
  sub_22C26F9A4();
  sub_22BE26148();
  return sub_22BE1AE58();
}

uint64_t TranscriptProtoResponseParameter.init(handwritten:)()
{
  sub_22C259E88();
  sub_22C26F9B4();
  sub_22C25A560();
  v6 = sub_22C26F9D4();
  v15 = v7;
  v16 = v6;
  sub_22C26F9C4();
  sub_22C1CF16C();
  v8 = sub_22C26F9F4();
  v9 = sub_22C26F9E4();
  v11 = v10;
  v12 = sub_22C26F994();
  *(v0 + 16) = xmmword_22C28E6A0;
  type metadata accessor for TranscriptProtoResponseParameter(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26FA04();
  sub_22BE18524();
  (*(v13 + 8))(v1);
  *v0 = v2;
  *(v0 + 8) = v3;
  result = sub_22BF158B4(*(v0 + 16), *(v0 + 24));
  *(v0 + 16) = v16;
  *(v0 + 24) = v15;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 48) = v8;
  *(v0 + 56) = v9;
  *(v0 + 64) = v11;
  *(v0 + 72) = v12;
  return result;
}

void ResponseDialog.init(transcript:)()
{
  sub_22BE19460();
  sub_22BE28CF0();
  sub_22C25A7F8();

  sub_22C25A84C();
  sub_22C259F24();
  sub_22C26F2D4();
  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE1AABC();
}

void TranscriptProtoResponseDialog.init(handwritten:)()
{
  sub_22BE19460();
  sub_22C259E88();
  v7 = sub_22C26F2E4();
  v9 = v8;
  sub_22C26F2F4();
  sub_22C25A560();
  sub_22C26F2B4();
  sub_22C1CF16C();
  v10 = sub_22C26F2C4();
  v11 = sub_22C25A77C();
  type metadata accessor for TranscriptProtoResponseDialog(v11);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26F304();
  sub_22BE18524();
  (*(v12 + 8))(v1);
  *v0 = v7;
  v0[1] = v9;
  v0[2] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[5] = v5;
  v0[6] = v10;
  v0[7] = v6;
  sub_22BE1AABC();
}

void ResponseVisual.init(transcript:)()
{
  sub_22BE19130();
  sub_22C18F140();
  sub_22BE36638(v4);
  v5 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E94();
  v97 = v8;
  v9 = sub_22BE5CE4C(&qword_27D9091D0, &qword_22C27FDC8);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v12 = sub_22C25984C(v11);
  v102 = type metadata accessor for TranscriptProtoLabel(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v96 = v14;
  v15 = sub_22BE183BC();
  v16 = type metadata accessor for TranscriptProtoUILabel(v15);
  v17 = sub_22BE17A18(v16);
  v103 = v18;
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  sub_22C259D70();
  MEMORY[0x28223BE20](v19);
  sub_22C259BC0();
  v99 = sub_22C26F6D4();
  sub_22BE179D8();
  v101 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22BE17A44();
  v95 = v22;
  v23 = sub_22BE183BC();
  v24 = type metadata accessor for TranscriptProtoResponseVisualOptions(v23);
  v25 = sub_22BE19448(v24);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  sub_22BE183BC();
  v26 = sub_22C26F554();
  v27 = sub_22BE19448(v26);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v29 = sub_22BE18950(v28);
  v30 = type metadata accessor for TranscriptProtoUIType(v29);
  v31 = sub_22BE17A18(v30);
  v33 = v32;
  MEMORY[0x28223BE20](v31);
  sub_22BE28A70(v34, v89);
  MEMORY[0x28223BE20](v35);
  sub_22BE41E38();
  v107 = sub_22C26F674();
  sub_22BE179D8();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  sub_22BE3C444(v39, v90);
  v94 = v0;
  v40 = *v0;
  v41 = MEMORY[0x277D84F90];
  v93 = v1;
  if (*(*v0 + 16))
  {
    v42 = sub_22C25A000();
    v104 = v43;
    sub_22BE71578(v42, v43, 0);
    v44 = 0;
    sub_22BE19E14();
    v106 = v40 + v45;
    while (1)
    {
      if (v44 >= *(v40 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_22BE1AA68(v106 + *(v33 + 72) * v44, v3);
      sub_22BE1AA68(v3, v109);
      ResponseVisual.UIType.init(transcript:)(v109, v46, v47, v48, v49, v50, v51, v52, v91, v92);
      if (v2)
      {
        break;
      }

      v110 = 0;
      sub_22BE3D53C();
      sub_22BE1AE58();
      v54 = *(v41 + 16);
      v53 = *(v41 + 24);
      if (v54 >= v53 >> 1)
      {
        v56 = sub_22BE3D1E4(v53);
        sub_22BE71578(v56, v54 + 1, 1);
      }

      ++v44;
      *(v41 + 16) = v54 + 1;
      sub_22BE19E14();
      (*(v37 + 32))(v41 + v55 + *(v37 + 72) * v54, v111, v107);
      v2 = 0;
      if (v104 == v44)
      {
        goto LABEL_10;
      }
    }

    sub_22BE3D53C();
    sub_22BE1AE58();
    sub_22BE26240();
    sub_22BE1AE58();
LABEL_20:

    goto LABEL_24;
  }

  v110 = v2;
LABEL_10:
  v57 = v94[1];
  v58 = *(v57 + 16);
  if (!v58)
  {
LABEL_21:
    type metadata accessor for TranscriptProtoResponseVisual(0);
    sub_22C101588();
    if (v110)
    {
      sub_22BE26240();
      sub_22BE1AE58();
    }

    else
    {
      sub_22BE2BD40();
      sub_22C26F534();
      sub_22C0E9830();
      sub_22BE1AE58();
      sub_22C1CF148();
      sub_22BE18240();
      sub_22C26F564();
      sub_22BE26240();
      sub_22BE1AE58();
    }

LABEL_24:
    sub_22BE19650();
    sub_22BE18478();
    return;
  }

  v113 = MEMORY[0x277D84F90];
  v59 = sub_22C259F98();
  sub_22BE71520(v59, v60, v61);
  v62 = v1;
  v63 = 0;
  sub_22BE19E14();
  v112 = v57 + v64;
  v105 = *MEMORY[0x277D1CA90];
  v108 = v57;
  while (v63 < *(v57 + 16))
  {
    sub_22BE1AA68(v112 + *(v103 + 72) * v63, v62);
    v65 = sub_22BE2684C();
    sub_22BE1AA68(v65, v66);
    sub_22BE22814();
    v67 = sub_22BE391E8();
    sub_22BE1AB5C(v67, v68, v102);
    if (v69)
    {

      sub_22BE233E8(v100, &qword_27D9091D0, &qword_22C27FDC8);
      v81 = sub_22BE5CE4C(&qword_27D911E60, &qword_22C2B5B10);
      sub_22BE3369C(v81);
      sub_22BE3D554();
      v82 = sub_22C108598();
      v83 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v82);
      sub_22C259EA0(v83, v84, v85, v86, v87, v88);
      sub_22C25A314();
      sub_22BE1AE58();
      sub_22BE1B074();
      sub_22BE1AE58();
      sub_22BE26240();
      sub_22BE1AE58();
      goto LABEL_20;
    }

    v70 = sub_22BE19EBC();
    sub_22BE3B620(v70, v96);
    v71 = sub_22BE19EBC();
    sub_22BE3B620(v71, v97);
    v72 = sub_22C1088E8();
    sub_22BE1AA68(v72, v98);

    sub_22BE354D0();
    v73 = v99;
    MEMORY[0x2318A7D90]();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22C25A314();
    sub_22BE1AE58();
    sub_22BE1B074();
    sub_22BE1AE58();
    (*(v101 + 104))(v95, v105, v99);
    v75 = *(v113 + 16);
    v74 = *(v113 + 24);
    if (v75 >= v74 >> 1)
    {
      sub_22BE3D1E4(v74);
      sub_22BE31778();
      sub_22BE71520(v78, v79, v80);
      v73 = v99;
      v62 = v93;
    }

    ++v63;
    *(v113 + 16) = v75 + 1;
    sub_22BE25AD8();
    (*(v77 + 32))(v113 + v76 + *(v77 + 72) * v75, v95, v73);
    v57 = v108;
    if (v58 == v63)
    {
      goto LABEL_21;
    }
  }

LABEL_26:
  __break(1u);
}

void ResponseVisual.UIType.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  sub_22C25A554(v15);
  v16 = sub_22C2729D4();
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v18 = sub_22BE5CE4C(&qword_27D911E40, &qword_22C2B5AD8);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE36644(v20);
  v69 = sub_22C26F674();
  sub_22BE179D8();
  v73 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  v24 = sub_22C259814(v23);
  v25 = type metadata accessor for TranscriptProtoControlPayload(v24);
  v26 = sub_22BE19448(v25);
  MEMORY[0x28223BE20](v26);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v27);
  v36 = sub_22BE22D7C(v28, v29, v30, v31, v32, v33, v34, v35, v66);
  v37 = type metadata accessor for TranscriptProtoPluginSnippetPayload(v36);
  v38 = sub_22BE19448(v37);
  MEMORY[0x28223BE20](v38);
  sub_22BE18928();
  MEMORY[0x28223BE20](v39);
  v40 = sub_22BE41E38();
  v41 = type metadata accessor for TranscriptProtoLiveActivityPayload(v40);
  v42 = sub_22BE19448(v41);
  MEMORY[0x28223BE20](v42);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v43);
  v44 = sub_22C2595B4();
  v45 = type metadata accessor for TranscriptProtoArchiveViewPayload(v44);
  v46 = sub_22BE19448(v45);
  MEMORY[0x28223BE20](v46);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v47);
  v48 = sub_22BE195C4();
  type metadata accessor for TranscriptProtoUitype(v48);
  sub_22BE18000();
  MEMORY[0x28223BE20](v49);
  sub_22BE197B8();
  sub_22C101868();
  if (a10)
  {
    sub_22BE3D53C();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE37490();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v64 = sub_22BE19EBC();
        sub_22BE3B620(v64, v14);
        v65 = sub_22C259E7C();
        sub_22BE1AA68(v65, v10);

        sub_22BE1B5EC();
        sub_22C26F604();
        sub_22BE3D53C();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE3C968();
        sub_22BE1AE58();
        (*(v73 + 104))(v70, *MEMORY[0x277D1CA28], v69);
        break;
      case 2u:
        v54 = sub_22BE19EBC();
        sub_22BE3B620(v54, v55);
        v56 = sub_22C259E7C();
        sub_22BE1AA68(v56, v12);
        v57 = sub_22BE19454();
        sub_22BE29D7C(v57, v58);

        v59 = sub_22BE19454();
        MEMORY[0x2318A7D40](v59);
        sub_22BE3D53C();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE3C968();
        sub_22BE1AE58();
        (*(v73 + 104))(v70, *MEMORY[0x277D1CA30], v69);
        break;
      case 3u:
        v60 = sub_22BE19EBC();
        sub_22BE3B620(v60, v71);
        v61 = sub_22C1088AC();
        sub_22BE1AA68(v61, v67);
        v62 = sub_22BE19454();
        sub_22BE29D7C(v62, v63);
        sub_22BE19454();
        sub_22C2729C4();
        sub_22C25AD70();
        sub_22C101768();
        sub_22BE233E8(v68, &qword_27D911E40, &qword_22C2B5AD8);
        sub_22C26F594();
        sub_22BE3D53C();
        sub_22BE1AE58();
        sub_22C25A2FC();
        sub_22BE1AE58();
        sub_22BE39EAC();
        sub_22BE1AE58();
        (*(v73 + 104))(v72, *MEMORY[0x277D1CA80], v69);
        (*(v73 + 32))(v70, v72, v69);
        break;
      default:
        v50 = sub_22BE19EBC();
        sub_22BE3B620(v50, v13);
        v51 = sub_22BE44744();
        sub_22BE1AA68(v51, v11);
        v52 = sub_22BE19454();
        sub_22BE29D7C(v52, v53);

        sub_22BE19454();
        sub_22C26F5E4();
        sub_22BE3D53C();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE3C968();
        sub_22BE1AE58();
        (*(v73 + 104))(v70, *MEMORY[0x277D1CA20], v69);
        break;
    }
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ResponseVisual.UILabel.init(transcript:)()
{
  sub_22BE2BB34();
  v4 = sub_22BE1B254();
  v5 = type metadata accessor for TranscriptProtoUIConfirmationLabel(v4);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C2595A0();
  v9 = type metadata accessor for TranscriptProtoLabel(v8);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE1955C();
  sub_22C101678();
  if (v1)
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
  }

  else
  {
    v11 = sub_22C1088AC();
    sub_22BE3B620(v11, v3);
    v12 = sub_22C1088E8();
    sub_22BE1AA68(v12, v2);

    v13 = sub_22BE236C8();
    MEMORY[0x2318A7D90](v13);
    sub_22C0E9A74();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE36680();
    sub_22BE1AE58();
    v14 = *MEMORY[0x277D1CA90];
    sub_22C26F6D4();
    sub_22BE1834C();
    (*(v15 + 104))(v0, v14);
  }

  sub_22BEE93D4();
}

uint64_t ResponseVisual.ResponseVisualOptions.init(transcript:)()
{
  sub_22C25A074();
  sub_22C26F534();
  sub_22C0E9A74();
  return sub_22BE1AE58();
}

void TranscriptProtoResponseVisual.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v138 = v25;
  v26 = sub_22BE5CE4C(&qword_27D9091D0, &qword_22C27FDC8);
  sub_22BE19448(v26);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22C25984C(v28);
  v147 = sub_22C26F6C4();
  sub_22BE179D8();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  v146 = v33;
  sub_22BE183BC();
  sub_22C26F6D4();
  sub_22BE179D8();
  v149 = v35;
  v150 = v34;
  MEMORY[0x28223BE20](v34);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v36);
  sub_22BEC0508();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E94();
  v148 = v38;
  v39 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoUILabel(v39);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v40);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v41);
  sub_22BE19E94();
  v145 = v42;
  sub_22BE183BC();
  v43 = sub_22C26F554();
  v44 = sub_22BE18910(v43, &v153);
  MEMORY[0x28223BE20](v44);
  sub_22BE17A44();
  sub_22BE190A8(v45);
  v46 = sub_22BE5CE4C(&qword_27D90EC58, &unk_22C2AE710);
  sub_22BE19448(v46);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE1A174();
  sub_22BE18950(v48);
  v49 = sub_22C26F674();
  sub_22BE179D8();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  sub_22BE17B98();
  v153 = v53;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v54);
  v55 = sub_22BE39EE8();
  v56 = type metadata accessor for TranscriptProtoUIType(v55);
  v57 = sub_22BE17A18(v56);
  MEMORY[0x28223BE20](v57);
  sub_22BE17A44();
  v155 = v58;
  v59 = MEMORY[0x2318A7C70]();
  v60 = *(v59 + 16);
  v139 = v24;
  if (v60)
  {
    v143 = v30;
    a10 = MEMORY[0x277D84F90];
    v154 = v59;
    v151 = v60;
    sub_22BE70B1C(0, v60, 0);
    v61 = 0;
    v62 = a10;
    sub_22BE19E14();
    v152 = v63 + v64;
    sub_22C25A634();
    while (v61 < *(v65 + 16))
    {
      v66 = *(v51 + 16);
      v66(v20, v152 + *(v51 + 72) * v61, v49);
      v67 = sub_22C259FF4();
      (v66)(v67);
      TranscriptProtoUIType.init(handwritten:)();
      if (&a10)
      {

        sub_22C26F6F4();
        sub_22BE18524();
        (*(v75 + 8))(v139);
        v76 = sub_22BE33B3C();
        v77(v76);

        goto LABEL_21;
      }

      (*(v51 + 8))(v20, v49);
      a10 = v62;
      v69 = *(v62 + 16);
      v68 = *(v62 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_22BE1AAE4(v68);
        sub_22BE39E18();
        sub_22BE70B1C(v72, v73, v74);
        sub_22C25A634();
        v62 = a10;
      }

      ++v61;
      *(v62 + 16) = v69 + 1;
      sub_22BE25AD8();
      sub_22BE3B620(v155, v62 + v70 + *(v71 + 72) * v69);
      v65 = v154;
      if (v151 == v61)
      {
        v136 = v62;

        v24 = v139;
        v30 = v143;
        goto LABEL_11;
      }
    }

    goto LABEL_23;
  }

  sub_22C25A4F4(MEMORY[0x277D84F90]);
LABEL_11:
  v78 = sub_22C26F684();
  v79 = *(v78 + 16);
  v80 = v150;
  if (v79)
  {
    v81 = sub_22BE3122C(MEMORY[0x277D84F90]);
    sub_22BE70AC4(v81, v79, 0);
    v82 = 0;
    v155 = a10;
    sub_22BE25AD8();
    sub_22BE417A8(v78 + v83);
    sub_22BE36638(v84 + 16);
    sub_22C1CEFB0(v85 + 88);
    v141 = *MEMORY[0x277D1CA90];
    v140 = (v86 + 8);
    v87 = v148;
    v144 = v78;
    while (v82 < *(v78 + 16))
    {
      v88 = *(v149 + 72);
      v154 = v82;
      v89 = v142 + v88 * v82;
      v90 = *(v149 + 16);
      v90(v87, v89, v80);
      v91 = sub_22C259FF4();
      (v90)(v91);
      type metadata accessor for TranscriptProtoLabel(0);
      sub_22BE1A140();
      v153 = v92;
      sub_22BE19DC4(v93, v94, v95, v92);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v96 = sub_22BE2BA80();
      (v90)(v96);
      v97 = sub_22BE38FD8();
      if (v98(v97) != v141)
      {
        goto LABEL_24;
      }

      sub_22BE33554();
      v99 = sub_22BE38FD8();
      v100(v99);
      sub_22BE33554();
      v101 = sub_22BE36658();
      v102(v101);
      sub_22BE33554();
      v103 = sub_22BE336E8();
      v104(v103);
      sub_22C26F6A4();
      sub_22C26F654();
      type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v105 = *(v30 + 8);
      v106 = sub_22BE31038();
      v105(v106);
      v80 = v150;
      (v105)(v146, v147);
      v107 = *v140;
      v108 = sub_22BE2590C();
      v107(v108);
      v109 = sub_22BE33560();
      v107(v109);
      sub_22C25AAD0();
      v110 = sub_22BE22B8C();
      sub_22BE19DC4(v110, v111, v112, v153);
      sub_22BE23108();
      sub_22BE2343C();
      v113 = sub_22C259E7C();
      sub_22BE3B620(v113, v145);
      v114 = v155;
      a10 = v155;
      v116 = *(v155 + 16);
      v115 = *(v155 + 24);
      if (v116 >= v115 >> 1)
      {
        sub_22BE3D1E4(v115);
        sub_22BE31778();
        sub_22BE70AC4(v120, v121, v122);
        v114 = a10;
      }

      v82 = v154 + 1;
      *(v114 + 16) = v116 + 1;
      sub_22BE25AD8();
      v155 = v117;
      sub_22BE46DDC();
      v118 = sub_22C1088AC();
      sub_22BE3B620(v118, v119);
      v78 = v144;
      v87 = v148;
      if (v79 == v82)
      {

        v24 = v139;
        v123 = v155;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_22BE3FFAC();
    __break(1u);
    return;
  }

  v123 = MEMORY[0x277D84F90];
LABEL_20:
  sub_22BE3C6E0();
  sub_22C26F6E4();
  type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  sub_22C25A374();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v124 = sub_22C26F544();
  sub_22BE1B5D4();
  v125(v78);
  *v137 = v124 & 1;
  sub_22BE25FFC();
  v130 = sub_22C18F17C(v126, v127, v128, v129);
  type metadata accessor for TranscriptProtoResponseVisual(v130);
  sub_22BE46004();
  sub_22BE32EE0();
  sub_22C25AE64(v131, v132, v133, v134);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26F6F4();
  sub_22BE18524();
  (*(v135 + 8))(v24);
  *v138 = v136;
  v138[1] = v123;
  sub_22C25AB4C();
  sub_22BE2343C();
  sub_22C25A634();
LABEL_21:
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoUIType.init(handwritten:)()
{
  sub_22BE19130();
  v5 = v4;
  sub_22BE4066C();
  sub_22C26F5A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E94();
  sub_22BE183BC();
  sub_22C26F664();
  sub_22BE179D8();
  v93 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E94();
  sub_22BE183BC();
  sub_22C26F624();
  sub_22BE179D8();
  v97 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E94();
  v14 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22C2595A0();
  sub_22C26F5F4();
  sub_22BE179D8();
  v100 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22BE25544();
  MEMORY[0x28223BE20](v19);
  sub_22BE19E94();
  sub_22BE183BC();
  sub_22C26F674();
  sub_22C2594A0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22BE197B8();
  v23 = type metadata accessor for TranscriptProtoUitype(0);
  sub_22C259804();
  v28 = sub_22C18F17C(v24, v25, v26, v27);
  type metadata accessor for TranscriptProtoUIType(v28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25A068();
  v29(v0, v5, v3);
  sub_22C25AA50();
  v30 = sub_22BE1B62C();
  v32 = v31(v30);
  if (v32 == *MEMORY[0x277D1CA20])
  {
    v33 = sub_22BE431CC();
    v34(v33, v3);
    sub_22C25A35C();
    v35 = sub_22BE200D4();
    v36(v35);
    sub_22C259E94();
    sub_22C25A1E8();
    v37();
    sub_22C26F5D4();
    sub_22C26F5C4();
    v38 = sub_22C26F5B4();
    v94 = v39;
    v95 = v38;
    type metadata accessor for TranscriptProtoArchiveViewPayload(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v40 = *(v100 + 8);
    v41 = sub_22BE18944();
    v40(v41);
    sub_22C25AAD0();
    v2[4] = v95;
    v2[5] = v94;
    (*(v21 + 8))(v5, v3);
    v42 = sub_22BE200D4();
    v40(v42);
    sub_22BE25C08();
  }

  else
  {
    v103 = v23;
    if (v32 != *MEMORY[0x277D1CA28])
    {
      v23 = v3;
      if (v32 == *MEMORY[0x277D1CA80])
      {
        v59 = sub_22BE260B8();
        v60(v59);
        sub_22C18F338();
        v61 = sub_22BE291B0();
        v62(v61);
        sub_22BE29400();
        v63 = sub_22BE18240();
        v64(v63);
        sub_22C25A5F8();
        TranscriptProtoControlPayload.init(handwritten:)();
        if (!v1)
        {
          v89 = sub_22BE3CEF4();
          v90(v89);
          v91 = sub_22BE291B0();
          v92(v91);
          sub_22C0E9A5C();
          swift_storeEnumTagMultiPayload();
          goto LABEL_6;
        }

        v65 = sub_22BE3CEF4();
        v66(v65);
        v67 = sub_22BE291B0();
        v68(v67);
      }

      else
      {
        if (v32 == *MEMORY[0x277D1CA30])
        {
          v69 = sub_22BE260B8();
          v70(v69);
          sub_22C18F338();
          v71 = sub_22BE3C968();
          v72(v71);
          sub_22BE29400();
          v73 = sub_22BE3E8FC();
          v74(v73);
          v75 = sub_22C26F634();
          v99 = v76;
          v102 = v75;
          v77 = sub_22C26F654();
          v96 = v78;
          v98 = v77;
          type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
          sub_22C25A4E8();
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          v79 = sub_22BE3CEF4();
          v80(v79);
          v23 = *(v93 + 8);
          v81 = sub_22BE18944();
          v23(v81);
          v82 = sub_22BE3C968();
          v23(v82);
          *v2 = v102;
          v2[1] = v99;
          v2[2] = v98;
          v2[3] = v96;
          sub_22C0E9A5C();
          swift_storeEnumTagMultiPayload();
          goto LABEL_6;
        }

        v83 = sub_22C108358();
        v84 = sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v83);
        sub_22BE3C904(v84, v85);
        v86 = *(v21 + 8);
        v87 = sub_22BE3CEF4();
        v86(v87);
        v88 = sub_22BE260B8();
        v86(v88);
      }

      sub_22BE3D53C();
      sub_22BE1AE58();
      goto LABEL_7;
    }

    v43 = sub_22BE431CC();
    v44(v43, v3);
    sub_22C25A35C();
    v45 = sub_22BE1B074();
    v46(v45);
    sub_22C1CF23C();
    v47 = sub_22BE261AC();
    v48(v47);
    v49 = sub_22C26F614();
    v101 = v50;
    type metadata accessor for TranscriptProtoLiveActivityPayload(0);
    sub_22C25A548();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v51 = sub_22BE33BE8();
    v52(v51);
    v53 = *(v97 + 8);
    v54 = sub_22BE1B73C();
    v53(v54);
    v55 = sub_22C259FF4();
    v53(v55);
    v23 = v103;
    *v2 = v49;
    v2[1] = v101;
    sub_22BE25C08();
  }

  swift_storeEnumTagMultiPayload();
LABEL_6:
  v56 = sub_22BE22B8C();
  sub_22BE19DC4(v56, v57, v58, v23);
  sub_22C25A6D0();
  sub_22BE2343C();
LABEL_7:
  sub_22BE1AB28();
  sub_22BE18478();
}

void TranscriptProtoUILabel.init(handwritten:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D9091D0, &qword_22C27FDC8);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE22BFC();
  v6 = sub_22C26F6C4();
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE25544();
  MEMORY[0x28223BE20](v10);
  sub_22BE22D7C(v11, v12, v13, v14, v15, v16, v17, v18, v47);
  v19 = sub_22C26F6D4();
  sub_22BE179D8();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22BE197B8();
  type metadata accessor for TranscriptProtoLabel(0);
  sub_22BE1A140();
  v50 = v23;
  v27 = sub_22C18F17C(v24, v25, v26, v23);
  type metadata accessor for TranscriptProtoUILabel(v27);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE36288();
  v28(v0, v3, v19);
  v29 = sub_22BE29264();
  if (v30(v29) == *MEMORY[0x277D1CA90])
  {
    sub_22C25A32C();
    v31 = sub_22BE29264();
    v32(v31);
    sub_22C25A35C();
    v33 = sub_22BE291B0();
    v34(v33);
    v35 = sub_22C259E94();
    v36(v35, v51, v6);
    v37 = sub_22C26F6A4();
    v48 = v38;
    v49 = v37;
    v39 = sub_22C26F654();
    v40 = sub_22BE32C3C();
    type metadata accessor for TranscriptProtoUIConfirmationLabel(v40);
    sub_22C25A840();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v21 + 8))(v3, v19);
    v41 = *(v8 + 8);
    v42 = sub_22BE261AC();
    v41(v42);
    v43 = sub_22BE36318();
    v41(v43);
    *v1 = v49;
    v1[1] = v48;
    v1[2] = v39;
    v1[3] = v0;
    v44 = sub_22BE3C530();
    sub_22BE19DC4(v44, v45, v46, v50);
    sub_22BE2343C();
    sub_22BE3C298();
    sub_22BE18478();
  }

  else
  {
    sub_22C274004();
    __break(1u);
  }
}

uint64_t TranscriptProtoResponseVisualOptions.init(handwritten:)()
{
  sub_22C1CECFC();
  type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  sub_22C25A0A4();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v2 = sub_22C26F544();
  sub_22C26F554();
  sub_22BE18524();
  result = (*(v3 + 8))(v0);
  *v1 = v2 & 1;
  return result;
}

void ResponseVisual.UIType.ArchivedViewPayload.init(transcript:)()
{
  sub_22BE3C358();
  sub_22BE28CF0();
  sub_22C25A7F8();
  v0 = sub_22BE191CC();
  sub_22BE29D7C(v0, v1);

  sub_22C25A84C();
  sub_22C259F24();
  sub_22C26F5E4();
  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE267B8();
}

void ResponseVisual.UIType.ControlPayload.init(transcript:)()
{
  sub_22BE1B214();
  sub_22BE3C4D0();
  v2 = sub_22C2729D4();
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE19338();
  v4 = sub_22BE5CE4C(&qword_27D911E40, &qword_22C2B5AD8);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE234F4();
  v6 = sub_22BE31038();
  sub_22BE29D7C(v6, v7);
  sub_22BE31038();
  sub_22C2729C4();
  sub_22C101768();
  if (v0)
  {
    sub_22BE26148();
    sub_22BE1AE58();
    sub_22BE233E8(v1, &qword_27D911E40, &qword_22C2B5AD8);
  }

  else
  {
    sub_22BE233E8(v1, &qword_27D911E40, &qword_22C2B5AD8);
    sub_22C25A610();
    sub_22C26F594();
    sub_22BE26148();
    sub_22BE1AE58();
  }

  sub_22BE36324();
  sub_22BE25C6C();
}

uint64_t ResponseVisual.UILabel.UIConfirmationPayload.init(transcript:)()
{
  sub_22BE28CF0();

  sub_22C25A84C();
  sub_22C259F24();
  MEMORY[0x2318A7D90]();
  sub_22BE26148();
  return sub_22BE1AE58();
}

void TranscriptProtoArchiveViewPayload.init(handwritten:)()
{
  sub_22BE3C358();
  sub_22C259E88();
  v5 = sub_22C26F5D4();
  v7 = v6;
  sub_22C26F5C4();
  sub_22C25A560();
  v8 = sub_22C26F5B4();
  v9 = sub_22C25A628();
  type metadata accessor for TranscriptProtoArchiveViewPayload(v9);
  sub_22C25AAB8();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26F5F4();
  sub_22BE18524();
  (*(v10 + 8))(v1);
  *v0 = v5;
  v0[1] = v7;
  v0[2] = v2;
  v0[3] = v3;
  v0[4] = v8;
  v0[5] = v4;
  sub_22BE267B8();
}

void TranscriptProtoControlPayload.init(handwritten:)()
{
  sub_22BE2BB34();
  sub_22C18F140();
  sub_22BE33FA8();
  sub_22C2729D4();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v2);
  sub_22BE294E0();
  sub_22C26F584();
  v3 = sub_22C2729B4();
  v5 = v4;
  v6 = sub_22BE196A8();
  v7(v6);
  if (v5 >> 60 == 15)
  {
    v8 = sub_22BE5CE4C(&qword_27D915680, &qword_22C2CCA40);
    v9 = sub_22BE43258(v8);
    v11 = v10;
    v12 = sub_22C108598();
    v13 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v12);
    *v14 = v9;
    v14[1] = v11;
    sub_22C25A590(v13, v14, v15, v16, v17, v18);
    sub_22C26F5A4();
    sub_22BE18524();
    (*(v19 + 8))(v0);
  }

  else
  {
    type metadata accessor for TranscriptProtoControlPayload(0);
    sub_22C25A948();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26F5A4();
    sub_22BE18524();
    (*(v20 + 8))(v0);
    *v1 = v3;
    v1[1] = v5;
  }

  sub_22BEE93D4();
}

void TranscriptProtoDialogType.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25AA94();
  v3 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE3100C();
  sub_22C26F4B4();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE1AD20();
  type metadata accessor for TranscriptProtoDialogFormat(v6);
  sub_22BE3AE2C();
  v11 = sub_22C18F17C(v7, v8, v9, v10);
  type metadata accessor for TranscriptProtoDialogType(v11);
  sub_22BE38954();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25A068();
  v12 = sub_22BE194C4();
  v13(v12);
  sub_22C25AA50();
  v14 = sub_22BE196A8();
  v16 = v15(v14);
  if (v16 == *MEMORY[0x277D1C9E0])
  {
    sub_22C25A604();
    v17 = sub_22BE196A8();
    v18(v17);
    v19 = sub_22C25AC9C();
    type metadata accessor for TranscriptProtoStaticText(v19);
    sub_22C25A0A4();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v20 = sub_22BE1B18C();
    v21(v20);
    *v0 = v2;
    v0[1] = v1;
LABEL_12:
    sub_22BE2590C();
    swift_storeEnumTagMultiPayload();
    sub_22C2597E4();
    sub_22BE19DC4(v39, v40, v41, v42);
    sub_22BE3C5E4();
    sub_22BE2343C();
    sub_22BE22978();
    sub_22BE18478();
    return;
  }

  if (v16 == *MEMORY[0x277D1C9D8])
  {
    sub_22C25A604();
    v22 = sub_22BE196A8();
    v23(v22);
    v24 = sub_22C25AC9C();
    type metadata accessor for TranscriptProtoCATDialog(v24);
    sub_22C25A0A4();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v25 = sub_22BE1B18C();
    v26(v25);
    *v0 = v2;
    v0[1] = v1;
    goto LABEL_12;
  }

  if (v16 == *MEMORY[0x277D1C9F8])
  {
    sub_22C25A604();
    v27 = sub_22BE196A8();
    v28(v27);
    v29 = sub_22C25AC9C();
    type metadata accessor for TranscriptProtoSonicText(v29);
    sub_22C25A0A4();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v30 = sub_22BE1B18C();
    v31(v30);
    *v0 = v2;
    v0[1] = v1;
    goto LABEL_12;
  }

  if (v16 == *MEMORY[0x277D1CA00])
  {
    sub_22C25A604();
    v32 = sub_22BE196A8();
    v33(v32);
    v34 = sub_22C25AC9C();
    type metadata accessor for TranscriptProtoGeneratedText(v34);
    sub_22C25A0A4();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v35 = sub_22BE1B18C();
    v36(v35);
    *v0 = v2;
    v0[1] = v1;
    goto LABEL_12;
  }

  if (v16 == *MEMORY[0x277D1C9F0] || v16 == *MEMORY[0x277D1C9E8])
  {
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v37 = sub_22BE1B18C();
    v38(v37);
    goto LABEL_12;
  }

  sub_22C274004();
  __break(1u);
}

void ResponseOutput.VisualOutput.init(transcript:)()
{
  sub_22BE19130();
  sub_22C259C10(v6);
  v78 = sub_22C26F444();
  sub_22BE179D8();
  v81 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v10 = sub_22BE48A8C(v9);
  v11 = type metadata accessor for TranscriptProtoAceCommandOutputPayload(v10);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v13);
  v22 = sub_22BE22D7C(v14, v15, v16, v17, v18, v19, v20, v21, v73);
  v23 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(v22);
  v24 = sub_22BE19448(v23);
  MEMORY[0x28223BE20](v24);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v25);
  sub_22BE3E3EC(v26, v27, v28, v29, v30, v31, v32, v33, v74);
  v34 = sub_22BE5CE4C(&qword_27D911EF0, &qword_22C2B5C10);
  sub_22BE19448(v34);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  v36 = sub_22BE28E00();
  v37 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(v36);
  v38 = sub_22BE19448(v37);
  MEMORY[0x28223BE20](v38);
  v39 = sub_22BE19820();
  v40 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(v39);
  v41 = sub_22BE19448(v40);
  MEMORY[0x28223BE20](v41);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v42);
  v43 = sub_22BE39EE8();
  v44 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(v43);
  v45 = sub_22BE19448(v44);
  MEMORY[0x28223BE20](v45);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v46);
  v47 = sub_22BE20558();
  type metadata accessor for TranscriptProtoVisualOutputType(v47);
  sub_22BE18000();
  MEMORY[0x28223BE20](v48);
  sub_22BE188B0();
  sub_22C104D3C();
  if (v1)
  {
    sub_22BE3E6EC();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE180C8();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v68 = sub_22C259E7C();
        sub_22BE3B620(v68, v69);
        v70 = sub_22C1088E8();
        sub_22BE1AA68(v70, v2);

        v51 = v82;
        sub_22C26F374();
        sub_22BE3E6EC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE1AB1C();
        sub_22BE1AE58();
        v52 = MEMORY[0x277D1C988];
        goto LABEL_11;
      case 2u:
        v57 = sub_22C259E7C();
        sub_22BE3B620(v57, v4);
        sub_22C26F434();
        v58 = sub_22BE3C688();
        sub_22BE1AB5C(v58, v59, v78);
        if (v60)
        {
          sub_22BE233E8(v5, &qword_27D911EF0, &qword_22C2B5C10);
          v61 = sub_22C108358();
          v62 = sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v61);
          sub_22BE3C904(v62, v63);
          sub_22BE3E6EC();
          sub_22BE1AE58();
          sub_22C0E9848();
          sub_22BE1AE58();
        }

        else
        {
          sub_22BE3E6EC();
          sub_22BE1AE58();
          sub_22C0E9848();
          sub_22BE1AE58();
          v71 = sub_22BE261AC();
          v72(v71);
        }

        break;
      case 3u:
        v64 = sub_22C259E7C();
        sub_22BE3B620(v64, v79);
        v65 = sub_22C1088AC();
        sub_22BE1AA68(v65, v75);
        v66 = sub_22BE260B8();
        sub_22BE29D7C(v66, v67);

        sub_22C25A718();
        sub_22C259F24();
        sub_22C26F3B4();
        sub_22BE3E6EC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE39EAC();
        sub_22BE1AE58();
        (*(v81 + 104))(v82, *MEMORY[0x277D1C998], v78);
        break;
      case 4u:
        v53 = sub_22C259E7C();
        sub_22BE3B620(v53, v80);
        v54 = sub_22BE385E4();
        sub_22BE1AA68(v54, v76);
        ResponseOutput.VisualOutput.AceCommandOutputPayload.init(transcript:)();
        sub_22BE3E6EC();
        sub_22BE1AE58();
        sub_22C259A78();
        sub_22BE1AE58();
        (*(v81 + 104))(v77, *MEMORY[0x277D1C930], v78);
        v55 = sub_22BE27A44();
        v56(v55);
        break;
      default:
        v49 = sub_22C259E7C();
        sub_22BE3B620(v49, v0);
        v50 = sub_22BE19EBC();
        sub_22BE1AA68(v50, v3);

        v51 = v82;
        sub_22C26F374();
        sub_22BE3E6EC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE37490();
        sub_22BE1AE58();
        v52 = MEMORY[0x277D1C990];
LABEL_11:
        (*(v81 + 104))(v51, *v52, v78);
        break;
    }
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t sub_22C242988()
{
  sub_22C25A828();

  v1 = sub_22BE29454();
  v0(v1);
  sub_22BE1B5EC();
  return sub_22BE1AE58();
}

void sub_22C242A30()
{
  sub_22BE3C358();
  sub_22C25A828();
  v1 = sub_22BE29454();
  sub_22BE29D7C(v1, v2);

  v3 = sub_22BE29454();
  v0(v3);
  sub_22BE1B5EC();
  sub_22BE1AE58();
  sub_22BE267B8();
}

void ResponseOutput.VisualOutput.AceCommandOutputPayload.init(transcript:)()
{
  sub_22BE19130();
  v4 = sub_22BE5CE4C(&qword_27D90EB58, &unk_22C2AE6D0);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE2C64C();
  v6 = sub_22BE5CE4C(&qword_27D915688, &qword_22C2CCA48);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1AB08();
  sub_22C26F354();
  sub_22C259488();
  MEMORY[0x28223BE20](v8);
  sub_22BE25544();
  MEMORY[0x28223BE20](v9);
  sub_22BE32374();
  sub_22BE27BA4();
  sub_22BE22814();
  sub_22C100A48();
  if (v0)
  {
    goto LABEL_5;
  }

  v10 = sub_22BE23E90();
  sub_22BE1AB5C(v10, v11, v1);
  if (v12)
  {
    sub_22BE233E8(v2, &qword_27D915688, &qword_22C2CCA48);
    v13 = sub_22C108358();
    v14 = sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v13);
    sub_22BE3C904(v14, v15);
LABEL_5:
    sub_22C259A78();
    sub_22BE1AE58();
    goto LABEL_6;
  }

  v16 = sub_22BE1824C();
  v17(v16);
  v18 = sub_22C259E94();
  v19(v18, v3, v1);
  sub_22C26F334();
  sub_22C259A78();
  sub_22BE1AE58();
  v20 = sub_22BE33BE8();
  v21(v20);
LABEL_6:
  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoVisualOutput.init(handwritten:)()
{
  sub_22BE19130();
  v2 = v1;
  sub_22BE33FA8();
  v130 = sub_22C26F364();
  sub_22BE179D8();
  v126 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v125 = v5;
  sub_22BE183BC();
  v129 = sub_22C26F3D4();
  sub_22BE179D8();
  v124 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  sub_22C259AC0(v8);
  v133 = sub_22C26F3F4();
  sub_22BE179D8();
  v128 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v127 = v11;
  sub_22BE183BC();
  v135 = sub_22C26F424();
  sub_22BE179D8();
  v132 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v15 = sub_22BE48A8C(v14);
  type metadata accessor for TranscriptProtoVisualOutput(v15);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE1955C();
  v136 = sub_22C26F394();
  sub_22BE179D8();
  v134 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22BE19820();
  v19 = sub_22C26F444();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v20);
  sub_22BE197B8();
  type metadata accessor for TranscriptProtoVisualOutputType(0);
  v21 = sub_22C259C20();
  sub_22BE19DC4(v21, v22, v23, v24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25A080();
  v25 = sub_22BE1A6BC();
  v26(v25);
  v27 = sub_22BE41FB4();
  v29 = v28(v27);
  if (v29 == *MEMORY[0x277D1C990])
  {
    v30 = sub_22BE41FB4();
    v31(v30);
    sub_22C18F338();
    v32 = sub_22BE291B0();
    v34 = v33(v32);
    v135 = &v123;
    MEMORY[0x28223BE20](v34);
    sub_22C25A034();
    *(v35 - 16) = v0;
    sub_22C259548();
    sub_22C259290(v36, v37);
    sub_22BE354D0();
    sub_22C270784();
    sub_22C25A954();
    v38 = sub_22BE2BA80();
    v39(v38);
    sub_22BE3E6EC();
    sub_22BE1AE58();
    sub_22BE3A298();
    v40 = sub_22BE33B3C();
    sub_22BE3B620(v40, v41);
    v42 = sub_22C25A888();
    v43(v42);
    goto LABEL_8;
  }

  if (v29 == *MEMORY[0x277D1C988])
  {
    v44 = sub_22BE431CC();
    v45(v44, v19);
    v47 = v131;
    v46 = v132;
    v48 = sub_22BE3C968();
    v50 = v49(v48);
    sub_22C25A7D8(v50, v51, v52, v53, v54, v55, v56, v57, v123);
    MEMORY[0x28223BE20](v58);
    sub_22C25A034();
    *(v59 - 16) = v131;
    sub_22C259548();
    sub_22C259290(v60, v61);
    sub_22BE354D0();
    sub_22C270784();
    sub_22C25A954();
    v62 = sub_22BE38FD8();
    v63(v62);
    sub_22BE3E6EC();
    sub_22BE1AE58();
    sub_22BE3A298();
    v64 = sub_22BE36318();
    sub_22BE3B620(v64, v65);
    (*(v46 + 8))(v47, v135);
LABEL_8:
    sub_22BEE94B0();
    sub_22BE18478();
    return;
  }

  if (v29 == *MEMORY[0x277D1C9A0])
  {
    v66 = sub_22BE431CC();
    v67(v66, v19);
    v68 = v128;
    sub_22C18F458();
    v136 = v2;
    v69 = v127;
    v70 = sub_22BE33FCC();
    v72 = v71(v70);
    v135 = &v123;
    MEMORY[0x28223BE20](v72);
    sub_22C25A034();
    *(v73 - 16) = v69;
    sub_22C259548();
    sub_22C259290(v74, v75);
    sub_22BE354D0();
    sub_22C270784();
    sub_22C25A954();
    v76();
    sub_22BE3E6EC();
    sub_22BE1AE58();
    sub_22BE3A298();
    v77 = sub_22BE1AB1C();
    sub_22BE3B620(v77, v78);
    (*(v68 + 8))(v69, v133);
    goto LABEL_8;
  }

  if (v29 == *MEMORY[0x277D1C998])
  {
    v79 = sub_22BE37490();
    v80(v79);
    v82 = v123;
    v81 = v124;
    sub_22C18F338();
    v83 = sub_22BE3C968();
    v85 = v84(v83);
    sub_22C25A7D8(v85, v86, v87, v88, v89, v90, v91, v92, v123);
    MEMORY[0x28223BE20](v93);
    sub_22C25A034();
    *(v94 - 16) = v82;
    sub_22C259548();
    sub_22C259290(v95, v96);
    sub_22BE354D0();
    sub_22C270784();
    sub_22C25A954();
    v97 = sub_22BE194C4();
    v98(v97);
    sub_22BE3E6EC();
    sub_22BE1AE58();
    sub_22BE3A298();
    v99 = sub_22BE27BA4();
    sub_22BE3B620(v99, v100);
    (*(v81 + 8))(v82);
    goto LABEL_8;
  }

  if (v29 == *MEMORY[0x277D1C930])
  {
    v101 = sub_22BE37490();
    v102(v101);
    v104 = v125;
    v103 = v126;
    sub_22C18F338();
    v105 = sub_22BE3C968();
    v107 = v106(v105);
    sub_22C25A7D8(v107, v108, v109, v110, v111, v112, v113, v114, v123);
    MEMORY[0x28223BE20](v115);
    sub_22C25A034();
    *(v116 - 16) = v125;
    sub_22C259548();
    sub_22C259290(v117, v118);
    sub_22BE354D0();
    sub_22C270784();
    sub_22C25A954();
    v119 = sub_22BE194C4();
    v120(v119);
    sub_22BE3E6EC();
    sub_22BE1AE58();
    sub_22BE3A298();
    v121 = sub_22BE27BA4();
    sub_22BE3B620(v121, v122);
    (*(v103 + 8))(v104);
    goto LABEL_8;
  }

  sub_22C274004();
  __break(1u);
}

void sub_22C2434E4()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE29454();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE2C64C();
  v9 = v4();
  v11 = v10;
  v2(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = v9;
  v0[1] = v11;
  v12 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  sub_22C0B1AF0();
  swift_storeEnumTagMultiPayload();
  sub_22BE187DC();
  sub_22BE19DC4(v13, v14, v15, v12);
  sub_22C259F24();
  sub_22BE2343C();
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t sub_22C2435CC()
{
  v0 = sub_22C26EA94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v13 - v5);
  sub_22C26F3E4();
  sub_22C259290(&qword_27D915C90, MEMORY[0x277D1C540]);
  v7 = sub_22C26E2B4();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (v9 >> 60 == 15)
  {
    v7 = 0;
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = v9;
  }

  type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = v7;
  v6[1] = v10;
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  swift_storeEnumTagMultiPayload();
  sub_22BE19DC4(v6, 0, 1, v11);
  return sub_22BE2343C();
}

uint64_t sub_22C2437C4()
{
  v0 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v11 - v1);
  v3 = sub_22C26F3A4();
  v5 = v4;
  v6 = sub_22C26F3C4();
  v8 = v7;
  type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = v3;
  v2[1] = v5;
  v2[2] = v6;
  v2[3] = v8;
  v9 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  swift_storeEnumTagMultiPayload();
  sub_22BE19DC4(v2, 0, 1, v9);
  return sub_22BE2343C();
}

uint64_t sub_22C2438E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C26F364();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v13 - v9;
  (*(v4 + 16))(v6, a2, v3, v8);
  TranscriptProtoAceCommandOutputPayload.init(handwritten:)();
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  swift_storeEnumTagMultiPayload();
  sub_22BE19DC4(v10, 0, 1, v11);
  return sub_22BE2343C();
}

uint64_t TranscriptProtoAceCommandOutputPayload.init(handwritten:)()
{
  sub_22BE1B254();
  v1 = sub_22C26F354();
  v2 = sub_22BE19448(v1);
  MEMORY[0x28223BE20](v2);
  sub_22BE19338();
  v3 = sub_22BE191CC();
  v5 = sub_22BE5CE4C(v3, v4);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE25CD0();
  sub_22C26F344();
  sub_22C25A08C();
  TranscriptProtoAceCommandOutputData.init(handwritten:)();
  v7 = type metadata accessor for TranscriptProtoAceCommandOutputData(0);
  v8 = sub_22BE3C530();
  sub_22BE19DC4(v8, v9, v10, v7);
  v11 = sub_22BE38960();
  v14 = sub_22C18F17C(v11, v12, v13, v7);
  type metadata accessor for TranscriptProtoAceCommandOutputPayload(v14);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26F364();
  sub_22BE18524();
  (*(v15 + 8))(v0);
  sub_22BE200D4();
  return sub_22BE2343C();
}

void TranscriptProtoAceCommandOutputData.init(handwritten:)()
{
  sub_22BE3C358();
  sub_22BE1A5E4();
  sub_22C26F354();
  sub_22C259488();
  MEMORY[0x28223BE20](v1);
  sub_22BE19338();
  v2 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  sub_22BE19448(v2);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE19668();
  v4 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  v5 = sub_22BE38960();
  v8 = sub_22C18F17C(v5, v6, v7, v4);
  type metadata accessor for TranscriptProtoAceCommandOutputData(v8);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE36288();
  v9 = sub_22BE1AB1C();
  v10(v9);
  v11 = sub_22BE25C08();
  v13 = v12(v11);
  if (v13 == *MEMORY[0x277D1C910])
  {
    v14 = sub_22BE3FFC4();
    v15(v14);
    v16 = sub_22C25A6F4();
    type metadata accessor for TranscriptProtoAddViews(v16);
    sub_22BE38954();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v17 = sub_22C259E3C();
    v18(v17);
    sub_22C259EF8();
LABEL_13:
    swift_storeEnumTagMultiPayload();
    v44 = 0;
LABEL_14:
    sub_22BE19DC4(v0, v44, 1, v4);
    sub_22BE18944();
    sub_22BE2343C();
    sub_22BE267B8();
    return;
  }

  if (v13 == *MEMORY[0x277D1C8E8])
  {
    v19 = sub_22BE3FFC4();
    v20(v19);
    v21 = sub_22C25A6F4();
    type metadata accessor for TranscriptProtoAddDialogs(v21);
    sub_22BE38954();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v22 = sub_22C259E3C();
    v23(v22);
    sub_22C259EF8();
    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x277D1C908])
  {
    v24 = sub_22BE3FFC4();
    v25(v24);
    v26 = sub_22C25A6F4();
    type metadata accessor for TranscriptProtoSayIt(v26);
    sub_22BE38954();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v27 = sub_22C259E3C();
    v28(v27);
    sub_22C259EF8();
    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x277D1C918])
  {
    v29 = sub_22BE3FFC4();
    v30(v29);
    v31 = sub_22C25A6F4();
    type metadata accessor for TranscriptProtoRepeatIt(v31);
    sub_22BE38954();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v32 = sub_22C259E3C();
    v33(v32);
    sub_22C259EF8();
    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x277D1C8F8])
  {
    v34 = sub_22BE3FFC4();
    v35(v34);
    v36 = sub_22C25A6F4();
    type metadata accessor for TranscriptProtoRequestCompleted(v36);
    sub_22BE38954();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v37 = sub_22C259E3C();
    v38(v37);
    sub_22C259EF8();
    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x277D1C8F0])
  {
    v39 = sub_22BE3FFC4();
    v40(v39);
    v41 = sub_22C25A6F4();
    type metadata accessor for TranscriptProtoCommandFailed(v41);
    sub_22BE38954();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v42 = sub_22C259E3C();
    v43(v42);
    sub_22C259EF8();
    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x277D1C900])
  {
    v45 = sub_22C259E3C();
    v46(v45);
    v44 = 1;
    goto LABEL_14;
  }

  sub_22C274004();
  __break(1u);
}

void ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.init(transcript:)()
{
  sub_22BE19130();
  v7 = sub_22BE2054C(v6);
  v8 = type metadata accessor for TranscriptProtoCommandFailed(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v11 = sub_22C259814(v10);
  v12 = type metadata accessor for TranscriptProtoRequestCompleted(v11);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE18DFC();
  v14 = type metadata accessor for TranscriptProtoSayIt(0);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE19820();
  v17 = type metadata accessor for TranscriptProtoRepeatIt(v16);
  v18 = sub_22BE19448(v17);
  MEMORY[0x28223BE20](v18);
  v19 = sub_22BE1AD20();
  v20 = type metadata accessor for TranscriptProtoAddDialogs(v19);
  v21 = sub_22BE19448(v20);
  MEMORY[0x28223BE20](v21);
  v22 = sub_22BE2F294();
  v23 = type metadata accessor for TranscriptProtoAddViews(v22);
  v24 = sub_22BE19448(v23);
  MEMORY[0x28223BE20](v24);
  sub_22BE28FD8();
  v25 = sub_22BE1A8C4();
  v27 = sub_22BE5CE4C(v25, v26);
  sub_22BE19448(v27);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1B72C();
  sub_22BE39EAC();
  sub_22BE2EDC8();
  sub_22BE22814();
  sub_22BE291DC();
  sub_22BE1AE58();
  v29 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  v30 = sub_22BE391E8();
  sub_22BE1AB5C(v30, v31, v29);
  if (v32)
  {
    v33 = *MEMORY[0x277D1C900];
    sub_22C26F354();
    sub_22BE1834C();
    (*(v34 + 104))(v67, v33);
  }

  else
  {
    sub_22BE1B62C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v57 = sub_22BE29264();
        sub_22BE3B620(v57, v58);
        v38 = *v4;
        v59 = v4[1];
        v60 = sub_22BE19454();
        sub_22BE29D7C(v60, v61);
        sub_22BE20118();
        sub_22BE1AE58();
        *v67 = v38;
        v67[1] = v59;
        break;
      case 2:
        v47 = sub_22BE37490();
        sub_22BE3B620(v47, v48);
        v38 = *v2;
        v49 = v2[1];
        v50 = sub_22BE19454();
        sub_22BE29D7C(v50, v51);
        sub_22C0E9848();
        sub_22BE1AE58();
        *v67 = v38;
        v67[1] = v49;
        break;
      case 3:
        v52 = sub_22BE1A6BC();
        sub_22BE3B620(v52, v53);
        v38 = *v3;
        v54 = v3[1];
        v55 = sub_22BE19454();
        sub_22BE29D7C(v55, v56);
        sub_22BE3ACD8();
        sub_22BE1AE58();
        *v67 = v38;
        v67[1] = v54;
        break;
      case 4:
        v42 = sub_22BE3CC34();
        sub_22BE3B620(v42, v43);
        v38 = *v1;
        v44 = v1[1];
        v45 = sub_22BE19454();
        sub_22BE29D7C(v45, v46);
        sub_22C0E9830();
        sub_22BE1AE58();
        *v67 = v38;
        v67[1] = v44;
        break;
      case 5:
        sub_22BE3B620(v0, v66);
        v38 = *v66;
        v62 = v66[1];
        v63 = sub_22BE19454();
        sub_22BE29D7C(v63, v64);
        sub_22C0E9830();
        sub_22BE1AE58();
        *v67 = v38;
        v67[1] = v62;
        break;
      default:
        v36 = sub_22BE41FB4();
        sub_22BE3B620(v36, v37);
        v38 = *v5;
        v39 = v5[1];
        v40 = sub_22BE19454();
        sub_22BE29D7C(v40, v41);
        sub_22BE3E76C();
        sub_22BE1AE58();
        *v67 = v38;
        v67[1] = v39;
        break;
    }

    sub_22C25A6B8();
    sub_22C26F354();
    sub_22BE1834C();
    (*(v65 + 104))(v67, v38);
  }

  sub_22BE3C298();
  sub_22BE18478();
}

uint64_t sub_22C24451C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(void)@<X3>, void *a5@<X8>)
{
  a2();
  sub_22C25A560();
  a3(0);
  sub_22C25A0A4();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  a4(0);
  sub_22BE18524();
  result = (*(v11 + 8))(a1);
  *a5 = v5;
  a5[1] = v6;
  return result;
}

void sub_22C244668()
{
  sub_22BE3C358();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13();
  sub_22C25A2F0();
  v14 = v8();
  v15 = sub_22C25A628();
  v6(v15);
  sub_22C25A840();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v4(0);
  sub_22BE18524();
  (*(v16 + 8))(v10);
  *v12 = v0;
  v12[1] = v1;
  v12[2] = v14;
  v12[3] = v2;
  sub_22BE267B8();
}

void ResponseOutput.DialogType.init(transcript:)()
{
  sub_22BE19130();
  v7 = sub_22C25A3B4(v6);
  v8 = type metadata accessor for TranscriptProtoGeneratedText(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE3C444(v10, v42);
  v11 = type metadata accessor for TranscriptProtoSonicText(0);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE19820();
  v14 = type metadata accessor for TranscriptProtoCATDialog(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE1955C();
  v16 = type metadata accessor for TranscriptProtoStaticText(0);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE188B0();
  v18 = &qword_27D90EBB8;
  v19 = sub_22BE3CC34();
  v21 = sub_22BE5CE4C(v19, v20);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE19668();
  type metadata accessor for TranscriptProtoDialogFormat(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v23);
  sub_22BE294E0();
  sub_22BE3C5E4();
  sub_22BE22814();
  sub_22BE23B00(v0);
  if (v24)
  {
    sub_22BE233E8(v0, &qword_27D90EBB8, &qword_22C297060);
    v25 = sub_22BE5CE4C(&qword_27D915690, &qword_22C2CCA58);
    sub_22BE43258(v25);
    sub_22BE3D554();
    v26 = sub_22C108598();
    v27 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v26);
    sub_22C259EA0(v27, v28, v29, v30, v31, v32);
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE379D8();
    sub_22BE1AE58();
    v33 = sub_22BE431F0();
    sub_22BE3B620(v33, v4);
    sub_22BE2BA80();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v39 = sub_22BE44744();
        sub_22BE3B620(v39, v2);
        v18 = *(v2 + 8);

        sub_22C0E9848();
        sub_22BE1AE58();
        sub_22C25AA7C();
        goto LABEL_10;
      case 2:
        sub_22BE44744();
        sub_22C0E9A5C();
        sub_22BE3B620(v36, v37);
        sub_22C25AE34();
        sub_22BE379D8();
        sub_22BE1AE58();
        sub_22C25AA7C();
        goto LABEL_10;
      case 3:
      case 4:
        sub_22C25A6B8();
        sub_22C26F4B4();
        sub_22BE1834C();
        (*(v38 + 104))(v43, &qword_27D90EBB8);
        sub_22BE3ACD8();
        sub_22BE1AE58();
        break;
      case 5:
        v40 = sub_22BE44744();
        sub_22BE3B620(v40, v3);
        v18 = *(v3 + 8);

        sub_22BE291DC();
        sub_22BE1AE58();
        sub_22C25AA7C();
        goto LABEL_10;
      default:
        v35 = sub_22BE44744();
        sub_22BE3B620(v35, v5);
        v18 = *(v5 + 8);

        sub_22BE20118();
        sub_22BE1AE58();
        sub_22C25AA7C();
LABEL_10:
        sub_22C25A6B8();
        sub_22C26F4B4();
        sub_22BE1834C();
        (*(v41 + 104))(v1, v18);
        break;
    }
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void AST.FlatExpr.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  v310 = v22;
  v27 = v26;
  v307 = v28;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v30 = sub_22BE17A18(updated);
  v306 = v31;
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  v303 = v32;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v33);
  sub_22BE19E94();
  v304 = v34;
  v35 = sub_22BE183BC();
  v36 = type metadata accessor for AST.Update(v35);
  v37 = sub_22BE17A18(v36);
  v302 = v38;
  MEMORY[0x28223BE20](v37);
  sub_22BE17A44();
  v40 = sub_22BE48A8C(v39);
  v41 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(v40);
  v42 = sub_22BE19448(v41);
  MEMORY[0x28223BE20](v42);
  sub_22BE17A44();
  v298 = v43;
  v44 = sub_22BE183BC();
  v45 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(v44);
  v46 = sub_22BE19448(v45);
  MEMORY[0x28223BE20](v46);
  sub_22BE17A44();
  v48 = sub_22BE18950(v47);
  v49 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(v48);
  v50 = sub_22BE19448(v49);
  MEMORY[0x28223BE20](v50);
  sub_22BE17A44();
  v52 = sub_22BE18950(v51);
  v53 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(v52);
  v54 = sub_22BE19448(v53);
  MEMORY[0x28223BE20](v54);
  sub_22BE17A44();
  v56 = sub_22BE18950(v55);
  v57 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(v56);
  v58 = sub_22BE19448(v57);
  MEMORY[0x28223BE20](v58);
  sub_22BE17A44();
  v60 = sub_22BE18950(v59);
  v61 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(v60);
  v62 = sub_22BE19448(v61);
  MEMORY[0x28223BE20](v62);
  sub_22BE17A44();
  v64 = sub_22BE18950(v63);
  v65 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(v64);
  v66 = sub_22BE19448(v65);
  MEMORY[0x28223BE20](v66);
  sub_22BE17A44();
  v68 = sub_22BE18950(v67);
  v69 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(v68);
  v70 = sub_22BE19448(v69);
  MEMORY[0x28223BE20](v70);
  sub_22BE17A44();
  v72 = sub_22BE18950(v71);
  v73 = type metadata accessor for TranscriptProtoASTPickType(v72);
  v74 = sub_22BE19448(v73);
  MEMORY[0x28223BE20](v74);
  sub_22BE17A44();
  v76 = sub_22BE18950(v75);
  v77 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(v76);
  v78 = sub_22BE290A0(v77, &v300);
  MEMORY[0x28223BE20](v78);
  sub_22BE17A44();
  sub_22BE190A8(v79);
  v80 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v81 = sub_22BE19448(v80);
  MEMORY[0x28223BE20](v81);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v82);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v83);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v84);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v85);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v86);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v87);
  sub_22BE23B44();
  MEMORY[0x28223BE20](v88);
  sub_22BE3173C(v89, v90, v91, v92, v93, v94, v95, v96, v297);
  v309 = sub_22C26E1D4();
  sub_22BE179D8();
  v305 = v97;
  MEMORY[0x28223BE20](v98);
  sub_22BE17A44();
  v100 = sub_22C259DF0(v99);
  v101 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(v100);
  v102 = sub_22BE19448(v101);
  MEMORY[0x28223BE20](v102);
  sub_22BE17A44();
  v103 = sub_22BE183BC();
  v104 = type metadata accessor for AST.FlatValue(v103);
  v105 = sub_22BE17A18(v104);
  MEMORY[0x28223BE20](v105);
  sub_22BE17A44();
  v300 = v106;
  v107 = sub_22BE183BC();
  v108 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(v107);
  v109 = sub_22BE19448(v108);
  MEMORY[0x28223BE20](v109);
  sub_22BE17A44();
  v110 = sub_22BE183BC();
  v111 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(v110);
  v112 = sub_22BE290A0(v111, &v299);
  MEMORY[0x28223BE20](v112);
  sub_22BE17A44();
  v114 = sub_22BE18950(v113);
  v115 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(v114);
  v116 = sub_22BE290A0(v115, &v305);
  MEMORY[0x28223BE20](v116);
  sub_22BE17A44();
  v118 = sub_22BE18950(v117);
  v119 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(v118);
  v120 = sub_22BE290A0(v119, &v307);
  MEMORY[0x28223BE20](v120);
  sub_22BE17A44();
  v122 = sub_22BE18950(v121);
  v123 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(v122);
  v124 = sub_22BE290A0(v123, &v304);
  MEMORY[0x28223BE20](v124);
  sub_22BE17A44();
  v126 = sub_22BE18950(v125);
  v127 = type metadata accessor for TranscriptProtoASTFlatValue(v126);
  v128 = sub_22BE17A18(v127);
  v299 = v129;
  MEMORY[0x28223BE20](v128);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v130);
  sub_22C1CEC88();
  MEMORY[0x28223BE20](v131);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v132);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v133);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v134);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v135);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v136);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v137);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v138);
  sub_22C259BC0();
  v139 = sub_22BE194C4();
  v141 = sub_22BE5CE4C(v139, v140);
  sub_22BE19448(v141);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v142);
  v143 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoAstflatExprEnum(v143);
  sub_22BE18000();
  MEMORY[0x28223BE20](v144);
  sub_22BE188B0();
  sub_22BE1BF88();
  sub_22BE22814();
  sub_22BE23B00(v24);
  if (v145)
  {
    sub_22BE233E8(v24, &qword_27D90EE60, &qword_22C2CCA60);
    v146 = sub_22BE5CE4C(&qword_27D915698, &unk_22C2CCA68);
    sub_22BE43258(v146);
    sub_22BE3D554();
    v147 = sub_22C108598();
    v148 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v147);
    sub_22C259EA0(v148, v149, v150, v151, v152, v153);
LABEL_4:
    sub_22BE1AE58();
LABEL_79:
    sub_22BE34134();
    sub_22BE18478();
  }

  else
  {
    v154 = sub_22C1088AC();
    sub_22BE3B620(v154, v25);
    sub_22BE3E79C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v156 = v309;
    v157 = v310;
    v158 = i;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22C259E7C();
        sub_22C108C10();
        sub_22BE3B620(v202, v203);
        *v307 = *v23;
        sub_22BE2ED7C();
        sub_22C101D18();
        if (v157)
        {
          sub_22BE1A810();
          sub_22C25A578();
          sub_22C0E9830();
          goto LABEL_4;
        }

        sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0);
        AST.FlatValue.init(transcript:)();
        sub_22BE1A810();
        sub_22C25A578();
        sub_22C0E9830();
        sub_22BE1AE58();
        type metadata accessor for AST.FlatExpr(0);
        sub_22BE39250();
        goto LABEL_78;
      case 2:
        sub_22C259E7C();
        sub_22BE46048();
        sub_22BE3B620(v195, v196);
        *v307 = *v158;
        sub_22BE351B8();
        sub_22C101D18();
        if (v157)
        {
          goto LABEL_23;
        }

        sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20);
        AST.FlatValue.init(transcript:)();
        sub_22C101D18();
        AST.FlatValue.init(transcript:)();
        sub_22BE1A810();
        sub_22C25A578();
        sub_22BE3641C();
        type metadata accessor for AST.FlatExpr(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 3:
        sub_22C259E7C();
        sub_22C25A8AC();
        sub_22BE3B620(v197, v198);
        sub_22BE2ED7C();
        sub_22BE3C6E0();
        sub_22C101D18();
        if (!v157)
        {
          v199 = v307;
          AST.FlatValue.init(transcript:)();
          v281 = &v199[*(sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0) + 48)];
          sub_22BE1A810();
          sub_22C25A578();
          v283 = *v156;
          v282 = *(v156 + 8);

          sub_22C0E9848();
          sub_22BE1AE58();
          *v281 = v283;
          v281[1] = v282;
          type metadata accessor for AST.FlatExpr(0);
          sub_22BE31160();
          goto LABEL_78;
        }

        sub_22BE1A810();
        sub_22C25A578();
        sub_22C0E9848();
        goto LABEL_4;
      case 4:
        sub_22C259E7C();
        sub_22BE37B14();
        sub_22BE3B620(v183, v184);
        sub_22BE1B754();
        sub_22C101D18();
        if (!v157)
        {
          sub_22C25A56C();
          AST.FlatValue.init(transcript:)();
          sub_22BE2ED7C();
          sub_22BE1B754();
          sub_22C101D18();
          sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10);
          AST.FlatValue.init(transcript:)();
          sub_22BE1A810();
          sub_22C25A578();
          sub_22BE379D8();
          sub_22BE1AE58();
          type metadata accessor for AST.FlatExpr(0);
          sub_22BE23BA8();
          goto LABEL_78;
        }

LABEL_23:
        sub_22BE1A810();
        sub_22C25A578();
        goto LABEL_4;
      case 5:
        sub_22C259E7C();
        sub_22C25AB7C();
        sub_22BE3B620(v204, v205);
        v206 = v20[1];
        v304 = *v20;
        v207 = v20[2];
        sub_22BE5CE4C(&qword_27D9156A0, &unk_22C2CCA78);
        sub_22BE3D3E0();
        v208 = sub_22C273D04();
        v209 = v207 + 8;
        v308 = v207;
        sub_22BE185B4();
        v212 = (v211 & v210);
        v214 = (v213 + 63) >> 6;
        v305 = v206;
        v306 = v215 + 64;

        v216 = 0;
        v217 = v301;
        v309 = v208;
        if (v212)
        {
          goto LABEL_38;
        }

LABEL_39:
        v219 = v216;
        do
        {
          v216 = v219 + 1;
          if (__OFADD__(v219, 1))
          {
            __break(1u);
            goto LABEL_87;
          }

          if (v216 >= v214)
          {
            sub_22BE1A810();
            sub_22C25A578();
            sub_22C25A380();
            v261 = v307;
            v262 = v305;
            *v307 = v304;
            *(v261 + 1) = v262;
            *(v261 + 2) = v208;
            type metadata accessor for AST.FlatExpr(0);
            sub_22BE23BA8();
            swift_storeEnumTagMultiPayload();
            goto LABEL_79;
          }

          ++v219;
        }

        while (!v209[v216]);
        sub_22BE4878C();
        for (i = v220; ; i = v212)
        {
          v221 = v218 | (v216 << 6);
          v222 = (v308[6] + 16 * v221);
          v223 = *v222;
          v224 = v222[1];
          sub_22BE1AA68(v308[7] + *(v299 + 72) * v221, v217);
          sub_22C25A4B8();
          sub_22BE1AA68(v225, v226);

          v227 = v300;
          sub_22C25ABCC();
          v228 = v310;
          AST.FlatValue.init(transcript:)();
          v310 = v228;
          if (v228)
          {
            break;
          }

          sub_22BE2325C();
          sub_22BE1AE58();
          sub_22BE270BC();
          sub_22C25977C(v229);
          v208 = v309;
          v230 = (*(v309 + 48) + 16 * v221);
          *v230 = v223;
          v230[1] = v224;
          sub_22BE39150();
          sub_22BE3B620(v227, v231);
          v232 = *(v208 + 16);
          v233 = __OFADD__(v232, 1);
          v234 = v232 + 1;
          if (v233)
          {
            goto LABEL_89;
          }

          *(v208 + 16) = v234;
          v217 = v301;
          v212 = i;
          if (!i)
          {
            goto LABEL_39;
          }

LABEL_38:
          sub_22C25ABE4();
        }

        sub_22BE2325C();
        sub_22BE1AE58();

        sub_22BE1A810();
        sub_22C25A578();
        sub_22C25A380();
        goto LABEL_79;
      case 6:
        sub_22C259E7C();
        sub_22C25AAA0();
        sub_22BE3B620(v237, v238);
        v239 = *v20;
        if (*(*v20 + 16))
        {
          v240 = sub_22BE3122C(MEMORY[0x277D84F90]);
          v306 = v241;
          sub_22BE716D8(v240, v241, 0);
          v242 = 0;
          v308 = a10;
          v243 = (v305 + 32);
          v244 = v239 + 40;
          v304 = v239;
          do
          {
            if (v242 >= *(v239 + 16))
            {
              goto LABEL_88;
            }

            v309 = v242;
            v245 = v156;

            sub_22BE1804C();
            sub_22C26E174();
            sub_22BE1B62C();
            sub_22BE22814();
            sub_22BE3E950(v158);
            if (v145)
            {
              sub_22C259FD0();
              sub_22BE233E8(v264, v265, v266);
              v312 = v156;
              v267 = sub_22BE5CE4C(&qword_27D912020, &unk_22C2B5E10);
              sub_22BE3369C(v267);
              sub_22C25A2F0();
              v268 = sub_22C108598();
              v269 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v268);
              *v270 = &qword_27D9082F0;
              v270[1] = v158;
              sub_22C25A590(v269, v270, v271, v272, v273, v274);

              sub_22BE1A810();
              sub_22C25A578();
              sub_22C259FD0();
              sub_22BE233E8(v275, v276, v277);
              sub_22C2599F0();
              sub_22BE1AE58();
              goto LABEL_74;
            }

            sub_22C25A3C4();
            sub_22BE233E8(v246, v247, v248);
            v249 = *v243;
            v250 = sub_22BE1B73C();
            (v249)(v250);
            v251 = v308;
            v313 = v308;
            v253 = v308[2];
            v252 = v308[3];
            if (v253 >= v252 >> 1)
            {
              v256 = sub_22BE3D1E4(v252);
              sub_22BE716D8(v256, v253 + 1, 1);
              v251 = v313;
            }

            v242 = v309 + 1;
            v251[2] = v253 + 1;
            sub_22BE25AD8();
            v308 = v254;
            sub_22C25AB34(v254 + v255);
            sub_22C25A254();
            v249();
            v244 += 16;
            v156 = v245;
            v158 = i;
            v239 = v304;
          }

          while (v306 != v242);
          sub_22BE1A810();
          sub_22C25A578();
          sub_22C2599F0();
          sub_22BE1AE58();
          v279 = v308;
        }

        else
        {
          sub_22BE1A810();
          sub_22C25A578();
          sub_22C2599F0();
          sub_22BE1AE58();
          v279 = MEMORY[0x277D84F90];
        }

        *v307 = v279;
        type metadata accessor for AST.FlatExpr(0);
        sub_22BE1ACEC();
        goto LABEL_78;
      case 7:
        sub_22C259E7C();
        sub_22BE46048();
        sub_22BE3B620(v200, v201);
        sub_22BE2BD40();
        sub_22C26E174();
        sub_22C25A56C();
        sub_22C101298();
        if (v157)
        {
          goto LABEL_33;
        }

        sub_22BE233E8(v21, &qword_27D9082F0, &qword_22C27AB00);
        sub_22BE2ED7C();
        sub_22BE1B754();
        sub_22C101E08();
        v284 = v23[8];
        if (v284 == 255)
        {
          v289 = sub_22BE5CE4C(&qword_27D9155B0, &unk_22C2CC7A0);
          sub_22BE43258(v289);
          sub_22BE3D554();
          v290 = sub_22C108598();
          v291 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v290);
          sub_22C259EA0(v291, v292, v293, v294, v295, v296);
          sub_22BE1A810();
          sub_22BE1AE58();
          sub_22BE38AA4();
          sub_22BE1AE58();
          sub_22C259CA8();
          (*(v305 + 8))(v307, v156);
          goto LABEL_79;
        }

        v285 = *v23;
        sub_22BE1A810();
        sub_22BE1AE58();
        sub_22BE38AA4();
        sub_22BE1AE58();
        v286 = v284 & 1;
        if (v286)
        {
          v285 = 0;
        }

        v287 = sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90);
        v288 = &v307[*(v287 + 48)];
        sub_22C259CA8();
        *v288 = v285;
        v288[8] = v286;
        type metadata accessor for AST.FlatExpr(0);
        sub_22BE31160();
        goto LABEL_78;
      case 8:
        sub_22C259E7C();
        sub_22BE37B14();
        sub_22BE3B620(v259, v260);
        sub_22BE2BD40();
        sub_22C26E174();
        sub_22C25A56C();
        sub_22C101298();
        if (v157)
        {
          goto LABEL_33;
        }

        goto LABEL_71;
      case 9:
        sub_22BE1A810();
        sub_22C25A578();
        sub_22C259E7C();
        sub_22C25A8AC();
        sub_22BE3B620(v188, v189);
        v191 = *v156;
        v190 = *(v156 + 8);
        v192 = *(v156 + 16);
        v193 = *(v156 + 17);

        sub_22C0E9848();
        sub_22BE1AE58();
        v194 = v307;
        *v307 = v191;
        *(v194 + 1) = v190;
        v194[16] = v192;
        v194[17] = v193;
        type metadata accessor for AST.FlatExpr(0);
        goto LABEL_78;
      case 10:
        sub_22C259E7C();
        sub_22BE37B14();
        sub_22BE3B620(v257, v258);
        sub_22BE2BD40();
        sub_22C26E174();
        sub_22C25A56C();
        sub_22C101298();
        if (v157)
        {
          goto LABEL_33;
        }

        goto LABEL_71;
      case 11:
        sub_22C259E7C();
        sub_22BE37B14();
        sub_22BE3B620(v181, v182);
        if (*(v27 + 8))
        {
          sub_22BE2BD40();
          sub_22C26E174();
          sub_22C101298();
          if (v157)
          {
LABEL_33:
            sub_22BE1A810();
            sub_22C25A578();
            sub_22BE233E8(v21, &qword_27D9082F0, &qword_22C27AB00);
            goto LABEL_4;
          }

          sub_22BE1A810();
          sub_22C25A578();
          sub_22BE233E8(v21, &qword_27D9082F0, &qword_22C27AB00);
          v263 = 0;
        }

        else
        {
          sub_22BE1A810();
          sub_22C25A578();
          v263 = 1;
        }

        sub_22BE379D8();
        sub_22BE1AE58();
        v280 = sub_22BE33738(v307, v263);
        type metadata accessor for AST.FlatExpr(v280);
        sub_22BE1ACEC();
        goto LABEL_78;
      case 12:
        sub_22BE1A810();
        sub_22C25A578();
        sub_22C259E7C();
        sub_22BE22944();
        sub_22BE3B620(v185, v186);

        sub_22C0E9A74();
        sub_22BE1AE58();
        v187 = sub_22C25AB28();
        type metadata accessor for AST.FlatExpr(v187);
        sub_22BE1ACEC();
        goto LABEL_78;
      case 13:
        sub_22C259E7C();
        sub_22BE37B14();
        sub_22BE3B620(v235, v236);
        sub_22BE2BD40();
        sub_22C26E174();
        sub_22C25A56C();
        sub_22C101298();
        if (v157)
        {
          goto LABEL_33;
        }

        goto LABEL_71;
      case 14:
        sub_22C259E7C();
        sub_22BE37B14();
        sub_22BE3B620(v179, v180);
        sub_22BE2BD40();
        sub_22C26E174();
        sub_22C25A56C();
        sub_22C101298();
        if (v157)
        {
          goto LABEL_33;
        }

LABEL_71:
        sub_22BE1A810();
        sub_22C25A578();
        sub_22BE233E8(v21, &qword_27D9082F0, &qword_22C27AB00);
        sub_22BE379D8();
        sub_22BE1AE58();
        type metadata accessor for AST.FlatExpr(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 15:
      case 17:
        sub_22BE1A810();
        sub_22C25A578();
        type metadata accessor for AST.FlatExpr(0);
        sub_22C25ADC8();
        swift_storeEnumTagMultiPayload();
        sub_22BE20118();
        goto LABEL_4;
      case 16:
        v162 = sub_22C259E7C();
        sub_22BE3B620(v162, v298);
        v163 = *v298;
        v164 = *(*v298 + 16);
        if (!v164)
        {
          goto LABEL_15;
        }

        sub_22BE3122C(MEMORY[0x277D84F90]);
        sub_22BE34198();
        sub_22BE71680(v165, v166, v167);
        v168 = 0;
        sub_22BE19E14();
        v170 = v163 + v169;
        break;
      case 18:
      case 19:
        sub_22BE1A810();
        sub_22C25A578();
        type metadata accessor for AST.FlatExpr(0);
        sub_22C25ADC8();
        goto LABEL_78;
      default:
        sub_22BE391D0();
        v159 = sub_22BE25EFC();
        sub_22BE3B620(v159, v160);
        v161 = sub_22BE431F0();
        sub_22BE1AA68(v161, v23);
        sub_22C25A56C();
        AST.FlatValue.init(transcript:)();
        sub_22BE1A810();
        sub_22C25A578();
        sub_22BE2325C();
        sub_22BE1AE58();
        if (v157)
        {
          goto LABEL_79;
        }

        type metadata accessor for AST.FlatExpr(0);
        sub_22BE23BA8();
        goto LABEL_78;
    }

    while (v168 < *(v163 + 16))
    {
      v171 = v304;
      sub_22BE1AA68(v170 + *(v306 + 72) * v168, v304);
      sub_22BE1AA68(v171, v303);
      AST.Update.init(transcript:)();
      if (v157)
      {
        sub_22BE1A810();
        sub_22C25A578();
        sub_22BE37C6C();
        sub_22BE1AE58();
        sub_22C259A08();
        sub_22BE1AE58();
LABEL_74:

        goto LABEL_79;
      }

      sub_22BE37C6C();
      sub_22BE1AE58();
      v173 = a10[2];
      v172 = a10[3];
      if (v173 >= v172 >> 1)
      {
        sub_22BE3D1E4(v172);
        sub_22BE39E18();
        sub_22BE71680(v176, v177, v178);
      }

      ++v168;
      a10[2] = v173 + 1;
      sub_22BE25AD8();
      sub_22BE3B620(v308, a10 + v174 + *(v175 + 72) * v173);
      if (v164 == v168)
      {
LABEL_15:
        sub_22BE1A810();
        sub_22C25A578();
        sub_22C259A08();
        sub_22BE1AE58();
        v278 = sub_22C25AB28();
        type metadata accessor for AST.FlatExpr(v278);
        sub_22BE1ACEC();
LABEL_78:
        swift_storeEnumTagMultiPayload();
        goto LABEL_79;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }
}

void AST.FlatValue.init(transcript:)()
{
  sub_22BE19130();
  v103 = v4;
  v5 = sub_22C25A764();
  v6 = type metadata accessor for TranscriptProtoStatementID(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v8);
  sub_22C259BC0();
  v9 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v97 = v11;
  v12 = sub_22BE183BC();
  type metadata accessor for AST.FlatValue(v12);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v15 = sub_22BE3E890(v14);
  v16 = type metadata accessor for TranscriptProtoASTFlatValue(v15);
  v17 = sub_22BE17A18(v16);
  v100 = v18;
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v19);
  v28 = sub_22BE4202C(v20, v21, v22, v23, v24, v25, v26, v27, v93);
  v29 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(v28);
  v30 = sub_22BE19448(v29);
  MEMORY[0x28223BE20](v30);
  sub_22BE17A44();
  v32 = sub_22C259A68(v31);
  v33 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(v32);
  v34 = sub_22BE19448(v33);
  MEMORY[0x28223BE20](v34);
  sub_22BE18DFC();
  v35 = sub_22BE1B5E0();
  v37 = sub_22BE5CE4C(v35, v36);
  sub_22BE19448(v37);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  v39 = sub_22BE25334();
  v40 = type metadata accessor for TranscriptProtoAstflatValueEnum(v39);
  sub_22BE18000();
  MEMORY[0x28223BE20](v41);
  sub_22BE197B8();
  sub_22BE3EA80();
  sub_22BE22814();
  v42 = sub_22BE406A0();
  sub_22BE1AB5C(v42, v43, v40);
  if (v44)
  {
    sub_22BE233E8(v3, &qword_27D909178, &qword_22C27FD70);
    v45 = sub_22BE5CE4C(&qword_27D9156A8, &qword_22C2CCA88);
    sub_22BE43258(v45);
    sub_22BE3D554();
    v46 = sub_22C108598();
    v47 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v46);
    sub_22C259EA0(v47, v48, v49, v50, v51, v52);
    sub_22BE2325C();
  }

  else
  {
    v53 = sub_22BE44744();
    sub_22BE3B620(v53, v0);
    sub_22BE29264();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v55 = v1;
    switch(EnumCaseMultiPayload)
    {
      case 1:
      case 2:
        sub_22BE2325C();
        sub_22BE1AE58();
        *v103 = *v0;
        goto LABEL_29;
      case 3:
      case 6:
        sub_22BE2325C();
        sub_22BE1AE58();
        v59 = v0[1];
        *v103 = *v0;
        v103[1] = v59;
        goto LABEL_29;
      case 4:
        v56 = sub_22BE19EBC();
        sub_22BE3B620(v56, v2);

        sub_22C0F2FA4();
        v58 = v57;
        sub_22BE2325C();
        sub_22BE1AE58();
        sub_22C0E9830();
        sub_22BE1AE58();
        if (v1)
        {
          goto LABEL_30;
        }

        *v103 = v58;
        goto LABEL_29;
      case 5:
        sub_22BE19EBC();
        sub_22C1CF208();
        sub_22BE3B620(v63, v64);
        v65 = *v0;
        sub_22BE5CE4C(&qword_27D9156A0, &unk_22C2CCA78);
        sub_22BE3D3E0();
        v66 = sub_22C273D04();
        v67 = 0;
        sub_22C259B4C();
        v94 = v68 + 64;
        v71 = (v70 + 63) >> 6;
        v95 = v65;
        v72 = v102;
        v96 = v73;
        if ((v69 & *(v68 + 64)) != 0)
        {
          goto LABEL_17;
        }

        break;
      case 7:
        sub_22C26E174();

        sub_22C26E1D4();
        sub_22BE18190(v97);
        if (!v44)
        {
          sub_22BE2325C();
          sub_22BE1AE58();
          sub_22BE1BC24();
          v91 = sub_22BE431C0();
          v92(v91);
          goto LABEL_29;
        }

        v60 = sub_22C108358();
        v61 = sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v60);
        sub_22BE3C904(v61, v62);
        sub_22BE2325C();
        sub_22BE1AE58();
        sub_22BE18190(v97);
        if (!v44)
        {
          sub_22BE233E8(v97, &qword_27D9082F0, &qword_22C27AB00);
        }

        goto LABEL_30;
      case 8:
        sub_22BE3B168();
        v87 = sub_22BE19454();
        sub_22BE3B620(v87, v88);
        sub_22BE2C73C();
        v89 = sub_22BE261AC();
        sub_22BE1AA68(v89, v90);

        sub_22BE1B5EC();
        sub_22C26E664();
        sub_22BE2325C();
        sub_22BE1AE58();
        sub_22C259638();
        sub_22BE1AE58();
        sub_22BE18944();
        sub_22BE1AE58();
        goto LABEL_29;
      case 9:
        sub_22BE2325C();
        sub_22BE1AE58();
        goto LABEL_29;
      default:
        sub_22BE2325C();
        sub_22BE1AE58();
        *v103 = *v0;
        goto LABEL_29;
    }

LABEL_18:
    v76 = v67;
    do
    {
      v67 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      if (v67 >= v71)
      {
        sub_22BE2325C();
        sub_22BE1AE58();
        sub_22BE3BBC4();
        sub_22BE1AE58();
        *v103 = v66;
LABEL_29:
        swift_storeEnumTagMultiPayload();
        goto LABEL_30;
      }

      ++v76;
    }

    while (!*(v94 + 8 * v67));
    v104 = v55;
    sub_22BE4878C();
    for (i = v77; ; i = v75)
    {
      v78 = v74 | (v67 << 6);
      v79 = (*(v95 + 48) + 16 * v78);
      v81 = *v79;
      v80 = v79[1];
      sub_22BE1AA68(*(v95 + 56) + *(v100 + 72) * v78, v72);
      sub_22BE1AA68(v72, v99);

      AST.FlatValue.init(transcript:)();
      v55 = v104;
      if (v104)
      {
        break;
      }

      sub_22BE2325C();
      sub_22BE1AE58();
      sub_22BE270BC();
      sub_22C25977C(v82);
      v66 = v96;
      v83 = (*(v96 + 48) + 16 * v78);
      *v83 = v81;
      v83[1] = v80;
      sub_22BE39150();
      sub_22BE3B620(v101, v84);
      sub_22C25A8A0();
      if (v86)
      {
        goto LABEL_33;
      }

      *(v96 + 16) = v85;
      v72 = v102;
      if (!i)
      {
        goto LABEL_18;
      }

LABEL_17:
      v104 = v55;
      sub_22BE22BE8();
    }

    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE3BBC4();
  }

  sub_22BE1AE58();
LABEL_30:
  sub_22BE19650();
  sub_22BE18478();
}

uint64_t AST.PickType.init(transcript:)(uint64_t *a1)
{
  v2 = *(a1 + 8);
  if (v2 == 255)
  {
    v5 = sub_22BE5CE4C(&qword_27D9155B0, &unk_22C2CC7A0);
    sub_22C25AA08(v5, v6);
    sub_22C1163A0();
    v7 = sub_22C108598();
    v8 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v7);
    *v9 = v2;
    v9[1] = v1;
    sub_22C25A590(v8, v9, v10, v11, v12, v13);
    sub_22BE38AA4();
    return sub_22BE1AE58();
  }

  else
  {
    v3 = *a1;
    sub_22BE38AA4();
    sub_22BE1AE58();
    if (v2)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }
}

void AST.Update.init(transcript:)()
{
  sub_22BE19130();
  sub_22BE38A98();
  v5 = sub_22BE33FA8();
  v6 = type metadata accessor for TranscriptProtoASTFlatValue(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C2595B4();
  v10 = type metadata accessor for AST.FlatValue(v9);
  v11 = sub_22BE19448(v10);
  MEMORY[0x28223BE20](v11);
  sub_22BE18928();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22C2595A0();
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(v13);
  sub_22C101D18();
  if (v0)
  {
    sub_22BE37C6C();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25ABCC();
    AST.FlatValue.init(transcript:)();

    sub_22C0F2FA4();
    v15 = v14;
    v17 = *(v1 + 8);
    sub_22C101D18();
    sub_22C25A338();
    AST.FlatValue.init(transcript:)();
    sub_22BE37C6C();
    sub_22BE1AE58();
    sub_22BE3B620(v3, v2);
    v16 = type metadata accessor for AST.Update(0);
    *(v2 + v16[5]) = v15;
    *(v2 + v16[6]) = v17;
    sub_22BE3B620(v4, v2 + v16[7]);
  }

  sub_22BE22978();
  sub_22BE18478();
}

void TranscriptProtoASTFlatExpr.init(handwritten:)()
{
  sub_22BE19460();
  v6 = v5;
  v8 = v7;
  v9 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E94();
  v225 = v12;
  v13 = sub_22BE5CE4C(&qword_27D90EDB8, &qword_22C2B5AC0);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v16 = &v224 - v15;
  sub_22C26E1D4();
  sub_22BE179D8();
  v238 = v17;
  v239 = v18;
  MEMORY[0x28223BE20](v17);
  sub_22BE25544();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BE41E38();
  v227 = type metadata accessor for TranscriptProtoASTFlatValue(v20);
  sub_22BE179D8();
  v231 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  v230 = v23;
  v24 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v25 = sub_22BE19448(v24);
  MEMORY[0x28223BE20](v25);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v26);
  sub_22BE19E94();
  v28 = sub_22C259AC0(v27);
  v29 = type metadata accessor for AST.FlatValue(v28);
  v30 = sub_22BE17A18(v29);
  v229 = v31;
  MEMORY[0x28223BE20](v30);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v32);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v33);
  sub_22BE426BC();
  MEMORY[0x28223BE20](v34);
  sub_22BE19E94();
  v36 = sub_22C259A68(v35);
  v37 = type metadata accessor for AST.FlatExpr(v36);
  sub_22BE18000();
  MEMORY[0x28223BE20](v38);
  sub_22BE17CBC();
  v39 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  sub_22BE19448(v39);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  v42 = sub_22BE1B278(v41);
  type metadata accessor for TranscriptProtoAstflatExprEnum(v42);
  v43 = sub_22C259C20();
  v235 = v44;
  v47 = sub_22C18F17C(v43, v45, v46, v44);
  type metadata accessor for TranscriptProtoASTFlatExpr(v47);
  v237 = v8;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v234 = v6;
  v48 = sub_22BE1B5E0();
  sub_22BE1AA68(v48, v49);
  sub_22BE1AB74();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v148 = *v0;
      sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0);
      sub_22BE39150();
      sub_22BE3B620(&v0[v149], v1);
      sub_22C259650();
      sub_22C1CF208();
      sub_22BE1AA68(v150, v151);
      sub_22C259FDC();
      TranscriptProtoASTFlatValue.init(handwritten:)();
      v152 = sub_22C25974C();
      v155 = sub_22C18F17C(v152, v153, v154, v227);
      type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(v155);
      sub_22C25A658();
      v156 = v236;
      sub_22C25976C();
      sub_22BE19DC4(v157, v158, v159, v160);
      sub_22C25AB40();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      sub_22BE23DF4();
      sub_22BE1AE58();
      *v156 = v148;
      sub_22C25AB4C();
      sub_22BE2343C();
      goto LABEL_38;
    case 2u:
      LODWORD(v239) = *v0;
      v92 = *(sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20) + 64);
      sub_22BE392BC();
      v94 = v233;
      sub_22BE3B620(&v0[v93], v233);
      sub_22BE3B620(&v0[v92], v232);
      sub_22C25A1F4();
      sub_22BE1AA68(v94, v3);
      sub_22C25AB1C();
      TranscriptProtoASTFlatValue.init(handwritten:)();
      v95 = sub_22C25974C();
      v96 = v227;
      sub_22BE19DC4(v95, v97, v98, v227);
      v99 = sub_22BE289D8();
      sub_22BE1AA68(v99, v100);
      sub_22C25ABCC();
      TranscriptProtoASTFlatValue.init(handwritten:)();
      v101 = sub_22BE22B8C();
      v104 = sub_22C18F17C(v101, v102, v103, v96);
      type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(v104);
      v105 = v236;
      sub_22C259860();
      sub_22BE19DC4(v106, v107, v108, v109);
      sub_22C259860();
      sub_22BE19DC4(v110, v111, v112, v113);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      sub_22C25A260();
      sub_22BE1AE58();
      sub_22BE18944();
      sub_22BE1AE58();
      *v105 = v239;
      sub_22BE27B84();
      sub_22BE2343C();
      sub_22BE27B84();
      sub_22BE2343C();
      goto LABEL_38;
    case 3u:
      v118 = &v0[*(sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0) + 48)];
      v119 = *v118;
      v120 = *(v118 + 1);
      sub_22BE39150();
      v121 = v233;
      sub_22BE3B620(v0, v233);
      sub_22C259650();
      sub_22BE1AA68(v121, v232);
      sub_22C259FDC();
      TranscriptProtoASTFlatValue.init(handwritten:)();
      v122 = sub_22C25974C();
      v125 = sub_22C18F17C(v122, v123, v124, v227);
      type metadata accessor for TranscriptProtoASTFlatExprDotVariant(v125);
      sub_22C25A658();
      v126 = v236;
      sub_22C25976C();
      sub_22BE19DC4(v127, v128, v129, v130);
      sub_22C25AB40();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      sub_22BE23DF4();
      sub_22BE1AE58();
      sub_22C25AB4C();
      sub_22BE2343C();
      *v126 = v119;
      v126[1] = v120;
      goto LABEL_38;
    case 4u:
      v67 = *(sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10) + 48);
      sub_22BE392BC();
      v68 = v233;
      sub_22BE3B620(v0, v233);
      sub_22BE3B620(&v0[v67], v232);
      sub_22C25A1F4();
      sub_22BE1AA68(v68, v3);
      TranscriptProtoASTFlatValue.init(handwritten:)();
      v69 = sub_22BE19198();
      v70 = v227;
      sub_22BE19DC4(v69, v71, v72, v227);
      v73 = sub_22BE3E8FC();
      sub_22BE1AA68(v73, v74);
      sub_22BE44844();
      TranscriptProtoASTFlatValue.init(handwritten:)();
      v75 = sub_22BE33C68();
      sub_22BE19DC4(v75, v76, v77, v70);
      sub_22BE28D2C();
      v82 = sub_22C18F17C(v78, v79, v80, v81);
      type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(v82);
      sub_22BE28D2C();
      sub_22BE19DC4(v83, v84, v85, v86);
      sub_22C25AB40();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      sub_22C25A260();
      sub_22BE1AE58();
      sub_22BE291B0();
      sub_22BE1AE58();
      sub_22BE2590C();
      sub_22BE27B84();
      sub_22BE2343C();
      sub_22BE27B84();
      sub_22BE2343C();
      goto LABEL_38;
    case 5u:
      sub_22C1C1AF8(*v0, v50, v51, v52, v53, v54, v55, v56, v224, v225);
      v161 = sub_22BE17BC4();
      type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(v161);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      *v8 = v37;
      goto LABEL_38;
    case 6u:
      v168 = *v0;
      v226 = *(v0 + 1);
      v227 = v168;
      v169 = *(v0 + 2);
      sub_22BE5CE4C(&qword_27D9156B0, &qword_22C2CCA90);
      v170 = sub_22C273D04();
      v171 = 0;
      v238 = v170;
      v239 = v169;
      sub_22C259B4C();
      v172 = v169 + 64;
      v174 = v173 & *(v169 + 64);
      v176 = (v175 + 63) >> 6;
      v228 = v177 + 64;
      if (v174)
      {
        goto LABEL_22;
      }

      break;
    case 7u:
      v131 = *v0;
      v132 = *(*v0 + 16);
      if (v132)
      {
        v240 = MEMORY[0x277D84F90];
        v133 = sub_22C18E984();
        sub_22BE70138(v133, v134, v135);
        v136 = v240;
        sub_22BE19E14();
        v231 = v131;
        v138 = v131 + v137;
        v232 = *(v139 + 56);
        v233 = v140;
        v239 = v139;
        do
        {
          v141 = sub_22BE3CEF4();
          v233(v141);
          sub_22C26E184();
          sub_22C25A560();
          v142 = sub_22C259FF4();
          v143(v142);
          v240 = v136;
          v145 = *(v136 + 16);
          v144 = *(v136 + 24);
          if (v145 >= v144 >> 1)
          {
            v147 = sub_22BE1AAE4(v144);
            sub_22BE70138(v147, v145 + 1, 1);
            v136 = v240;
          }

          *(v136 + 16) = v145 + 1;
          v146 = v136 + 16 * v145;
          *(v146 + 32) = v8;
          *(v146 + 40) = v1;
          v138 += v232;
          --v132;
        }

        while (v132);
      }

      else
      {

        v136 = MEMORY[0x277D84F90];
      }

      type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      *v8 = v136;
      goto LABEL_45;
    case 8u:
      v199 = &v0[*(sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90) + 48)];
      v200 = *v199;
      v201 = v199[8];
      sub_22C18EB74();
      v202 = sub_22BE1A8C4();
      v203(v202);
      sub_22C26E184();
      sub_22C25A64C();
      if (v201)
      {
        v204 = 1;
      }

      else
      {
        v204 = v200;
      }

      *v16 = 0;
      v16[8] = -1;
      type metadata accessor for TranscriptProtoASTPickType(0);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v16 = v204;
      v16[8] = v201;
      sub_22C2597E4();
      v209 = sub_22C18F17C(v205, v206, v207, v208);
      type metadata accessor for TranscriptProtoASTFlatExprPickVariant(v209);
      sub_22BE3AE2C();
      v211 = v210;
      sub_22BE19DC4(v212, v213, v214, v215);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      v216 = sub_22BE31038();
      v217(v216);
      *v211 = v37;
      v211[1] = v0;
      sub_22BE2343C();
      goto LABEL_45;
    case 9u:
      v88 = sub_22C259B30();
      v89(v88);
      sub_22C26E184();
      sub_22BE3D554();
      type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      v90 = sub_22C18F1E4();
      v91(v90, v16);
      *v8 = v37;
      *(v8 + 1) = v4;
      goto LABEL_38;
    case 0xAu:
      v195 = *v0;
      v196 = *(v0 + 1);
      v197 = v0[16];
      v198 = v0[17];
      type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      *v8 = v195;
      *(v8 + 1) = v196;
      *(v8 + 16) = v197;
      *(v8 + 17) = v198 & 1;
      goto LABEL_38;
    case 0xBu:
      v63 = sub_22C259B30();
      v64(v63);
      sub_22C26E184();
      sub_22BE3D554();
      type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      v65 = sub_22C18F1E4();
      v66(v65, v16);
      *v8 = v37;
      *(v8 + 1) = v4;
      goto LABEL_38;
    case 0xCu:
      v87 = *v0;
      type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      *v8 = v87;
      goto LABEL_38;
    case 0xDu:
      v162 = &qword_27D9082F0;
      v163 = v225;
      sub_22BE27B84();
      sub_22BE424BC();
      sub_22BE3EA80();
      sub_22BE27B84();
      sub_22BE22814();
      v164 = sub_22BE406A0();
      v165 = v238;
      if (sub_22BE1AEA8(v164, v166, v238) == 1)
      {
        sub_22BE233E8(v2, &qword_27D9082F0, &qword_22C27AB00);
        v162 = 0;
        v167 = 0;
      }

      else
      {
        v167 = v2;
        sub_22C26E184();
        sub_22BE3D554();
        (*(v239 + 8))(v2, v165);
      }

      v218 = v235;
      v223 = v236;
      type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
      sub_22C25A948();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      sub_22BE233E8(v163, &qword_27D9082F0, &qword_22C27AB00);
      *v223 = v162;
      v223[1] = v167;
      goto LABEL_39;
    case 0xEu:
      v59 = sub_22C259B30();
      v60(v59);
      sub_22C26E184();
      sub_22BE3D554();
      type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      v61 = sub_22C18F1E4();
      v62(v61, v16);
      *v8 = v37;
      *(v8 + 1) = v4;
      goto LABEL_38;
    case 0xFu:
      v114 = sub_22C259B30();
      v115(v114);
      sub_22C26E184();
      sub_22BE3D554();
      type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      v116 = sub_22C18F1E4();
      v117(v116, v16);
      *v8 = v37;
      *(v8 + 1) = v4;
      goto LABEL_38;
    case 0x10u:
    case 0x12u:
      sub_22BE193D0();
      sub_22BE1AE58();
      goto LABEL_38;
    case 0x11u:
    case 0x13u:
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      goto LABEL_38;
    default:
      sub_22BE39150();
      sub_22C1CF208();
      sub_22BE3B620(v57, v58);
      sub_22C259650();
      sub_22BE1AA68(v37, v232);
      sub_22BE362B8();
      TranscriptProtoASTFlatValue.init(handwritten:)();
      sub_22BE193D0();
      sub_22BE1AE58();
      sub_22BE23DF4();
      sub_22BE1AE58();
LABEL_38:
      v218 = v235;
      goto LABEL_39;
  }

LABEL_23:
  v179 = v171;
  while (1)
  {
    v171 = v179 + 1;
    if (__OFADD__(v179, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    if (v171 >= v176)
    {
      break;
    }

    ++v179;
    if (*(v172 + 8 * v171))
    {
      sub_22BE29270();
      v174 = v181 & v180;
      while (1)
      {
        v182 = v178 | (v171 << 6);
        v183 = (*(v239 + 48) + 16 * v182);
        v185 = *v183;
        v184 = v183[1];
        v8 = v233;
        sub_22BE1AA68(*(v239 + 56) + *(v229 + 72) * v182, v233);
        sub_22BE36674();
        sub_22BE1AA68(v186, v187);

        v188 = v230;
        TranscriptProtoASTFlatValue.init(handwritten:)();
        sub_22BE23DF4();
        sub_22BE1AE58();
        sub_22BE270BC();
        sub_22C25977C(v189);
        v170 = v238;
        v190 = (*(v238 + 48) + 16 * v182);
        *v190 = v185;
        v190[1] = v184;
        sub_22BE391D0();
        sub_22BE3B620(v188, v191);
        v192 = *(v170 + 16);
        v193 = __OFADD__(v192, 1);
        v194 = v192 + 1;
        if (v193)
        {
          goto LABEL_47;
        }

        *(v170 + 16) = v194;
        if (!v174)
        {
          goto LABEL_23;
        }

LABEL_22:
        sub_22BE37764();
      }
    }
  }

  type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  sub_22C25A128();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE193D0();
  sub_22BE1AE58();
  v222 = v226;
  *v8 = v227;
  *(v8 + 1) = v222;
  *(v8 + 2) = v170;
LABEL_45:
  v218 = v235;
LABEL_39:
  sub_22BE232C8();
  swift_storeEnumTagMultiPayload();
  v219 = sub_22BE3C530();
  sub_22BE19DC4(v219, v220, v221, v218);
  sub_22BE1B328();
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoASTFlatValue.init(handwritten:)()
{
  sub_22BE19460();
  v6 = v5;
  sub_22BE4066C();
  v86 = sub_22C26E1D4();
  sub_22BE179D8();
  v84 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BE18DFC();
  sub_22C26E684();
  sub_22C259488();
  v85 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BE25544();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE20558();
  type metadata accessor for TranscriptProtoASTFlatValue(v12);
  sub_22BE179D8();
  v89 = v14;
  v90 = v13;
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v16 = sub_22BE48A8C(v15);
  type metadata accessor for AST.FlatValue(v16);
  sub_22BE179D8();
  v87 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v19);
  v21 = &v81 - v20;
  MEMORY[0x28223BE20](v22);
  v23 = sub_22C2595A0();
  v92 = type metadata accessor for TranscriptProtoAstflatValueEnum(v23);
  sub_22BE18000();
  MEMORY[0x28223BE20](v24);
  sub_22BE1955C();
  sub_22C259650();
  v91 = v6;
  v25 = sub_22BE1824C();
  sub_22BE1AA68(v25, v26);
  sub_22BE3EA80();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      *v3 = *v2;
      sub_22C259BB0();
      goto LABEL_20;
    case 3u:
    case 6u:
      v35 = v2[1];
      *v3 = *v2;
      v3[1] = v35;
      sub_22C259BB0();
      goto LABEL_20;
    case 4u:
      sub_22C1C1808(*v2, v27, v28, v29, v30, v31, v32, v33, v81, v82);
      v34 = sub_22BE17BC4();
      type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(v34);
      sub_22BE34080();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v3 = v0;
      sub_22C259BB0();
      goto LABEL_20;
    case 5u:
      v44 = *v2;
      sub_22BE5CE4C(&qword_27D9156B0, &qword_22C2CCA90);
      sub_22BE3D3E0();
      sub_22C273D04();
      v45 = 0;
      sub_22C259B4C();
      v46 = v44 + 64;
      i = v47 & *(v44 + 64);
      v50 = (v49 + 63) >> 6;
      v86 = v51;
      v83 = v51 + 64;
      v84 = v44;
      v81 = v3;
      v82 = v4;
      if (i)
      {
        goto LABEL_9;
      }

      break;
    case 7u:
      v36 = v85;
      sub_22C18EB74();
      v37 = sub_22BE37490();
      v38(v37);
      sub_22C259E94();
      sub_22BE36674();
      v39();
      v40 = sub_22C26E674();
      sub_22C26E654();
      sub_22C25A560();
      type metadata accessor for TranscriptProtoStatementID(0);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v41 = *(v36 + 8);
      v42 = sub_22BE1A8C4();
      v41(v42);
      v43 = sub_22BE260B8();
      v41(v43);
      *v3 = v40;
      v3[1] = v1;
      v3[2] = v2;
      sub_22C259BB0();
      goto LABEL_20;
    case 8u:
      sub_22BE286F0();
      v68 = sub_22BE29454();
      v69(v68);
      sub_22C26E184();
      sub_22BE3D554();
      v70 = sub_22BE232C8();
      v71(v70);
      *v3 = v0;
      v3[1] = v1;
      sub_22C259BB0();
      goto LABEL_20;
    case 9u:
      sub_22C259BB0();
      goto LABEL_20;
    default:
      *v3 = *v2;
      sub_22C259BB0();
      goto LABEL_20;
  }

LABEL_10:
  v53 = v45;
  while (1)
  {
    v45 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    if (v45 >= v50)
    {
      break;
    }

    ++v53;
    if (*(v46 + 8 * v45))
    {
      sub_22BE29270();
      for (i = v55 & v54; ; i &= i - 1)
      {
        v56 = v52 | (v45 << 6);
        v57 = *(v84 + 56);
        v58 = (*(v84 + 48) + 16 * v56);
        v59 = v58[1];
        v85 = *v58;
        sub_22BE1AA68(v57 + *(v87 + 72) * v56, v21);
        sub_22BE39E94();
        sub_22BE1AA68(v60, v61);

        v62 = v88;
        TranscriptProtoASTFlatValue.init(handwritten:)();
        sub_22BE23DF4();
        sub_22BE1AE58();
        sub_22BE270BC();
        sub_22C25977C(v63);
        v64 = (*(v86 + 48) + 16 * v56);
        *v64 = v85;
        v64[1] = v59;
        sub_22BE391D0();
        sub_22BE3B620(v62, v65);
        sub_22C25A8A0();
        if (v67)
        {
          break;
        }

        *(v86 + 16) = v66;
        v3 = v81;
        v4 = v82;
        if (!i)
        {
          goto LABEL_10;
        }

LABEL_9:
        sub_22C25AC70();
      }

      goto LABEL_22;
    }
  }

  type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  sub_22BE34080();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v86;
  sub_22C259BB0();
LABEL_20:
  swift_storeEnumTagMultiPayload();
  sub_22BE32EE0();
  sub_22BE19DC4(v72, v73, v74, v75);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE23DF4();
  sub_22BE1AE58();
  sub_22BE233E8(v4, &qword_27D909178, &qword_22C27FD70);
  v76 = sub_22C1088AC();
  sub_22BE3B620(v76, v4);
  sub_22BE25FFC();
  sub_22BE19DC4(v77, v78, v79, v80);
  sub_22BE1AABC();
}

uint64_t TranscriptProtoASTPickType.init(handwritten:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a2 & 1;
  if (a2)
  {
    a1 = 1;
  }

  *a3 = 0;
  *(a3 + 8) = -1;
  type metadata accessor for TranscriptProtoASTPickType(0);
  sub_22BE48874();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a3 = a1;
  *(a3 + 8) = v4;
  return result;
}

void TranscriptProtoASTFlatExprUpdateVariant.init(handwritten:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B254();
  v5 = type metadata accessor for AST.FlatValue(v4);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE294E0();
  v7 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v9);
  sub_22BE2EDB8();
  sub_22BE1AA68(v1, v3);
  sub_22C25A338();
  TranscriptProtoASTFlatValue.init(handwritten:)();
  v10 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v11 = sub_22C25974C();
  v14 = sub_22C18F17C(v11, v12, v13, v10);
  type metadata accessor for AST.Update(v14);
  sub_22C25A6A0();

  sub_22C1C1808(v15, v16, v17, v18, v19, v20, v21, v22, v37, v38);
  v24 = v23;
  sub_22BE1AA68(v1 + *(v2 + 28), v3);
  sub_22C25A894();
  TranscriptProtoASTFlatValue.init(handwritten:)();
  v25 = sub_22BE22B8C();
  sub_22BE19DC4(v25, v26, v27, v10);
  v28 = *(v1 + *(v2 + 24));
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  sub_22C25975C();
  sub_22BE19DC4(v29, v30, v31, v32);
  sub_22C25975C();
  sub_22BE19DC4(v33, v34, v35, v36);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v0 = v24;
  sub_22BE2EDC8();
  sub_22BE2343C();
  *(v0 + 8) = v28;
  sub_22BE1AABC();
}

uint64_t sub_22C248824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AST.PickType.init(transcript:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_22C2488D0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  result = AST.PrefixOp.init(transcript:)(&v4);
  *a2 = result;
  return result;
}

uint64_t sub_22C248914@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  result = AST.InfixOp.init(transcript:)(&v4);
  *a2 = result;
  return result;
}

void ToolParameterValue.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A05C();
  sub_22C272594();
  sub_22BE179D8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v4);
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE2558C();
  v7 = type metadata accessor for TranscriptProtoToolParameterValueEnum(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE188B0();
  sub_22C25AA44();
  sub_22C102D6C();
  if (v0)
  {
    sub_22C259518();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C18F458();
    v9 = sub_22BE3911C();
    v10(v9);
    v11 = *(v2 + 16);
    v12 = sub_22BE1B5E0();
    v11(v12);
    v13 = sub_22BE196A8();
    v11(v13);
    sub_22C272864();
    v14 = *(v2 + 8);
    v15 = sub_22BE39EAC();
    v14(v15);
    sub_22C259518();
    sub_22BE1AE58();
    v16 = sub_22BE1AB74();
    v14(v16);
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoToolParameterValue.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE3129C();
  v15 = v14;
  sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v16);
  sub_22BE1955C();
  sub_22C272874();
  sub_22BE41130();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22BE25544();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BE41E38();
  v22 = type metadata accessor for ToolParameterValue(v21);
  v23 = sub_22BE19448(v22);
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE2F294();
  v60 = type metadata accessor for TranscriptProtoToolParameterValueEnum(v24);
  sub_22BE18000();
  MEMORY[0x28223BE20](v25);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v26);
  sub_22BE3E3EC(v27, v28, v29, v30, v31, v32, v33, v34, v58);
  v35 = sub_22BE19EBC();
  sub_22BE1AA68(v35, v12);
  sub_22BE286F0();
  v36 = sub_22BE191C0();
  v37(v36);
  v38 = sub_22C259D90();
  v39(v38, v13, v11);
  sub_22C272854();
  if (a10)
  {
    sub_22C259500();
    sub_22BE1AE58();
    v40 = *(v18 + 8);
    v41 = sub_22BE27A44();
    v40(v41);
    v42 = sub_22BE25C94();
    v40(v42);
  }

  else
  {
    v43 = v15;
    v44 = *(v18 + 8);
    v45 = sub_22BE27A44();
    v44(v45);
    v46 = sub_22BE25C94();
    v44(v46);
    v47 = sub_22BE3AF28();
    v48(v47);
    sub_22BE37AE4();
    sub_22BE3B620(v10, v59);
    v49 = sub_22BE38960();
    v52 = sub_22C18F17C(v49, v50, v51, v60);
    type metadata accessor for TranscriptProtoToolParameterValue(v52);
    sub_22BE48874();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C259500();
    sub_22BE1AE58();
    sub_22BE233E8(v43, &qword_27D90F038, &qword_22C297100);
    v53 = sub_22BE200D4();
    sub_22BE3B620(v53, v54);
    v55 = sub_22BE2500C();
    sub_22BE19DC4(v55, v56, v57, v60);
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

void TranscriptProtoDynamicEnumerationEntityStatement.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A6AC();
  sub_22C18F934(v4);
  sub_22C271904();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE3C444(v6, v38);
  v7 = sub_22BE5CE4C(&qword_27D9090E8, &qword_22C2B5A90);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE20168(v9, v39);
  v10 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v11);
  sub_22BE2379C();
  v12 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A8B4();
  v14 = sub_22BE37EE0();
  v15(v14, v3, v10);
  v16 = sub_22C26E674();
  v17 = sub_22C26E654();
  v18 = sub_22C25A4A0();
  type metadata accessor for TranscriptProtoStatementID(v18);
  sub_22C25A3A8();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v19 = sub_22C259ED8();
  v20(v19);
  *v2 = v16;
  *(v2 + 8) = v17;
  *(v2 + 16) = v1;
  v21 = sub_22BE33C68();
  v24 = sub_22C259E00(v21, v22, v23);
  type metadata accessor for DynamicEnumerationEntityStatement(v24);
  v25 = sub_22C259F08();
  v26(v25);
  sub_22C25A48C();
  ContextProtoDynamicEnumerationEntity.init(handwritten:)();
  if (v0)
  {
    sub_22BE3E76C();
    sub_22BE1AE58();
    sub_22BE233E8(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  else
  {
    type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
    sub_22C25ADE0();
    sub_22BE25FFC();
    sub_22BE19DC4(v27, v28, v29, v30);
    v31 = sub_22BFB1A7C();
    v33 = sub_22BE33738(v31, v32);
    type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(v33);
    sub_22BE33FC0();
    sub_22BE32EE0();
    sub_22C25AD2C(v34, v35, v36, v37);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3E76C();
    sub_22BE1AE58();
    sub_22BE196A8();
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void DynamicEnumerationEntityStatement.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A430();
  v2 = sub_22BE2054C(v1);
  v3 = type metadata accessor for ContextProtoDynamicEnumerationEntity(v2);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22C259BA0(v5);
  sub_22C271904();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE1955C();
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE197B8();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE28FD8();
  sub_22C25AD70();
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE39380();
  }

  else
  {
    sub_22C25A96C();
    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
    sub_22C25A53C();
    sub_22C25A858();
    sub_22C102F4C();
    sub_22C259FDC();
    DynamicEnumerationEntity.init(transcript:)();
    sub_22BE39380();
    v10 = sub_22BE41FB4();
    v11(v10);
    v12 = type metadata accessor for DynamicEnumerationEntityStatement(0);
    v13 = sub_22C25A748(v12);
    v14(v13);
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void SpanMatchedEntityStatement.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v41 = v11;
  v12 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE20310(v14, v37);
  v15 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v18 = sub_22BE415D8(v17);
  type metadata accessor for ContextProtoSpanMatchedEntity(v18);
  sub_22BE18000();
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  sub_22BE4682C(v20);
  v21 = sub_22C270FD4();
  sub_22BE179D8();
  v40 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22BE17CBC();
  v24 = type metadata accessor for TranscriptProtoStatementID(0);
  v25 = sub_22BE19448(v24);
  MEMORY[0x28223BE20](v25);
  sub_22BE28FD8();
  sub_22C26E684();
  sub_22BE41130();
  MEMORY[0x28223BE20](v26);
  sub_22BE188B0();
  sub_22C1026C4();
  if (a10)
  {
    sub_22BE3C1A8();
  }

  else
  {

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
    sub_22C25A73C();
    sub_22C103994();
    sub_22BE22814();
    sub_22C0FC7A8(v42, v27, v28, v29, v30, v31, v32, v33, v10, v21);

    sub_22C0F436C();
    sub_22C270FA4();
    sub_22BE3CC7C();
    sub_22BE3C1A8();
    v34 = sub_22BE426E8();
    v35(v34);
    v36 = type metadata accessor for SpanMatchedEntityStatement(0);
    (*(v40 + 32))(v41 + *(v36 + 20), v38, v39);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoSpanMatchedEntityStatement.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A6AC();
  sub_22C18F934(v4);
  sub_22C270FD4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE3C444(v6, v38);
  v7 = sub_22BE5CE4C(&qword_27D909138, &qword_22C2B5A80);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE20168(v9, v39);
  v10 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v11);
  sub_22BE2379C();
  v12 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A8B4();
  v14 = sub_22BE37EE0();
  v15(v14, v3, v10);
  v16 = sub_22C26E674();
  v17 = sub_22C26E654();
  v18 = sub_22C25A4A0();
  type metadata accessor for TranscriptProtoStatementID(v18);
  sub_22C25A3A8();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v19 = sub_22C259ED8();
  v20(v19);
  *v2 = v16;
  *(v2 + 8) = v17;
  *(v2 + 16) = v1;
  v21 = sub_22BE33C68();
  v24 = sub_22C259E00(v21, v22, v23);
  type metadata accessor for SpanMatchedEntityStatement(v24);
  v25 = sub_22C259F08();
  v26(v25);
  sub_22C25A48C();
  ContextProtoSpanMatchedEntity.init(handwritten:)();
  if (v0)
  {
    sub_22BE3E76C();
    sub_22BE1AE58();
    sub_22BE233E8(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  else
  {
    type metadata accessor for ContextProtoSpanMatchedEntity(0);
    sub_22C25ADE0();
    sub_22BE25FFC();
    sub_22BE19DC4(v27, v28, v29, v30);
    v31 = sub_22BFB1A7C();
    v33 = sub_22BE33738(v31, v32);
    type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(v33);
    sub_22BE33FC0();
    sub_22BE32EE0();
    sub_22C25AD2C(v34, v35, v36, v37);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3E76C();
    sub_22BE1AE58();
    sub_22BE196A8();
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ExecutorError.init(transcript:)()
{
  sub_22BE19130();
  v4 = sub_22C25A3B4(v3);
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v7);
  sub_22BE2EDB8();
  v8 = sub_22BE200D4();
  v10 = sub_22BE5CE4C(v8, v9);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE25334();
  type metadata accessor for TranscriptProtoExecutorErrorEnum(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE188B0();
  sub_22BE354DC();
  sub_22BE22814();
  sub_22BE23B00(v1);
  if (v23)
  {
    sub_22BE233E8(v1, &qword_27D90E818, &qword_22C2AE5A0);
    v14 = sub_22BE5CE4C(&qword_27D9156B8, &unk_22C2CCA98);
    sub_22BE43258(v14);
    sub_22BE3D554();
    v15 = sub_22C108598();
    v16 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v15);
    sub_22C259EA0(v16, v17, v18, v19, v20, v21);
    sub_22BE35D00();
    sub_22BE1AE58();
  }

  else
  {
    v22 = sub_22BE44744();
    sub_22BE3B620(v22, v2);
    sub_22BE1AB5C(v2, 1, v5);
    if (v23)
    {
      sub_22BE35D00();
      sub_22BE1AE58();
      v32 = 1;
      v31 = v34;
    }

    else
    {
      sub_22BE3C670();
      v24 = sub_22BF0AFB8();
      sub_22BE3B620(v24, v25);
      sub_22BE26170();
      v26 = sub_22BE18240();
      sub_22BE1AA68(v26, v27);
      v28 = *(v0 + 16);
      objc_allocWithZone(MEMORY[0x277CCA9B8]);

      v29 = sub_22BE19454();
      sub_22C25A990(v29, v30, v28);
      v31 = v34;
      sub_22C26E5E4();
      sub_22BE35D00();
      sub_22BE1AE58();
      sub_22BE38A00();
      sub_22BE1AE58();
      sub_22BE39EAC();
      sub_22BE1AE58();
      v32 = 0;
    }

    v33 = sub_22C26E5D4();
    sub_22BE19DC4(v31, v32, 1, v33);
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void SessionCoordinatorError.init(transcript:)()
{
  sub_22BE19130();
  v2 = sub_22C259D80();
  v3 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v2);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22C2595A0();
  type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE188B0();
  sub_22C10298C();
  if (v0)
  {
    sub_22C259978();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE180C8();
    swift_getEnumCaseMultiPayload();
    sub_22BE3C670();
    v8 = sub_22BE1824C();
    sub_22BE3B620(v8, v9);
    sub_22BE26170();
    v10 = sub_22BE1AB1C();
    sub_22BE1AA68(v10, v11);
    v12 = *(v1 + 16);
    objc_allocWithZone(MEMORY[0x277CCA9B8]);

    v13 = sub_22BE3E8FC();
    sub_22C25A990(v13, v14, v12);
    sub_22C26E5E4();
    sub_22C259978();
    sub_22BE1AE58();
    sub_22C25A1D0();
    sub_22BE1AE58();
    sub_22BE36680();
    sub_22BE1AE58();
    type metadata accessor for SessionCoordinatorError(0);
    sub_22BE23BA8();
    swift_storeEnumTagMultiPayload();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

void PlannerError.init(transcript:)()
{
  sub_22BE19130();
  sub_22BE38A98();
  v4 = sub_22BE2054C(v3);
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v4);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE18928();
  MEMORY[0x28223BE20](v7);
  sub_22BE26800();
  v8 = sub_22BE2684C();
  v10 = sub_22BE5CE4C(v8, v9);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE25334();
  v13 = type metadata accessor for TranscriptProtoPlannerErrorEnum(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  sub_22BE188B0();
  sub_22BE354DC();
  sub_22BE22814();
  v15 = sub_22BE406A0();
  sub_22BE1AB5C(v15, v16, v13);
  if (v17)
  {
    sub_22BE233E8(v1, &qword_27D90E830, &qword_22C2AE5B0);
    v18 = sub_22BE5CE4C(&qword_27D9156C0, &unk_22C2CCAA8);
    v19 = sub_22BE43258(v18);
    v21 = v20;
    v22 = sub_22C108598();
    v23 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v22);
    *v24 = v19;
    v24[1] = v21;
    sub_22C25A590(v23, v24, v25, v26, v27, v28);
    sub_22BE3405C();
    sub_22BE1AE58();
  }

  else
  {
    v29 = sub_22BE44744();
    sub_22BE3B620(v29, v2);
    sub_22BE25EFC();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      sub_22BE3405C();
    }

    else
    {
      sub_22BE3C670();
      v31 = sub_22BE1824C();
      sub_22BE3B620(v31, v32);
      sub_22BE26170();
      v33 = sub_22BE1B18C();
      sub_22BE1AA68(v33, v34);
      v35 = *(v0 + 16);
      v36 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_22C25AC4C();

      v37 = sub_22BE336E8();
      sub_22C25A990(v37, v38, v35);
      sub_22C26E5E4();
      sub_22BE3405C();
      sub_22BE1AE58();
      sub_22C25A1D0();
      sub_22BE1AE58();
      sub_22BE36680();
    }

    sub_22BE1AE58();
    type metadata accessor for PlannerError(0);
    sub_22BE31160();
    swift_storeEnumTagMultiPayload();
  }

  sub_22BE22978();
  sub_22BE18478();
}

void TranscriptProtoSessionCoordinatorError.init(handwritten:)()
{
  sub_22BE19460();
  sub_22BE1B254();
  sub_22C26E5D4();
  sub_22C259488();
  MEMORY[0x28223BE20](v2);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22BE39EE8();
  type metadata accessor for SessionCoordinatorError(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE2F294();
  v7 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE18DFC();
  v9 = sub_22BE431F0();
  sub_22BE1AA68(v9, v1);
  sub_22BE180C8();
  swift_getEnumCaseMultiPayload();
  sub_22C18F458();
  v10 = sub_22BE33B3C();
  v11(v10);
  sub_22C11634C();
  v12 = sub_22BE1B18C();
  v13(v12);
  sub_22C25A08C();
  TranscriptProtoIntelligenceFlowError.init(handwritten:)();
  v14 = sub_22BE1B5E0();
  v15(v14);
  sub_22BE232C8();
  swift_storeEnumTagMultiPayload();
  v16 = sub_22BE38960();
  v19 = sub_22C18F17C(v16, v17, v18, v7);
  type metadata accessor for TranscriptProtoSessionCoordinatorError(v19);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE233E8(v0, &qword_27D90E800, &qword_22C2AE590);
  v20 = sub_22C259E5C();
  sub_22BE3B620(v20, v21);
  v22 = sub_22BE2500C();
  sub_22BE19DC4(v22, v23, v24, v7);
  sub_22BE1AABC();
}

void TranscriptProtoPlannerError.init(handwritten:)()
{
  sub_22BE19460();
  sub_22BE1B254();
  sub_22C26E5D4();
  sub_22C259488();
  MEMORY[0x28223BE20](v2);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22BE39EE8();
  type metadata accessor for PlannerError(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE1AD20();
  v7 = type metadata accessor for TranscriptProtoPlannerErrorEnum(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE18DFC();
  v9 = sub_22BE431F0();
  sub_22BE1AA68(v9, v1);
  sub_22BE289D8();
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_22C18F458();
    v10 = sub_22BE1AEE4();
    v11(v10);
    sub_22C11634C();
    v12 = sub_22BE1B18C();
    v13(v12);
    sub_22C25A08C();
    TranscriptProtoIntelligenceFlowError.init(handwritten:)();
    v14 = sub_22BE1B5E0();
    v15(v14);
  }

  sub_22BE232C8();
  swift_storeEnumTagMultiPayload();
  v16 = sub_22BE38960();
  v19 = sub_22C18F17C(v16, v17, v18, v7);
  type metadata accessor for TranscriptProtoPlannerError(v19);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE233E8(v0, &qword_27D90E830, &qword_22C2AE5B0);
  v20 = sub_22C259E5C();
  sub_22BE3B620(v20, v21);
  v22 = sub_22BE2500C();
  sub_22BE19DC4(v22, v23, v24, v7);
  sub_22BE1AABC();
}

void TranscriptProtoExecutorError.init(handwritten:)()
{
  sub_22BE19460();
  sub_22BE1B254();
  sub_22C26E5D4();
  sub_22C259488();
  MEMORY[0x28223BE20](v4);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE39EE8();
  v7 = type metadata accessor for ExecutorError(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE1AD20();
  v10 = type metadata accessor for TranscriptProtoExecutorErrorEnum(v9);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE18DFC();
  v12 = sub_22BE431F0();
  sub_22BE1AA68(v12, v3);
  v13 = 1;
  v14 = sub_22BE406A0();
  if (sub_22BE1AEA8(v14, v15, v1) != 1)
  {
    sub_22C18F458();
    v16 = sub_22BE1AEE4();
    v17(v16);
    sub_22C11634C();
    v18 = sub_22BE1B18C();
    v19(v18);
    sub_22C25A08C();
    TranscriptProtoIntelligenceFlowError.init(handwritten:)();
    v20 = sub_22BE1B5E0();
    v21(v20);
    v13 = 0;
  }

  v22 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE19DC4(v2, v13, 1, v22);
  v23 = sub_22BE38960();
  v26 = sub_22C18F17C(v23, v24, v25, v10);
  type metadata accessor for TranscriptProtoExecutorError(v26);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE233E8(v0, &qword_27D90E818, &qword_22C2AE5A0);
  v27 = sub_22C259E5C();
  sub_22BE3B620(v27, v28);
  v29 = sub_22BE2500C();
  sub_22BE19DC4(v29, v30, v31, v10);
  sub_22BE1AABC();
}

void ActionSuccess.UndoContext.init(transcript:)()
{
  sub_22BE2BB34();
  sub_22BE3C4D0();
  v1 = sub_22C26E1D4();
  v2 = sub_22BE19448(v1);
  MEMORY[0x28223BE20](v2);
  sub_22BE18DFC();
  v3 = sub_22BE1AEE4();
  v5 = sub_22BE5CE4C(v3, v4);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE23E58();
  sub_22C26E174();
  sub_22C101298();
  v7 = sub_22BF0AFB8();
  sub_22BE233E8(v7, v8, &qword_22C27AB00);
  if (!v0)
  {

    sub_22BE232C8();
    sub_22C25AA5C();
    sub_22C26E944();
  }

  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE36324();
  sub_22BEE93D4();
}

void TranscriptProtoUndoContext.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259F34();
  sub_22C26E1D4();
  sub_22BE41130();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE1955C();
  sub_22C26E934();
  v7 = sub_22C26E184();
  v9 = v8;
  v10 = sub_22BE18240();
  v11(v10);
  sub_22C26E914();
  sub_22C25A2F0();
  v12 = sub_22C26E924();
  v13 = sub_22C25A77C();
  v14 = type metadata accessor for TranscriptProtoUndoContext(v13);
  sub_22C25AE04(v14);
  sub_22C26E954();
  sub_22BE18524();
  (*(v15 + 8))(v1);
  *v0 = v7;
  v0[1] = v9;
  v0[2] = v2;
  v0[3] = v3;
  v0[4] = v12;
  v0[5] = v5 + 8;
  sub_22BE22978();
  sub_22BE18478();
}

void ActionSuccess.FollowUpAction.init(transcript:)()
{
  v1 = sub_22BE1B254();
  v2 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(v1);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE18DFC();
  v4 = sub_22C26E8B4();
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE19338();
  sub_22C25ABB4();
  sub_22C1011A8();
  if (!v0)
  {
    sub_22C25A6DC();
    ActionSuccess.FollowUpAction.ExecutableAction.init(transcript:)();
    sub_22C25A730();
    sub_22C26E8C4();
  }

  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22C25A6E8();
}

void ActionSuccess.FollowUpAction.ExecutableAction.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AA20();
  v4 = v3;
  sub_22BE5CE4C(&qword_27D9155A0, &unk_22C2CC790);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE25334();
  v7 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE18928();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22C2595A0();
  v11 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(v10);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE197B8();
  sub_22C25AD70();
  sub_22C1010B8();
  if (v0)
  {
    sub_22BE32C98();
    sub_22BE1AE58();
  }

  else
  {
    v13 = sub_22BE19EBC();
    sub_22BE3B620(v13, v1);
    v14 = sub_22C1088E8();
    sub_22BE1AA68(v14, v2);

    v15 = sub_22BE41FB4();
    sub_22BE29D7C(v15, v16);
    if (qword_27D906E30 != -1)
    {
      sub_22BE40640(&qword_27D906E30);
    }

    sub_22BE489E0(&qword_27D9155A8);
    sub_22BE3C968();
    sub_22C26DB54();
    v17 = sub_22BE41FB4();
    sub_22BE29DD4(v17, v18);
    sub_22C26E884();
    sub_22BE32C98();
    sub_22BE1AE58();
    sub_22C25A110();
    sub_22BE1AE58();
    sub_22BE291B0();
    sub_22BE1AE58();
    v19 = *MEMORY[0x277D1C480];
    sub_22C26E8B4();
    sub_22BE1834C();
    (*(v20 + 104))(v4, v19);
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoFollowUpAction.init(handwritten:)()
{
  sub_22BE1B254();
  v2 = sub_22C26E8B4();
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE19338();
  v4 = sub_22BE5CE4C(&qword_27D90E930, &unk_22C2AE610);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  sub_22C26E8D4();
  sub_22C25A08C();
  TranscriptProtoFollowUpActionExecutableAction.init(handwritten:)();
  if (v1)
  {
    sub_22C26E8E4();
    sub_22BE18524();
    (*(v6 + 8))(v0);
  }

  else
  {
    v7 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
    v8 = sub_22BE3C530();
    sub_22BE19DC4(v8, v9, v10, v7);
    v11 = sub_22BE38960();
    v14 = sub_22C259E00(v11, v12, v13);
    type metadata accessor for TranscriptProtoFollowUpAction(v14);
    sub_22BE48874();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26E8E4();
    sub_22BE18524();
    (*(v15 + 8))(v0);
    sub_22BE200D4();
    sub_22BE2343C();
  }

  sub_22C25A6E8();
}

void TranscriptProtoFollowUpActionExecutableAction.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE4066C();
  sub_22C26E8A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v2);
  sub_22BE374E4();
  sub_22C26E8B4();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v3);
  sub_22BE19338();
  v4 = sub_22BE5CE4C(&qword_27D90E948, &qword_22C2B5A50);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE3A208();
  type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(v6);
  v7 = sub_22C259C00();
  v29 = v8;
  v11 = sub_22C18F17C(v7, v9, v10, v8);
  type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(v11);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v12 = sub_22BE36318();
  v13(v12);
  v14 = sub_22BE1B18C();
  if (v15(v14) == *MEMORY[0x277D1C480])
  {
    v16 = sub_22BE1B18C();
    v17(v16);
    sub_22BE286F0();
    v18 = sub_22BE29454();
    v19(v18);
    sub_22C25A080();
    v20 = sub_22BE38FD8();
    v21(v20);
    TranscriptProtoFollowUpActionExecutableActionLinkAction.init(handwritten:)();
    v22 = sub_22C259FF4();
    v23(v22);
    v24 = sub_22BE431C0();
    v25(v24);
    if (v0)
    {
      sub_22BE32C98();
      sub_22BE1AE58();
    }

    else
    {
      v26 = sub_22BE360A0();
      sub_22BE19DC4(v26, v27, v28, v29);
      sub_22BE2343C();
    }

    sub_22BE467E4();
    sub_22BE18478();
  }

  else
  {
    sub_22C274004();
    __break(1u);
  }
}

void ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.init(transcript:)()
{
  sub_22BE19130();
  sub_22BE5CE4C(&qword_27D9155A0, &unk_22C2CC790);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE234F4();

  v2 = sub_22BE3E79C();
  sub_22BE29D7C(v2, v3);
  if (qword_27D906E30 != -1)
  {
    sub_22BE40640(&qword_27D906E30);
  }

  sub_22BE489E0(&qword_27D9155A8);
  sub_22BE3911C();
  sub_22C26DB54();
  v4 = sub_22BE3E79C();
  sub_22BE29DD4(v4, v5);
  if (v0)
  {
    sub_22BE26148();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE38FD8();
    sub_22C26E884();
    sub_22BE26148();
    sub_22BE1AE58();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoFollowUpActionExecutableActionLinkAction.init(handwritten:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  sub_22BE5CE4C(&qword_27D9155A0, &unk_22C2CC790);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A8B4();
  v19 = sub_22C26E894();
  v20 = v6;
  sub_22C26E874();
  if (qword_27D906E28 != -1)
  {
    swift_once();
  }

  sub_22C250EF0(&qword_27D9156C8);
  sub_22BE38FD8();
  v7 = sub_22C26DC04();
  if (v0)
  {

    sub_22C26E8A4();
    sub_22BE18524();
    (*(v9 + 8))(v2);
    v10 = sub_22BE38FD8();
    v11(v10);
  }

  else
  {
    v12 = v7;
    v13 = v8;
    v14 = sub_22BE38FD8();
    v15(v14);
    sub_22C26E864();
    v16 = sub_22BE23C8C();
    v17 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(v16);
    sub_22C25AE04(v17);
    sub_22C26E8A4();
    sub_22BE18524();
    (*(v18 + 8))(v2);
    *v4 = v19;
    v4[1] = v20;
    v4[2] = v12;
    v4[3] = v13;
    v4[4] = v2;
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t ValueDisambiguation.init(transcript:)()
{

  sub_22C0F2F3C(v1, v2, v3, v4, v5, v6, v7, v8);
  if (!v0)
  {
    sub_22C26FD74();
  }

  sub_22BE26148();
  return sub_22BE1AE58();
}

void TranscriptProtoActionFailureFailure.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A6AC();
  sub_22BE1A5E4();
  sub_22C26E814();
  sub_22BE179D8();
  v68 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E94();
  v67 = v7;
  sub_22BE183BC();
  sub_22C26E7E4();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE25544();
  MEMORY[0x28223BE20](v11);
  sub_22BE4202C(v12, v13, v14, v15, v16, v17, v18, v19, v67);
  sub_22C26E794();
  sub_22C2594A0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22BE19338();
  v23 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  v25 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoActionFailureFailureEnum(v25);
  v26 = sub_22BE38960();
  v30 = sub_22C18F17C(v26, v27, v28, v29);
  type metadata accessor for TranscriptProtoActionFailureFailure(v30);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25A068();
  v31(v1, v3, v2);
  sub_22C25AA50();
  v32 = sub_22BE1B18C();
  v34 = v33(v32);
  if (v34 == *MEMORY[0x277D1C3F0])
  {
    sub_22C25A604();
    v35 = sub_22BE1B18C();
    v36(v35);
    sub_22BE286F0();
    v37 = sub_22BE18240();
    v38(v37);
    sub_22C259D90();
    sub_22BE315FC();
    v39();
    type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v0 = sub_22C26E7B4();
    v0[1] = v40;
    v0[2] = sub_22C26E7D4();
    v0[3] = v41;
    v42 = sub_22C26E7C4();
    (*(v21 + 8))(v3, v2);
    v43 = *(v9 + 8);
    v44 = sub_22BE261AC();
    v43(v44);
    v45 = sub_22BE27BA4();
    v43(v45);
    v0[4] = v42;
LABEL_32:
    sub_22C25A018();
    swift_storeEnumTagMultiPayload();
    v63 = sub_22C259724();
    sub_22BE19DC4(v63, v64, v65, v66);
    sub_22BE2343C();
    sub_22BE3C298();
    sub_22BE18478();
    return;
  }

  if (v34 == *MEMORY[0x277D1C3F8])
  {
    sub_22C25A604();
    v46 = sub_22BE1B18C();
    v47(v46);
    sub_22C18F458();
    v48 = sub_22BE37490();
    v49(v48);
    sub_22C11634C();
    v50 = sub_22BE18944();
    v51(v50);
    type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v69 = sub_22C26E804();
    v53 = v52;
    v54 = sub_22C259E6C();
    v55(v54);
    v56 = *(v68 + 8);
    v57 = sub_22BE31038();
    v56(v57);
    v58 = sub_22BE1A6BC();
    v56(v58);
    *v0 = v69;
    v0[1] = v53;
    goto LABEL_32;
  }

  if (v34 == *MEMORY[0x277D1C388] || v34 == *MEMORY[0x277D1C408] || v34 == *MEMORY[0x277D1C3D8] || v34 == *MEMORY[0x277D1C3A8] || v34 == *MEMORY[0x277D1C3E0] || v34 == *MEMORY[0x277D1C390] || v34 == *MEMORY[0x277D1C398] || v34 == *MEMORY[0x277D1C3E8] || v34 == *MEMORY[0x277D1C410] || v34 == *MEMORY[0x277D1C3B8] || v34 == *MEMORY[0x277D1C3D0] || v34 == *MEMORY[0x277D1C418])
  {
    v59 = sub_22C2598C0();
    v60(v59);
    goto LABEL_32;
  }

  if (v34 == *MEMORY[0x277D1C3C0] || v34 == *MEMORY[0x277D1C3A0] || v34 == *MEMORY[0x277D1C3B0] || v34 == *MEMORY[0x277D1C3C8] || v34 == *MEMORY[0x277D1C420] || v34 == *MEMORY[0x277D1C400])
  {
    v61 = sub_22C259E6C();
    v62(v61);
    goto LABEL_32;
  }

  sub_22C274004();
  __break(1u);
}

void ActionFailure.Failure.init(transcript:)()
{
  sub_22BE19130();
  v50 = v5;
  v6 = sub_22C25A764();
  v7 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v9);
  v18 = sub_22BE22D7C(v10, v11, v12, v13, v14, v15, v16, v17, v49);
  v19 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(v18);
  v20 = sub_22BE19448(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE18928();
  MEMORY[0x28223BE20](v21);
  sub_22BE1C17C();
  v22 = &qword_27D90E8D0;
  v23 = sub_22BE260B8();
  v25 = sub_22BE5CE4C(v23, v24);
  sub_22BE19448(v25);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE19668();
  v27 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v28);
  sub_22BE28FD8();
  sub_22BE36680();
  sub_22BE22814();
  v29 = sub_22BE1B010();
  sub_22BE1AB5C(v29, v30, v27);
  if (v31)
  {
    sub_22BE233E8(v0, &qword_27D90E8D0, &qword_22C2AE5F0);
    v32 = sub_22BE5CE4C(&qword_27D9156D0, &qword_22C2CCAB8);
    sub_22BE43258(v32);
    sub_22BE3D554();
    v33 = sub_22C108598();
    v34 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v33);
    sub_22C259EA0(v34, v35, v36, v37, v38, v39);
    sub_22BE237DC();
  }

  else
  {
    v40 = sub_22BE431F0();
    sub_22BE3B620(v40, v4);
    sub_22BE191C0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22C259FB8();
        sub_22C0E9A5C();
        sub_22BE3B620(v45, v46);
        v47 = sub_22BE385E4();
        sub_22BE1AA68(v47, v1);

        v44 = v50;
        sub_22BE1B5EC();
        sub_22C26E7F4();
        sub_22BE237DC();
        v22 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest;
        sub_22BE1AE58();
        sub_22BE1AB74();
        sub_22BE1AE58();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
        sub_22BE237DC();
        v44 = v50;
        break;
      default:
        v42 = sub_22C259FB8();
        sub_22BE3B620(v42, v3);
        v43 = sub_22BE44744();
        sub_22BE1AA68(v43, v2);

        v44 = v50;
        sub_22BE354D0();
        MEMORY[0x2318A6EA0]();
        sub_22BE237DC();
        v22 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError;
        sub_22BE1AE58();
        sub_22BE33FCC();
        sub_22BE1AE58();
        break;
    }

    sub_22C25A6B8();
    sub_22C26E794();
    sub_22BE1834C();
    (*(v48 + 104))(v44, v22);
  }

  sub_22BE19650();
  sub_22BE18478();
}

void ActionFailure.DeveloperDefinedError.init(transcript:)()
{
  sub_22BE1B214();
  sub_22C25A074();

  sub_22BE2590C();
  sub_22C25AA5C();
  MEMORY[0x2318A6EA0]();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE25C6C();
}

uint64_t ActionFailure.UnableToHandleRequest.init(transcript:)()
{
  sub_22C25A074();

  sub_22BE2590C();
  sub_22C26E7F4();
  sub_22C0E9A74();
  return sub_22BE1AE58();
}

uint64_t TranscriptProtoActionFailureDeveloperDefinedError.init(handwritten:)()
{
  sub_22C1CECFC();
  v3 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  sub_22C25AE04(v3);
  *v1 = sub_22C26E7B4();
  v1[1] = v4;
  v1[2] = sub_22C26E7D4();
  v1[3] = v5;
  sub_22C26E7C4();
  sub_22BE48298();
  sub_22C26E7E4();
  sub_22BE18524();
  result = (*(v6 + 8))(v0);
  v1[4] = v2;
  return result;
}

uint64_t TranscriptProtoActionFailureUnableToHandleRequest.init(handwritten:)()
{
  sub_22C1CECFC();
  type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  sub_22C25A0A4();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26E804();
  sub_22C25A560();
  sub_22C26E814();
  sub_22BE18524();
  result = (*(v4 + 8))(v0);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant.init(handwritten:)()
{
  sub_22C1CECFC();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  sub_22C25A0A4();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = v0;
  return result;
}

uint64_t sub_22C24D524@<X0>(uint64_t (*a1)(void)@<X1>, void (*a2)(uint64_t)@<X2>, void *a3@<X8>)
{
  result = a1();
  if (!v3)
  {
    v8 = sub_22BE48298();
    a2(v8);
    sub_22BE48874();
    result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *a3 = v4;
  }

  return result;
}

uint64_t sub_22C24D598(uint64_t a1, uint64_t a2)
{
  sub_22BE233E8(a1, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22BE1AA68(a2, a1);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  return sub_22BE19DC4(a1, 0, 1, DecorationPrePlannerPayloadEnum);
}

void QueryDecorationPrePlannerResultPayload.init(transcript:)()
{
  sub_22BE19130();
  v88 = v6;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  v8 = sub_22BE19448(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  MEMORY[0x28223BE20](v8);
  sub_22BE3C444(v9, v84);
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  v11 = sub_22BE19448(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v13 = sub_22BE28E74(v12);
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(v13);
  v15 = sub_22BE19448(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  v17 = sub_22BE3E890(v16);
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(v17);
  v19 = sub_22BE19448(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BE2F294();
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(v20);
  v22 = sub_22BE19448(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  MEMORY[0x28223BE20](v22);
  sub_22BE28FD8();
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  v24 = sub_22BE19448(DecorationPrePlannerResultPayloadRepeatedStringVariant);
  MEMORY[0x28223BE20](v24);
  sub_22BE2379C();
  v25 = sub_22BE29454();
  v27 = sub_22BE5CE4C(v25, v26);
  sub_22BE19448(v27);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  v29 = sub_22BE46DE8();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(v29);
  sub_22BE18000();
  MEMORY[0x28223BE20](v31);
  sub_22BE294E0();
  sub_22BE39EAC();
  sub_22BE22814();
  v32 = sub_22BE391E8();
  sub_22BE1AB5C(v32, v33, DecorationPrePlannerPayloadEnum);
  if (v34)
  {
    sub_22BE233E8(v0, &qword_27D90F180, &qword_22C2CCAC0);
    v35 = sub_22BE5CE4C(&qword_27D9156D8, &qword_22C2CCAC8);
    sub_22BE43258(v35);
    sub_22BE3D554();
    v36 = sub_22C108598();
    v37 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v36);
    sub_22C259EA0(v37, v38, v39, v40, v41, v42);
    sub_22BE1A438();
LABEL_4:
    sub_22BE1AE58();
  }

  else
  {
    v43 = sub_22BE19EBC();
    sub_22BE3B620(v43, v3);
    sub_22BE392D4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v63 = sub_22BE44744();
        sub_22BE3B620(v63, v5);

        sub_22C0F2F3C(v64, v65, v66, v67, v68, v69, v70, v71);
        v46 = v72;
        sub_22BE1A438();
        sub_22BE1AE58();
        sub_22BE3E76C();
        sub_22BE1AE58();
        if (!v2)
        {
          v47 = 1;
          goto LABEL_18;
        }

        break;
      case 2:
        v50 = sub_22BE44744();
        sub_22BE3B620(v50, v4);

        sub_22C0F34B4();
        v46 = v51;
        sub_22BE1A438();
        sub_22BE1AE58();
        sub_22BE20118();
        sub_22BE1AE58();
        if (!v2)
        {
          v47 = 2;
          goto LABEL_18;
        }

        break;
      case 3:
        sub_22BE44744();
        sub_22C25AC2C();
        sub_22BE3B620(v52, v53);

        sub_22C0F3740(v54, v55, v56, v57, v58, v59, v60, v61, v85, v86);
        v46 = v62;
        sub_22BE1A438();
        sub_22BE1AE58();
        sub_22C0E9A74();
        sub_22BE1AE58();
        if (!v2)
        {
          v47 = 3;
          goto LABEL_18;
        }

        break;
      case 4:
        v48 = sub_22BE44744();
        sub_22BE3B620(v48, v87);

        sub_22C0F3228();
        v46 = v49;
        sub_22BE1A438();
        sub_22BE1AE58();
        sub_22C0E9A74();
        sub_22BE1AE58();
        if (!v2)
        {
          v47 = 4;
          goto LABEL_18;
        }

        break;
      case 5:
        sub_22BE44744();
        sub_22BE2BB28();
        sub_22BE3B620(v73, v74);

        sub_22C0F3CA8(v75, v76, v77, v78, v79, v80, v81, v82, v85, v86);
        if (v2)
        {
          sub_22BE1A438();
          sub_22BE1AE58();
          sub_22C0E9A74();
          goto LABEL_4;
        }

        v46 = v83;
        sub_22BE1A438();
        sub_22BE1AE58();
        sub_22C0E9A74();
        sub_22BE1AE58();
        v47 = 5;
        goto LABEL_18;
      default:
        sub_22BE1A438();
        sub_22BE1AE58();
        v45 = sub_22BE44744();
        sub_22BE3B620(v45, v1);
        v46 = *v1;

        sub_22C0E9A74();
        sub_22BE1AE58();
        v47 = 0;
LABEL_18:
        *v88 = v46;
        *(v88 + 8) = v47;
        break;
    }
  }

  sub_22BE19650();
  sub_22BE18478();
}

void AgentPrimitiveAction.PrimitiveAction.init(transcript:)()
{
  sub_22BE19130();
  v77 = v5;
  v6 = type metadata accessor for TranscriptProtoAgentPassRequest(0);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE29178(v8, v70);
  MEMORY[0x28223BE20](v9);
  v18 = sub_22BE4202C(v10, v11, v12, v13, v14, v15, v16, v17, v71);
  v19 = type metadata accessor for TranscriptProtoAgentRequest(v18);
  v20 = sub_22BE19448(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  v22 = sub_22BE3C768(v21);
  v23 = type metadata accessor for AgentRequest(v22);
  v24 = sub_22BE19448(v23);
  MEMORY[0x28223BE20](v24);
  sub_22BE17A44();
  v74 = v25;
  v26 = sub_22BE183BC();
  type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v26);
  sub_22BE18000();
  MEMORY[0x28223BE20](v27);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v28);
  sub_22BE19E94();
  v30 = sub_22C259A68(v29);
  type metadata accessor for TranscriptProtoAgentHandoffRequest(v30);
  sub_22BE18000();
  MEMORY[0x28223BE20](v31);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v32);
  sub_22C1CEC08(v33, v34, v35, v36, v37, v38, v39, v40, v72);
  v41 = sub_22C0B1AF0();
  v43 = sub_22BE5CE4C(v41, v42);
  sub_22BE19448(v43);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  v45 = sub_22BE22BFC();
  v46 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(v45);
  sub_22BE18000();
  MEMORY[0x28223BE20](v47);
  sub_22BE294E0();
  sub_22BF6AC14();
  sub_22BE22814();
  v48 = sub_22BE26188();
  sub_22BE1AB5C(v48, v49, v46);
  if (v50)
  {
    sub_22BE233E8(v2, &qword_27D90F260, &qword_22C2AE840);
    v51 = sub_22BE5CE4C(&qword_27D9156E0, &qword_22C2CCAD0);
    sub_22BE43258(v51);
    sub_22BE3D554();
    v52 = sub_22C108598();
    v53 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v52);
    sub_22C259EA0(v53, v54, v55, v56, v57, v58);
    sub_22BE29F6C();
LABEL_11:
    sub_22BE1AE58();
    goto LABEL_15;
  }

  v59 = sub_22BE29370();
  sub_22BE3B620(v59, v4);
  sub_22BE196A8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v65 = sub_22BE44744();
    sub_22BE3B620(v65, v75);
    v66 = sub_22C259FB8();
    sub_22BE1AA68(v66, v1);
    v67 = *v1;
    v68 = v1[1];

    sub_22C25A56C();
    sub_22C103E3C();
    if (!v0)
    {
      sub_22C25A718();
      AgentRequest.init(transcript:)();
      sub_22C25A0B0();
      sub_22BE1AE58();
      *v73 = v67;
      v73[1] = v68;
      type metadata accessor for AgentHandoffRequest(0);
      sub_22BE3C6C8();
      sub_22BE3B620(v74, v73 + v69);
      sub_22BE29F6C();
      sub_22BE1AE58();
      sub_22BE1B074();
      sub_22BE1AE58();
      swift_storeEnumTagMultiPayload();
      sub_22C259620();
      v64 = v73;
      goto LABEL_14;
    }

    sub_22C25A0B0();
    sub_22BE1AE58();

    sub_22BE29F6C();
    sub_22BE1AE58();
    sub_22BE1B074();
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v61 = sub_22BE44744();
    sub_22BE3B620(v61, v76);
    sub_22BE19EBC();
    sub_22BE341B0();
    sub_22BE1AA68(v62, v63);
    sub_22C25A7A0();
    AgentPassRequest.init(transcript:)();
    sub_22BE29F6C();
    sub_22BE1AE58();
    sub_22BE366C0();
    sub_22BE1AE58();
    if (!v0)
    {
      swift_storeEnumTagMultiPayload();
      sub_22C259620();
      v64 = v3;
LABEL_14:
      sub_22BE3B620(v64, v77);
    }
  }

  else
  {
    sub_22BE29F6C();
    sub_22BE1AE58();
    sub_22BE3ACD8();
    sub_22BE1AE58();
    swift_storeEnumTagMultiPayload();
  }

LABEL_15:
  sub_22BE46D98();
  sub_22BE18478();
}

void AgentHandoffRequest.init(transcript:)()
{
  sub_22BE2BB34();
  v4 = sub_22C259D80();
  v5 = type metadata accessor for TranscriptProtoAgentRequest(v4);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE1AD20();
  v8 = type metadata accessor for AgentRequest(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE19338();
  v11 = *v2;
  v10 = v2[1];
  type metadata accessor for TranscriptProtoAgentHandoffRequest(0);

  sub_22C103E3C();
  if (v1)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A894();
    AgentRequest.init(transcript:)();
    sub_22BE379D8();
    sub_22BE1AE58();
    *v0 = v11;
    v0[1] = v10;
    type metadata accessor for AgentHandoffRequest(0);
    sub_22BE3C6C8();
    sub_22BE3B620(v3, v0 + v12);
  }

  sub_22BE36324();
  sub_22BEE93D4();
}

void AgentPassRequest.init(transcript:)()
{
  v1 = sub_22BE1B254();
  v2 = type metadata accessor for TranscriptProtoAgentRequest(v1);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  v4 = sub_22BE19820();
  v5 = type metadata accessor for AgentRequest(v4);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE18DFC();
  sub_22C25ABD8();
  sub_22C103E3C();
  if (v0)
  {
    sub_22BE366C0();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A08C();
    AgentRequest.init(transcript:)();
    sub_22BE366C0();
    sub_22BE1AE58();
    sub_22BE3C6C8();
    v7 = sub_22BE200D4();
    sub_22BE3B620(v7, v8);
  }

  sub_22C25A6E8();
}

uint64_t AgentRequest.init(transcript:)()
{
  v3 = sub_22BE1B254();
  v4 = type metadata accessor for TranscriptProtoRequest(v3);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE2558C();
  v8 = type metadata accessor for TranscriptProtoAgentRequestEnum(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE1955C();
  sub_22C25AB10();
  sub_22C1046AC();
  if (v0)
  {
    sub_22BE447F0();
  }

  else
  {
    v10 = sub_22C1088AC();
    sub_22BE3B620(v10, v1);
    v11 = sub_22BE385E4();
    sub_22BE1AA68(v11, v2);
    sub_22C25A730();
    Request.init(transcript:)();
    sub_22BE447F0();
    sub_22BE1AE58();
    sub_22BE27AC8();
  }

  return sub_22BE1AE58();
}

void TranscriptProtoPrimitiveAction.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A93C(v6);
  v7 = sub_22BE1A5E4();
  v8 = type metadata accessor for AgentPassRequest(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE28A70(v10, v55);
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE2558C();
  v13 = type metadata accessor for AgentRequest(v12);
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE2379C();
  v15 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE20168(v17, v56);
  type metadata accessor for AgentHandoffRequest(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v18);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BE195C4();
  type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v20);
  sub_22BE18000();
  MEMORY[0x28223BE20](v21);
  sub_22BE19338();
  v22 = sub_22BE5CE4C(&qword_27D90F260, &qword_22C2AE840);
  sub_22BE19448(v22);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoPrimitiveActionEnum(v24);
  v25 = sub_22BE38960();
  v29 = sub_22C18F17C(v25, v26, v27, v28);
  v30 = type metadata accessor for TranscriptProtoPrimitiveAction(v29);
  sub_22BE417E0(v30);
  sub_22BE3E784();
  v31 = sub_22BE37490();
  sub_22BE1AA68(v31, v32);
  sub_22BE36318();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v37 = sub_22C1088E8();
    sub_22BE3B620(v37, v4);
    v38 = sub_22BE44744();
    sub_22BE1AA68(v38, v5);
    v40 = *v5;
    v39 = v5[1];
    sub_22BE3F3FC();
    sub_22BE1AA68(v5 + v41, v0);

    v42 = sub_22C25A7A0();
    TranscriptProtoAgentRequest.init(handwritten:)(v42);
    if (v1)
    {

      sub_22C2596F8();
      sub_22BE1AE58();
      sub_22BE1AE58();
      sub_22BE33FCC();
      sub_22BE1AE58();
      goto LABEL_7;
    }

    v43 = type metadata accessor for TranscriptProtoAgentRequest(0);
    v44 = sub_22BE22B8C();
    v47 = sub_22C18F17C(v44, v45, v46, v43);
    type metadata accessor for TranscriptProtoAgentHandoffRequest(v47);
    sub_22BE1A140();
    sub_22C25AD2C(v48, v49, v50, v43);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C2596F8();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE2565C();
    sub_22BE1AE58();
    *v3 = v40;
    v3[1] = v39;
    sub_22BE2343C();
LABEL_10:
    sub_22C25A724();
    swift_storeEnumTagMultiPayload();
    v51 = sub_22C259724();
    sub_22BE19DC4(v51, v52, v53, v54);
    sub_22C25AD50();
    sub_22BE2343C();
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C2596F8();
    sub_22BE1AE58();
    goto LABEL_10;
  }

  v34 = sub_22C1088E8();
  sub_22BE3B620(v34, v2);
  sub_22BE385E4();
  sub_22C25AC2C();
  sub_22BE1AA68(v35, v36);
  sub_22BE362B8();
  TranscriptProtoAgentPassRequest.init(handwritten:)();
  sub_22C2596F8();
  sub_22BE1AE58();
  sub_22C259B18();
  sub_22BE1AE58();
  if (!v57)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_22BE1AE58();
LABEL_11:
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoAgentHandoffRequest.init(handwritten:)()
{
  sub_22BE19130();
  v3 = sub_22BE1B254();
  v4 = type metadata accessor for AgentRequest(v3);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE1955C();
  v6 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25CD0();
  v9 = *v1;
  v8 = v1[1];
  type metadata accessor for AgentHandoffRequest(0);
  sub_22BE3F3FC();
  v11 = sub_22C25A70C(v10);
  sub_22BE1AA68(v11, v12);

  v13 = sub_22C25A518();
  TranscriptProtoAgentRequest.init(handwritten:)(v13);
  if (v2)
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
  }

  else
  {
    v14 = type metadata accessor for TranscriptProtoAgentRequest(0);
    v15 = sub_22BE3C530();
    v18 = sub_22C18F17C(v15, v16, v17, v14);
    type metadata accessor for TranscriptProtoAgentHandoffRequest(v18);
    sub_22BE28D2C();
    sub_22BE19DC4(v19, v20, v21, v22);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C0E9A74();
    sub_22BE1AE58();
    *v0 = v9;
    v0[1] = v8;
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoAgentPassRequest.init(handwritten:)()
{
  v1 = sub_22BE1B254();
  v2 = type metadata accessor for AgentRequest(v1);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE19338();
  v4 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  sub_22BE3F3FC();
  v6 = sub_22BE27A44();
  sub_22BE1AA68(v6, v7);
  v8 = sub_22C25A08C();
  TranscriptProtoAgentRequest.init(handwritten:)(v8);
  if (v0)
  {
    sub_22C259B18();
    sub_22BE1AE58();
  }

  else
  {
    v9 = type metadata accessor for TranscriptProtoAgentRequest(0);
    v10 = sub_22BE3C530();
    sub_22BE19DC4(v10, v11, v12, v9);
    v13 = sub_22BE38960();
    v16 = sub_22C259E00(v13, v14, v15);
    type metadata accessor for TranscriptProtoAgentPassRequest(v16);
    sub_22BE48874();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C259B18();
    sub_22BE1AE58();
    sub_22BE200D4();
    sub_22BE2343C();
  }

  sub_22C25A6E8();
}

id sub_22C24F544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C272FF4();
  sub_22C25AC4C();

  if (a4)
  {
    v8 = sub_22C272E44();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v5 code:a3 userInfo:v8];

  return v9;
}

void sub_22C24F5F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22BE5CE4C(&qword_27D915CD8, &qword_22C2D1AE8);
  v34 = v4;
  v6 = sub_22C273D14();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_22C1A7AFC(0, (v33 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_22C274154();
    sub_22C272F44();
    v23 = sub_22C2741A4();
    v24 = -1 << *(v7 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    *(*(v7 + 56) + 8 * v27) = v22;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_22C24F890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22BE5CE4C(&qword_27D915CD0, &qword_22C2D1AE0);
  sub_22BE3C968();
  v44 = v4;
  v6 = sub_22C273D14();
  if (!v5[2])
  {
LABEL_28:

LABEL_29:
    *v3 = v6;
    return;
  }

  v43 = v5;
  v7 = 0;
  v8 = v5 + 8;
  sub_22BE41800();
  v12 = (v11 + 63) >> 6;
  v13 = v6 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v17;
      if (v8[v7])
      {
        sub_22BE4878C();
        v45 = v18;
        goto LABEL_9;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_29;
    }

    sub_22C25A46C();
    v3 = v2;
    if (v39 >= 64)
    {
      v41 = sub_22C25A7C8();
      sub_22C1A7AFC(v41, v42, v8);
    }

    else
    {
      sub_22BE26164();
      *v8 = v40;
    }

    v5[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    sub_22BE22BE8();
    v45 = v16;
LABEL_9:
    v19 = v14 | (v7 << 6);
    v20 = v5[7];
    v21 = (v5[6] + v19 * v15);
    v22 = v21[1];
    v48 = *v21;
    v23 = v21[3];
    v47 = v21[2];
    v24 = v21[5];
    v46 = v21[4];
    v25 = *(v20 + 8 * v19);
    if ((v44 & 1) == 0)
    {
    }

    sub_22C274154();
    sub_22C272F44();
    sub_22C272F44();
    sub_22C272F44();
    sub_22C2741A4();
    sub_22C25A4D4();
    if (((v28 << v27) & ~v13[v26]) == 0)
    {
      break;
    }

    sub_22C25A818();
    v31 = v29 | v30;
LABEL_20:
    *(v13 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v38 = (v6[6] + 48 * v31);
    *v38 = v48;
    v38[1] = v22;
    v38[2] = v47;
    v38[3] = v23;
    v38[4] = v46;
    v38[5] = v24;
    *(v6[7] + 8 * v31) = v25;
    ++v6[2];
    v5 = v43;
    if (!v45)
    {
      goto LABEL_4;
    }
  }

  sub_22C1AE434();
  while (++v32 != v34 || (v33 & 1) == 0)
  {
    v35 = v32 == v34;
    if (v32 == v34)
    {
      v32 = 0;
    }

    v33 |= v35;
    if (v13[v32] != -1)
    {
      sub_22C25A808();
      v31 = v37 + (v36 << 6);
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C24FB38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22BE5CE4C(&qword_27D915CC0, &qword_22C2D1AD0);
  v35 = v4;
  v6 = sub_22C273D14();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v34 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_22C1A7AFC(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v35 & 1) == 0)
    {
    }

    sub_22C274154();
    sub_22C272F44();
    v23 = sub_22C2741A4();
    v24 = -1 << *(v7 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    *(*(v7 + 56) + 8 * v27) = v22;
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_22C24FDFC()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  sub_22BE23C8C();
  v57 = sub_22C26E4D4();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE3C444(v7, v48);
  v8 = sub_22C26E494();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  sub_22BE35E00(v10);
  v11 = *v0;
  sub_22BE5CE4C(&qword_27D915CB8, &qword_22C2D1AC8);
  sub_22BE1804C();
  v52 = v3;
  v12 = sub_22C273D14();
  if (v11[2])
  {
    v13 = 0;
    v14 = v11 + 8;
    sub_22BE41800();
    v17 = v16 & v15;
    v19 = (v18 + 63) >> 6;
    v49 = (v20 + 16);
    v50 = v20;
    v51 = v11;
    v53 = (v5 + 32);
    v54 = (v20 + 32);
    v21 = v12 + 8;
    v22 = v20;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_10:
      v55 = *(v22 + 72);
      v27 = v11[6] + v55 * (v23 | (v13 << 6));
      if (v52)
      {
        (*v54)(v58, v27, v8);
        sub_22C25AD5C();
        (*(v28 + 32))();
      }

      else
      {
        (*v49)(v58, v27, v8);
        sub_22C25AD5C();
        (*(v29 + 16))();
      }

      sub_22C259290(&qword_28107F310, MEMORY[0x277D78248]);
      sub_22C272ED4();
      sub_22C25A4D4();
      if (((v32 << v31) & ~v21[v30]) == 0)
      {
        sub_22C1AE434();
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          if (v21[v36] != -1)
          {
            sub_22C25A808();
            v35 = v41 + (v40 << 6);
            goto LABEL_22;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      sub_22C25A818();
      v35 = v33 | v34;
LABEL_22:
      sub_22BE270BC();
      *(v21 + v43) |= v42 << v35;
      (*v54)(v12[6] + v55 * v35, v58, v8);
      (*v53)(v12[7] + v11 * v35, v56, v57);
      ++v12[2];
      v22 = v50;
      v11 = v51;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v13 >= v19)
      {
        break;
      }

      ++v24;
      if (v14[v13])
      {
        sub_22BE29270();
        v17 = v26 & v25;
        goto LABEL_10;
      }
    }

    if (v52)
    {
      sub_22C25A46C();
      if (v44 >= 64)
      {
        v46 = sub_22C25A7C8();
        sub_22C1A7AFC(v46, v47, v14);
      }

      else
      {
        sub_22BE26164();
        *v14 = v45;
      }

      v11[2] = 0;
    }
  }

  *v1 = v12;
  sub_22BE1AABC();
}

void sub_22C2501DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22BE5CE4C(&qword_27D915CA0, &qword_22C2D1AB0);
  v35 = v4;
  v6 = sub_22C273D14();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v34 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_22C1A7AFC(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v35 & 1) == 0)
    {
    }

    sub_22C274154();
    sub_22C272F44();
    v23 = sub_22C2741A4();
    v24 = -1 << *(v7 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    *(*(v7 + 56) + 8 * v27) = v22;
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_22C2504A0()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v4 = sub_22BE23C8C();
  v56 = v5(v4);
  sub_22BE179D8();
  v7 = v6;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  sub_22C0B1ABC(v9);
  v10 = *v0;
  v11 = sub_22BE1AB74();
  sub_22BE5CE4C(v11, v12);
  sub_22C0B1AF0();
  v53 = v3;
  v13 = sub_22C273D14();
  if (!v10[2])
  {
LABEL_29:

LABEL_30:
    *v1 = v13;
    sub_22BE1AABC();
    return;
  }

  v14 = 0;
  v15 = v10 + 8;
  sub_22BE41800();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v50 = (v7 + 16);
  v51 = v10;
  v52 = v7;
  v54 = (v7 + 32);
  v21 = v13 + 8;
  if ((v17 & v16) == 0)
  {
LABEL_4:
    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v14 >= v20)
      {
        break;
      }

      ++v23;
      if (v15[v14])
      {
        sub_22BE29270();
        v18 = v25 & v24;
        goto LABEL_9;
      }
    }

    if ((v53 & 1) == 0)
    {

      v1 = v0;
      goto LABEL_30;
    }

    sub_22C25A46C();
    v1 = v0;
    if (v46 >= 64)
    {
      v48 = sub_22C25A7C8();
      sub_22C1A7AFC(v48, v49, v15);
    }

    else
    {
      sub_22BE26164();
      *v15 = v47;
    }

    v10[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_9:
    v26 = v22 | (v14 << 6);
    v27 = v10[7];
    v28 = (v10[6] + 16 * v26);
    v30 = *v28;
    v29 = v28[1];
    v31 = *(v52 + 72);
    v32 = v27 + v31 * v26;
    if (v53)
    {
      (*v54)(v55, v32, v56);
    }

    else
    {
      (*v50)(v55, v32, v56);
    }

    sub_22C274154();
    sub_22C272F44();
    sub_22C2741A4();
    sub_22C25A4D4();
    if (((v35 << v34) & ~v21[v33]) == 0)
    {
      break;
    }

    sub_22C25A818();
    v38 = v36 | v37;
LABEL_21:
    *(v21 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v45 = (v13[6] + 16 * v38);
    *v45 = v30;
    v45[1] = v29;
    (*v54)(v13[7] + v31 * v38, v55, v56);
    ++v13[2];
    v10 = v51;
    if (!v18)
    {
      goto LABEL_4;
    }
  }

  sub_22C1AE434();
  while (++v39 != v41 || (v40 & 1) == 0)
  {
    v42 = v39 == v41;
    if (v39 == v41)
    {
      v39 = 0;
    }

    v40 |= v42;
    if (v21[v39] != -1)
    {
      sub_22C25A808();
      v38 = v44 + (v43 << 6);
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_22C25079C(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_22C2740B4();
      __break(1u);
      goto LABEL_21;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_22BE3B674(v8, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_18;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_22BE5CE4C(&qword_27D915CE0, &unk_22C2D1AF0);
      sub_22C273C54();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v8;
    v20[1] = v7;
    *(v19[7] + 8 * v12) = v9;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_19;
    }

    v19[2] = v23;
    ++v5;
    a2 = 1;
  }

  sub_22C24F5F0(v15, a2 & 1);
  v17 = sub_22BE3B674(v8, v7);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_20;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_21:
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD00000000000001BLL, 0x800000022C2DC010);
  sub_22C273C24();
  MEMORY[0x2318AB8D0](39, 0xE100000000000000);
  sub_22C273C94();
  __break(1u);
}

void sub_22C250A74(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_22C2740B4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_22BE3B674(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_22BE5CE4C(&qword_27D915CA8, &qword_22C2D1AB8);
      sub_22C273C54();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_22C2501DC(v14, a2 & 1);
  v16 = sub_22BE3B674(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD00000000000001BLL, 0x800000022C2DC010);
  sub_22C273C24();
  MEMORY[0x2318AB8D0](39, 0xE100000000000000);
  sub_22C273C94();
  __break(1u);
}

uint64_t sub_22C250DB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v4(v3);
  sub_22BE1834C();
  v5 = sub_22BE19454();
  v6(v5);
  return a2;
}

uint64_t sub_22C250EF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D9155A0, &unk_22C2CC790);
    sub_22BE1ACEC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C250F5C()
{
  result = qword_27D9156E8;
  if (!qword_27D9156E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9156E8);
  }

  return result;
}

uint64_t sub_22C250FBC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9156F0, type metadata accessor for Session.Event);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251068(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9156F8, type metadata accessor for Session.Transcript);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251114(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915700, type metadata accessor for Timepoint);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2511C0(uint64_t a1)
{
  result = sub_22C2511E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2511E8()
{
  result = qword_27D915708;
  if (!qword_27D915708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915708);
  }

  return result;
}

unint64_t sub_22C251290(uint64_t a1)
{
  result = sub_22C2512B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2512B8()
{
  result = qword_27D915710;
  if (!qword_27D915710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915710);
  }

  return result;
}

uint64_t sub_22C251360(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915718, type metadata accessor for Session.Event.Payload);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25140C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915720, type metadata accessor for SessionStart);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2514B8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915728, MEMORY[0x277D1C4C8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251564(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915730, MEMORY[0x277D1C4C0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251610(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915738, MEMORY[0x277D1C638]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2516BC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915740, MEMORY[0x277D1C618]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251768(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915748, type metadata accessor for DateTimeContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251814(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915750, type metadata accessor for UserTurnStarted);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2518C0(uint64_t a1)
{
  result = sub_22C2518E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2518E8()
{
  result = qword_27D915758;
  if (!qword_27D915758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915758);
  }

  return result;
}

unint64_t sub_22C251990(uint64_t a1)
{
  result = sub_22C2519B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2519B8()
{
  result = qword_27D915760;
  if (!qword_27D915760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915760);
  }

  return result;
}

unint64_t sub_22C251A60(uint64_t a1)
{
  result = sub_22C251A88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C251A88()
{
  result = qword_27D915768;
  if (!qword_27D915768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915768);
  }

  return result;
}

unint64_t sub_22C251B30(uint64_t a1)
{
  result = sub_22C251B58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C251B58()
{
  result = qword_27D915770;
  if (!qword_27D915770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915770);
  }

  return result;
}

uint64_t sub_22C251C00(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915778, type metadata accessor for Request);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251CAC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915780, type metadata accessor for RequestContent);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C251D58(uint64_t a1)
{
  result = sub_22C251D80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C251D80()
{
  result = qword_27D915788;
  if (!qword_27D915788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915788);
  }

  return result;
}

uint64_t sub_22C251E28(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915790, type metadata accessor for RequestContent.TextContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251ED4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915798, type metadata accessor for RequestContent.SpeechContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251F80(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9157A0, MEMORY[0x277D1C5B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25202C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9157A8, MEMORY[0x277D1C5A0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2520D8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9157B0, MEMORY[0x277D1C568]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C252184(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9157B8, MEMORY[0x277D1C570]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C252230(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9157C0, type metadata accessor for ExternalAgentRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2522DC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9157C8, type metadata accessor for RequestPrescribedPlan);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252388(uint64_t a1)
{
  result = sub_22C2523B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2523B0()
{
  result = qword_27D9157D0;
  if (!qword_27D9157D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9157D0);
  }

  return result;
}

unint64_t sub_22C252458(uint64_t a1)
{
  result = sub_22C252480();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252480()
{
  result = qword_27D9157D8;
  if (!qword_27D9157D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9157D8);
  }

  return result;
}

unint64_t sub_22C252528(uint64_t a1)
{
  result = sub_22C252550();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252550()
{
  result = qword_27D9157E0;
  if (!qword_27D9157E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9157E0);
  }

  return result;
}

unint64_t sub_22C2525F8(uint64_t a1)
{
  result = sub_22C252620();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252620()
{
  result = qword_27D9157E8;
  if (!qword_27D9157E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9157E8);
  }

  return result;
}

unint64_t sub_22C2526C8(uint64_t a1)
{
  result = sub_22C2526F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2526F0()
{
  result = qword_27D9157F0;
  if (!qword_27D9157F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9157F0);
  }

  return result;
}

unint64_t sub_22C252798(uint64_t a1)
{
  result = sub_22C2527C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2527C0()
{
  result = qword_27D9157F8;
  if (!qword_27D9157F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9157F8);
  }

  return result;
}

uint64_t sub_22C252868(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915800, type metadata accessor for RequestPrescribedPlan.OpenTool);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252914(uint64_t a1)
{
  result = sub_22C25293C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C25293C()
{
  result = qword_27D915808;
  if (!qword_27D915808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915808);
  }

  return result;
}

unint64_t sub_22C2529E4(uint64_t a1)
{
  result = sub_22C252A0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252A0C()
{
  result = qword_27D915810;
  if (!qword_27D915810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915810);
  }

  return result;
}

uint64_t sub_22C252AB4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915818, type metadata accessor for Action);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C252B60(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915820, type metadata accessor for ActionCancellation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C252C0C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915828, type metadata accessor for ClientAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C252CB8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915830, type metadata accessor for ClientAction.ShimParameter);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252D64(uint64_t a1)
{
  result = sub_22C252D8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252D8C()
{
  result = qword_27D915838;
  if (!qword_27D915838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915838);
  }

  return result;
}

unint64_t sub_22C252E34(uint64_t a1)
{
  result = sub_22C252E5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252E5C()
{
  result = qword_27D915840;
  if (!qword_27D915840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915840);
  }

  return result;
}

unint64_t sub_22C252F04(uint64_t a1)
{
  result = sub_22C252F2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252F2C()
{
  result = qword_27D915848;
  if (!qword_27D915848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915848);
  }

  return result;
}

uint64_t sub_22C252FD4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915850, type metadata accessor for QueryStep);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C253080(uint64_t a1)
{
  result = sub_22C2530A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2530A8()
{
  result = qword_27D915858;
  if (!qword_27D915858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915858);
  }

  return result;
}

uint64_t sub_22C253150(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915860, type metadata accessor for QueryPayload.StringQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2531FC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915868, type metadata accessor for QueryPayload.IdentifierQuery);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2532A8(uint64_t a1)
{
  result = sub_22C2532D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2532D0()
{
  result = qword_27D915870;
  if (!qword_27D915870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915870);
  }

  return result;
}

uint64_t sub_22C253378(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915878, type metadata accessor for VariableStep);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253424(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915880, MEMORY[0x277D1C2F0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2534D0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915888, type metadata accessor for RequestContent.SystemPromptResolution);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25357C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915890, type metadata accessor for StatementResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253628(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915898, type metadata accessor for QueryStepResults);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2536D4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158A0, MEMORY[0x277D1CAC0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253780(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158A8, MEMORY[0x277D1D0B0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25382C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158B0, type metadata accessor for ActionResolverRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2538D8(uint64_t a1)
{
  result = sub_22C253900();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C253900()
{
  result = qword_27D9158B8;
  if (!qword_27D9158B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9158B8);
  }

  return result;
}

unint64_t sub_22C2539A8(uint64_t a1)
{
  result = sub_22C2539D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2539D0()
{
  result = qword_27D9158C0;
  if (!qword_27D9158C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9158C0);
  }

  return result;
}

unint64_t sub_22C253A78(uint64_t a1)
{
  result = sub_22C253AA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C253AA0()
{
  result = qword_27D9158C8;
  if (!qword_27D9158C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9158C8);
  }

  return result;
}

uint64_t sub_22C253B48(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158D0, type metadata accessor for VariableSetter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253BF4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158D8, type metadata accessor for RequestContent.SystemPromptResolution.UserAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253CA0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158E0, type metadata accessor for StatementResultPayload);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253D4C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158E8, MEMORY[0x277D1CA10]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C253DF8(uint64_t a1)
{
  result = sub_22C253E20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C253E20()
{
  result = qword_27D9158F0;
  if (!qword_27D9158F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9158F0);
  }

  return result;
}

uint64_t sub_22C253EC8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158F8, type metadata accessor for ActionParameterContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253F74(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915900, MEMORY[0x277D1CD70]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254020(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915908, MEMORY[0x277D1CD68]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2540CC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915910, MEMORY[0x277D1CD58]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254178(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915918, MEMORY[0x277D1CD50]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254224(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915920, MEMORY[0x277D1C8D0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2542D0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915928, MEMORY[0x277D1CB08]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25437C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915930, MEMORY[0x277D1CDF0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254428(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915938, MEMORY[0x277D1CDE8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2544D4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915940, MEMORY[0x277D1CDD8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254580(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915948, MEMORY[0x277D1CF18]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25462C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915950, MEMORY[0x277D1D040]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2546D8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915958, MEMORY[0x277D1CE10]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254784(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915960, type metadata accessor for Candidate);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C254830(uint64_t a1)
{
  result = sub_22C254858();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C254858()
{
  result = qword_27D915968;
  if (!qword_27D915968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915968);
  }

  return result;
}

unint64_t sub_22C254900(uint64_t a1)
{
  result = sub_22C254928();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C254928()
{
  result = qword_27D915970;
  if (!qword_27D915970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915970);
  }

  return result;
}

uint64_t sub_22C2549D0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915978, type metadata accessor for Session.RecoverableError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254A7C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915980, type metadata accessor for Session.PlanGenerationError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254B28(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915988, type metadata accessor for Session.PlanGenerationModelOutputError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254BD4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915990, type metadata accessor for Expression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254C80(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915998, type metadata accessor for AnswerSynthesisExpression);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C254D2C(uint64_t a1)
{
  result = sub_22C254D54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C254D54()
{
  result = qword_27D9159A0;
  if (!qword_27D9159A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9159A0);
  }

  return result;
}

uint64_t sub_22C254DFC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159A8, type metadata accessor for PrefixExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254EA8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159B0, type metadata accessor for InfixExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254F54(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159B8, type metadata accessor for IndexExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255000(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159C0, type metadata accessor for UpdateParametersExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2550AC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159C8, type metadata accessor for UpdateParametersExpression.UpdateParameter);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255158(uint64_t a1)
{
  result = sub_22C255180();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255180()
{
  result = qword_27D9159D0;
  if (!qword_27D9159D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9159D0);
  }

  return result;
}

unint64_t sub_22C255228(uint64_t a1)
{
  result = sub_22C255250();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255250()
{
  result = qword_27D9159D8;
  if (!qword_27D9159D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9159D8);
  }

  return result;
}

unint64_t sub_22C2552F8(uint64_t a1)
{
  result = sub_22C255320();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255320()
{
  result = qword_27D9159E0;
  if (!qword_27D9159E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9159E0);
  }

  return result;
}

uint64_t sub_22C2553C8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159E8, type metadata accessor for RetrieveSpansExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255474(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159F0, type metadata accessor for RetrieveToolsExpression);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255520(uint64_t a1)
{
  result = sub_22C255548();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255548()
{
  result = qword_27D9159F8;
  if (!qword_27D9159F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9159F8);
  }

  return result;
}

uint64_t sub_22C2555F0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A00, type metadata accessor for PickExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25569C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A08, type metadata accessor for ConfirmExpression);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255748(uint64_t a1)
{
  result = sub_22C255770();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255770()
{
  result = qword_27D915A10;
  if (!qword_27D915A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915A10);
  }

  return result;
}

uint64_t sub_22C255818(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A18, type metadata accessor for StructuredSearchExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2558C4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A20, type metadata accessor for StructuredSearchExpression.StructuredSearchProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255970(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A28, type metadata accessor for PickOneExpression);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255A1C(uint64_t a1)
{
  result = sub_22C255A44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255A44()
{
  result = qword_27D915A30;
  if (!qword_27D915A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915A30);
  }

  return result;
}

uint64_t sub_22C255AEC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A38, type metadata accessor for UndoExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255B98(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A40, type metadata accessor for RejectExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255C44(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A48, type metadata accessor for CancelExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255CF0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A50, type metadata accessor for OpenExpression);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255D9C(uint64_t a1)
{
  result = sub_22C255DC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255DC4()
{
  result = qword_27D915A58;
  if (!qword_27D915A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915A58);
  }

  return result;
}

unint64_t sub_22C255E6C(uint64_t a1)
{
  result = sub_22C255E94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255E94()
{
  result = qword_27D915A60;
  if (!qword_27D915A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915A60);
  }

  return result;
}

uint64_t sub_22C255F3C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A68, type metadata accessor for SiriXFallbackExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255FE8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A70, type metadata accessor for UserConfirmExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256094(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A78, type metadata accessor for UserDisambiguateExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256140(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A80, type metadata accessor for ProgramStatement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2561EC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A88, MEMORY[0x277D1C338]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256298(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A90, MEMORY[0x277D1CC30]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256344(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A98, MEMORY[0x277D1CBF8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2563F0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AA0, MEMORY[0x277D1C4A8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25649C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AA8, MEMORY[0x277D1C550]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256548(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AB0, MEMORY[0x277D1CB78]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2565F4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AB8, MEMORY[0x277D1CCB0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2566A0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AC0, MEMORY[0x277D1C8D8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25674C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AC8, MEMORY[0x277D1CAB8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2567F8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AD0, MEMORY[0x277D1CA88]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2568A4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AD8, MEMORY[0x277D1CAB0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256950(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AE0, MEMORY[0x277D1CA18]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2569FC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AE8, MEMORY[0x277D1CAA8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256AA8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AF0, MEMORY[0x277D1CA40]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256B54(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AF8, MEMORY[0x277D1CA58]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256C00(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B00, MEMORY[0x277D1CA78]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256CAC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B08, MEMORY[0x277D1CA38]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256D58(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B10, MEMORY[0x277D1C9A8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256E04(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B18, MEMORY[0x277D1C928]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256EB0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B20, MEMORY[0x277D1C920]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256F5C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B28, MEMORY[0x277D1C948]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257008(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B30, MEMORY[0x277D1C980]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2570B4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B38, MEMORY[0x277D1C968]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257160(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B40, MEMORY[0x277D1CA08]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25720C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B48, type metadata accessor for AST.FlatExpr);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2572B8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B50, type metadata accessor for AST.Update);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C257364(uint64_t a1)
{
  result = sub_22C25738C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C25738C()
{
  result = qword_27D915B58;
  if (!qword_27D915B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915B58);
  }

  return result;
}

uint64_t sub_22C257434(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B60, type metadata accessor for AST.FlatValue);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2574E0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B68, type metadata accessor for Action.ParameterValue);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C25758C(uint64_t a1)
{
  result = sub_22C2575B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2575B4()
{
  result = qword_27D915B70;
  if (!qword_27D915B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915B70);
  }

  return result;
}

uint64_t sub_22C25765C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B78, type metadata accessor for RetrievedContextStatement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257708(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B80, type metadata accessor for DynamicEnumerationEntityStatement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2577B4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B88, type metadata accessor for SpanMatchedEntityStatement);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C257860(uint64_t a1)
{
  result = sub_22C257888();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C257888()
{
  result = qword_27D915B90;
  if (!qword_27D915B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915B90);
  }

  return result;
}

unint64_t sub_22C257930(uint64_t a1)
{
  result = sub_22C257958();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C257958()
{
  result = qword_27D915B98;
  if (!qword_27D915B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915B98);
  }

  return result;
}

uint64_t sub_22C257A00(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BA0, type metadata accessor for ToolParameterValue);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257AAC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BA8, type metadata accessor for ExternalAgentOutcome);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C257B58(uint64_t a1)
{
  result = sub_22C257B80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C257B80()
{
  result = qword_27D915BB0;
  if (!qword_27D915BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915BB0);
  }

  return result;
}

uint64_t sub_22C257C28(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BB8, MEMORY[0x277D1C498]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257CD4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BC0, MEMORY[0x277D1C490]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257D80(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BC8, MEMORY[0x277D1C488]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257E2C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BD0, MEMORY[0x277D1C478]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257ED8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BD8, MEMORY[0x277D1CE48]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257F84(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BE0, MEMORY[0x277D1C458]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258030(uint64_t a1)
{
  result = sub_22C258058();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258058()
{
  result = qword_27D915BE8;
  if (!qword_27D915BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915BE8);
  }

  return result;
}

unint64_t sub_22C258100(uint64_t a1)
{
  result = sub_22C258128();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258128()
{
  result = qword_27D915BF0;
  if (!qword_27D915BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915BF0);
  }

  return result;
}

uint64_t sub_22C2581D0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BF8, type metadata accessor for TypeConversionRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25827C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C00, type metadata accessor for TypeConversionResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C258328(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C08, type metadata accessor for QueryDecorationResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2583D4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C10, type metadata accessor for QueryDecorationPrePlannerResult);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258480(uint64_t a1)
{
  result = sub_22C2584A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2584A8()
{
  result = qword_27D915C18;
  if (!qword_27D915C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915C18);
  }

  return result;
}

uint64_t sub_22C258550(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C20, MEMORY[0x277D1C440]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2585FC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C28, MEMORY[0x277D1C448]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2586A8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C30, type metadata accessor for RequestAmendment);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258754(uint64_t a1)
{
  result = sub_22C25877C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C25877C()
{
  result = qword_27D915C38;
  if (!qword_27D915C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915C38);
  }

  return result;
}

unint64_t sub_22C258824(uint64_t a1)
{
  result = sub_22C25884C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C25884C()
{
  result = qword_27D915C40;
  if (!qword_27D915C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915C40);
  }

  return result;
}

unint64_t sub_22C2588F4(uint64_t a1)
{
  result = sub_22C25891C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C25891C()
{
  result = qword_27D915C48;
  if (!qword_27D915C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915C48);
  }

  return result;
}

uint64_t sub_22C2589C4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C50, MEMORY[0x277D1D098]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C258A70(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C58, MEMORY[0x277D1D240]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C258B1C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C60, type metadata accessor for AgentPrimitiveAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C258BC8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C68, type metadata accessor for AgentPrimitiveAction.PrimitiveAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C258C74(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C70, type metadata accessor for AgentHandoffRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C258D20(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C78, type metadata accessor for AgentPassRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258DCC(uint64_t a1)
{
  result = sub_22C258DF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258DF4()
{
  result = qword_27D915C80;
  if (!qword_27D915C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915C80);
  }

  return result;
}

uint64_t sub_22C258E9C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C88, type metadata accessor for AgentRequest);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for HandwrittenConversion(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HandwrittenConversion.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C259290(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22BE1ACEC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C259578()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C2595C8()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C25979C()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259C30()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259C58()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259C80()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259CA8()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259CD0()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259CF8()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259D20()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259D48()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

void *sub_22C259EF8()
{
  *v0 = v2;
  v0[1] = v1;
  return v0;
}

uint64_t sub_22C25A380()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C25A3B4@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = v1;
  return 0;
}

uint64_t sub_22C25A3F0()
{
  v7 = *(v5 - 96);
  *v7 = v2;
  *(v7 + 8) = v0;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v1;

  return type metadata accessor for RequestPrescribedPlan(0);
}

uint64_t sub_22C25A448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(v8 - 384) = a1;

  return swift_willThrow();
}

uint64_t sub_22C25A578()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C25A590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_22C25A5A8()
{

  return sub_22C26E664();
}

uint64_t sub_22C25A5C4(uint64_t a1)
{

  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22C25A664()
{

  return sub_22BE1AE58();
}

void sub_22C25A900()
{
  *v0 = v4;
  *(v0 + 8) = v1;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v2;
  *(v0 + 40) = v7;
  *(v0 + 48) = v3;
}

uint64_t sub_22C25A93C(uint64_t result)
{
  *(v2 - 88) = v1;
  *(v2 - 72) = result;
  return result;
}

uint64_t sub_22C25A96C()
{
  *(v3 - 112) = v2;
  *(v3 - 104) = v1;
  *(v3 - 120) = v0;
}

id sub_22C25A990(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C24F544(a1, a2, a3, 0);
}

uint64_t sub_22C25A9B4()
{
}

double sub_22C25A9D0(uint64_t a1, uint64_t a2)
{

  return sub_22C1083D4(a1, a2);
}

unint64_t sub_22C25A9EC()
{
  v5 = *(v2 - 104);
  v4 = *(v2 - 96);

  return sub_22BE6045C(v4, v0, v5, v1);
}

uint64_t sub_22C25AA08(uint64_t a1, uint64_t a2, ...)
{

  return sub_22C273074();
}

void sub_22C25AA7C()
{
  v3 = *(v2 - 96);
  *v3 = v1;
  v3[1] = v0;
}

void sub_22C25AAD0()
{
  v2 = *(v1 - 128);
  *v0 = *(v1 - 120);
  v0[1] = v2;
  v3 = *(v1 - 144);
  v0[2] = *(v1 - 136);
  v0[3] = v3;
}

void sub_22C25AB88(uint64_t a1@<X8>)
{
  v3 = (a1 + 16 * v1);
  v4 = *(v2 - 128);
  *v3 = *(v2 - 144);
  v3[1] = v4;
}

uint64_t sub_22C25ACD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22BE19DC4(a1, a2, a3, a4);

  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

void sub_22C25ADB4(uint64_t a1@<X8>)
{
  v3 = (a1 + 16 * v1);
  v4 = *(v2 - 96);
  *v3 = *(v2 - 72);
  v3[1] = v4;
}

uint64_t sub_22C25ADEC()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C25AE04(uint64_t a1)
{

  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22C25AE1C()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C25AE34()
{
}

uint64_t sub_22C25AE4C()
{

  return sub_22C274004();
}

uint64_t ConvertibleFromToolKitProtocol.init(toolkit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_22BE17C68();
  v33 = v3;
  MEMORY[0x28223BE20](v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v6;
  v37 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_22C273844();
  sub_22BE17C68();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  sub_22BE17C68();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BE183AC();
  v20 = v18 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v31 - v23;
  (*(v11 + 16))(v14, a1, v9, v22);
  if (sub_22BE1AEA8(v14, 1, AssociatedTypeWitness) == 1)
  {
    v25 = *(v11 + 8);
    v25(a1, v9);
    v25(v14, v9);
    v26 = 1;
    v27 = v36;
    v28 = v37;
  }

  else
  {
    v32 = a1;
    (*(v16 + 32))(v24, v14, AssociatedTypeWitness);
    (*(v16 + 16))(v20, v24, AssociatedTypeWitness);
    v29 = v38;
    v28 = v37;
    (*(v34 + 16))(v20, v37);
    if (v29)
    {
      (*(v11 + 8))(v32, v9);
      return (*(v16 + 8))(v24, AssociatedTypeWitness);
    }

    (*(v11 + 8))(v32, v9);
    (*(v16 + 8))(v24, AssociatedTypeWitness);
    v27 = v36;
    (*(v33 + 32))(v36, v35, v28);
    v26 = 0;
  }

  return sub_22BE19DC4(v27, v26, 1, v28);
}

uint64_t ToolDefinition.init(transcript:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitConversion.ToolDefinitionProviderResult(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C272674();
  sub_22BE17C68();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE183AC();
  v35 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  sub_22C272224();
  sub_22BE17C68();
  v37 = v17;
  v38 = v16;
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v33 - v22;
  if (qword_27D906E20 != -1)
  {
    sub_22BE18FD4();
    swift_once();
  }

  sub_22C2742D4();
  if (v40)
  {
    v36 = v7;
    v34 = a2;
    sub_22BE49224(&v39, v41);
    v24 = a1;
    v25 = v41[4];
    sub_22BE1BD3C(v41, v41[3]);
    v26 = sub_22C272664();
    v27 = v42;
    (*(v25 + 8))(v26);
    if (v27)
    {
      (*(v9 + 8))(v24, v36);
    }

    else
    {

      v30 = v38;
      v31 = sub_22BE1AEA8(v6, 1, v38);
      v32 = v36;
      if (v31 == 1)
      {
        (*(v9 + 16))(v35, v24, v36);
        sub_22C272204();
        v6 = v20;
      }

      (*(v9 + 8))(v24, v32);
      (*(v37 + 32))(v34, v6, v30);
    }

    return sub_22BE26B64(v41);
  }

  else
  {
    sub_22C25C250(&v39);
    (*(v9 + 16))(v15, a1, v7);
    v28 = v42;
    sub_22C272204();
    if (v28)
    {
      return (*(v9 + 8))(a1, v7);
    }

    else
    {
      (*(v9 + 8))(a1, v7);
      return (*(v37 + 32))(a2, v23, v38);
    }
  }
}

uint64_t type metadata accessor for ToolKitConversion.ToolDefinitionProviderResult(uint64_t a1)
{
  result = qword_27D915D00;
  if (!qword_27D915D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C25B8B0(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  a2();
  a3(0);
  sub_22BE18524();
  return (*(v5 + 8))(a1);
}

uint64_t Dictionary<>.init(toolkit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_22C272EB4();

  return v5;
}

uint64_t Array<A>.init<A>(toolkit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C0F0608();
  if (!v3)
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    a2 = sub_22C2735C4();
  }

  sub_22BE18994();
  (*(v7 + 8))(a1, a3);
  return a2;
}

uint64_t SecureCodable.init(transcript:)(uint64_t a1, unint64_t a2)
{
  if (qword_27D906E30 != -1)
  {
    swift_once();
  }

  sub_22C2728B4();
  swift_getWitnessTable();
  sub_22C26DB54();
  return sub_22BE29DD4(a1, a2);
}

uint64_t SecureCodable.encodeTranscriptBytes()(uint64_t a1)
{
  if (qword_27D906E28 != -1)
  {
    swift_once();
  }

  swift_getWitnessTable();
  return sub_22C26DC04();
}

uint64_t sub_22C25BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  result = (*(a5 + 16))(v15, a3, a5);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

void Set<>.init(toolkit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_22C2735B4();
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  swift_getWitnessTable();
  sub_22C194C60();

  if (!v4)
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    sub_22C2736A4();
  }
}

uint64_t sub_22C25BF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a1, v12);
  result = (*(a4 + 16))(v14, a3, a4);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_22C25C02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v15 - v11;
  (*(v13 + 16))(v15 - v11, a1, v10);
  return (*(a6 + 16))(v12, a4, a6);
}

uint64_t sub_22C25C148()
{
  sub_22BE5CE4C(&unk_27D915D10, &qword_22C2D1D68);
  swift_allocObject();
  result = sub_22C2742C4();
  qword_27D915CE8 = result;
  return result;
}

uint64_t static ToolKitConversion.$loadFromToolDatabase.getter()
{
  if (qword_27D906E20 != -1)
  {
    sub_22BE18FD4();
    swift_once();
  }
}

void *static ToolKitConversion.loadFromToolDatabase.getter()
{
  if (qword_27D906E20 != -1)
  {
    sub_22BE18FD4();
    swift_once();
  }

  return sub_22C2742D4();
}

uint64_t sub_22C25C250(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D915CF0, &unk_22C2D1B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C25C35C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  *a4 = *a3;
}

uint64_t ToolKitConversion.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

uint64_t ToolKitProtoTypedValue.EntityValue.init(toolkit:)(uint64_t a1)
{
  v2 = sub_22C272754();
  sub_22C25C57C();
  sub_22C2703C4();
  sub_22BE18994();
  return (*(v3 + 8))(a1, v2);
}

unint64_t sub_22C25C57C()
{
  result = qword_27D915C98;
  if (!qword_27D915C98)
  {
    sub_22C272754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915C98);
  }

  return result;
}

uint64_t sub_22C25C71C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *))
{
  v5 = a2(0);
  sub_22BE17C68();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  (*(v7 + 16))(v13 - v10, a1, v5, v9);
  a3(v11);
  return (*(v7 + 8))(a1, v5);
}

uint64_t sub_22C25C880(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  a2();
  a3(0);
  sub_22BE18524();
  return (*(v5 + 8))(a1);
}

unint64_t sub_22C25C8F0()
{
  result = qword_27D915CF8;
  if (!qword_27D915CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915CF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolKitConversion(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22C25CA58(uint64_t a1)
{
  v1 = sub_22C272224();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for ToolKitConversion.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t AsyncFIFOQueue.perform<A>(_:)()
{
  sub_22BE183F0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  sub_22C2702A4();
  v1[7] = sub_22C25CECC();
  v7 = sub_22C2735D4();
  v1[8] = v7;
  v1[9] = v6;

  return MEMORY[0x2822009F8](sub_22C25CC44, v7, v6);
}

uint64_t sub_22C25CC44()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_22C25CD48;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, v1, v2, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_22C25D0A8, v4, v7);
}

uint64_t sub_22C25CD48()
{
  sub_22BE183F0();
  v2 = *v1;
  sub_22BE18C2C();
  *v3 = v2;
  v2[12] = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];

    return MEMORY[0x2822009F8](sub_22C25CE70, v4, v5);
  }

  else
  {

    sub_22BE17A94();

    return v6();
  }
}

uint64_t sub_22C25CE70()
{
  sub_22BE183F0();

  sub_22BE17A94();

  return v0();
}

unint64_t sub_22C25CECC()
{
  result = qword_28107F1F0[0];
  if (!qword_28107F1F0[0])
  {
    sub_22C2702A4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107F1F0);
  }

  return result;
}

double sub_22C25CF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22BE7431C(&qword_27D9078B0, &qword_22C275BB0);
  v9 = sub_22C273604();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a5;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  (*(v10 + 32))(&v15[v14], v13, v9);

  sub_22C270284();

  return result;
}

uint64_t sub_22C25D0B4(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[5] = *(a4 - 8);
  v4[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[7] = v6;
  v9 = (a1 + *a1);
  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v4;
  v7[1] = sub_22C25D214;

  return v9(v6);
}

uint64_t sub_22C25D214()
{
  sub_22BE183F0();
  v2 = *v1;
  sub_22BE18C2C();
  *v3 = v2;
  *(v4 + 72) = v0;

  if (v0)
  {
    v5 = sub_22C25D40C;
  }

  else
  {
    v5 = sub_22C25D31C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C25D31C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  (*(v3 + 16))(v0[6], v1, v2);
  sub_22BE7431C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C273604();
  sub_22C2735F4();
  (*(v3 + 8))(v1, v2);

  sub_22BE17A94();

  return v4();
}

uint64_t sub_22C25D40C()
{
  *(v0 + 16) = *(v0 + 72);
  sub_22BE7431C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C273604();
  sub_22C2735E4();

  sub_22BE17A94();

  return v1();
}

uint64_t sub_22C25D4C0()
{
  v2 = v0[2];
  sub_22BE7431C(&qword_27D9078B0, &qword_22C275BB0);
  v3 = *(sub_22C273604() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22BF35C20;

  return sub_22C25D0B4(v5, v6, v0 + v4, v2);
}

void *sub_22C25D5D0(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 <= 0)
  {
    v4 = 2 * a2;
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_22BE5CE4C(&unk_27D907730, &qword_22C275270);
    v4 = 2 * a2;
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 2);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

const void *sub_22C25D678(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_22BEDDB7C(*(a1 + 16), 0);
  sub_22BEDEB7C();
  v4 = v3;
  sub_22BE4926C(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t CNContact.toHandles.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v3 = [v0 phoneNumbers];
  v4 = sub_22BE5CE4C(&unk_27D915D20, &unk_22C2D1DA0);
  v5 = sub_22C273494();

  v6 = sub_22BE69A28();
  v7 = &off_278725000;
  if (v6)
  {
    v8 = v6;
    v56 = v2;
    result = sub_22C273B84();
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    v54 = v4;
    v55 = v1;
    v10 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2318AC200](v10, v5);
      }

      else
      {
        v11 = *(v5 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 v7[488]];
      if (v13)
      {
        v14 = v13;
        v15 = [v12 value];
        v16 = [v15 stringValue];

        v17 = sub_22C273024();
        v18 = v7;
        v20 = v19;

        v21 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        v22 = v20;
        v7 = v18;
        sub_22C25ED7C(v17, v22, 2, v14, v23);
      }

      else
      {
        v24 = [v12 value];
        v25 = [v24 stringValue];

        v26 = sub_22C273024();
        v28 = v27;

        v29 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        sub_22BE762F0(v26, v28, 2, v30);
      }

      ++v10;
      sub_22C273B54();
      sub_22C273B94();
      sub_22C273BA4();
      sub_22C273B64();
    }

    while (v8 != v10);

    v1 = v55;
    v31 = v56;
    v2 = MEMORY[0x277D84F90];
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  sub_22BE6E7F8(v31);
  v32 = [v1 emailAddresses];
  v33 = sub_22C273494();

  v34 = sub_22BE69A28();
  if (!v34)
  {

    v53 = MEMORY[0x277D84F90];
LABEL_25:
    sub_22BE6E7F8(v53);
    return v58;
  }

  v35 = v34;
  v57 = v2;
  result = sub_22C273B84();
  if ((v35 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x2318AC200](v36, v33);
      }

      else
      {
        v37 = *(v33 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = [v37 v7[488]];
      if (v39)
      {
        v40 = v39;
        v41 = [v38 value];
        v42 = sub_22C273024();
        v44 = v43;

        v45 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        sub_22C25ED7C(v42, v44, 1, v40, v46);
      }

      else
      {
        v47 = [v38 value];
        v48 = sub_22C273024();
        v50 = v49;

        v51 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        sub_22BE762F0(v48, v50, 1, v52);
      }

      ++v36;
      sub_22C273B54();
      sub_22C273B94();
      sub_22C273BA4();
      sub_22C273B64();
    }

    while (v35 != v36);

    v53 = v57;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t CNContact.toNameComponents.getter()
{
  v1 = sub_22BE5CE4C(&qword_27D907848, &qword_22C2758F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = sub_22C26DE64();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C26DE54();
  v13 = [v0 givenName];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22BE18FE8();
  sub_22C26DDC4();
  v14 = [v0 familyName];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22BE18FE8();
  sub_22C26DDD4();
  v15 = [v0 nickname];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22BE18FE8();
  sub_22C26DE44();
  v16 = [v0 namePrefix];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22BE18FE8();
  sub_22C26DE04();
  v17 = [v0 nameSuffix];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22BE18FE8();
  sub_22C26DE14();
  v18 = [v0 middleName];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22BE18FE8();
  sub_22C26DDE4();
  sub_22C26DE54();
  v19 = [v0 phoneticGivenName];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22C26DDC4();
  v20 = [v0 phoneticFamilyName];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22C26DDD4();
  v21 = [v0 phoneticMiddleName];
  sub_22C273024();

  sub_22C26DDE4();
  (*(v9 + 16))(v3, v12, v7);
  sub_22BE19DC4(v3, 0, 1, v7);
  sub_22C26DDF4();
  sub_22BE19DC4(v6, 0, 1, v7);
  sub_22C26DE34();
  return (*(v9 + 8))(v12, v7);
}

id CNContact.toImage.getter()
{
  v1 = sub_22C25EF84(v0);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = v1;
  v5 = v2;
  sub_22C25EFE8();
  return sub_22C25DF10(v4, v5);
}

id sub_22C25DF10(uint64_t a1, unint64_t a2)
{
  v4 = sub_22C26E014();
  v5 = [swift_getObjCClassFromMetadata() imageWithImageData_];

  sub_22BE29DD4(a1, a2);
  return v5;
}

uint64_t CNContact.toINPerson.getter()
{
  v1 = sub_22BE5CE4C(&qword_27D907848, &qword_22C2758F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v31 = sub_22C26DE64();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x277D84F90];
  v9 = CNContact.toHandles.getter();
  v32 = v8;
  CNContact.toNameComponents.getter();
  v30 = v0;
  v10 = CNContact.toImage.getter();
  result = sub_22BE69A28();
  if (!result)
  {

    v25 = MEMORY[0x277D84F90];
LABEL_12:
    (*(v5 + 8))(v32, v31);
    return v25;
  }

  v12 = result;
  if (result >= 1)
  {
    v13 = 0;
    v27 = v5;
    v28 = v9 & 0xC000000000000001;
    v14 = (v5 + 16);
    v29 = v9;
    do
    {
      if (v28)
      {
        v15 = MEMORY[0x2318AC200](v13, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v31;
      (*v14)(v3, v32, v31);
      sub_22BE19DC4(v3, 0, 1, v17);
      v18 = v16;
      v19 = v10;
      v20 = [v30 identifier];
      v21 = sub_22C273024();
      v23 = v22;

      v24 = objc_allocWithZone(MEMORY[0x277CD3E90]);
      sub_22C25EE00(v18, v3, 0, 0, v10, v21, v23, 0, 0);
      MEMORY[0x2318ABB70]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22C2734F4();
      }

      ++v13;
      sub_22C273554();

      v9 = v29;
    }

    while (v12 != v13);
    v25 = v33;

    v5 = v27;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t static ContactHelper.fetchContactWithIdentifiers(identifiers:)(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v65 = MEMORY[0x277D84F90];
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22C2D1D90;
  v4 = *MEMORY[0x277CBD018];
  v5 = *MEMORY[0x277CBD068];
  v6 = MEMORY[0x277CBD000];
  *(v3 + 32) = *MEMORY[0x277CBD018];
  *(v3 + 40) = v5;
  v7 = *v6;
  v8 = *MEMORY[0x277CBD058];
  *(v3 + 48) = *v6;
  *(v3 + 56) = v8;
  v9 = *MEMORY[0x277CBCFF8];
  v10 = *MEMORY[0x277CBD070];
  *(v3 + 64) = *MEMORY[0x277CBCFF8];
  *(v3 + 72) = v10;
  v11 = *MEMORY[0x277CBD078];
  v12 = *MEMORY[0x277CBD0B0];
  v13 = MEMORY[0x277CBD0B8];
  *(v3 + 80) = *MEMORY[0x277CBD078];
  *(v3 + 88) = v12;
  v58 = *v13;
  v59 = *MEMORY[0x277CBD0A8];
  *(v3 + 96) = *v13;
  *(v3 + 104) = v59;
  v60 = *MEMORY[0x277CBD098];
  v61 = *MEMORY[0x277CBCFC0];
  *(v3 + 112) = *MEMORY[0x277CBD098];
  *(v3 + 120) = v61;
  v62 = *MEMORY[0x277CBD120];
  v63 = *MEMORY[0x277CBD028];
  *(v3 + 128) = *MEMORY[0x277CBD120];
  *(v3 + 136) = v63;
  v57 = a1;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = v4;
    v16 = v5;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v23 = v58;
    v24 = v59;
    v25 = v60;
    v26 = v61;
    v27 = v62;
    v28 = v63;
    v29 = v57 + 40;
    do
    {

      v30 = sub_22C272FF4();

      sub_22BE5CE4C(&qword_27D915DA0, &qword_22C2D1DB0);
      v31 = sub_22C273484();
      v64 = 0;
      v32 = [v2 unifiedContactWithIdentifier:v30 keysToFetch:v31 error:&v64];

      if (v32)
      {
        v33 = v64;
      }

      else
      {
        v34 = v64;
        v35 = sub_22C26DE84();

        swift_willThrow();
      }

      MEMORY[0x2318ABB70](v33);
      if (*(v65 + 16) >= *(v65 + 24) >> 1)
      {
        sub_22C2734F4();
      }

      sub_22C273554();
      v29 += 16;
      --v14;
    }

    while (v14);
    v36 = v65;
  }

  else
  {
    v37 = v4;
    v38 = v5;
    v39 = v7;
    v40 = v8;
    v41 = v9;
    v42 = v10;
    v43 = v11;
    v44 = v12;
    v45 = v58;
    v46 = v59;
    v47 = v60;
    v48 = v61;
    v49 = v62;
    v50 = v63;

    v36 = MEMORY[0x277D84F90];
  }

  v51 = 0;
  v52 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v53 = *(v36 + 16);
  while (v53 != v51)
  {
    if (v51 >= *(v36 + 16))
    {
      __break(1u);
    }

    v54 = *(v36 + 8 * v51++ + 32);
    if (v54)
    {
      v55 = v54;
      MEMORY[0x2318ABB70]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22C2734F4();
      }

      sub_22C273554();
      v52 = v64;
    }
  }

  return v52;
}

const void *static ContactHelper.getContactIdentifiers(matches:)(uint64_t a1)
{
  v1 = 0;
  v5 = MEMORY[0x277D84FA0];
  v2 = *(a1 + 16);
  while (v2 != v1)
  {
    sub_22C270FD4();
    sub_22C25E75C(&v5);
    ++v1;
  }

  v3 = v5;

  return sub_22C25D678(v3);
}

void sub_22C25E75C(uint64_t a1)
{
  v60 = sub_22C270AF4();
  v2 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C272804();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C2727C4();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - v9;
  v11 = sub_22C272874();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  sub_22C270FB4();
  v18 = sub_22BE1AEA8(v10, 1, v11);
  v57 = a1;
  if (v18 == 1)
  {
    sub_22C25F238(v10);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v14, v17, v11);
    if ((*(v12 + 88))(v14, v11) == *MEMORY[0x277D72A58])
    {
      (*(v12 + 96))(v14, v11);
      v19 = swift_projectBox();
      v20 = v54;
      v21 = v55;
      v22 = v56;
      (*(v55 + 16))(v54, v19, v56);
      if ((*(v21 + 88))(v20, v22) == *MEMORY[0x277D729B0])
      {
        (*(v21 + 96))(v20, v22);
        v23 = v51;
        v24 = v52;
        v25 = v20;
        v26 = v53;
        (*(v52 + 32))(v51, v25, v53);

        v27 = sub_22C2727B4();
        v28 = sub_22C25F02C(v27);
        if (v29)
        {
          sub_22C1A7B60(v59, v28, v29, v30, v31, v32, v33, v34, v50, v51);
        }

        (*(v24 + 8))(v23, v26);
        (*(v12 + 8))(v17, v11);
      }

      else
      {
        (*(v12 + 8))(v17, v11);
        (*(v21 + 8))(v20, v22);
      }
    }

    else
    {
      v35 = *(v12 + 8);
      v35(v17, v11);
      v35(v14, v11);
    }
  }

  v36 = sub_22C270FC4();
  v37 = 0;
  v38 = *(v36 + 16);
  v39 = (v2 + 8);
  while (1)
  {
    if (v38 == v37)
    {

      return;
    }

    if (v37 >= *(v36 + 16))
    {
      break;
    }

    (*(v2 + 16))(v58, v36 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v37, v60);
    if (sub_22C270AB4() == 0x73746361746E6F43 && v40 == 0xE800000000000000)
    {

LABEL_21:

      v43 = v58;
      v44 = sub_22C270AD4();
      sub_22C1A7B60(v59, v44, v45, v45, v46, v47, v48, v49, v50, v51);

      (*v39)(v43, v60);
      return;
    }

    v42 = sub_22C274014();

    if (v42)
    {
      goto LABEL_21;
    }

    (*v39)(v58, v60);
    ++v37;
  }

  __break(1u);
}

id sub_22C25ED7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v6 = v5;
  if (a2)
  {
    v9 = sub_22C272FF4();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 initWithValue:v9 type:a3 label:a4];

  return v10;
}

id sub_22C25EE00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_22C26DE64();
  v17 = 0;
  if (sub_22BE1AEA8(a2, 1, v16) != 1)
  {
    v17 = sub_22C26DE24();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_22C272FF4();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_22C272FF4();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_22C272FF4();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

uint64_t sub_22C25EF84(void *a1)
{
  v1 = [a1 imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22C26E034();

  return v3;
}

unint64_t sub_22C25EFE8()
{
  result = qword_27D915D30;
  if (!qword_27D915D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D915D30);
  }

  return result;
}

uint64_t sub_22C25F02C(void *a1)
{
  v2 = [a1 contactIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C273024();

  return v3;
}

void (*sub_22C25F09C(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v7 = sub_22BE1C0E0(a1, a2, a3);
  sub_22BE765FC(v7);
  sub_22BE1A828();
  sub_22BE69A38();
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v8 = MEMORY[0x2318AC200](v5, v4);
  }

  *v3 = v8;
  return sub_22C25F2A0;
}

void (*sub_22C25F110(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v7 = sub_22BE1C0E0(a1, a2, a3);
  sub_22BE765FC(v7);
  sub_22BE1A828();
  sub_22BE69A38();
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v8 = MEMORY[0x2318AC200](v5, v4);
  }

  *v3 = v8;
  return sub_22C25F184;
}

_BYTE *storeEnumTagSinglePayload for ContactHelper(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22C25F238(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Encodable.ifps_jsonString()()
{
  v2 = v0;
  v3 = sub_22C273064();
  MEMORY[0x28223BE20](v3 - 8);
  sub_22BE179EC();
  v6 = v5 - v4;
  sub_22C26DC34();
  swift_allocObject();
  sub_22C26DC24();
  v7 = sub_22C26DC04();
  v9 = v8;

  if (!v1)
  {
    sub_22C273054();
    v10 = sub_22C273044();
    if (v11)
    {
      v6 = v10;
      v2 = v11;
    }

    else
    {
      v6 = 0x800000022C2D4060;
      v2 = 0x800000022C2D3FE0;
      sub_22BF103C8();
      swift_allocError();
      *v14 = 0xD00000000000007FLL;
      *(v14 + 8) = 0x800000022C2D3FE0;
      *(v14 + 16) = xmmword_22C28C730;
      *(v14 + 32) = 0x800000022C2D4060;
      swift_willThrow();
    }

    sub_22BE29DD4(v7, v9);
  }

  v12 = v6;
  v13 = v2;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t sub_22C25F42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = sub_22C26DBC4();
  sub_22BE17C68();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v9 = v8 - v7;
  v25 = sub_22C26DBA4();
  sub_22BE17C68();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v15 = v14 - v13;
  v16 = sub_22C26DBE4();
  sub_22BE17C68();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22BE179EC();
  v22 = v21 - v20;
  v23 = sub_22C26DC14();
  (*(v18 + 16))(v22, a1, v16);

  sub_22C26DBF4();
  (*(v11 + 16))(v15, a2, v25);
  sub_22C26DBB4();
  (*(v5 + 16))(v9, a3, v28);
  sub_22C26DBD4();

  (*(v5 + 8))(a3, v28);
  (*(v11 + 8))(a2, v25);
  (*(v18 + 8))(a1, v16);
  return v23;
}

uint64_t sub_22C25F698(uint64_t a1, void *a2)
{
  v36 = a1;
  v37 = a2;
  v2 = sub_22C2720A4();
  v31[2] = *(v2 - 8);
  v31[3] = v2;
  MEMORY[0x28223BE20](v2);
  v31[1] = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BE5CE4C(&qword_27D9152F8, &unk_22C2CC8F0);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = v31 - v5;
  v40 = sub_22C26E2A4();
  v35 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v34 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22C26E0D4();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22C26E0B4();
  v9 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C26E094();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C26E0A4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C26E0E4();
  v32 = *(v20 - 8);
  v33 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v16;
  v25 = v38;
  (*(v17 + 104))(v19, *MEMORY[0x277CC9460], v24, v21);
  v26 = v40;
  v27 = v12;
  v28 = v42;
  (*(v13 + 104))(v15, *MEMORY[0x277CC9458], v27);
  (*(v9 + 104))(v11, *MEMORY[0x277CC9468], v39);
  (*(v7 + 104))(v25, *MEMORY[0x277CC9480], v41);
  sub_22C26E274();
  result = sub_22BE1AEA8(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v35 + 32))(v34, v28, v26);
    sub_22C26E0C4();
    sub_22C260048();
    v30 = v33;
    sub_22C26E144();
    sub_22BE1BD3C(v37, v37[3]);
    sub_22C274224();
    sub_22BE73F10(v43, v43[3]);
    sub_22C274034();
    (*(v32 + 8))(v23, v30);

    return sub_22BE26B64(v43);
  }

  return result;
}

uint64_t sub_22C25FD58()
{
  v0 = sub_22C26DBC4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C26DBA4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C26DBE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22C26DC34();
  *v10 = sub_22C25F698;
  v10[1] = 0;
  (*(v8 + 104))(v10, *MEMORY[0x277CC8770], v7);
  sub_22C26DB94();
  (*(v1 + 104))(v3, *MEMORY[0x277CC8740], v0);
  result = sub_22C25F42C(v10, v6, v3);
  qword_28108A2A0 = result;
  return result;
}

void Encodable.ifps_recode<A>()()
{
  sub_22C26DC34();
  swift_allocObject();
  sub_22C26DC24();
  v5 = sub_22C26DC04();
  v7 = v6;

  if (!v4)
  {
    sub_22C26DB74();
    swift_allocObject();
    sub_22C26DB64();
    sub_22C26DB54();

    sub_22BE29DD4(v5, v7);
  }
}

unint64_t sub_22C260048()
{
  result = qword_27D915DA8;
  if (!qword_27D915DA8)
  {
    sub_22C26E0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915DA8);
  }

  return result;
}

uint64_t sub_22C2600A0(void *a1)
{
  sub_22BE1BD3C(a1, a1[3]);
  sub_22C274224();
  type metadata accessor for TranscriptProtoTranscript(0);
  sub_22C260734(&qword_27D90F360, &protocol conformance descriptor for TranscriptProtoTranscript);
  v2 = sub_22C270744();
  if (!v1)
  {
    v4 = v2;
    v5 = v3;
    sub_22BE73F10(v7, v7[3]);
    sub_22BE3BE7C();
    sub_22C274044();
    sub_22BE29DD4(v4, v5);
  }

  return sub_22BE26B64(v7);
}

uint64_t CodableProtoMessage.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22BE1BD3C(a1, a1[3]);
  sub_22C274224();
  _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
  v4 = sub_22C270744();
  if (!v3)
  {
    v6 = v4;
    v7 = v5;
    sub_22BE73F10(v9, v9[3]);
    sub_22BE3BE7C();
    sub_22C274044();
    sub_22BE29DD4(v6, v7);
  }

  return sub_22BE26B64(v9);
}

uint64_t sub_22C2602A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoTranscript(0);
  MEMORY[0x28223BE20](v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1BD3C(a1, a1[3]);
  sub_22C274204();
  if (!v2)
  {
    sub_22BE1BD3C(v12, v12[3]);
    sub_22C11E528();
    sub_22C274024();
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_22C270514();
    sub_22C260734(&qword_27D90F360, &protocol conformance descriptor for TranscriptProtoTranscript);
    sub_22C270734();
    sub_22C2607A8(v8, a2);
    sub_22BE26B64(v12);
  }

  return sub_22BE26B64(a1);
}

uint64_t CodableProtoMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v21 = a4;
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1BD3C(a1, a1[3]);
  sub_22C274204();
  if (!v4)
  {
    v19 = v8;
    v20 = a2;
    sub_22BE1BD3C(v25, v25[3]);
    sub_22C11E528();
    sub_22C274024();
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v12 = *(v26 + 8);
    v13 = v20;
    _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
    sub_22C1ECB48(v13, v12, v14, v15, v16);
    sub_22C270734();
    (*(v19 + 32))(v21, v11, v13);
    sub_22BE26B64(v25);
  }

  return sub_22BE26B64(a1);
}

uint64_t sub_22C2606A8(void *a1)
{
  a1[1] = sub_22C260734(&qword_27D90F360, &protocol conformance descriptor for TranscriptProtoTranscript);
  a1[2] = sub_22C260734(&qword_27D915DB0, &protocol conformance descriptor for TranscriptProtoTranscript);
  result = sub_22C260734(&qword_27D915DB8, &protocol conformance descriptor for TranscriptProtoTranscript);
  a1[3] = result;
  return result;
}

uint64_t sub_22C260734(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TranscriptProtoTranscript(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C2607A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoTranscript(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Collection.at(_:)@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE17C68();
  v7 = v6;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-v9];
  sub_22C2736E4();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = sub_22C2733B4();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  if (v11)
  {
    v12 = sub_22C273764();
    v14 = v13;
    v15 = swift_getAssociatedTypeWitness();
    (*(*(v15 - 8) + 16))(a4, v14, v15);
    v12(v20, 0);
    v16 = a4;
    v17 = 0;
    v18 = v15;
  }

  else
  {
    v18 = swift_getAssociatedTypeWitness();
    v16 = a4;
    v17 = 1;
  }

  return sub_22BE19DC4(v16, v17, 1, v18);
}

uint64_t Collection.intersperse(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  sub_22BE17C68();
  v31 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE17C68();
  v33 = v10;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v32 = &v31 - v12;
  v13 = swift_getAssociatedTypeWitness();
  sub_22BE1C0A4();
  v14 = sub_22C273844();
  sub_22BE17C68();
  v16 = v15;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  sub_22BE17C68();
  v21 = v20;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  v24 = &v31 - v23;
  sub_22C273734();
  if (sub_22BE1AEA8(v19, 1, v13) == 1)
  {
    (*(v16 + 8))(v19, v14);
    sub_22BE1C0A4();
    return sub_22C273524();
  }

  else
  {
    (*(v21 + 32))(v24, v19, v13);
    (*(v31 + 16))(v9, v3, a2);
    v26 = v32;
    sub_22C273744();
    sub_22C261260(v13, v13);
    swift_allocObject();
    v27 = sub_22C2734D4();
    (*(v21 + 16))(v28, v24, v13);
    sub_22BE1C0A4();
    v29 = sub_22C2735B4();
    v36 = v27;
    MEMORY[0x28223BE20](v29);
    *(&v31 - 4) = a2;
    *(&v31 - 3) = a3;
    *(&v31 - 2) = v34;
    v30 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    sub_22C273364();
    (*(v33 + 8))(v26, v30);
    (*(v21 + 8))(v24, v13);
    return v37;
  }
}

uint64_t sub_22C260E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v14 - v10;
  v12 = *(v8 + 16);
  v12(&v14 - v10, a3, AssociatedTypeWitness, v9);
  sub_22C2735B4();
  sub_22C273574();
  (v12)(v11, a2, AssociatedTypeWitness);
  return sub_22C273574();
}

double Collection.sliding2Window()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22BE17C68();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  sub_22BE179FC();
  v11 = MEMORY[0x28223BE20](v10);
  (*(v6 + 16))(v9, v3, a1, v11);
  sub_22C273744();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_22C2735C4();
  sub_22BE1C0A4();
  sub_22C273844();
  sub_22C273C14();

  sub_22C273FE4();
  swift_allocObject();
  sub_22C2734D4();
  sub_22BE19DC4(v13, 1, 1, AssociatedTypeWitness);
  sub_22C2735B4();
  v14 = sub_22C273514();

  v16[1] = v14;
  swift_getWitnessTable();
  sub_22C274094();

  return result;
}

uint64_t sub_22C261260(uint64_t a1, uint64_t a2)
{
  if (sub_22C2612EC(a2, a2))
  {

    return sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  }

  else
  {

    return sub_22C273FE4();
  }
}

uint64_t sub_22C2612EC(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_22C26131C(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v34 = MEMORY[0x277D84F90];
    sub_22BE71300(0, v5, 0);
    v7 = v34;
    for (i = (a3 + 56); ; i += 32)
    {
      v9 = *(i - 1);
      v10 = *i;
      v25 = *(i - 24);
      v26 = v9;
      v27 = v10;

      a1(&v28, &v25);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v28;
      v13 = v29;
      v12 = v30;
      v14 = v31;
      v15 = v32;
      v16 = v33;
      v34 = v7;
      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        v23 = v28;
        v20 = v30;
        v22 = v32;
        v21 = v33;
        sub_22BE71300(v17 > 1, v18 + 1, 1);
        v16 = v21;
        v15 = v22;
        v12 = v20;
        v11 = v23;
        v7 = v34;
      }

      *(v7 + 16) = v18 + 1;
      v19 = v7 + 56 * v18;
      *(v19 + 32) = v11;
      *(v19 + 48) = v13;
      *(v19 + 56) = v12;
      *(v19 + 64) = v14;
      *(v19 + 72) = v15;
      *(v19 + 80) = v16;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22C261498(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  updated = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
  v7 = *(updated - 8);
  MEMORY[0x28223BE20](updated - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22BE71838(0, v10, 0);
    v11 = v21;
    v12 = *(type metadata accessor for AST.Update(0) - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    while (1)
    {
      v18(v13, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22BE71838(v14 > 1, v15 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v15 + 1;
      sub_22C265EC8(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for UpdateParametersExpression.UpdateParameter);
      v13 += v17;
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_22C261698(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v16 = sub_22C26E684();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_22BE71084();
    v10 = v20;
    v11 = *(sub_22C26E1D4() - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v15[1] = v6 + 32;
    v15[0] = *(v11 + 72);
    while (1)
    {
      v17(v12, &v19);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v10;
      v13 = *(v10 + 16);
      if (v13 >= *(v10 + 24) >> 1)
      {
        sub_22BE71084();
        v10 = v20;
      }

      *(v10 + 16) = v13 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v16);
      v12 += v15[0];
      if (!--v9)
      {
        return v10;
      }
    }
  }

  return v10;
}

void sub_22C2618B4(uint64_t a2@<X1>, void *a3@<X8>)
{
  v30 = a3;
  v4 = type metadata accessor for Session.Event(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(qword_27D915E28, &qword_22C2D1FA8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v29 - v11);
  v13 = *(a2 + 16);

  sub_22C261BF4(0, v13, a2);
  v15 = v14;
  v16 = 0;
  v17 = *(v14 + 16);
  while (1)
  {
    if (v16 == v17)
    {
      v18 = sub_22BE5CE4C(&qword_27D9072E8, &qword_22C275210);
      sub_22BE19DC4(v9, 1, 1, v18);
      v16 = v17;
      goto LABEL_7;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *(v15 + 16))
    {
      goto LABEL_14;
    }

    v19 = sub_22BE5CE4C(&qword_27D9072E8, &qword_22C275210);
    sub_22BE2B984(v15 + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)) + *(*(v19 - 8) + 72) * v16++, v9, &qword_27D9072E8, &qword_22C275210);
    sub_22BE19DC4(v9, 0, 1, v19);
LABEL_7:
    sub_22BE73F60(v9, v12, qword_27D915E28, &qword_22C2D1FA8);
    v20 = sub_22BE5CE4C(&qword_27D9072E8, &qword_22C275210);
    if (sub_22BE1AEA8(v12, 1, v20) == 1)
    {

      v23 = sub_22BE5CE4C(&qword_27D915E20, &qword_22C2D1FA0);
      v24 = v30;
      v25 = 1;
LABEL_12:
      sub_22BE19DC4(v24, v25, 1, v23);
      return;
    }

    v21 = *(v20 + 48);
    v22 = *v12;
    sub_22C265EC8(v12 + v21, v6, type metadata accessor for Session.Event);
    if (sub_22C26E1B4())
    {

      v26 = sub_22BE5CE4C(&qword_27D915E20, &qword_22C2D1FA0);
      v27 = *(v26 + 48);
      v28 = v30;
      *v30 = v22;
      sub_22C265EC8(v6, v28 + v27, type metadata accessor for Session.Event);
      v24 = v28;
      v25 = 0;
      v23 = v26;
      goto LABEL_12;
    }

    sub_22C26589C(v6, type metadata accessor for Session.Event);
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_22C261BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BE5CE4C(&qword_27D9072E8, &qword_22C275210);
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = &v24 - v10;
  sub_22C265AC8(a1, a2, a3);
  v12 = v11;

  v13 = *(v12 + 16);
  if (v13 < 2)
  {
    return;
  }

  v14 = 0;
  v15 = v13 >> 1;
  v16 = v13 - 1;
  v24 = v13 >> 1;
  while (1)
  {
    if (v14 == v16)
    {
      goto LABEL_10;
    }

    v17 = *(v12 + 16);
    if (v14 >= v17)
    {
      break;
    }

    v18 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v19 = v12 + v18;
    v20 = v12;
    v21 = *(v25 + 72);
    v26 = v21 * v14;
    sub_22BE2B984(v19 + v21 * v14, v27, &qword_27D9072E8, &qword_22C275210);
    if (v16 >= v17)
    {
      goto LABEL_13;
    }

    v22 = v21 * v16;
    sub_22BE2B984(v19 + v21 * v16, v8, &qword_27D9072E8, &qword_22C275210);
    v12 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C265544(v20);
      v12 = v23;
    }

    sub_22BFC390C(v8, v12 + v18 + v26, &qword_27D9072E8, &qword_22C275210);
    if (v16 >= *(v12 + 16))
    {
      goto LABEL_14;
    }

    sub_22BFC390C(v27, v12 + v18 + v22, &qword_27D9072E8, &qword_22C275210);
    v15 = v24;
LABEL_10:
    ++v14;
    --v16;
    if (v15 == v14)
    {
      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t ExpressionConverter.init(transcript:)()
{
  type metadata accessor for Session.Transcript(0);
  sub_22BE1A140();
  sub_22BE19DC4(v0, v1, v2, v3);
  v4 = sub_22BE19454();
  return sub_22BFC390C(v4, v5, v6, v7);
}

void ExpressionConverter.toExpression(from:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v268 = a2;
  v272 = a1;
  v3 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E94();
  v244 = v6;
  v7 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  v260 = v9;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E94();
  v261 = v11;
  v12 = sub_22BE5CE4C(&qword_27D915DC8, &qword_22C2D1E88);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  v259 = &v234 - v14;
  v258 = type metadata accessor for AST.Update(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  sub_22BE18950(v17 - v16);
  sub_22C26E1D4();
  sub_22BE179D8();
  v265 = v19;
  v266 = v18;
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  v256 = v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE19490();
  v255 = v22;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v23);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v24);
  sub_22BE19490();
  v254 = v25;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22BE19490();
  v253 = v27;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v28);
  sub_22BE19490();
  v257 = v29;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v30);
  sub_22BE19E94();
  sub_22BE18950(v31);
  sub_22C26E684();
  sub_22BE179D8();
  v263 = v33;
  v264 = v32;
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  v252 = v34;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v35);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v36);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v37);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v38);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v39);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v40);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v41);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v42);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v43);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v44);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v45);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v46);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v47);
  sub_22BE19E94();
  v49 = sub_22BE18950(v48);
  v262 = type metadata accessor for AST.FlatValue(v49);
  sub_22BE18000();
  MEMORY[0x28223BE20](v50);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v51);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v52);
  v54 = (&v234 - v53);
  MEMORY[0x28223BE20](v55);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v56);
  v58 = &v234 - v57;
  MEMORY[0x28223BE20](v59);
  v61 = &v234 - v60;
  MEMORY[0x28223BE20](v62);
  v64 = &v234 - v63;
  MEMORY[0x28223BE20](v65);
  v67 = &v234 - v66;
  MEMORY[0x28223BE20](v68);
  v70 = &v234 - v69;
  MEMORY[0x28223BE20](v71);
  v73 = &v234 - v72;
  type metadata accessor for AST.FlatExpr(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v74);
  sub_22BE179EC();
  v77 = (v76 - v75);
  sub_22C2658F4(v272, v76 - v75, type metadata accessor for AST.FlatExpr);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v138 = *v77;
      sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0);
      sub_22BE1B55C();
      sub_22C265EC8(&v77[v139], v64, v140);
      v141 = v248;
      v142 = v269;
      AST.FlatValue.toStatementId.getter(v248);
      sub_22BE18FF8();
      sub_22C26589C(v64, v143);
      if (!v142)
      {
        v144 = v268;
        *v268 = v138;
        v145 = type metadata accessor for PrefixExpression(0);
        (*(v263 + 32))(&v144[*(v145 + 20)], v141, v264);
        type metadata accessor for Expression(0);
        sub_22BE1ACEC();
        goto LABEL_57;
      }

      return;
    case 2:
      v95 = *v77;
      v108 = sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20);
      v109 = *(v108 + 64);
      sub_22C265EC8(&v77[*(v108 + 48)], v61, type metadata accessor for AST.FlatValue);
      sub_22C265EC8(&v77[v109], v58, type metadata accessor for AST.FlatValue);
      AST.InfixOp.toInfixOp.getter(v95, &v270);
      v110 = v270;
      v111 = v249;
      v112 = v269;
      AST.FlatValue.toStatementId.getter(v249);
      if (v112)
      {
        goto LABEL_15;
      }

      v113 = v236;
      AST.FlatValue.toStatementId.getter(v236);
      sub_22BE17ED8();
      sub_22C26589C(v58, v221);
      sub_22C26589C(v61, v95);
      v222 = v268;
      *v268 = v110;
      v223 = type metadata accessor for InfixExpression(0);
      v224 = v264;
      v225 = *(v263 + 32);
      v225(&v222[*(v223 + 20)], v111, v264);
      v225(&v222[*(v223 + 24)], v113, v224);
      type metadata accessor for Expression(0);
      goto LABEL_57;
    case 3:
      v123 = &v77[*(sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0) + 48)];
      v125 = *v123;
      v124 = *(v123 + 1);
      sub_22BE1B55C();
      v126 = v77;
      v127 = v245;
      sub_22C265EC8(v126, v245, v128);
      v129 = v250;
      v130 = v269;
      AST.FlatValue.toStatementId.getter(v250);
      if (v130)
      {
        sub_22BE18FF8();
        v132 = v127;
        goto LABEL_41;
      }

      *v54 = v125;
      v54[1] = v124;
      swift_storeEnumTagMultiPayload();
      v98 = v237;
      v99 = v54;
      AST.FlatValue.toStatementId.getter(v237);
      sub_22BE17ED8();
      sub_22C26589C(v54, v226);
      sub_22C26589C(v127, v124);
      v218 = *(v263 + 32);
      v219 = sub_22BE2F2B0();
      v220 = v129;
      goto LABEL_55;
    case 4:
      v94 = *(sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10) + 48);
      v95 = type metadata accessor for AST.FlatValue;
      v61 = v247;
      sub_22C265EC8(v77, v247, type metadata accessor for AST.FlatValue);
      v58 = v246;
      sub_22C265EC8(&v77[v94], v246, type metadata accessor for AST.FlatValue);
      v96 = v251;
      v97 = v269;
      AST.FlatValue.toStatementId.getter(v251);
      if (v97)
      {
LABEL_15:
        sub_22BE17ED8();
        sub_22C26589C(v58, v114);
        v115 = v61;
        v116 = v95;
        goto LABEL_16;
      }

      v98 = v238;
      v99 = v58;
      AST.FlatValue.toStatementId.getter(v238);
      sub_22BE17ED8();
      sub_22C26589C(v58, v217);
      sub_22C26589C(v61, type metadata accessor for AST.FlatValue);
      v218 = *(v263 + 32);
      v219 = sub_22BE2F2B0();
      v220 = v96;
LABEL_55:
      v227 = v264;
      v218(v219, v220, v264);
      v228 = type metadata accessor for IndexExpression(0);
      v218(v99 + *(v228 + 20), v98, v227);
      type metadata accessor for Expression(0);
      sub_22BE1ACEC();
      goto LABEL_57;
    case 5:
      v146 = *v77;
      v147 = v259;
      sub_22BF2DE78(*v77);
      if (sub_22BE1AEA8(v147, 1, v258) == 1)
      {

        sub_22BE33928(v147, &qword_27D915DC8, &qword_22C2D1E88);
        type metadata accessor for ExpressionConverterError(0);
        sub_22C265188();
        v148 = sub_22BE23BA8();
        sub_22BE196B4(v148, v149);
        sub_22BE25A74();
        *v150 = 0xD000000000000030;
        v150[1] = v151;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return;
      }

      v191 = v242;
      sub_22C265EC8(v147, v242, type metadata accessor for AST.Update);
      v192 = sub_22BE3B180();
      v194 = sub_22C263F98(v192, v193);
      if (!v2)
      {
        MEMORY[0x28223BE20](v194);
        sub_22BE3D560();
        *(v209 - 16) = v147;
        v230 = sub_22C261498(sub_22C26587C, v210, v146);
        sub_22BE193E8();
        sub_22C26589C(v191, v231);

        v232 = sub_22BE18780();
        v233(v232);
        *(v146 + *(type metadata accessor for UpdateParametersExpression(0) + 20)) = v230;
        type metadata accessor for Expression(0);
        sub_22BE23BA8();
        goto LABEL_57;
      }

      sub_22BE193E8();
      v132 = v191;
LABEL_41:
      sub_22C26589C(v132, v131);

      return;
    case 6:
      v165 = *v77;
      v164 = *(v77 + 1);
      v166 = *(v77 + 2);
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      sub_22BE3D560();
      *(v167 - 16) = v267;
      v168 = v269;
      v170 = sub_22C265558(sub_22C265200, v169, v166);
      if (v168)
      {

        return;
      }

      v204 = v170;

      v205 = v268;
      *v268 = v165;
      *(v205 + 1) = v164;
      *(v205 + 2) = 0;
      *(v205 + 3) = 0;
      v205[32] = 0;
      *(v205 + 5) = v204;
      type metadata accessor for Expression(0);
      sub_22BE1ACEC();
      goto LABEL_57;
    case 7:
      v133 = *v77;
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      sub_22BE3D560();
      *(v134 - 16) = v267;
      v135 = v269;
      v137 = sub_22C261698(sub_22C2651E0, v136, v133);
      if (v135)
      {

        return;
      }

      v203 = v137;

      *v268 = v203;
      type metadata accessor for Expression(0);
      sub_22BE23BA8();
      goto LABEL_57;
    case 8:
      v175 = &v77[*(sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90) + 48)];
      v176 = *v175;
      v177 = v175[8];
      v178 = v265;
      v179 = v266;
      v180 = v257;
      (*(v265 + 32))(v257, v77, v266);
      if (v177)
      {
        type metadata accessor for ExpressionConverterError(0);
        sub_22C265188();
        v181 = sub_22BE23BA8();
        sub_22BE196B4(v181, v182);
        sub_22BE25A74();
        *v183 = 0xD000000000000017;
        v183[1] = v184;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_45:
        (*(v178 + 8))(v180, v179);
        return;
      }

      v200 = v240;
      v201 = v267;
      v202 = v269;
      sub_22C263398(v180, v240);
      if (v202)
      {
        goto LABEL_45;
      }

      (*(v178 + 8))(v180, v179);
      v215 = sub_22BE2F2B0();
      v216(v215, v200);
      *(v201 + *(type metadata accessor for PickExpression(0) + 20)) = v176;
      type metadata accessor for Expression(0);
      sub_22BE1ACEC();
LABEL_57:
      swift_storeEnumTagMultiPayload();
      return;
    case 9:
      sub_22BE23804();
      v100 = sub_22BE26ABC();
      v101(v100);
      v102 = sub_22BE3B180();
      sub_22C263398(v102, v103);
      if (!v2)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    case 10:
      v171 = *(v77 + 1);
      v172 = v77[16];
      v173 = v77[17];
      v174 = v268;
      *v268 = *v77;
      *(v174 + 1) = v171;
      v174[16] = v172;
      v174[17] = v173 & 1;
      v174[18] = 0;
      type metadata accessor for Expression(0);
      sub_22BE23BA8();
      goto LABEL_57;
    case 11:
      sub_22BE23804();
      v90 = sub_22BE26ABC();
      v91(v90);
      v92 = sub_22BE3B180();
      sub_22C263398(v92, v93);
      if (!v2)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    case 12:
      ResolveToolExpression.init(toolIds:)(*v77);
      *v268 = v270;
      type metadata accessor for Expression(0);
      sub_22BE23BA8();
      goto LABEL_57;
    case 13:
      v152 = v261;
      sub_22BE73F60(v77, v261, &qword_27D9082F0, &qword_22C27AB00);
      v153 = v260;
      sub_22BE2B984(v152, v260, &qword_27D9082F0, &qword_22C27AB00);
      v154 = v266;
      if (sub_22BE1AEA8(v153, 1, v266) == 1)
      {
        sub_22BE33928(v152, &qword_27D9082F0, &qword_22C27AB00);
        sub_22BE33928(v153, &qword_27D9082F0, &qword_22C27AB00);
        v155 = v243;
        sub_22BE1A140();
        v156 = v264;
        sub_22BE19DC4(v157, v158, v159, v264);
        v160 = v268;
        sub_22BE1A140();
        sub_22BE19DC4(v161, v162, v163, v156);
        sub_22BFC390C(v155, v160, &qword_27D907240, &unk_22C2B5B80);
        type metadata accessor for Expression(0);
        sub_22BE23BA8();
        goto LABEL_57;
      }

      v195 = v265;
      v196 = v241;
      (*(v265 + 32))(v241, v153, v154);
      v197 = v244;
      v198 = v269;
      sub_22C263398(v196, v244);
      v199 = v268;
      if (v198)
      {
        (*(v195 + 8))(v196, v154);
        sub_22BE33928(v152, &qword_27D9082F0, &qword_22C27AB00);
        return;
      }

      (*(v195 + 8))(v196, v154);
      sub_22BE33928(v152, &qword_27D9082F0, &qword_22C27AB00);
      v211 = v264;
      sub_22BE19DC4(v197, 0, 1, v264);
      sub_22BE1A140();
      sub_22BE19DC4(v212, v213, v214, v211);
      sub_22BFC390C(v197, v199, &qword_27D907240, &unk_22C2B5B80);
      type metadata accessor for Expression(0);
      sub_22BE23BA8();
      goto LABEL_57;
    case 14:
      sub_22BE23804();
      v86 = sub_22BE26ABC();
      v87(v86);
      v88 = sub_22BE3B180();
      sub_22C263398(v88, v89);
      if (!v2)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    case 15:
      sub_22BE23804();
      v117 = v256;
      v118 = sub_22BE26ABC();
      v119(v118);
      v120 = v269;
      sub_22C264844(v117, v252);
      if (!v120)
      {
LABEL_12:
        v104 = sub_22BE3845C();
        v105(v104);
        v106 = sub_22BE18780();
        v107(v106);
        type metadata accessor for Expression(0);
        sub_22BE23BA8();
        goto LABEL_57;
      }

LABEL_18:
      v121 = sub_22BE3845C();
      v122(v121);
      return;
    case 16:
    case 17:
    case 18:
    case 19:
      type metadata accessor for Expression(0);
      sub_22BE22D94();
      goto LABEL_57;
    default:
      sub_22BE1B55C();
      sub_22C265EC8(v77, v73, v79);
      sub_22BE1C0F4();
      sub_22C2658F4(v73, v70, v80);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        sub_22BE18FF8();
        sub_22C26589C(v73, v81);
        v82 = v264;
        v83 = *(v263 + 32);
        v84 = v239;
        v83(v239, v70, v264);
        v85 = sub_22BE2F2B0();
        v83(v85, v84, v82);
        type metadata accessor for Expression(0);
        sub_22BE1ACEC();
        goto LABEL_57;
      }

      sub_22BE18FF8();
      sub_22C26589C(v70, v185);
      sub_22BE1C0F4();
      sub_22C2658F4(v73, v67, v186);
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        sub_22C26589C(v67, type metadata accessor for AST.FlatValue);
        v206 = v269;
        AST.FlatValue.toValueExpression.getter(&v270);
        sub_22C26589C(v73, type metadata accessor for AST.FlatValue);
        if (v206)
        {
          return;
        }

        v207 = v271;
        v208 = v268;
        *v268 = v270;
        v208[16] = v207;
        type metadata accessor for Expression(0);
        sub_22BE23BA8();
        goto LABEL_57;
      }

      v187 = v265;
      v188 = v266;
      v189 = v235;
      (*(v265 + 32))(v235, v67, v266);
      v190 = v269;
      sub_22C263398(v189, v268);
      if (!v190)
      {
        (*(v187 + 8))(v189, v188);
        sub_22BE18FF8();
        sub_22C26589C(v73, v229);
        type metadata accessor for Expression(0);
        goto LABEL_57;
      }

      (*(v187 + 8))(v189, v188);
      sub_22BE18FF8();
      v115 = v73;
LABEL_16:
      sub_22C26589C(v115, v116);
      return;
  }
}

uint64_t sub_22C263398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v35 = a1;
  v33 = type metadata accessor for Session.Event.Payload(0);
  MEMORY[0x28223BE20](v33);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for StatementResult(0);
  MEMORY[0x28223BE20](v30);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BE5CE4C(&qword_27D915DC0, &qword_22C2D1E80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_22BE5CE4C(&qword_27D915E10, &qword_22C2D1F90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v30 - v9);
  v11 = sub_22BE5CE4C(&qword_27D915E18, &qword_22C2D1F98);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for Session.Event(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE2B984(v2, v7, &qword_27D915DC0, &qword_22C2D1E80);
  v17 = type metadata accessor for Session.Transcript(0);
  if (sub_22BE1AEA8(v7, 1, v17) == 1)
  {
    sub_22BE33928(v7, &qword_27D915DC0, &qword_22C2D1E80);
    v18 = v35;
LABEL_5:
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    swift_allocError();
    v22 = v21;
    v23 = sub_22C26E1D4();
    (*(*(v23 - 8) + 16))(v22, v18, v23);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v19 = *&v7[*(v17 + 32)];

  sub_22C26589C(v7, type metadata accessor for Session.Transcript);
  v18 = v35;
  sub_22C2618B4(v19, v10);

  v20 = sub_22BE5CE4C(&qword_27D915E20, &qword_22C2D1FA0);
  if (sub_22BE1AEA8(v10, 1, v20) == 1)
  {
    sub_22BE33928(v10, &qword_27D915E10, &qword_22C2D1F90);
    goto LABEL_5;
  }

  sub_22C265EC8(v10 + *(v20 + 48), &v13[*(v11 + 48)], type metadata accessor for Session.Event);
  sub_22C265EC8(&v13[*(v11 + 48)], v16, type metadata accessor for Session.Event);
  v25 = v34;
  sub_22C2658F4(&v16[*(v14 + 28)], v34, type metadata accessor for Session.Event.Payload);
  if (swift_getEnumCaseMultiPayload() == 21)
  {
    sub_22C26589C(v16, type metadata accessor for Session.Event);
    v26 = v31;
    sub_22C265EC8(v25, v31, type metadata accessor for StatementResult);
    v27 = *(v30 + 28);
    v28 = sub_22C26E684();
    (*(*(v28 - 8) + 16))(v32, v26 + v27, v28);
    return sub_22C26589C(v26, type metadata accessor for StatementResult);
  }

  else
  {
    sub_22C26589C(v25, type metadata accessor for Session.Event.Payload);
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    swift_allocError();
    *v29 = 0xD000000000000027;
    v29[1] = 0x800000022C2DC170;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_22C26589C(v16, type metadata accessor for Session.Event);
  }
}

void AST.FlatValue.toValueExpression.getter(uint64_t a1@<X8>)
{
  v4 = v1;
  v6 = sub_22C26E684();
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v12 = v11 - v10;
  v13 = type metadata accessor for AST.FlatValue(0);
  sub_22BE179D8();
  v61 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v16);
  sub_22BE19490();
  v58 = v17;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v18);
  v20 = (&v51 - v19);
  sub_22BE1C0F4();
  sub_22C2658F4(v4, v20, v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *a1 = *v20;
      *(a1 + 8) = 0;
      v40 = 1;
      goto LABEL_20;
    case 2u:
      *a1 = *v20;
      *(a1 + 8) = 0;
      v40 = 2;
      goto LABEL_20;
    case 3u:
      v41 = v20[1];
      *a1 = *v20;
      *(a1 + 8) = v41;
      v40 = 3;
      goto LABEL_20;
    case 4u:
      v28 = *v20;
      v29 = *(*v20 + 16);
      if (v29)
      {
        v56 = v12;
        v52 = a1;
        v53 = v2;
        v65 = MEMORY[0x277D84F90];
        v60 = v29;
        sub_22BE71084();
        v30 = 0;
        v62 = v65;
        v59 = v28 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
        v57 = v8;
        v31 = (v8 + 32);
        v32 = v58;
        v54 = v28;
        v55 = v13;
        do
        {
          if (v30 >= *(v28 + 16))
          {
            __break(1u);
            return;
          }

          sub_22C2658F4(v59 + *(v61 + 72) * v30, v32, type metadata accessor for AST.FlatValue);
          sub_22C2658F4(v32, v3, type metadata accessor for AST.FlatValue);
          if (swift_getEnumCaseMultiPayload() != 7)
          {

            sub_22BE17ED8();
            sub_22C26589C(v3, v43);
            v44 = type metadata accessor for ExpressionConverterError(0);
            v45 = sub_22C265188();
            sub_22BE196B4(v44, v45);
            v47 = v46;
            v63 = 0;
            v64 = 0xE000000000000000;
            sub_22C273AA4();

            sub_22BE25A74();
            v63 = 0xD000000000000018;
            v64 = v48;
            AST.FlatValue.description.getter();
            MEMORY[0x2318AB8D0]();

            v49 = v64;
            *v47 = v63;
            v47[1] = v49;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            sub_22C26589C(v32, type metadata accessor for AST.FlatValue);

            return;
          }

          sub_22BE18FF8();
          sub_22C26589C(v32, v33);
          v34 = *v31;
          v35 = v56;
          (*v31)(v56, v3, v6);
          v36 = v62;
          v65 = v62;
          v37 = v6;
          v38 = *(v62 + 16);
          if (v38 >= *(v62 + 24) >> 1)
          {
            sub_22BE71084();
            v32 = v58;
            v36 = v65;
          }

          ++v30;
          *(v36 + 16) = v38 + 1;
          v39 = (*(v57 + 80) + 32) & ~*(v57 + 80);
          v62 = v36;
          v34(v36 + v39 + *(v57 + 72) * v38, v35, v37);
          v6 = v37;
          v28 = v54;
        }

        while (v60 != v30);

        a1 = v52;
        v50 = v62;
      }

      else
      {

        v50 = MEMORY[0x277D84F90];
      }

      *a1 = v50;
      *(a1 + 8) = 0;
      v40 = 4;
LABEL_20:
      *(a1 + 16) = v40;
      return;
    case 5u:
    case 7u:
    case 8u:
      sub_22BE18FF8();
      sub_22C26589C(v20, v22);
      type metadata accessor for ExpressionConverterError(0);
      sub_22C265188();
      v23 = sub_22BE23BA8();
      sub_22BE196B4(v23, v24);
      v26 = v25;
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_22C273AA4();

      v63 = 0x2065707954;
      v64 = 0xE500000000000000;
      AST.FlatValue.description.getter();
      MEMORY[0x2318AB8D0]();

      MEMORY[0x2318AB8D0](0xD000000000000027, 0x800000022C2DC090);
      v27 = v64;
      *v26 = v63;
      v26[1] = v27;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    case 6u:
      v42 = v20[1];
      *a1 = *v20;
      *(a1 + 8) = v42;
      v40 = 5;
      goto LABEL_20;
    case 9u:
      *a1 = 0;
      *(a1 + 8) = 0;
      v40 = 6;
      goto LABEL_20;
    default:
      *a1 = *v20;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      return;
  }
}

uint64_t AST.FlatValue.toStatementId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for AST.FlatValue(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v7 = v6 - v5;
  sub_22BE1C0F4();
  sub_22C2658F4(v2, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_22C26E684();
    sub_22BE18000();
    return (*(v9 + 32))(a1, v7);
  }

  else
  {
    sub_22BE18FF8();
    sub_22C26589C(v7, v11);
    v12 = type metadata accessor for ExpressionConverterError(0);
    v13 = sub_22C265188();
    sub_22BE196B4(v12, v13);
    v15 = v14;
    sub_22C273AA4();

    sub_22BE25A74();
    v17 = v16;
    AST.FlatValue.description.getter();
    MEMORY[0x2318AB8D0]();

    *v15 = 0xD000000000000018;
    v15[1] = v17;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_22C263F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C26E1D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.FlatValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C2658F4(a1, v10, type metadata accessor for AST.FlatValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_22C264844(v7, a2);
    return (*(v5 + 8))(v7, v4);
  }

  else if (EnumCaseMultiPayload == 7)
  {
    v12 = sub_22C26E684();
    return (*(*(v12 - 8) + 32))(a2, v10, v12);
  }

  else
  {
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    swift_allocError();
    *v14 = 0xD000000000000025;
    v14[1] = 0x800000022C2DC140;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_22C26589C(v10, type metadata accessor for AST.FlatValue);
  }
}

void sub_22C2641F0(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v32 = a2;
  v30 = a3;
  v4 = sub_22C26E684();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D915E08, &unk_22C2D1F80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for AST.FlatValue(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for AST.Update(0);
  v17 = *(a1 + v16[5]);
  if (*(v17 + 16) != 1)
  {
    goto LABEL_4;
  }

  sub_22BF2DEA4(v17);
  if (sub_22BE1AEA8(v9, 1, v10) == 1)
  {
    sub_22BE33928(v9, &qword_27D915E08, &unk_22C2D1F80);
LABEL_4:
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    v18 = swift_allocError();
    *v19 = 0xD000000000000026;
    v19[1] = 0x800000022C2DC0E0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_5;
  }

  sub_22C265EC8(v9, v15, type metadata accessor for AST.FlatValue);
  sub_22C2658F4(v15, v12, type metadata accessor for AST.FlatValue);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v21 = *v12;
    v20 = v12[1];
    v22 = v16[7];
    v23 = *(a1 + v16[6]);
    v24 = v31;
    sub_22C263F98(a1 + v22, v6);
    v18 = v24;
    sub_22C26589C(v15, type metadata accessor for AST.FlatValue);
    if (!v24)
    {
      v26 = v30;
      *v30 = v21;
      v26[1] = v20;
      v26[2] = 0;
      *(v26 + 24) = 1;
      *(v26 + 25) = v23;
      updated = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
      (*(v29 + 32))(v26 + *(updated + 28), v6, v4);
      return;
    }
  }

  else
  {
    sub_22C26589C(v12, type metadata accessor for AST.FlatValue);
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    v18 = swift_allocError();
    *v25 = 0xD000000000000029;
    v25[1] = 0x800000022C2DC110;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22C26589C(v15, type metadata accessor for AST.FlatValue);
  }

LABEL_5:
  *v32 = v18;
}

uint64_t sub_22C2645B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C26E1D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.FlatValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C2658F4(a1, v10, type metadata accessor for AST.FlatValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_22C264844(v7, a2);
    return (*(v5 + 8))(v7, v4);
  }

  else if (EnumCaseMultiPayload == 7)
  {
    v12 = sub_22C26E684();
    return (*(*(v12 - 8) + 32))(a2, v10, v12);
  }

  else
  {
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    swift_allocError();
    *v14 = 0xD000000000000025;
    v14[1] = 0x800000022C2DC140;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_22C26589C(v10, type metadata accessor for AST.FlatValue);
  }
}

uint64_t sub_22C264810@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_22C263398(a1, a3);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_22C264844@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v64 = a1;
  v65 = type metadata accessor for Expression(0);
  MEMORY[0x28223BE20](v65);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BE5CE4C(&qword_27D90A8A0, &unk_22C2D1FB0);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v54 - v7;
  v66 = type metadata accessor for ProgramStatement(0);
  v8 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  MEMORY[0x28223BE20](v13);
  v55 = &v54 - v14;
  v60 = type metadata accessor for Session.Event.Payload(0);
  MEMORY[0x28223BE20](v60);
  v61 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_22BE5CE4C(&qword_27D915DC0, &qword_22C2D1E80);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v54 - v17;
  v19 = sub_22BE5CE4C(&qword_27D915E10, &qword_22C2D1F90);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v54 - v20);
  v22 = sub_22BE5CE4C(&qword_27D915E18, &qword_22C2D1F98);
  MEMORY[0x28223BE20](v22);
  v24 = &v54 - v23;
  v25 = type metadata accessor for Session.Event(0);
  MEMORY[0x28223BE20](v25);
  v62 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE2B984(v63, v18, &qword_27D915DC0, &qword_22C2D1E80);
  v27 = type metadata accessor for Session.Transcript(0);
  if (sub_22BE1AEA8(v18, 1, v27) == 1)
  {
    sub_22BE33928(v18, &qword_27D915DC0, &qword_22C2D1E80);
    v28 = v64;
LABEL_17:
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    swift_allocError();
    v47 = v46;
    v48 = sub_22C26E1D4();
    (*(*(v48 - 8) + 16))(v47, v28, v48);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v29 = *&v18[*(v27 + 32)];

  sub_22C26589C(v18, type metadata accessor for Session.Transcript);
  v28 = v64;
  sub_22C2618B4(v29, v21);

  v30 = sub_22BE5CE4C(&qword_27D915E20, &qword_22C2D1FA0);
  if (sub_22BE1AEA8(v21, 1, v30) == 1)
  {
    sub_22BE33928(v21, &qword_27D915E10, &qword_22C2D1F90);
    goto LABEL_17;
  }

  sub_22C265EC8(v21 + *(v30 + 48), &v24[*(v22 + 48)], type metadata accessor for Session.Event);
  v31 = &v24[*(v22 + 48)];
  v32 = v62;
  sub_22C265EC8(v31, v62, type metadata accessor for Session.Event);
  v33 = v61;
  sub_22C2658F4(v32 + *(v25 + 28), v61, type metadata accessor for Session.Event.Payload);
  result = swift_getEnumCaseMultiPayload();
  if (result != 4)
  {
    sub_22C26589C(v32, type metadata accessor for Session.Event);
    sub_22C26589C(v33, type metadata accessor for Session.Event.Payload);
    goto LABEL_17;
  }

  v35 = 0;
  v63 = v33[1];
  v36 = v33[4];
  v37 = v33[6];
  v60 = v33[3];
  v61 = v37;
  v38 = *(v36 + 16);
  v64 = MEMORY[0x277D84F90];
  while (v38 != v35)
  {
    if (v35 >= *(v36 + 16))
    {
      __break(1u);
      return result;
    }

    v39 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v40 = *(v8 + 72);
    sub_22C2658F4(v36 + v39 + v40 * v35, v12, type metadata accessor for ProgramStatement);
    sub_22C2658F4(&v12[*(v66 + 20)], v3, type metadata accessor for Expression);
    v41 = swift_getEnumCaseMultiPayload() - 5;
    sub_22C26589C(v3, type metadata accessor for Expression);
    if (v41 < 2)
    {
      sub_22C265EC8(v12, v59, type metadata accessor for ProgramStatement);
      v42 = v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BE710CC();
        v42 = v67;
      }

      v44 = *(v42 + 16);
      v45 = v44 + 1;
      if (v44 >= *(v42 + 24) >> 1)
      {
        v64 = v44 + 1;
        v54 = v44;
        sub_22BE710CC();
        v45 = v64;
        v44 = v54;
        v42 = v67;
      }

      ++v35;
      *(v42 + 16) = v45;
      v64 = v42;
      result = sub_22C265EC8(v59, v42 + v39 + v44 * v40, type metadata accessor for ProgramStatement);
    }

    else
    {
      result = sub_22C26589C(v12, type metadata accessor for ProgramStatement);
      ++v35;
    }
  }

  v49 = v58;
  sub_22BE9586C(v64, v58);

  v50 = v57;
  sub_22BE2B984(v49, v57, &qword_27D90A8A0, &unk_22C2D1FB0);
  if (sub_22BE1AEA8(v50, 1, v66) == 1)
  {
    sub_22BE33928(v50, &qword_27D90A8A0, &unk_22C2D1FB0);
    sub_22BF103C8();
    swift_allocError();
    *v51 = 0xD000000000000080;
    *(v51 + 8) = 0x800000022C2DC1A0;
    *(v51 + 16) = xmmword_22C2D1E70;
    *(v51 + 32) = 0x800000022C2DC230;
    swift_willThrow();
    sub_22BE33928(v49, &qword_27D90A8A0, &unk_22C2D1FB0);
    return sub_22C26589C(v62, type metadata accessor for Session.Event);
  }

  else
  {
    sub_22BE33928(v49, &qword_27D90A8A0, &unk_22C2D1FB0);
    sub_22C26589C(v62, type metadata accessor for Session.Event);
    v52 = v55;
    sub_22C265EC8(v50, v55, type metadata accessor for ProgramStatement);
    v53 = sub_22C26E684();
    (*(*(v53 - 8) + 16))(v56, v52, v53);
    return sub_22C26589C(v52, type metadata accessor for ProgramStatement);
  }
}

unint64_t sub_22C265188()
{
  result = qword_27D915DD0;
  if (!qword_27D915DD0)
  {
    type metadata accessor for ExpressionConverterError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915DD0);
  }

  return result;
}

uint64_t sub_22C26521C(uint64_t a1, uint64_t a2)
{
  v34 = sub_22C26E1D4();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v10 = v9 - v8;
  type metadata accessor for ExpressionConverterError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v12);
  v14 = (&v33 - v13);
  v15 = sub_22BE5CE4C(&qword_27D915E00, &qword_22C2D1F78);
  v16 = sub_22BE19448(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v20 = (&v33 + *(v19 + 56) - v17);
  sub_22C2658F4(a1, &v33 - v17, type metadata accessor for ExpressionConverterError);
  sub_22C2658F4(a2, v20, type metadata accessor for ExpressionConverterError);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = sub_22BE1C424();
    sub_22C2658F4(v26, v14, v27);
    v29 = *v14;
    v28 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v29 == *v20 && v28 == v20[1])
      {
      }

      else
      {
        v31 = sub_22C274014();

        if ((v31 & 1) == 0)
        {
          sub_22BE23274();
          goto LABEL_8;
        }
      }

      sub_22BE23274();
      v24 = 1;
      return v24 & 1;
    }

LABEL_7:
    sub_22BE33928(v18, &qword_27D915E00, &qword_22C2D1F78);
LABEL_8:
    v24 = 0;
    return v24 & 1;
  }

  v21 = sub_22BE1C424();
  sub_22C2658F4(v21, v2, v22);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v6 + 8))(v2, v34);
    goto LABEL_7;
  }

  v23 = v34;
  (*(v6 + 32))(v10, v20, v34);
  v24 = sub_22C26E1B4();
  v25 = *(v6 + 8);
  v25(v10, v23);
  v25(v2, v23);
  sub_22BE23274();
  return v24 & 1;
}

uint64_t sub_22C265558(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v36 = sub_22C26E684();
  v4 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AST.FlatValue(0);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9155B8, &unk_22C2CC7B0);
  result = sub_22C273D04();
  v11 = 0;
  v40 = a3;
  v41 = result;
  v14 = *(a3 + 64);
  v13 = a3 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v34 = result + 64;
  v35 = v4;
  v33 = v4 + 32;
  if (v17)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v42 = (v17 - 1) & v17;
LABEL_10:
      v22 = v19 | (v11 << 6);
      v23 = (*(v40 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      sub_22C2658F4(*(v40 + 56) + *(v37 + 72) * v22, v9, type metadata accessor for AST.FlatValue);

      v26 = v43;
      v38(v9);
      v43 = v26;
      if (v26)
      {
        break;
      }

      v27 = v9;
      sub_22C26589C(v9, type metadata accessor for AST.FlatValue);
      *(v34 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v28 = v41;
      v29 = (*(v41 + 48) + 16 * v22);
      *v29 = v24;
      v29[1] = v25;
      result = (*(v35 + 32))(*(v28 + 56) + *(v35 + 72) * v22, v6, v36);
      v30 = *(v28 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_17;
      }

      *(v28 + 16) = v32;
      v9 = v27;
      v17 = v42;
      if (!v42)
      {
        goto LABEL_5;
      }
    }

    sub_22C26589C(v9, type metadata accessor for AST.FlatValue);
    return v41;
  }

  else
  {
LABEL_5:
    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        return v41;
      }

      v21 = *(v13 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C26589C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BE18000();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C2658F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE18000();
  v4 = sub_22BE19454();
  v5(v4);
  return a2;
}

void sub_22C265998(uint64_t a1)
{
  sub_22C265A04(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22C265A04(uint64_t a1)
{
  if (!qword_27D915DE8)
  {
    type metadata accessor for Session.Transcript(255);
    v1 = sub_22C273844();
    if (!v2)
    {
      atomic_store(v1, &qword_27D915DE8);
    }
  }
}

uint64_t sub_22C265A5C(uint64_t a1)
{
  result = sub_22C26E1D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C265AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = sub_22BE5CE4C(&qword_27D915E18, &qword_22C2D1F98);
  MEMORY[0x28223BE20](v47);
  v46 = &v43 - v6;
  v49 = sub_22BE5CE4C(&qword_27D9072E8, &qword_22C275210);
  MEMORY[0x28223BE20](v49);
  v45 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v50 = v10;
  v51 = &v43 - v9;
  v11 = 0;
  v12 = 0;
  v43 = *(v10 + 80);
  v13 = MEMORY[0x277D84F90];
  v44 = (v43 + 32) & ~v43;
  v14 = MEMORY[0x277D84F90] + v44;
  v48 = a1 - a2;
  while (v48 + v12)
  {
    if (a2 < a1)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if ((a1 + v12) >= a2)
    {
      goto LABEL_36;
    }

    v15 = *(a3 + 16);
    if (v12 == v15)
    {
      break;
    }

    if (v12 >= v15)
    {
      goto LABEL_37;
    }

    v52 = v13;
    v16 = *(type metadata accessor for Session.Event(0) - 8);
    v17 = a3;
    v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12;
    v19 = v46;
    v20 = *(v47 + 48);
    sub_22C2658F4(v18, &v46[v20], type metadata accessor for Session.Event);
    v21 = *(v49 + 48);
    v22 = v45;
    *v45 = a1 + v12;
    sub_22C265EC8(&v19[v20], v22 + v21, type metadata accessor for Session.Event);
    sub_22BE73F60(v22, v51, &qword_27D9072E8, &qword_22C275210);
    if (v11)
    {
      v23 = v52;
      a3 = v17;
    }

    else
    {
      v24 = v52[3];
      if (((v24 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_39;
      }

      v25 = a1;
      v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      sub_22BE5CE4C(&qword_27D90A7F8, &unk_22C2880B0);
      v28 = *(v50 + 72);
      v29 = v44;
      v23 = swift_allocObject();
      v30 = j__malloc_size(v23);
      if (!v28)
      {
        goto LABEL_40;
      }

      v31 = v30 - v29;
      if (v30 - v29 == 0x8000000000000000 && v28 == -1)
      {
        goto LABEL_41;
      }

      v33 = v31 / v28;
      v23[2] = v27;
      v23[3] = 2 * (v31 / v28);
      v34 = v23 + v29;
      v35 = v52;
      v36 = v52[3];
      v37 = (v36 >> 1) * v28;
      if (v52[2])
      {
        if (v23 < v52 || v34 >= v52 + v44 + v37)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v23 != v52)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v35[2] = 0;
      }

      v14 = &v34[v37];
      v11 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - (v36 >> 1);

      a3 = v17;
      a1 = v25;
    }

    v39 = __OFSUB__(v11--, 1);
    if (v39)
    {
      goto LABEL_38;
    }

    sub_22BE73F60(v51, v14, &qword_27D9072E8, &qword_22C275210);
    v14 += *(v50 + 72);
    ++v12;
    v13 = v23;
  }

  v40 = v13[3];
  if (v40 < 2)
  {
    return;
  }

  v41 = v40 >> 1;
  v39 = __OFSUB__(v41, v11);
  v42 = v41 - v11;
  if (!v39)
  {
    v13[2] = v42;
    return;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_22C265EC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE18000();
  v4 = sub_22BE19454();
  v5(v4);
  return a2;
}

uint64_t HashablePair.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for HashablePair(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t static HashablePair.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_22C272FD4())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for HashablePair(0, v12);
    v10 = sub_22C272FD4();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t HashablePair.hashValue.getter(void *a1)
{
  sub_22C274154();
  HashablePair.hash(into:)(v3, a1);
  return sub_22C2741A4();
}

uint64_t sub_22C266190(uint64_t a1, void *a2)
{
  sub_22C274154();
  HashablePair.hash(into:)(v4, a2);
  return sub_22C2741A4();
}

uint64_t sub_22C266208(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C266294(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_22BE1AEA8(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_22C26645C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          sub_22BE19DC4(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C2666F0(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_22C26674C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_22BE1AEA8(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_22C2668C4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_22BE19DC4(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C266B34(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_22C26E164();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C266BBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_22C26E164();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = v8;
  v14 = *(v6 + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v22 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v22 = ((a1 + v14) & ~v12);
    }

    return sub_22BE1AEA8(v22, v10, v13);
  }

  v15 = (v14 & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 2:
        v21 = *a1;
        break;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v21 = *a1;
        break;
      default:
        v21 = *a1;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_22C266DDC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_22C26E164();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = (v15 & ~v14) + *(*(v10 - 8) + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v12 = v9;
            v10 = v7;
          }

          else
          {
            v24 = (&a1[v15] & ~v14);
            v25 = a2;
          }

          sub_22BE19DC4(v24, v25, v12, v10);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C26709C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Optional.if_unwrap(file:line:function:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a4;
  v25 = a3;
  sub_22BE17C68();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v19, v18, v15);
  v20 = *(a6 + 16);
  if (sub_22BE1AEA8(v17, 1, v20) != 1)
  {
    return (*(*(v20 - 8) + 32))(a7, v17, v20);
  }

  (*(v13 + 8))(v17, a6);
  sub_22BF103C8();
  swift_allocError();
  *v21 = a1;
  v21[1] = a2;
  v22 = v26;
  v21[2] = v25;
  v21[3] = v22;
  v21[4] = a5;
  swift_willThrow();
}

void __swiftcall UnwrappedNilError.init(file:line:function:)(IntelligenceFlowPlannerSupport::UnwrappedNilError *__return_ptr retstr, Swift::String file, Swift::Int line, Swift::String function)
{
  retstr->file = file;
  retstr->line = line;
  retstr->function = function;
}

uint64_t Optional.asyncMap<A>(_:)()
{
  sub_22BE183F0();
  v3 = v2;
  v1[6] = v4;
  v1[7] = v0;
  v1[4] = v5;
  v1[5] = v2;
  v1[2] = v6;
  v1[3] = v7;
  sub_22BE17C68();
  v1[8] = v8;
  v1[9] = sub_22BE25184();
  v1[10] = *(v3 + 16);
  sub_22BE17C68();
  v1[11] = v9;
  v1[12] = sub_22BE25184();
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C26739C()
{
  v3 = sub_22BE1A83C();
  v4(v3);
  if (sub_22BE1AEA8(v0, 1, v1) == 1)
  {
    v5 = v2[6];
    v6 = v2[2];
    (*(v2[8] + 8))(v2[9], v2[5]);
    sub_22BE19DC4(v6, 1, 1, v5);

    sub_22BE1A26C();

    return v7();
  }

  else
  {
    v9 = sub_22BE1B574();
    v10(v9);
    sub_22BE19020();
    v14 = v11;
    v12 = swift_task_alloc();
    v2[13] = v12;
    *v12 = v2;
    v13 = sub_22BE18798(v12);

    return v14(v13);
  }
}

uint64_t sub_22C267514()
{
  sub_22BE183F0();
  sub_22BE19230();
  *v3 = v2;
  v4 = *v1;
  sub_22BE19230();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C267618()
{
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_22BE19DC4(v2, 0, 1, v1);

  sub_22BE1A26C();

  return v3();
}

uint64_t Optional.asyncFlatMap<A>(_:)()
{
  sub_22BE183F0();
  v3 = v2;
  v1[6] = v4;
  v1[7] = v0;
  v1[4] = v5;
  v1[5] = v2;
  v1[2] = v6;
  v1[3] = v7;
  sub_22BE17C68();
  v1[8] = v8;
  v1[9] = sub_22BE25184();
  v1[10] = *(v3 + 16);
  sub_22BE17C68();
  v1[11] = v9;
  v1[12] = sub_22BE25184();
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C2677B0()
{
  v3 = sub_22BE1A83C();
  v4(v3);
  if (sub_22BE1AEA8(v0, 1, v1) == 1)
  {
    v5 = v2[6];
    v6 = v2[2];
    (*(v2[8] + 8))(v2[9], v2[5]);
    sub_22BE19DC4(v6, 1, 1, v5);

    sub_22BE1A26C();

    return v7();
  }

  else
  {
    v9 = sub_22BE1B574();
    v10(v9);
    sub_22BE19020();
    v14 = v11;
    v12 = swift_task_alloc();
    v2[13] = v12;
    *v12 = v2;
    v13 = sub_22BE18798(v12);

    return v14(v13);
  }
}

uint64_t sub_22C267918()
{
  sub_22BE183F0();
  sub_22BE19230();
  *v3 = v2;
  v4 = *v1;
  sub_22BE19230();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C267A1C()
{
  sub_22BE183F0();
  (*(v0[11] + 8))(v0[12], v0[10]);

  sub_22BE1A26C();

  return v1();
}

uint64_t sub_22C267A98()
{
  sub_22BE183F0();
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

unint64_t UnwrappedNilError.description.getter()
{
  v1 = v0;
  sub_22C273AA4();

  MEMORY[0x2318AB8D0](*v1, v1[1]);
  MEMORY[0x2318AB8D0](0x203A656E696C20, 0xE700000000000000);
  v2 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v2);

  MEMORY[0x2318AB8D0](0x6F6974636E756620, 0xEB00000000203A6ELL);
  MEMORY[0x2318AB8D0](v1[3], v1[4]);
  MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t Peekable.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v8 = *(type metadata accessor for Peekable(0, a2, a3, a5) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE19DC4(a4 + v8, 1, 1, AssociatedTypeWitness);
  v10 = *(*(a2 - 8) + 32);

  return v10(a4, a1, a2);
}

uint64_t Peekable.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_22C273844();
  sub_22BE179D8();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  v13 = *(a1 + 36);
  (*(v8 + 16))(&v15 - v11, v2 + v13, v6, v10);
  if (sub_22BE1AEA8(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v12, v6);
    return sub_22C2738F4();
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 32))(a2, v12, AssociatedTypeWitness);
    (*(v8 + 8))(v2 + v13, v6);
    sub_22BE19DC4(v2 + v13, 1, 1, AssociatedTypeWitness);
    return sub_22BE19DC4(a2, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t Peekable.peek()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_22C273844();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v15 = *(a1 + 36);
  v16 = *(v7 + 16);
  v16(&v19 - v13, v2 + v15, v5, v12);
  if (sub_22BE1AEA8(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v14, v5);
    sub_22C2738F4();
    (*(v7 + 40))(v2 + v15, v10, v5);
    return (v16)(v20, v2 + v15, v5);
  }

  else
  {
    v18 = v20;
    (*(*(AssociatedTypeWitness - 8) + 32))(v20, v14, AssociatedTypeWitness);
    return sub_22BE19DC4(v18, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_22C2680C4(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_22C273844();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_22C268178(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = v14 + (v15 & ~v13);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v12)
      {
LABEL_31:
        if (v7 >= v11)
        {

          return sub_22BE1AEA8(a1, v7, v5);
        }

        else
        {
          v23 = sub_22BE1AEA8((a1 + v15) & ~v13, v10, AssociatedTypeWitness);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_22C2683CC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v12 + 80);
  v17 = *(v8 + 64) + v16;
  v18 = v17 & ~v16;
  if (v13)
  {
    v19 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v19 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v20 = v18 + v19;
  v21 = 8 * (v18 + v19);
  if (a3 > v15)
  {
    if (v20 <= 3)
    {
      v22 = ((a3 - v15 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v22))
      {
        v11 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v11 = v23;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v15 >= a2)
  {
    switch(v11)
    {
      case 1:
        a1[v20] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 2:
        *&a1[v20] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 3:
LABEL_60:
        __break(1u);
        return;
      case 4:
        *&a1[v20] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (!a2)
        {
          return;
        }

LABEL_32:
        if (v9 >= v14)
        {
          v31 = a1;
          v32 = a2;
          v13 = v9;
          AssociatedTypeWitness = v7;
        }

        else
        {
          v27 = (&a1[v17] & ~v16);
          if (v14 < a2)
          {
            if (v19 <= 3)
            {
              v28 = ~(-1 << (8 * v19));
            }

            else
            {
              v28 = -1;
            }

            if (v19)
            {
              v29 = v28 & (~v14 + a2);
              if (v19 <= 3)
              {
                v30 = v19;
              }

              else
              {
                v30 = 4;
              }

              bzero(v27, v19);
              switch(v30)
              {
                case 2:
                  *v27 = v29;
                  break;
                case 3:
                  *v27 = v29;
                  v27[2] = BYTE2(v29);
                  break;
                case 4:
                  *v27 = v29;
                  break;
                default:
                  *v27 = v29;
                  break;
              }
            }

            return;
          }

          v32 = (a2 + 1);
          v31 = v27;
        }

        sub_22BE19DC4(v31, v32, v13, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    v24 = ~v15 + a2;
    if (v20 < 4)
    {
      v25 = (v24 >> v21) + 1;
      if (v20)
      {
        v26 = v24 & ~(-1 << v21);
        bzero(a1, v20);
        if (v20 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v20 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v24;
      v25 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v20] = v25;
        break;
      case 2:
        *&a1[v20] = v25;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v20] = v25;
        break;
      default:
        return;
    }
  }
}

uint64_t Result<>.asyncMap<A>(_:)()
{
  sub_22BE183F0();
  sub_22BE1C10C(v1, v2, v3, v4, v5);
  v0[9] = v6;
  v7 = sub_22BE25184();
  sub_22BE19400(v7);
  v0[11] = v8;
  v0[12] = sub_22BE25184();
  v9 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C2687F4()
{
  v1 = sub_22BE18B98();
  v2(v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(*(v0[5] + 24) - 8) + 32))(v0[2], v0[12], *(v0[5] + 24));
    sub_22C2741F4();
    swift_storeEnumTagMultiPayload();

    sub_22BE17A94();

    return v3();
  }

  else
  {
    v5 = sub_22BE1B588();
    v6(v5);
    sub_22BE19020();
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v8 = sub_22BE1A854(v7);

    return v9(v8);
  }
}

uint64_t sub_22C268998()
{
  sub_22BE183F0();

  v0 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22C268A88()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_22C2741F4();
  swift_storeEnumTagMultiPayload();

  sub_22BE17A94();

  return v1();
}

uint64_t Result<>.asyncFlatMap<A>(_:)()
{
  sub_22BE183F0();
  sub_22BE1C10C(v1, v2, v3, v4, v5);
  v0[9] = v6;
  v7 = sub_22BE25184();
  sub_22BE19400(v7);
  v0[11] = v8;
  v0[12] = sub_22BE25184();
  v9 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C268C10()
{
  v1 = sub_22BE18B98();
  v2(v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(*(v0[5] + 24) - 8) + 32))(v0[2], v0[12], *(v0[5] + 24));
    sub_22C2741F4();
    swift_storeEnumTagMultiPayload();

    sub_22BE17A94();

    return v3();
  }

  else
  {
    v5 = sub_22BE1B588();
    v6(v5);
    sub_22BE19020();
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v8 = sub_22BE1A854(v7);

    return v9(v8);
  }
}

uint64_t sub_22C268DB0()
{
  sub_22BE183F0();

  v0 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22C268EA0()
{
  sub_22BE183F0();
  (*(v0[9] + 8))(v0[10], v0[8]);

  sub_22BE17A94();

  return v1();
}

BOOL Sequence.any(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE19414(a1, a2);
  v8 = sub_22BE1A450(v4, v5, v6, v7);
  sub_22BE17C68();
  v31[1] = v9;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B59C();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  sub_22BE17C68();
  MEMORY[0x28223BE20](v14);
  sub_22BE17CBC();
  sub_22BE1BBE0();
  sub_22BE17C68();
  v31[2] = v15;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE18BB4();
  v18(v17);
  sub_22BE1A870();
  sub_22C269CE4();
  swift_getAssociatedConformanceWitness();
  sub_22BE2329C();
  do
  {
    sub_22BE3846C();
    v19 = sub_22BE1AEA8(v13, 1, v8);
    if (v19 == 1)
    {
      break;
    }

    v20 = sub_22BE3E704();
    v21(v20);
    v22 = (v31[3])(v3);
    if (v2)
    {
      v26 = sub_22BE17EF0();
      v27(v26);
      break;
    }

    v23 = v22;
    v24 = sub_22BE17EF0();
    v25(v24);
  }

  while ((v23 & 1) == 0);
  v28 = sub_22BE3B198();
  v29(v28);
  return v19 != 1;
}

BOOL Sequence.all(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE19414(a1, a2);
  v8 = sub_22BE1A450(v4, v5, v6, v7);
  sub_22BE17C68();
  v31[1] = v9;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B59C();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  sub_22BE17C68();
  MEMORY[0x28223BE20](v14);
  sub_22BE17CBC();
  sub_22BE1BBE0();
  sub_22BE17C68();
  v31[2] = v15;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE18BB4();
  v18(v17);
  sub_22BE1A870();
  sub_22C269CE4();
  swift_getAssociatedConformanceWitness();
  sub_22BE2329C();
  do
  {
    sub_22BE3846C();
    v19 = sub_22BE1AEA8(v13, 1, v8);
    if (v19 == 1)
    {
      break;
    }

    v20 = sub_22BE3E704();
    v21(v20);
    v22 = (v31[3])(v3);
    if (v2)
    {
      v26 = sub_22BE17EF0();
      v27(v26);
      break;
    }

    v23 = v22;
    v24 = sub_22BE17EF0();
    v25(v24);
  }

  while ((v23 & 1) != 0);
  v28 = sub_22BE3B198();
  v29(v28);
  return v19 == 1;
}

uint64_t Sequence.lazyCartesianProduct<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a1;
  sub_22BE17C68();
  v10 = v9;
  v31 = *(v11 + 64);
  MEMORY[0x28223BE20](v12);
  v29 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C273AC4();
  sub_22BE17C68();
  v33 = v14;
  v34 = v15;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v27[0] = v27 - v17;
  swift_getAssociatedTypeWitness();
  v28 = a5;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22C273BF4();
  sub_22C273BF4();
  swift_getWitnessTable();
  v27[1] = swift_getWitnessTable();
  sub_22C273BE4();
  swift_getWitnessTable();
  sub_22C273AC4();
  sub_22BE179FC();
  v19 = MEMORY[0x28223BE20](v18);
  MEMORY[0x2318ABA30](a2, a4, v19);
  v20 = v29;
  (*(v10 + 16))(v29, v32, a3);
  v21 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = a3;
  v23 = v28;
  *(v22 + 4) = a4;
  *(v22 + 5) = v23;
  (*(v10 + 32))(&v22[v21], v20, a3);
  v24 = v33;
  swift_getWitnessTable();
  v25 = v27[0];
  sub_22C273D94();

  (*(v34 + 8))(v25, v24);
  swift_getWitnessTable();
  return sub_22C273A14();
}

uint64_t sub_22C269780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v22 = a2;
  v23 = a4;
  v21 = a1;
  v24 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v21 - v10;
  v12 = sub_22C273AC4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  MEMORY[0x2318ABA30](a3, a5, v14);
  (*(v9 + 16))(v11, v21, AssociatedTypeWitness);
  v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = v23;
  *(v18 + 2) = v22;
  *(v18 + 3) = a3;
  *(v18 + 4) = v19;
  *(v18 + 5) = a5;
  (*(v9 + 32))(&v18[v17], v11, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_22C273D74();

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_22C269A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(a7, a2, AssociatedTypeWitness);
  v13 = *(*(v11 - 8) + 16);

  return v13(a7 + v12, a1, v11);
}

uint64_t sub_22C269C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_22C269A4C(a1, v6, a2);
}

uint64_t sub_22C269CE4()
{
  result = v0;
  *(v2 - 72) = v1;
  return result;
}

uint64_t sub_22C269CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_22BE7127C(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      sub_22BE5CE4C(&qword_27D907310, &unk_22C275250);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_22BE7127C(v6 > 1, v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

BOOL sub_22C269E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22C274154();
  sub_22C272F44();
  v6 = sub_22C2741A4();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_22C274014();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_22C269EFC(uint64_t a1, uint64_t a2)
{
  sub_22C272CA4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE1C440();
  if (!v5)
  {
    return 0;
  }

  v6 = *(a2 + 40);
  sub_22BE3B1AC();
  v9 = sub_22C26D0EC(v7, v8, MEMORY[0x277D73368]);
  sub_22BE2B960(v9);
  sub_22BE1A470();
  do
  {
    sub_22BE1BC00();
    if (!v10)
    {
      break;
    }

    v11 = sub_22BE3848C();
    v12(v11);
    sub_22BE3B1AC();
    v14 = sub_22C26D0EC(&qword_28106DED8, v13, MEMORY[0x277D73370]);
    sub_22BE1A0CC(v14);
    v15 = sub_22BE3747C();
    v16(v15);
  }

  while ((v6 & 1) == 0);
  return v2;
}

BOOL sub_22C26A03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22C274154();
  sub_22C272F44();
  v6 = sub_22C2741A4();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_22C274014();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_22C26A128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = sub_22C274144();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

uint64_t sub_22C26A1B4(uint64_t a1, uint64_t a2)
{
  sub_22C26E1D4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE1C440();
  if (!v5)
  {
    return 0;
  }

  v6 = *(a2 + 40);
  sub_22BE232B0();
  v9 = sub_22C26D0EC(v7, v8, MEMORY[0x277CC9600]);
  sub_22BE2B960(v9);
  sub_22BE1A470();
  do
  {
    sub_22BE1BC00();
    if (!v10)
    {
      break;
    }

    v11 = sub_22BE3848C();
    v12(v11);
    sub_22BE232B0();
    v14 = sub_22C26D0EC(&qword_27D9071C8, v13, MEMORY[0x277CC9610]);
    sub_22BE1A0CC(v14);
    v15 = sub_22BE3747C();
    v16(v15);
  }

  while ((v6 & 1) == 0);
  return v2;
}

uint64_t String.quotedForPython.getter(uint64_t a1)
{
  v1 = String.escapedForPython.getter();
  MEMORY[0x2318AB8D0](v1);

  MEMORY[0x2318AB8D0](34, 0xE100000000000000);

  return 34;
}

uint64_t String.quoted.getter()
{

  while (1)
  {
    v0 = sub_22C273204();
    if (!v1)
    {
      break;
    }

    v2 = v0;
    v3 = v1;
    v4 = v0 == 34 && v1 == 0xE100000000000000;
    if (v4 || (sub_22C274014() & 1) != 0)
    {
      MEMORY[0x2318AB8D0](92, 0xE100000000000000);
    }

    MEMORY[0x2318AB8C0](v2, v3);
  }

  MEMORY[0x2318AB8D0](34, 0xE100000000000000);
  return 34;
}

void String.toCamelCase.getter(unint64_t a1, unint64_t a2)
{

  v5 = sub_22C26BA9C(0x7FFFFFFFFFFFFFFFLL, 1u, a1, a2, v4);
  if (!v5[2])
  {

    return;
  }

  v6 = v5[4];
  v7 = v5[5];
  v9 = v5[6];
  v8 = v5[7];
  swift_bridgeObjectRetain_n();
  sub_22BE6413C(1uLL, v6, v7, v9, v8);
  sub_22C2732B4();
  sub_22C272EF4();

  v10 = sub_22C273864();
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (!v11)
  {
    sub_22C26C6B0(v12, v6, v7, v9, v8);
    v13 = sub_22C2732B4();
    MEMORY[0x2318AB8D0](v13);

    sub_22C26AA08(1);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = (v19 >> 1) - v17;
    if (v19 >> 1 == v17)
    {
LABEL_16:

      swift_unknownObjectRelease();
      return;
    }

    if ((v19 >> 1) <= v17)
    {
      goto LABEL_23;
    }

    v21 = (v15 + 32 * v17 + 16);
    while (1)
    {
      v22 = *(v21 - 2);
      v23 = *(v21 - 1);
      v25 = *v21;
      v24 = v21[1];
      swift_bridgeObjectRetain_n();
      v26 = sub_22C273854();
      v28 = (v27 & 1) != 0 ? v23 : v26;
      if (v28 >> 14 < v22 >> 14)
      {
        break;
      }

      sub_22BE3E718();
      sub_22C273874();

      sub_22C2732B4();
      v29 = sub_22C2730A4();
      v31 = v30;

      MEMORY[0x2318AB8D0](v29, v31);

      sub_22BE3E718();
      v32 = sub_22C273864();
      if (__OFSUB__(v32, 1))
      {
        goto LABEL_19;
      }

      if (v32 - 1 < 0)
      {
        goto LABEL_20;
      }

      v33 = sub_22C26CE30(v23, 1 - v32, v22, v25, v24);
      if (v34)
      {
        v33 = v22;
      }

      if (v23 >> 14 < v33 >> 14)
      {
        goto LABEL_21;
      }

      sub_22BE3E718();
      sub_22C273874();

      v35 = sub_22C2732B4();
      MEMORY[0x2318AB8D0](v35);

      v21 += 4;
      if (!--v20)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t String.unescapedForPython.getter()
{
  v39 = sub_22BE699D0();
  v38 = MEMORY[0x277D837D0];
  sub_22BE17F00();
  v1 = sub_22C273924();
  v3 = v2;
  sub_22BE19054(v1, v2, v4, v5, v38, v39, v39, v39, 34, 0xE100000000000000, 30300, 0xE200000000000000, v1, v2);
  v6 = sub_22BE1942C();
  v40 = &v40;
  v41 = v0;
  sub_22BE19054(v6, v7, v8, v9);
  v10 = sub_22C26D138();
  v40 = &v40;
  v41 = v3;
  sub_22BE19054(v11, v12, v13, v14, v10);
  v15 = sub_22BE1942C();
  v40 = &v40;
  v41 = v0;
  sub_22BE19054(v15, v16, v17, v18);
  v19 = sub_22C26D138();
  v40 = &v40;
  v41 = v3;
  sub_22BE19054(v20, v21, v22, v23, v19);
  v24 = sub_22BE1942C();
  v40 = &v40;
  v41 = v0;
  sub_22BE19054(v24, v25, v26, v27);
  v28 = sub_22C26D138();
  v40 = &v40;
  v41 = v3;
  sub_22BE19054(v29, v30, v31, v32, v28);
  v33 = sub_22BE1942C();
  v40 = &v40;
  v41 = v0;
  sub_22BE19054(v33, v34, v35, v36);
  sub_22BE3D554();

  return sub_22BE19454();
}

void sub_22C26A8C8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_22BE26ACC();
  if (v5)
  {
    v6 = v4 < v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
    sub_22BE25134();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_22C26A978(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_22BE26ACC();
  if (v6)
  {
    v7 = v5 < v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v4(0);
    sub_22BE25134();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_22C26AA08(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_22BE26ACC();
  if (v3)
  {
    v4 = v2 < v1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    goto LABEL_9;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

void sub_22C26AA6C(uint64_t a1, unint64_t a2)
{

  v4 = sub_22BE5E230(1uLL, a1, a2);
  v6 = v5;
  v7 = sub_22C2738B4();
  if (v7)
  {
    v8 = v7;
    v15 = sub_22C26CDB4(v7, 0);
    v9 = v8 & ~(v8 >> 63);

    v10 = 4;
    while (v9)
    {
      if ((v4 ^ v6) < 0x4000)
      {
        goto LABEL_10;
      }

      v11 = &v15[v10];
      v12 = sub_22C2738C4();
      v16 = v13;
      v4 = sub_22C273884();
      *v11 = v12;
      v11[1] = v16;
      v10 += 2;
      --v9;
      if (!--v8)
      {

        v14 = v15;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_8:

    sub_22C269CF8(v14);

    sub_22BE6E3B0(&unk_283F8B3C8);
  }
}

uint64_t sub_22C26AC14()
{
  v0 = sub_22C26DC94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE952A4(v4, qword_27D915F30);
  sub_22BE199F4(v0, qword_27D915F30);
  sub_22C26DC54();
  sub_22C26DC84();
  return (*(v1 + 8))(v3, v0);
}

void *sub_22C26ACFC()
{
  result = sub_22BF398EC(0xD00000000000003ELL, 0x800000022C2DC270);
  off_28106DE20 = result;
  return result;
}

void sub_22C26AD34(int a1, uint64_t a2, unint64_t a3)
{
  v98 = a1;
  v101 = sub_22C274264();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v100 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C26DC94();
  sub_22BE179D8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v92 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = &v92 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v92 - v17;
  v19 = swift_allocObject();
  v97 = v19;
  *(v19 + 16) = MEMORY[0x277D84F90];
  v20 = (v19 + 16);
  v21 = sub_22C273174();
  sub_22C26B5DC(v21);
  v104 = a2;
  v105 = a3;
  sub_22C26DC64();
  sub_22BE699D0();
  sub_22C273914();
  sub_22BE2F120();
  v22 = *(v11 + 8);
  v96 = v9;
  v95 = v11 + 8;
  v94 = v22;
  v22(v18, v9);
  sub_22C26AA6C(&v104, a3);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = HIBYTE(v26) & 0xF;
  v104 = v24;
  v105 = v26;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v29 = v24 & 0xFFFFFFFFFFFFLL;
  }

  v106 = 0;
  v107 = v29;
  v108 = v28;
  v109 = 0;
  v103 = v20;
  swift_beginAccess();
  v30 = 0;
  v99 = v6 + 8;
  v102 = v28;
  v31 = (v28 + 40);
  for (i = 1; ; ++i)
  {
    v33 = sub_22C273204();
    if (!v34)
    {
      goto LABEL_73;
    }

    v35 = v34;
    v36 = *(v102 + 16);
    if (i - 1 == v36)
    {

LABEL_73:
      v110 = 1;

      v86 = sub_22BE957F8(*v103);
      if (v87)
      {
        if (v86 == 95 && v87 == 0xE100000000000000)
        {
        }

        else
        {
          v89 = sub_22C274014();

          if ((v89 & 1) == 0)
          {
            goto LABEL_82;
          }
        }

        swift_beginAccess();
        sub_22C191398();
        swift_endAccess();
      }

LABEL_82:
      v104 = *(v97 + 16);

      v90 = sub_22BE19454();
      sub_22BE5CE4C(v90, v91);
      sub_22BEF8A28(&qword_28106DC10, &qword_27D915F48, &qword_22C2D2250, MEMORY[0x277D83970]);
      sub_22C2732C4();
      sub_22BE3D554();

      sub_22BE19454();
      return;
    }

    if (i - 1 >= v36)
    {
      break;
    }

    v37 = v33;
    v38 = *(v31 - 1);
    v39 = *v31;
    v109 = i;
    v40 = qword_28106DE18;

    if (v40 != -1)
    {
      sub_22BE1B5C0();
      swift_once();
    }

    v41 = off_28106DE20;
    v42 = sub_22BE1A6BC();
    if (sub_22C26A03C(v42, v43, v41))
    {
LABEL_10:
      sub_22BE1A6BC();
      if (sub_22C272F34())
      {
        v44 = sub_22BE1A6BC();
        if ((sub_22C26CA68(v44, v45) & 0x100000000) != 0)
        {
          goto LABEL_86;
        }

        v46 = v100;
        sub_22C274274();
        v40 = v46;
        sub_22C274244();
        sub_22BE187B0();
        v47(v46, v101);
        if (v46)
        {
          goto LABEL_19;
        }
      }

      sub_22BE1A6BC();
      if (sub_22C272F24())
      {
        sub_22BE1A6BC();
        if (sub_22C272F34())
        {
          v48 = sub_22BE1A6BC();
          if ((sub_22C26CA68(v48, v49) & 0x100000000) != 0)
          {
            goto LABEL_88;
          }

          v50 = v100;
          sub_22C274274();
          v40 = v50;
          sub_22C274254();
          sub_22BE187B0();
          v51(v50, v101);
          if (v50)
          {
            goto LABEL_19;
          }
        }

        sub_22BE1A6BC();
        if ((sub_22C272F24() & 1) == 0 || (sub_22BE1A6BC(), (sub_22C272F14() & 1) == 0))
        {
LABEL_19:
          if ((v30 & 1) == 0)
          {
            goto LABEL_32;
          }

          if (!v39)
          {
            goto LABEL_50;
          }

          v52 = sub_22BE236C8();
          if (sub_22C26A03C(v52, v53, v41))
          {
LABEL_22:
            sub_22BE236C8();
            if ((sub_22C272F34() & 1) == 0)
            {
              goto LABEL_25;
            }

            v54 = sub_22BE236C8();
            if ((sub_22C26CA68(v54, v55) & 0x100000000) != 0)
            {
              goto LABEL_89;
            }

            v56 = v100;
            sub_22C274274();
            v40 = v56;
            sub_22C274244();
            sub_22BE187B0();
            v57(v56, v101);
            if ((v56 & 1) == 0)
            {
LABEL_25:
              sub_22BE236C8();
              if (sub_22C272F24())
              {
                sub_22BE236C8();
                v40 = sub_22C272F64();

                if (v40)
                {
LABEL_50:
                  sub_22BE1A6BC();
                  sub_22C272EF4();
                  sub_22BE2F120();
                  swift_beginAccess();
                  sub_22BE6E248(v40, v38);
LABEL_51:
                  swift_endAccess();
                  goto LABEL_52;
                }

LABEL_33:
                sub_22C26B640(v97);
                goto LABEL_50;
              }

LABEL_32:

              goto LABEL_33;
            }
          }

          else if (v98)
          {
            sub_22C26DC44();
            v69 = sub_22BE236C8();
            if ((sub_22BF2DC40(v69, v70) & 0x100000000) != 0)
            {

              sub_22BE1C134();
              v83();
              goto LABEL_50;
            }

            v40 = sub_22C26DC74();
            sub_22BE1C134();
            v71();
            if (v40)
            {
              goto LABEL_22;
            }
          }
        }
      }

      goto LABEL_50;
    }

    if (v98)
    {
      v40 = v93;
      sub_22C26DC44();
      v58 = sub_22BE1A6BC();
      if ((sub_22BF2DC40(v58, v59) & 0x100000000) != 0)
      {

        sub_22BE1C134();
        v62();
        goto LABEL_35;
      }

      v60 = sub_22C26DC74();
      sub_22BE1C134();
      v61();
      if (v60)
      {
        goto LABEL_10;
      }
    }

LABEL_35:
    v63 = *v103;
    v64 = *(*v103 + 16);
    if (v64)
    {
      v65 = (*v103 + 16 + 16 * v64);
      v66 = *v65 == 95 && v65[1] == 0xE100000000000000;
      if (!v66 && (sub_22C274014() & 1) == 0)
      {
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BE67160();
          v63 = v84;
        }

        v67 = *(v63 + 16);
        if (v67 >= *(v63 + 24) >> 1)
        {
          sub_22BE67160();
          v63 = v85;
        }

        *(v63 + 16) = v67 + 1;
        v68 = v63 + 16 * v67;
        *(v68 + 32) = 95;
        *(v68 + 40) = 0xE100000000000000;
        *v103 = v63;
        goto LABEL_51;
      }
    }

LABEL_52:
    if ((v35 & 0x2000000000000000) != 0)
    {
      v72 = HIBYTE(v35) & 0xF;
    }

    else
    {
      v72 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (!v72)
    {
      goto LABEL_84;
    }

    if ((v35 & 0x1000000000000000) != 0)
    {
      v73 = sub_22C2730F4();
    }

    else
    {
      v73 = sub_22C273A84() << 16;
    }

    if (v73 >> 14 == 4 * v72)
    {
      v74 = sub_22BE1A6BC();
      if ((sub_22C26CA68(v74, v75) & 0x100000000) != 0)
      {
        goto LABEL_85;
      }

      v76 = v100;
      sub_22C274274();
      sub_22C274244();
      sub_22BE187B0();
      v77(v76, v101);
      if (v76)
      {
        goto LABEL_67;
      }
    }

    sub_22BE1A6BC();
    if (sub_22C272F24())
    {
      sub_22BE1A6BC();
      if ((sub_22C272F34() & 1) == 0)
      {
        goto LABEL_92;
      }

      v78 = sub_22BE1A6BC();
      if ((sub_22C26CA68(v78, v79) & 0x100000000) != 0)
      {
        goto LABEL_87;
      }

      v80 = v100;
      sub_22C274274();
      sub_22C274254();
      sub_22BE187B0();
      v81(v80, v101);
      if ((v80 & 1) == 0)
      {
LABEL_92:
        sub_22BE1A6BC();
        if (sub_22C272F24())
        {
          sub_22BE1A6BC();
          v82 = sub_22C272F14();

          v30 = v82 ^ 1;
          goto LABEL_69;
        }
      }

LABEL_67:

      v30 = 1;
      goto LABEL_69;
    }

    v30 = 0;
LABEL_69:
    v31 += 2;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
}

void sub_22C26B5DC(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    sub_22BE67160();
    v3 = v4;
  }

  *v1 = v3;
}

double sub_22C26B640(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  if (*(v3 + 16))
  {
    v4 = sub_22BE957F8(v3);
    if (!v5)
    {
LABEL_8:
      swift_beginAccess();
      sub_22BE78AD8();
      v8 = *(*(a1 + 16) + 16);
      sub_22BE78BC4(v8);
      v9 = *(a1 + 16);
      *(v9 + 16) = v8 + 1;
      v10 = v9 + 16 * v8;
      *(v10 + 32) = 95;
      *(v10 + 40) = 0xE100000000000000;
      *(a1 + 16) = v9;
      swift_endAccess();
      return result;
    }

    if (v4 != 95 || v5 != 0xE100000000000000)
    {
      v7 = sub_22C274014();

      if (v7)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  return result;
}

uint64_t String.toTitleCase.getter(uint64_t a1, unint64_t a2)
{

  v6 = sub_22C26C228(0x7FFFFFFFFFFFFFFFLL, 1u, a1, a2, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v44 = a2;
    v50[0] = MEMORY[0x277D84F90];
    v8 = v50;
    sub_22BE70138(0, v7, 0);
    v9 = v50[0];
    v10 = v6 + 56;
    while (1)
    {
      v45 = v9;
      v11 = *(v10 - 24);
      v12 = *(v10 - 16);
      v13 = *(v10 - 8);
      swift_bridgeObjectRetain_n();
      v14 = sub_22BE23E0C();
      v16 = (v15 & 1) != 0 ? v12 : v14;
      if (v16 >> 14 < v11 >> 14)
      {
        break;
      }

      sub_22BE255CC(v11, v16);
      sub_22BE3D554();

      v17 = sub_22BE19454();
      v18 = MEMORY[0x2318AB7C0](v17);
      v2 = v19;

      v48 = v18;
      v49 = v2;
      sub_22BE699D0();
      v8 = sub_22C273904();
      v6 = v20;

      v21 = sub_22BE23E0C();
      if (v22)
      {
        v21 = v12;
      }

      if (v12 >> 14 < v21 >> 14)
      {
        goto LABEL_21;
      }

      v23 = sub_22BE255CC(v21, v12);
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v30 = MEMORY[0x2318AB7C0](v23, v25, v27, v29);
      v32 = v31;

      v46 = v8;
      v47 = v6;

      v8 = &v46;
      MEMORY[0x2318AB8D0](v30, v32);

      v33 = v46;
      v2 = v47;
      v9 = v45;
      v50[0] = v45;
      v35 = *(v45 + 16);
      v34 = *(v45 + 24);
      v6 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v8 = v50;
        sub_22BE70138(v34 > 1, v35 + 1, 1);
        v9 = v50[0];
      }

      *(v9 + 16) = v6;
      v36 = v9 + 16 * v35;
      *(v36 + 32) = v33;
      *(v36 + 40) = v2;
      v10 += 32;
      if (!--v7)
      {

        a2 = v44;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    sub_22BE1B5C0();
    swift_once();
LABEL_17:
    v42 = sub_22C26A03C(v8, v6, off_28106DE20);

    if (!v42)
    {
      v48 = 95;
      v49 = 0xE100000000000000;
      MEMORY[0x2318AB8D0](v2, v13);

      return v48;
    }

    return v2;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_15:
  v48 = v9;
  v37 = sub_22BE19454();
  sub_22BE5CE4C(v37, v38);
  sub_22BEF8A28(&qword_28106DBE0, &qword_27D908050, &qword_22C278EB0, MEMORY[0x277D83958]);
  v2 = sub_22C272FB4();
  v13 = v39;

  v40 = sub_22BF2DF7C(a1, a2);
  if (v41)
  {
    v8 = v40;
    v6 = v41;
    if (qword_28106DE18 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  return v2;
}

unint64_t sub_22C26BA9C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (a1 < 0)
  {
LABEL_112:
    __break(1u);
LABEL_113:
    sub_22BE66CFC(a5 > 1, v8, 1, a4);
    a4 = v54;
LABEL_99:
    *(a4 + 16) = v8;
    v47 = (a4 + 32 * v7);
    v47[4] = v5;
    v47[5] = v6;
    v47[6] = v9;
    v47[7] = v10;
    return a4;
  }

  v8 = a4;
  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v9 = HIBYTE(a4) & 0xF) : (v9 = a3 & 0xFFFFFFFFFFFFLL), !v9))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v5 = sub_22C273114();
    v6 = v43;
    v9 = v44;
    v10 = v45;

    sub_22BE66CFC(0, 1, 1, MEMORY[0x277D84F90]);
    v7 = *(v46 + 16);
    a5 = *(v46 + 24);
    a4 = v46;
    v8 = v7 + 1;
    if (v7 < a5 >> 1)
    {
      goto LABEL_99;
    }

    goto LABEL_113;
  }

  v10 = 0;
  v13 = (a3 >> 59) & 1;
  v59 = v13;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v65 = 4 * v9;
  v6 = 4 << v13;
  v62 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v63 = a4 & 0xFFFFFFFFFFFFFFLL;
  a5 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  v5 = 15;
  v14 = 15;
  v69 = v6;
  do
  {
    v7 = v14 & 0xC;
    v15 = (v14 & 1) == 0 || v7 == v6;
    v16 = v15;
    if (v15)
    {
      v17 = v14;
      if (v7 == v6)
      {
        v17 = sub_22C192BB0(v14, v11, v8);
      }

      v6 = v17 >> 16;
      if (v17 >> 16 >= v9)
      {
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      if ((v17 & 1) == 0)
      {
        sub_22C26CCB8(v17, v11, v8);
      }
    }

    else
    {
      v6 = v14 >> 16;
      if (v14 >> 16 >= v9)
      {
        goto LABEL_106;
      }
    }

    if ((v8 & 0x1000000000000000) != 0)
    {
      sub_22C273A94();
    }

    else if ((v8 & 0x2000000000000000) != 0)
    {
      v67 = v11;
      v68 = v63;
    }

    else if ((v11 & 0x1000000000000000) == 0)
    {
      sub_22C273B44();
    }

    if (qword_27D906E40 != -1)
    {
      swift_once();
    }

    v18 = sub_22C26DC94();
    v6 = sub_22BE199F4(v18, qword_27D915F30);
    if ((sub_22C26DC74() & 1) == 0)
    {
      v6 = v69;
      if (v16)
      {
        if (v7 == v69)
        {
          v14 = sub_22C192BB0(v14, v11, v8);
        }

        if (v9 <= v14 >> 16)
        {
          goto LABEL_107;
        }

        if ((v14 & 1) == 0)
        {
          v14 = v14 & 0xC | sub_22C26CCB8(v14, v11, v8) & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else if (v9 <= v14 >> 16)
      {
        goto LABEL_108;
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v14 = sub_22C2730F4();
        goto LABEL_88;
      }

      v30 = v14 >> 16;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v67 = v11;
        v68 = v63;
        v32 = *(&v67 + v30);
      }

      else
      {
        v31 = v62;
        if ((v11 & 0x1000000000000000) == 0)
        {
          v31 = sub_22C273B44();
        }

        v32 = *(v31 + v30);
      }

      v36 = v32;
      v37 = __clz(v32 ^ 0xFF) - 24;
      if (v36 >= 0)
      {
        LOBYTE(v37) = 1;
      }

      v14 = ((v30 + v37) << 16) | 5;
      goto LABEL_87;
    }

    v19 = v9;
    a5 = v5 >> 14;
    v9 = (v5 >> 14 == v10) & a2;
    if (((v5 >> 14 == v10) & a2) == 0)
    {
      if (v10 < a5)
      {
        goto LABEL_109;
      }

      v21 = sub_22C273114();
      v60 = v22;
      v61 = v21;
      v24 = v23;
      v26 = v25;
      v27 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE66CFC(0, *(v66 + 16) + 1, 1, v66);
        v27 = v40;
      }

      v5 = *(v27 + 16);
      v28 = *(v27 + 24);
      a4 = v27;
      if (v5 >= v28 >> 1)
      {
        sub_22BE66CFC(v28 > 1, v5 + 1, 1, v27);
        a4 = v41;
      }

      *(a4 + 16) = v5 + 1;
      v10 = a4;
      v29 = (a4 + 32 * v5);
      v29[4] = v61;
      v29[5] = v24;
      v29[6] = v26;
      v29[7] = v60;
      if ((v8 & 0x1000000000000000) == 0)
      {
        v20 = 1;
        v6 = 1;
        v11 = a3;
        goto LABEL_60;
      }

      v11 = a3;
LABEL_59:
      v6 = v9 ^ 1;
      v20 = v59;
      goto LABEL_60;
    }

    if ((v8 & 0x1000000000000000) != 0)
    {
      v10 = v66;
      goto LABEL_59;
    }

    v6 = 0;
    v20 = 1;
    v10 = v66;
LABEL_60:
    v9 = v19;
    if (v14)
    {
      a5 = 4 << v20;
      if (v7 != a5)
      {
        if (v19 <= v14 >> 16)
        {
          goto LABEL_110;
        }

LABEL_68:
        if ((v8 & 0x1000000000000000) != 0)
        {
          goto LABEL_82;
        }

        goto LABEL_69;
      }
    }

    a5 = v69;
    if (v7 == v69)
    {
      v14 = sub_22C192BB0(v14, v11, v8);
    }

    if (v19 <= v14 >> 16)
    {
      goto LABEL_111;
    }

    if (v14)
    {
      goto LABEL_68;
    }

    v14 = v14 & 0xC | sub_22C26CCB8(v14, v11, v8) & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((v8 & 0x1000000000000000) != 0)
    {
LABEL_82:
      v5 = sub_22C2730F4();
      goto LABEL_83;
    }

LABEL_69:
    v33 = v14 >> 16;
    if ((v8 & 0x2000000000000000) != 0)
    {
      v67 = v11;
      v68 = v63;
      v35 = *(&v67 + v33);
    }

    else
    {
      v34 = v62;
      if ((v11 & 0x1000000000000000) == 0)
      {
        v34 = sub_22C273B44();
      }

      v35 = *(v34 + v33);
    }

    v38 = v35;
    v39 = __clz(v35 ^ 0xFF) - 24;
    if (v38 >= 0)
    {
      LOBYTE(v39) = 1;
    }

    v5 = ((v33 + v39) << 16) | 5;
LABEL_83:
    v66 = v10;
    if (!v6)
    {
      v14 = v5;
LABEL_87:
      v6 = v69;
      goto LABEL_88;
    }

    v14 = v5;
    v6 = v69;
    if (*(v10 + 16) == a1)
    {
      break;
    }

LABEL_88:
    v10 = v14 >> 14;
    a5 = v65;
  }

  while (v14 >> 14 != v65);
  if (v5 >> 14 == v65 && (a2 & 1) != 0)
  {

    return v66;
  }

  if (v65 < v5 >> 14)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_22C273114();
    v6 = v48;
    v9 = v49;
    v10 = v50;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_102;
    }
  }

  sub_22BE66CFC(0, *(v66 + 16) + 1, 1, v66);
  v66 = v55;
LABEL_102:
  v52 = *(v66 + 16);
  v51 = *(v66 + 24);
  if (v52 >= v51 >> 1)
  {
    sub_22BE66CFC(v51 > 1, v52 + 1, 1, v66);
    v66 = v56;
  }

  result = v66;
  *(v66 + 16) = v52 + 1;
  v53 = (v66 + 32 * v52);
  v53[4] = v5;
  v53[5] = v6;
  v53[6] = v9;
  v53[7] = v10;
  return result;
}

uint64_t sub_22C26C228@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (a1 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v8 = a4;
  v6 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v5 = sub_22C2732E4();
    v6 = v34;
    v9 = v35;
    v10 = v36;

    sub_22BE67BB8(0, 1, 1, MEMORY[0x277D84F90]);
    v7 = *(v37 + 16);
    a5 = *(v37 + 24);
    a4 = v37;
    v8 = v7 + 1;
    if (v7 < a5 >> 1)
    {
LABEL_43:
      *(a4 + 16) = v8;
      v38 = (a4 + 32 * v7);
      v38[4] = v5;
      v38[5] = v6;
      v38[6] = v9;
      v38[7] = v10;
      return a4;
    }

LABEL_52:
    sub_22BE67BB8(a5 > 1, v8, 1, a4);
    a4 = v46;
    goto LABEL_43;
  }

  v53 = 4 * v13;
  v14 = MEMORY[0x277D84F90];
  v15 = 15;
  while (1)
  {
    v51 = v14;
    v52 = v15;
LABEL_9:
    v10 = v15 >> 14;
    if (v15 >> 14 == v53)
    {
      break;
    }

    v16 = sub_22C2732A4();
    v5 = v17;
    if (qword_28106DE18 != -1)
    {
      swift_once();
    }

    v18 = off_28106DE20;
    if (*(off_28106DE20 + 2))
    {
      sub_22C274154();
      sub_22C272F44();
      v19 = sub_22C2741A4();
      v11 = ~(-1 << v18[32]);
      while (1)
      {
        v9 = v19 & v11;
        if (((*&v18[(((v19 & v11) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v19 & v11)) & 1) == 0)
        {
          break;
        }

        v20 = (*(v18 + 6) + 16 * v9);
        if (*v20 != v16 || v20[1] != v5)
        {
          v22 = sub_22C274014();
          v19 = v9 + 1;
          if ((v22 & 1) == 0)
          {
            continue;
          }
        }

        v6 = a3;
        v15 = sub_22C273184();
        goto LABEL_9;
      }

      v6 = a3;
    }

    a5 = v52 >> 14;
    v7 = (v52 >> 14 == v10) & a2;
    if (v7 == 1)
    {
      v14 = v51;
    }

    else
    {
      if (v10 < a5)
      {
        __break(1u);
        goto LABEL_51;
      }

      v5 = sub_22C2732E4();
      v24 = v23;
      v26 = v25;
      v11 = v27;
      v28 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE67BB8(0, *(v51 + 16) + 1, 1, v51);
        v28 = v32;
      }

      v9 = *(v28 + 16);
      v29 = *(v28 + 24);
      v30 = v28;
      if (v9 >= v29 >> 1)
      {
        sub_22BE67BB8(v29 > 1, v9 + 1, 1, v28);
        v30 = v33;
      }

      *(v30 + 16) = v9 + 1;
      v14 = v30;
      v31 = (v30 + 32 * v9);
      v31[4] = v5;
      v31[5] = v24;
      v31[6] = v26;
      v31[7] = v11;
      v6 = a3;
    }

    v15 = sub_22C273184();
    if ((v7 & 1) == 0 && *(v14 + 16) == a1)
    {
      goto LABEL_39;
    }
  }

  v14 = v51;
  v15 = v52;
LABEL_39:
  if (v15 >> 14 == v53 && (a2 & 1) != 0)
  {

    return v14;
  }

  if (v53 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_54;
  }

  v11 = v14;
  v5 = sub_22C2732E4();
  v6 = v39;
  v9 = v40;
  v14 = v41;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_54:
    sub_22BE67BB8(0, *(v11 + 16) + 1, 1, v11);
    v11 = v47;
  }

  v43 = *(v11 + 16);
  v42 = *(v11 + 24);
  if (v43 >= v42 >> 1)
  {
    sub_22BE67BB8(v42 > 1, v43 + 1, 1, v11);
    v11 = v48;
  }

  *(v11 + 16) = v43 + 1;
  v44 = (v11 + 32 * v43);
  v44[4] = v5;
  v44[5] = v6;
  v44[6] = v9;
  v44[7] = v14;
  return v11;
}

unint64_t sub_22C26C6B0(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_22C26CE30(a3, -result, a2, a4, a5);
    if (v7)
    {
      result = a2;
    }

    if (a3 >> 14 >= result >> 14)
    {
      v8 = sub_22C273874();

      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t String.escapedForPython.getter()
{
  v39 = sub_22BE699D0();
  v38 = MEMORY[0x277D837D0];
  sub_22BE17F00();
  v1 = sub_22C273924();
  v3 = v2;
  sub_22BE19054(v1, v2, v4, v5, v38, v39, v39, v39, 23644, 0xE200000000000000, 7, 0xE100000000000000, v1, v2);
  v6 = sub_22BE1942C();
  v40 = &v40;
  v41 = v0;
  sub_22BE19054(v6, v7, v8, v9);
  v10 = sub_22C26D138();
  v40 = &v40;
  v41 = v3;
  sub_22BE19054(v11, v12, v13, v14, v10);
  v15 = sub_22BE1942C();
  v40 = &v40;
  v41 = v0;
  sub_22BE19054(v15, v16, v17, v18);
  v19 = sub_22C26D138();
  v40 = &v40;
  v41 = v3;
  sub_22BE19054(v20, v21, v22, v23, v19);
  v24 = sub_22BE1942C();
  v40 = &v40;
  v41 = v0;
  sub_22BE19054(v24, v25, v26, v27);
  v28 = sub_22C26D138();
  v40 = &v40;
  v41 = v3;
  sub_22BE19054(v29, v30, v31, v32, v28);
  v33 = sub_22BE1942C();
  v40 = &v40;
  v41 = v0;
  sub_22BE19054(v33, v34, v35, v36);
  sub_22BE3D554();

  return sub_22BE19454();
}

void *String.blockIndented.getter()
{
  v1[0] = 538976288;
  v1[1] = 0xE400000000000000;
  MEMORY[0x2318AB8D0]();
  sub_22BE699D0();
  sub_22BE17F00();
  sub_22C273924();
  sub_22BE2F120();

  return v1;
}

Swift::String __swiftcall String.truncateForPrompting(allowedLength:)(Swift::Int allowedLength)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_22C273174();

  if (v6 > allowedLength)
  {
    sub_22BE22C8C();
    v10 = sub_22BE643C8(v7, v8, v9);
    MEMORY[0x2318AB7C0](v10);
    sub_22BE2F120();

    sub_22C2731B4();
    v11 = sub_22C2738D4();
    v4 = MEMORY[0x2318AB7C0](v11);
    v3 = v12;
  }

  v13 = v4;
  v14 = v3;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

unint64_t sub_22C26CA68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_22C26CBFC();
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_22C273A94();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_22C273B44();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

void sub_22C26CBFC()
{
  sub_22BE1983C();
  if (v0)
  {
    sub_22BE25BE0();
    if (!v1)
    {
      sub_22BE1AD3C();
      if (v3 > v2 >> 16)
      {
        return;
      }

      __break(1u);
    }
  }

  sub_22BE22C8C();
  sub_22C26CC70();
  if ((v4 & 1) == 0)
  {
    sub_22BE22C8C();
    sub_22C26CCB8(v5, v6, v7);
  }
}

void sub_22C26CC70()
{
  sub_22BE1983C();
  sub_22BE25BE0();
  if (v0)
  {
    sub_22BE22C8C();
    sub_22C192BB0(v3, v4, v5);
  }

  sub_22BE1AD3C();
  if (v2 <= v1 >> 16)
  {
    __break(1u);
  }
}

unint64_t sub_22C26CCB8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v12[2] = v3;
      v12[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v12[0] = a2;
        v12[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v12 + v5) & 0xC0) == 0x80)
        {
          do
          {
            sub_22BE25848();
          }

          while (v9);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = result >> 16;
          v6 = sub_22C273B44();
          v5 = v11;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            sub_22BE25848();
          }

          while (v9);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

void *sub_22C26CDB4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22BE5CE4C(&qword_27D907308, &qword_22C275240);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

unint64_t sub_22C26CE30(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v10 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  if ((a3 & 0xC) == 4 << v10)
  {
LABEL_65:
    v7 = sub_22C192BB0(v7, a4, a5);
  }

  v12 = a1;
  if ((a1 & 0xC) == v11)
  {
    v12 = sub_22C192BB0(a1, a4, a5);
  }

  result = sub_22BF681E0(a1, a4, a5);
  v7 >>= 14;
  if (a2 < 0)
  {
    v11 = 0;
    a1 = v12 >> 14;
    v22 = &v34 + 7;
    v23 = &v34 + 6;
    while (a1 < v7 || v7 < result >> 14)
    {
      if (result < 0x10000)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        v34 = v22;
        v31 = v23;
        result = sub_22C273104();
        v23 = v31;
        v22 = v34;
      }

      else
      {
        v25 = result >> 16;
        if ((a5 & 0x2000000000000000) != 0)
        {
          v35 = a4;
          v36 = a5 & 0xFFFFFFFFFFFFFFLL;
          if ((v22[v25] & 0xC0) == 0x80)
          {
            v28 = &v23[v25];
            v29 = 1;
            do
            {
              ++v29;
              v30 = *v28--;
            }

            while ((v30 & 0xC0) == 0x80);
          }

          else
          {
            v29 = 1;
          }

          v25 -= v29;
        }

        else
        {
          v26 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v33 = v23;
            v34 = v22;
            v26 = sub_22C273B44();
            v23 = v33;
            v22 = v34;
          }

          do
          {
            v27 = *(v26 - 1 + v25--) & 0xC0;
          }

          while (v27 == 128);
        }

        result = (v25 << 16) | 5;
      }

      if (--v11 <= a2)
      {
        if (a1 < v7 || result >> 14 >= v7)
        {
          return result;
        }

        return 0;
      }
    }

    return 0;
  }

  a1 = v12 >> 14;
  if (a2)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v14 = a4 & 0xFFFFFFFFFFFFLL;
    }

    v11 = a5 & 0xFFFFFFFFFFFFFFLL;
    while (v7 < a1 || result >> 14 < v7)
    {
      v16 = result >> 16;
      if (result >> 16 >= v14)
      {
        __break(1u);
        goto LABEL_64;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = sub_22C2730F4();
      }

      else
      {
        if ((a5 & 0x2000000000000000) != 0)
        {
          v35 = a4;
          v36 = a5 & 0xFFFFFFFFFFFFFFLL;
          v18 = *(&v35 + v16);
        }

        else
        {
          v17 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v17 = sub_22C273B44();
          }

          v18 = *(v17 + v16);
        }

        v19 = v18;
        v20 = __clz(v18 ^ 0xFF) - 24;
        if (v19 >= 0)
        {
          LOBYTE(v20) = 1;
        }

        result = ((v16 + v20) << 16) | 5;
      }

      if (!--a2)
      {
        goto LABEL_29;
      }
    }

    return 0;
  }

LABEL_29:
  if (v7 >= a1 && v7 < result >> 14)
  {
    return 0;
  }

  return result;
}

uint64_t sub_22C26D0EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_22C26D138()
{

  return result;
}

uint64_t ToolDefinition.promptDefinition.getter()
{
  v0 = sub_22C2728A4();
  sub_22BE179D8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v6 = v5 - v4;
  v7 = sub_22C272B14();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v13 = v12 - v11;
  v14 = sub_22C2721E4();
  MEMORY[0x2318AB8D0](v14);

  MEMORY[0x2318AB8D0](40, 0xE100000000000000);
  v15 = sub_22C272134();
  v16 = *(v15 + 16);
  if (v16)
  {
    v28 = v6;
    v29 = v0;
    v19 = *(v9 + 16);
    v17 = v9 + 16;
    v18 = v19;
    v20 = v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v21 = *(v17 + 56);
    do
    {
      v18(v13, v20, v7);
      v22 = sub_22C272B04();
      v24 = v23;
      (*(v17 - 8))(v13, v7);
      MEMORY[0x2318AB8D0](0x202C4F444F54203ALL, 0xE800000000000000);
      MEMORY[0x2318AB8D0](v22, v24);

      v20 += v21;
      --v16;
    }

    while (v16);

    v0 = v29;
    v6 = v28;
  }

  else
  {
  }

  v25 = *(sub_22C272134() + 16);

  if (v25)
  {
    sub_22BEB790C(2);
  }

  v26 = MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  MEMORY[0x2318AA820](v26);
  (*(v2 + 8))(v6, v0);
  MEMORY[0x2318AB8D0](540945696, 0xE400000000000000);
  MEMORY[0x2318AB8D0](10, 0xE100000000000000);
  return 543581540;
}

uint64_t TypeIdentifier.pythonType.getter()
{
  v1 = v0;
  sub_22C272914();
  sub_22BE179D8();
  v55 = v3;
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v6 = v5 - v4;
  v7 = sub_22C272984();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v55 - v21;
  v23 = *(v9 + 16);
  v23(&v55 - v21, v1, v7, v20);
  v24 = (*(v9 + 88))(v22, v7);
  if (v24 != *MEMORY[0x277D72D50])
  {
    if (v24 != *MEMORY[0x277D72D30])
    {
      if (v24 == *MEMORY[0x277D72D28])
      {
        v29 = v22;
        (v23)(v15, v22, v7);
        sub_22BE1A898();
        v35(v15, v7);
        v1 = *(*v15 + 32);
      }

      else
      {
        v29 = v22;
        if (v24 != *MEMORY[0x277D72D18])
        {
          goto LABEL_71;
        }

        (v23)(v15, v22, v7);
        sub_22BE1A898();
        v40(v15, v7);
        v41 = swift_projectBox();
        v43 = v55;
        v42 = v56;
        (*(v55 + 16))(v6, v41, v56);
        v1 = sub_22C272904();
        (*(v43 + 8))(v6, v42);
        v29 = v22;
      }

      goto LABEL_72;
    }

    (v23)(v12, v22, v7);
    sub_22BE1A898();
    v30(v12, v7);
    v31 = sub_22C272924();
    v32 = swift_projectBox();
    v33 = (*(*(v31 - 8) + 88))(v32, v31);
    if (v33 == *MEMORY[0x277D72C00])
    {

      v1 = 0x7972657551;
      v29 = v22;
      goto LABEL_72;
    }

    v36 = v33;
    v39 = v33 == *MEMORY[0x277D72BE0] || v33 == *MEMORY[0x277D72BC0] || v33 == *MEMORY[0x277D72C18] || v33 == *MEMORY[0x277D72BF8];
    v29 = v22;
    if (v39)
    {
      goto LABEL_22;
    }

    if (v33 == *MEMORY[0x277D72C20])
    {

      v1 = 0x79636E6572727543;
      goto LABEL_72;
    }

    if (v33 == *MEMORY[0x277D72BF0])
    {

      v1 = 1701603654;
      goto LABEL_72;
    }

    v47 = v33 == *MEMORY[0x277D72C28] || v33 == *MEMORY[0x277D72BB8];
    v48 = v47 || v33 == *MEMORY[0x277D72BD0];
    if (v48 || v33 == *MEMORY[0x277D72C10])
    {
      goto LABEL_22;
    }

    if (v33 == *MEMORY[0x277D72C08])
    {

      v1 = 0x6E6F73726550;
      goto LABEL_72;
    }

    if (v33 == *MEMORY[0x277D72C38])
    {

      v1 = 0x72616D6563616C50;
      goto LABEL_72;
    }

    v51 = v33 == *MEMORY[0x277D72BD8] || v33 == *MEMORY[0x277D72BE8];
    if (v51 || v33 == *MEMORY[0x277D72C30])
    {
LABEL_22:
      sub_22BE18BD4();

      goto LABEL_72;
    }

    v53 = *MEMORY[0x277D72BC8];

    if (v36 == v53)
    {
      v1 = 0x6D6572757361654DLL;
      goto LABEL_72;
    }

LABEL_71:
    sub_22BE18BD4();
    goto LABEL_72;
  }

  (v23)(v18, v22, v7);
  sub_22BE1A898();
  v25(v18, v7);
  v26 = sub_22C272934();
  v27 = swift_projectBox();
  v28 = (*(*(v26 - 8) + 88))(v27, v26);
  v29 = v22;
  if (v28 != *MEMORY[0x277D72CC8])
  {
    v34 = v28;
    if (v28 == *MEMORY[0x277D72CB0])
    {

      v1 = 1819242338;
      goto LABEL_72;
    }

    if (v28 == *MEMORY[0x277D72CD0])
    {

      v1 = 0x74616F6C66;
      goto LABEL_72;
    }

    if (v28 == *MEMORY[0x277D72CE0] || v28 == *MEMORY[0x277D72CB8] || v28 == *MEMORY[0x277D72C70] || v28 == *MEMORY[0x277D72CA8])
    {
      v1 = 7500915;

      goto LABEL_72;
    }

    if (v28 == *MEMORY[0x277D72C40])
    {

      v1 = 1952672100;
      goto LABEL_72;
    }

    v50 = *MEMORY[0x277D72C88];

    if (v34 == v50)
    {
      v1 = 7500915;
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  v1 = 1701736270;
LABEL_72:
  (*(v9 + 8))(v29, v7);
  return v1;
}