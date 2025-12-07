uint64_t sub_22BFDECA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911140, type metadata accessor for TranscriptProtoUserTurnStarted, &protocol conformance descriptor for TranscriptProtoUserTurnStarted);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFDED28(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F3A0, type metadata accessor for TranscriptProtoUserTurnStarted, &protocol conformance descriptor for TranscriptProtoUserTurnStarted);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFDED98(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F3A0, type metadata accessor for TranscriptProtoUserTurnStarted, &protocol conformance descriptor for TranscriptProtoUserTurnStarted);

  return sub_22C270774();
}

uint64_t sub_22BFDEE30()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CCD8);
  sub_22BE199F4(v0, qword_27D90CCD8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "speech";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFDF05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoUserTurnSpeech(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9115C0, &qword_22C2AE2D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E4F0, &qword_22C2CC7E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v18, &qword_27D9115C0, &qword_22C2AE2D8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90F3D0, type metadata accessor for TranscriptProtoUserTurnSpeech, &protocol conformance descriptor for TranscriptProtoUserTurnSpeech);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9115C0, &qword_22C2AE2D8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9115C0, &qword_22C2AE2D8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9115C0, &qword_22C2AE2D8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9115C0, &qword_22C2AE2D8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E4F0, &qword_22C2CC7E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFDF554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoUserTurnText(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9115C8, &qword_22C2AE2E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E4F0, &qword_22C2CC7E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D9115C8, &qword_22C2AE2E0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F3E8, type metadata accessor for TranscriptProtoUserTurnText, &protocol conformance descriptor for TranscriptProtoUserTurnText);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9115C8, &qword_22C2AE2E0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9115C8, &qword_22C2AE2E0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9115C8, &qword_22C2AE2E0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9115C8, &qword_22C2AE2E0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E4F0, &qword_22C2CC7E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoUserTurn.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  sub_22BE2B890(v5);
  if (v6)
  {
    goto LABEL_6;
  }

  sub_22BE1AEE4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_22BE17D78();
    sub_22BFDFD2C(v7, v8, v9, v10);
  }

  else
  {
    v11 = sub_22BE17D78();
    sub_22BFDFB24(v11, v12, v13, v14);
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for TranscriptProtoUserTurn(0);
    sub_22BE235A8();
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22BFDFB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoUserTurnSpeech(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E4F0, &qword_22C2CC7E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F3D0, type metadata accessor for TranscriptProtoUserTurnSpeech, &protocol conformance descriptor for TranscriptProtoUserTurnSpeech);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDFD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoUserTurnText(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E4F0, &qword_22C2CC7E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F3E8, type metadata accessor for TranscriptProtoUserTurnText, &protocol conformance descriptor for TranscriptProtoUserTurnText);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFE01C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911138, type metadata accessor for TranscriptProtoUserTurn, &protocol conformance descriptor for TranscriptProtoUserTurn);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE0244(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F3B8, type metadata accessor for TranscriptProtoUserTurn, &protocol conformance descriptor for TranscriptProtoUserTurn);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE02B4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F3B8, type metadata accessor for TranscriptProtoUserTurn, &protocol conformance descriptor for TranscriptProtoUserTurn);

  return sub_22C270774();
}

uint64_t sub_22BFE0404(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911130, type metadata accessor for TranscriptProtoUserTurnSpeech, &protocol conformance descriptor for TranscriptProtoUserTurnSpeech);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE0484(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F3D0, type metadata accessor for TranscriptProtoUserTurnSpeech, &protocol conformance descriptor for TranscriptProtoUserTurnSpeech);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE04F4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F3D0, type metadata accessor for TranscriptProtoUserTurnSpeech, &protocol conformance descriptor for TranscriptProtoUserTurnSpeech);

  return sub_22C270774();
}

uint64_t _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0V2eeoiySbAC_ACtFZ_0()
{
  sub_22BE1B2D4();
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v0, v1, MEMORY[0x277D216D0]);
  sub_22BE18944();
  return sub_22C272FD4() & 1;
}

uint64_t sub_22BFE068C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911128, type metadata accessor for TranscriptProtoUserTurnText, &protocol conformance descriptor for TranscriptProtoUserTurnText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE070C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F3E8, type metadata accessor for TranscriptProtoUserTurnText, &protocol conformance descriptor for TranscriptProtoUserTurnText);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE077C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F3E8, type metadata accessor for TranscriptProtoUserTurnText, &protocol conformance descriptor for TranscriptProtoUserTurnText);

  return sub_22C270774();
}

uint64_t sub_22BFE0804()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CD20);
  sub_22BE199F4(v0, qword_27D90CD20);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "turnId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tokens";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoSpeechPartialResult.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_22BE1C37C();
      sub_22BFE0AA0();
    }

    else if (v1 == 1)
    {
      sub_22BE239F4();
      sub_22C2706A4();
    }
  }
}

void sub_22BFE0AA0()
{
  sub_22BE19130();
  v1 = sub_22BE37708();
  v2(v1);
  v3 = sub_22BE3C5E4();
  sub_22BE2C988(v3, v4, v0);
  sub_22BE38514();
  sub_22C2706E4();
  sub_22BE18478();
}

void TranscriptProtoSpeechPartialResult.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    sub_22C0B1AE4();
    if (!v2 || (type metadata accessor for TranscriptProtoSpeechPackage.Token(0), sub_22BE44774(), sub_22BE2C988(v3, v4, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
    {
      type metadata accessor for TranscriptProtoSpeechPartialResult(0);
      sub_22BE25FB0();
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFE0C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911120, type metadata accessor for TranscriptProtoSpeechPartialResult, &protocol conformance descriptor for TranscriptProtoSpeechPartialResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE0CF4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F400, type metadata accessor for TranscriptProtoSpeechPartialResult, &protocol conformance descriptor for TranscriptProtoSpeechPartialResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE0D64(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F400, type metadata accessor for TranscriptProtoSpeechPartialResult, &protocol conformance descriptor for TranscriptProtoSpeechPartialResult);

  return sub_22C270774();
}

uint64_t sub_22BFE0DFC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CD38);
  sub_22BE199F4(v0, qword_27D90CD38);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28D160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "safetyMode";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "prescribedPlan";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rawRewriteMetadataEventId";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "rewriteMetadataInlined";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "siriRequestContext";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "suggestedInvocation";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "datetimeContext";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoRequest.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22BE18E2C();
        sub_22BFE124C(v3, v4, v5, v6);
        break;
      case 2:
        sub_22BE239F4();
        sub_22C2705C4();
        break;
      case 3:
        v11 = sub_22BE18E2C();
        sub_22BFE1300(v11, v12, v13, v14);
        break;
      case 4:
        sub_22BE393E0();
        sub_22BE18E2C();
        sub_22C098EAC();
        break;
      case 5:
        v7 = sub_22BE18E2C();
        sub_22BFE13B4(v7, v8, v9, v10);
        break;
      case 6:
        v19 = sub_22BE18E2C();
        sub_22BFE1468(v19, v20, v21, v22);
        break;
      case 7:
        v23 = sub_22BE18E2C();
        sub_22BFE151C(v23, v24, v25, v26);
        break;
      case 8:
        v15 = sub_22BE18E2C();
        sub_22BFE15D0(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFE124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for TranscriptProtoRequestContent(0);
  sub_22BE2C988(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
  return sub_22C2706F4();
}

uint64_t sub_22BFE1300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  sub_22BE2C988(&qword_27D90F4F0, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);
  return sub_22C2706F4();
}

uint64_t sub_22BFE13B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  return sub_22C2706F4();
}

uint64_t sub_22BFE1468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE2C988(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContext);
  return sub_22C2706F4();
}

uint64_t sub_22BFE151C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  sub_22BE2C988(&qword_27D90F438, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, &protocol conformance descriptor for TranscriptProtoRequestSuggestedInvocation);
  return sub_22C2706F4();
}

uint64_t sub_22BFE15D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_22BE2C988(&qword_27D90F388, type metadata accessor for TranscriptProtoDateTimeContext, &protocol conformance descriptor for TranscriptProtoDateTimeContext);
  return sub_22C2706F4();
}

void TranscriptProtoRequest.traverse<A>(visitor:)()
{
  v1 = sub_22BE3B0CC();
  sub_22BFE1760(v1, v2, v3, v4);
  if (!v0)
  {
    sub_22C0B1C3C();
    if (v5)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    v6 = sub_22BE17D60();
    sub_22BFE1934(v6, v7, v8, v9);
    sub_22BE393E0();
    sub_22BE17D60();
    sub_22C099168();
    v10 = sub_22BE17D60();
    sub_22BFE1B08(v10, v11, v12, v13);
    v14 = sub_22BE17D60();
    sub_22BFE1CDC(v14, v15, v16, v17);
    v18 = sub_22BE17D60();
    sub_22BFE1EB0(v18, v19, v20, v21);
    v22 = sub_22BE17D60();
    sub_22BFE2084(v22, v23, v24, v25);
    type metadata accessor for TranscriptProtoRequest(0);
    sub_22BE1AC30();
  }
}

uint64_t sub_22BFE1760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestContent(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoRequest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E568, &unk_22C2CC8B0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFE1934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E558, &unk_22C2AE4D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoRequest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E558, &unk_22C2AE4D0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F4F0, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFE1B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoRequest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E548, &qword_22C296F00);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFE1CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoRequest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C7E8, &unk_22C2AE4B0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContext);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFE1EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E538, &unk_22C2AE4E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoRequest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E538, &unk_22C2AE4E0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F438, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, &protocol conformance descriptor for TranscriptProtoRequestSuggestedInvocation);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFE2084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E528, &unk_22C2CC870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoRequest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E528, &unk_22C2CC870);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F388, type metadata accessor for TranscriptProtoDateTimeContext, &protocol conformance descriptor for TranscriptProtoDateTimeContext);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v105 = v4;
  v5 = sub_22C0B1E74();
  type metadata accessor for TranscriptProtoDateTimeContext(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v7 = sub_22BE5CE4C(&qword_27D90E528, &unk_22C2CC870);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D90E530, &qword_22C296EF0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  v95 = v10;
  v11 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoRequestSuggestedInvocation(v11);
  sub_22BE18000();
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  v94 = v13;
  v14 = sub_22BE5CE4C(&qword_27D90E538, &unk_22C2AE4E0);
  sub_22BE19448(v14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  v96 = v16;
  sub_22BE5CE4C(&qword_27D90E540, &qword_22C296EF8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A174();
  v97 = v18;
  v19 = sub_22BE183BC();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v19);
  sub_22BE18000();
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  v21 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D90E4D0, &qword_22C296ED8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE33FF0(v24, v90);
  v101 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  v98 = v26;
  v27 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  sub_22BE19448(v27);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1A174();
  sub_22C0B1ABC(v29);
  sub_22BE5CE4C(&qword_27D90E550, &qword_22C296F08);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v32 = sub_22BE4098C(v31, v91);
  v33 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(v32);
  v34 = sub_22BE1B7B0(v33);
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  sub_22BEE94C8(v35);
  v36 = sub_22BE5CE4C(&qword_27D90E558, &unk_22C2AE4D0);
  sub_22BE19448(v36);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE3C048(v38, v92);
  sub_22BE5CE4C(&qword_27D90E560, &qword_22C296F10);
  sub_22BE26880();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  v41 = sub_22BE1BC94(v40, v93);
  type metadata accessor for TranscriptProtoRequestContent(v41);
  sub_22BE18000();
  MEMORY[0x28223BE20](v42);
  sub_22BE38390();
  v43 = sub_22BE392D4();
  v45 = sub_22BE5CE4C(v43, v44);
  sub_22BE19448(v45);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE19668();
  sub_22BE5CE4C(&qword_27D90E570, &qword_22C296F18);
  sub_22C0B1A7C();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE234F4();
  v104 = type metadata accessor for TranscriptProtoRequest(0);
  v48 = *(v1 + 56);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE18190(v2);
  if (!v49)
  {
    sub_22BE35838();
    sub_22BE22868();
    sub_22BE18190(v2 + v48);
    if (!v49)
    {
      sub_22C0B0868();
      v53 = sub_22BE18040();
      v54 = static TranscriptProtoRequestContent.== infix(_:_:)(v53);
      sub_22BE1B5EC();
      sub_22C0B08BC();
      sub_22BE18944();
      sub_22C0B08BC();
      sub_22BE33928(v2, &qword_27D90E568, &unk_22C2CC8B0);
      if ((v54 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    sub_22C0B1538();
    sub_22C0B08BC();
LABEL_9:
    v50 = &qword_27D90E570;
    v51 = &qword_22C296F18;
    v52 = v2;
    goto LABEL_10;
  }

  sub_22BE18190(v2 + v48);
  if (!v49)
  {
    goto LABEL_9;
  }

  sub_22BE33928(v2, &qword_27D90E568, &unk_22C2CC8B0);
LABEL_12:
  if (*v3 != *v105)
  {
    goto LABEL_13;
  }

  v56 = *(v0 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v57 = sub_22BE26188();
  sub_22BE36144(v57, v58);
  if (v49)
  {
    sub_22BE18190(v103 + v56);
    if (v49)
    {
      sub_22BE33928(v103, &qword_27D90E558, &unk_22C2AE4D0);
      goto LABEL_25;
    }
  }

  else
  {
    sub_22BE22868();
    sub_22BE18190(v103 + v56);
    if (!v59)
    {
      sub_22C0B0868();
      v60 = sub_22BE1C2A0();
      static TranscriptProtoRequestPrescribedPlan.== infix(_:_:)(v60);
      sub_22BE39304();
      sub_22BE1AB74();
      sub_22C0B08BC();
      sub_22BE33928(v103, &qword_27D90E558, &unk_22C2AE4D0);
      if ((&unk_22C2AE4D0 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_25:
      v61 = *(v104 + 28);
      v62 = *&v105[v61 + 8];
      if (*&v3[v61 + 8])
      {
        if (!v62)
        {
          goto LABEL_13;
        }

        sub_22BE3A508(&v3[v61]);
        v65 = v49 && v63 == v64;
        if (!v65 && (sub_22C274014() & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else if (v62)
      {
        goto LABEL_13;
      }

      sub_22C0B1B6C();
      sub_22BE27B84();
      sub_22BE22868();
      v66 = v102;
      sub_22BE27B84();
      sub_22BE22868();
      v67 = sub_22BE26188();
      sub_22BE36144(v67, v68);
      if (v49)
      {
        sub_22BE18A84();
        if (v49)
        {
          sub_22BE33928(v102, &qword_27D90E548, &qword_22C296F00);
          goto LABEL_39;
        }
      }

      else
      {
        sub_22BE22868();
        sub_22BE18A84();
        if (!v71)
        {
          sub_22C0B1788();
          sub_22C0B0868();
          v72 = *v100 == *v98 && v100[1] == v98[1];
          if (!v72 && (sub_22C274014() & 1) == 0 || (sub_22BE9693C(v100[2], v98[2]) & 1) == 0)
          {
            sub_22BE487C0();
            sub_22C0B08BC();
            sub_22BE200D4();
            sub_22C0B08BC();
            v50 = &qword_27D90E548;
            v51 = &qword_22C296F00;
            goto LABEL_89;
          }

          sub_22BE27098();
          sub_22BE18E5C();
          sub_22BE2C988(v73, v74, MEMORY[0x277D216D0]);
          v75 = sub_22BE3A008();
          sub_22C0B1B54(v75);
          sub_22BE32478();
          sub_22C0B08BC();
          sub_22BE431C0();
          sub_22C0B08BC();
          sub_22BE33928(v102, &qword_27D90E548, &qword_22C296F00);
          if ((v101 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_39:
          sub_22BE27B84();
          sub_22BE22868();
          v66 = v99;
          sub_22BE27B84();
          sub_22BE22868();
          v69 = sub_22BE26188();
          sub_22BE36144(v69, v70);
          if (v49)
          {
            sub_22BE18A84();
            if (v49)
            {
              sub_22BE33928(v99, &qword_27D90C7E8, &unk_22C2AE4B0);
              goto LABEL_62;
            }
          }

          else
          {
            sub_22BE22868();
            sub_22BE18A84();
            if (!v76)
            {
              sub_22C0B17E8();
              sub_22C0B0868();
              sub_22BE232C8();
              static ContextProtoStructuredContextSiriRequestContext.== infix(_:_:)();
              sub_22BE39304();
              sub_22BE200D4();
              sub_22C0B08BC();
              sub_22BE33928(v99, &qword_27D90C7E8, &unk_22C2AE4B0);
              if ((&unk_22C2AE4B0 & 1) == 0)
              {
                goto LABEL_13;
              }

LABEL_62:
              sub_22BE27B84();
              sub_22BE22868();
              v66 = v97;
              sub_22BE27B84();
              sub_22BE22868();
              v77 = sub_22BE26188();
              sub_22BE36144(v77, v78);
              if (v49)
              {
                sub_22BE18A84();
                if (v49)
                {
                  sub_22BE33928(v97, &qword_27D90E538, &unk_22C2AE4E0);
LABEL_77:
                  sub_22BE27B84();
                  sub_22BE22868();
                  v66 = v95;
                  sub_22BE27B84();
                  sub_22BE22868();
                  v85 = sub_22BE26188();
                  sub_22BE36144(v85, v86);
                  if (v49)
                  {
                    sub_22BE18A84();
                    if (v49)
                    {
                      sub_22BE33928(v95, &qword_27D90E528, &unk_22C2CC870);
                      goto LABEL_87;
                    }
                  }

                  else
                  {
                    sub_22BE22868();
                    sub_22BE18A84();
                    if (!v87)
                    {
                      sub_22C0B0868();
                      sub_22BE232C8();
                      static TranscriptProtoDateTimeContext.== infix(_:_:)();
                      sub_22BE39304();
                      sub_22BE200D4();
                      sub_22C0B08BC();
                      sub_22BE33928(v95, &qword_27D90E528, &unk_22C2CC870);
                      if ((&unk_22C2CC870 & 1) == 0)
                      {
                        goto LABEL_13;
                      }

LABEL_87:
                      sub_22C2704B4();
                      sub_22BE18E5C();
                      sub_22BE2C988(v88, v89, MEMORY[0x277D216D0]);
                      v55 = sub_22C272FD4();
                      goto LABEL_14;
                    }

                    sub_22BE3FEA4();
                  }

                  v50 = &qword_27D90E530;
                  v51 = &qword_22C296EF0;
                  goto LABEL_89;
                }
              }

              else
              {
                sub_22BE22868();
                sub_22BE18A84();
                if (!v79)
                {
                  sub_22C0B0868();
                  v80 = *v96 == *v94 && v96[1] == v94[1];
                  if (v80 || (sub_22C274014() & 1) != 0)
                  {
                    sub_22BE46030();
                    sub_22BE18E5C();
                    sub_22BE2C988(v81, v82, MEMORY[0x277D216D0]);
                    v83 = sub_22BE3A008();
                    v84 = sub_22C0B1B54(v83);
                    sub_22C0B08BC();
                    sub_22BE431C0();
                    sub_22C0B08BC();
                    sub_22BE33928(v97, &qword_27D90E538, &unk_22C2AE4E0);
                    if ((v84 & 1) == 0)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_77;
                  }

                  sub_22C0B08BC();
                  sub_22BE200D4();
                  sub_22C0B08BC();
                  v50 = &qword_27D90E538;
                  v51 = &unk_22C2AE4E0;
LABEL_89:
                  v52 = v66;
                  goto LABEL_10;
                }

                sub_22BE3FEA4();
              }

              v50 = &qword_27D90E540;
              v51 = &qword_22C296EF8;
              goto LABEL_89;
            }

            sub_22BE3FEA4();
          }

          v50 = &qword_27D90E4D0;
          v51 = &qword_22C296ED8;
          goto LABEL_89;
        }

        sub_22C0B17A0();
        sub_22C0B08BC();
      }

      v50 = &qword_27D90E550;
      v51 = &qword_22C296F08;
      goto LABEL_89;
    }

    sub_22C0B1AFC();
  }

  v50 = &qword_27D90E560;
  v51 = &qword_22C296F10;
  v52 = v103;
LABEL_10:
  sub_22BE33928(v52, v50, v51);
LABEL_13:
  v55 = 0;
LABEL_14:
  sub_22BE1C1DC(v55);
  sub_22BE1AABC();
}

uint64_t sub_22BFE3024(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911118, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE30A4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE3114(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);

  return sub_22C270774();
}

uint64_t sub_22BFE31A0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_281075D60);
  sub_22BE199F4(v0, qword_281075D60);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "speech";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "promptResolution";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "stop";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFE3448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911380, &qword_22C2AE0B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v18, &qword_27D911380, &qword_22C2AE0B0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }
  }

  sub_22BE2C988(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911380, &qword_22C2AE0B0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911380, &qword_22C2AE0B0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911380, &qword_22C2AE0B0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911380, &qword_22C2AE0B0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E580, &qword_22C2AE4F0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFE3940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911388, &qword_22C2AE0B8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D911388, &qword_22C2AE0B8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911388, &qword_22C2AE0B8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911388, &qword_22C2AE0B8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911388, &qword_22C2AE0B8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911388, &qword_22C2AE0B8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E580, &qword_22C2AE4F0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFE3E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9115B0, &qword_22C2AE2C8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v18, &qword_27D9115B0, &qword_22C2AE2C8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FEF0, type metadata accessor for TranscriptProtoSystemPromptResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolution);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9115B0, &qword_22C2AE2C8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9115B0, &qword_22C2AE2C8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9115B0, &qword_22C2AE2C8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9115B0, &qword_22C2AE2C8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E580, &qword_22C2AE4F0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFE4330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9115B8, &qword_22C2AE2D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v18, &qword_27D9115B8, &qword_22C2AE2D0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F450, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9115B8, &qword_22C2AE2D0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9115B8, &qword_22C2AE2D0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9115B8, &qword_22C2AE2D0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9115B8, &qword_22C2AE2D0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E580, &qword_22C2AE4F0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFE4828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFE4A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FEF0, type metadata accessor for TranscriptProtoSystemPromptResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolution);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFE4C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F450, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFE50B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911110, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE5134(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE51A4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);

  return sub_22C270774();
}

uint64_t sub_22BFE5340(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911108, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, &protocol conformance descriptor for TranscriptProtoRequestSuggestedInvocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE53C0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F438, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, &protocol conformance descriptor for TranscriptProtoRequestSuggestedInvocation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE5430(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F438, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, &protocol conformance descriptor for TranscriptProtoRequestSuggestedInvocation);

  return sub_22C270774();
}

uint64_t TranscriptProtoRequestContentStopContent.decodeMessage<A>(decoder:)()
{
  do
  {
    sub_22BE1AB74();
    result = sub_22C270584();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_22BFE55BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911100, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE563C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F450, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE56AC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F450, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);

  return sub_22C270774();
}

uint64_t sub_22BFE5734()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_28107DC28);
  sub_22BE199F4(v0, qword_28107DC28);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFE5928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void static TranscriptProtoRequestContentTextContent.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoStatementID(v1);
  sub_22BE26880();
  MEMORY[0x28223BE20](v2);
  sub_22BE38390();
  v3 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE20394();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  sub_22BE3E440(v9);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v8)
  {
    sub_22BE19538();
    if (v8)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_17:
      sub_22C0B16F4();
      sub_22BE18E5C();
      v17 = sub_22BE2C988(v15, v16, MEMORY[0x277D216D0]);
      v11 = sub_22BE2B85C(v17);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v10)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_14:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_15;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v12 = sub_22BE38970();
  v14 = static TranscriptProtoStatementID.== infix(_:_:)(v12, v13);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_15:
  v11 = 0;
LABEL_18:
  sub_22BE1C1DC(v11);
  sub_22BE1AABC();
}

uint64_t sub_22BFE5C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110F8, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE5CEC(uint64_t a1)
{
  v2 = sub_22BE2C988(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE5D5C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);

  return sub_22C270774();
}

uint64_t sub_22BFE5DE8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CD80);
  sub_22BE199F4(v0, qword_27D90CD80);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "speechPackage";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "statementId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "preITNSpeechPackage";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoRequestContentSpeechContent.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 2:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 3:
        v11 = sub_22BE18E2C();
        sub_22BFE60F0(v11, v12, v13, v14);
        break;
      case 4:
        v3 = sub_22BE18E2C();
        sub_22BFE61A4(v3, v4, v5, v6);
        break;
      case 5:
        v7 = sub_22BE18E2C();
        sub_22BFE6258(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFE60F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  type metadata accessor for TranscriptProtoSpeechPackage(0);
  sub_22BE2C988(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);
  return sub_22C2706F4();
}

uint64_t sub_22BFE61A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFE6258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  type metadata accessor for TranscriptProtoSpeechPackage(0);
  sub_22BE2C988(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoRequestContentSpeechContent.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v1 || (sub_22BE2910C(), result = sub_22C270844(), !v0))
  {
    v3 = sub_22BE17D60();
    result = sub_22BFE639C(v3, v4, v5, v6);
    if (!v0)
    {
      v7 = sub_22BE17D60();
      sub_22BFE6570(v7, v8, v9, v10);
      v11 = sub_22BE17D60();
      sub_22BFE6744(v11, v12, v13, v14);
      type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t sub_22BFE639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E5B0, &unk_22C2AE500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E5B0, &unk_22C2AE500);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFE6570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFE6744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E5B0, &unk_22C2AE500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E5B0, &unk_22C2AE500);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  v4 = type metadata accessor for TranscriptProtoStatementID(v3);
  v5 = sub_22BE272C0(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE38A28(v6);
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE29250(v9, v62[0]);
  v10 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE28784(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE1AED0();
  v65 = type metadata accessor for TranscriptProtoSpeechPackage(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  sub_22BE32374();
  v18 = sub_22BE5CE4C(&qword_27D90E5B0, &unk_22C2AE500);
  v19 = sub_22BE19448(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE183AC();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE5CE4C(&qword_27D90E5B8, &qword_22C296F28);
  sub_22BE18000();
  MEMORY[0x28223BE20](v25);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v26);
  v28 = v62 - v27;
  v66 = v0;
  sub_22BE33C20();
  v31 = v31 && v29 == v30;
  if (!v31 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_22;
  }

  v62[0] = v16;
  v62[1] = v22;
  v63 = v1;
  v62[2] = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v32 = *(v24 + 48);
  sub_22C0B1C48();
  sub_22BE22868();
  sub_22BE22868();
  v33 = sub_22BE406A0();
  v34 = v65;
  sub_22BE36144(v33, v35);
  if (v31)
  {
    sub_22BE18190(&v28[v32]);
    if (v31)
    {
      sub_22BE33928(v28, &qword_27D90E5B0, &unk_22C2AE500);
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  sub_22BE392D4();
  sub_22BE22868();
  sub_22BE18190(&v28[v32]);
  if (v40)
  {
    sub_22BE3D570();
LABEL_19:
    v41 = &qword_27D90E5B8;
    v42 = &qword_22C296F28;
LABEL_20:
    v43 = v28;
LABEL_21:
    sub_22BE33928(v43, v41, v42);
    goto LABEL_22;
  }

  sub_22C0B1974();
  sub_22C0B0868();
  sub_22BEA0CA0();
  if ((v45 & 1) == 0)
  {
    sub_22C0B198C();
    sub_22C0B08BC();
    sub_22BE1AB74();
    sub_22C0B08BC();
    v41 = &qword_27D90E5B0;
    v42 = &unk_22C2AE500;
    goto LABEL_20;
  }

  sub_22BE46030();
  sub_22BE18E5C();
  sub_22BE2C988(v46, v47, MEMORY[0x277D216D0]);
  sub_22C272FD4();
  sub_22C0B1738();
  sub_22C0B08BC();
  sub_22BE3C5E4();
  sub_22C0B08BC();
  sub_22BE33928(v28, &qword_27D90E5B0, &unk_22C2AE500);
  if ((v34 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v36 = *(v64 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v37 = sub_22BE3C688();
  sub_22BE36144(v37, v38);
  if (v31)
  {
    sub_22BE18190(v2 + v36);
    v39 = v63;
    if (v31)
    {
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  sub_22BE22868();
  sub_22BE18190(v2 + v36);
  v39 = v63;
  if (v48)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_30:
    v41 = &qword_27D909100;
    v42 = &unk_22C27FD00;
    v43 = v2;
    goto LABEL_21;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v49 = sub_22BE1C2A0();
  static TranscriptProtoStatementID.== infix(_:_:)(v49, v50);
  sub_22BE39304();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((&unk_22C2AE4A0 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_33:
  v51 = *(v24 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE3CBC0();
  sub_22BE22868();
  v52 = sub_22BFB1A7C();
  v53 = v65;
  sub_22BE36144(v52, v54);
  if (v31)
  {
    sub_22BE18190(v39 + v51);
    if (v31)
    {
      sub_22BE33928(v39, &qword_27D90E5B0, &unk_22C2AE500);
LABEL_38:
      sub_22C0B1D70();
      sub_22BE18E5C();
      sub_22BE2C988(v55, v56, MEMORY[0x277D216D0]);
      sub_22C0B1C54();
      v44 = sub_22C272FD4();
      goto LABEL_23;
    }

    goto LABEL_42;
  }

  sub_22BE22868();
  sub_22BE18190(v39 + v51);
  if (v57)
  {
    sub_22BE3D570();
LABEL_42:
    v41 = &qword_27D90E5B8;
    v42 = &qword_22C296F28;
LABEL_43:
    v43 = v39;
    goto LABEL_21;
  }

  sub_22C0B1974();
  sub_22C0B0868();
  sub_22BEA0CA0();
  if ((v58 & 1) == 0)
  {
    sub_22C0B198C();
    sub_22C0B08BC();
    sub_22BE1AB74();
    sub_22C0B08BC();
    v41 = &qword_27D90E5B0;
    v42 = &unk_22C2AE500;
    goto LABEL_43;
  }

  sub_22BE46030();
  sub_22BE18E5C();
  v61 = sub_22BE2C988(v59, v60, MEMORY[0x277D216D0]);
  sub_22BE3C4B0(v61);
  sub_22C0B1738();
  sub_22C0B08BC();
  sub_22BE3C5E4();
  sub_22C0B08BC();
  sub_22BE33928(v39, &qword_27D90E5B0, &unk_22C2AE500);
  if (v53)
  {
    goto LABEL_38;
  }

LABEL_22:
  v44 = 0;
LABEL_23:
  sub_22BE1C1DC(v44);
  sub_22BE1AABC();
}

uint64_t sub_22BFE7030(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110F0, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE70B0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE7120(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);

  return sub_22C270774();
}

void TranscriptProtoSpeechPackage.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoSpeechPackage.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0), sub_22BE2C988(&qword_27D90E5C8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Phrase), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoSpeechPackage(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFE73F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110E8, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE7474(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE74E4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);

  return sub_22C270774();
}

void TranscriptProtoSpeechPackage.Phrase.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void sub_22BFE7680()
{
  sub_22BE19130();
  v1 = sub_22BE37708();
  v2(v1);
  v3 = sub_22BE3C5E4();
  sub_22BE2C988(v3, v4, v0);
  sub_22BE38514();
  sub_22C2706E4();
  sub_22BE18478();
}

void TranscriptProtoSpeechPackage.Phrase.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0), sub_22BE2C988(&qword_27D90E5D8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Interpretation), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFE77A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_22BE18378();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_22BE3636C();
  sub_22BE18E5C();
  v10 = sub_22BE2C988(v8, v9, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v10) & 1;
}

uint64_t sub_22BFE78B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110E0, type metadata accessor for TranscriptProtoSpeechPackage.Phrase, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Phrase);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE7934(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E5C8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Phrase);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE79A4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90E5C8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Phrase);

  return sub_22C270774();
}

void TranscriptProtoSpeechPackage.Interpretation.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoSpeechPackage.Interpretation.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoSpeechPackage.Token(0), sub_22BE44774(), sub_22BE2C988(v2, v3, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFE7C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110D8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Interpretation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE7D10(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E5D8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Interpretation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE7D80(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90E5D8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Interpretation);

  return sub_22C270774();
}

uint64_t sub_22BFE7E20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x2318AB8D0](a2, a3);
  *a4 = 0xD000000000000018;
  *a5 = 0x800000022C2D6BA0;
  return result;
}

uint64_t sub_22BFE7EAC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CE10);
  sub_22BE199F4(v0, qword_27D90CE10);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidenceScore";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "startTime";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "silenceStartTime";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "endTime";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoSpeechPackage.Token.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 2:
        sub_22BE374D4();
        sub_22C270654();
        break;
      case 3:
      case 4:
      case 5:
        sub_22BE2037C();
        sub_22C270684();
        break;
      default:
        continue;
    }
  }
}

uint64_t TranscriptProtoSpeechPackage.Token.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    if (!*(v1 + 16) || (sub_22BE1BAB8(), result = sub_22C270814(), !v0))
    {
      if (*(v1 + 24) == 0.0 || (sub_22BE3C588(), result = sub_22C270834(), !v0))
      {
        if (*(v1 + 32) == 0.0 || (sub_22BE3C588(), result = sub_22C270834(), !v0))
        {
          if (*(v1 + 40) == 0.0 || (sub_22BE3C588(), result = sub_22C270834(), !v0))
          {
            type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
            return sub_22BE1AC30();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static TranscriptProtoSpeechPackage.Token.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0 || *(v2 + 16) != *(v1 + 16) || *(v2 + 24) != *(v1 + 24) || *(v2 + 32) != *(v1 + 32) || *(v2 + 40) != *(v1 + 40))
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  sub_22C2704B4();
  sub_22BE18E5C();
  v8 = sub_22BE2C988(v6, v7, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v8) & 1;
}

uint64_t sub_22BFE8438(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110D0, type metadata accessor for TranscriptProtoSpeechPackage.Token, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE84B8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E518, type metadata accessor for TranscriptProtoSpeechPackage.Token, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE8528(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90E518, type metadata accessor for TranscriptProtoSpeechPackage.Token, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token);

  return sub_22C270774();
}

uint64_t sub_22BFE85B4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_281072DD0);
  sub_22BE199F4(v0, qword_281072DD0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rawRewriteMetadataEventId";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rewriteMetadataInlined";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoExternalAgentRequest.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = sub_22BE18E2C();
        sub_22BFE8940(v7, v8, v9, v10);
        break;
      case 2:
        v3 = sub_22BE18E2C();
        sub_22BFE88DC(v3, v4, v5, v6);
        break;
      case 1:
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
    }
  }
}

void sub_22BFE8884()
{
  sub_22BE19130();
  v1 = sub_22BE37708();
  v2(v1);
  v3 = sub_22BE3C5E4();
  sub_22BE2C988(v3, v4, v0);
  sub_22BE38514();
  sub_22C2706F4();
  sub_22BE18478();
}

uint64_t sub_22BFE8940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  return sub_22C2706F4();
}

void static TranscriptProtoExternalAgentRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = v2;
  v4 = sub_22C0B1BA0();
  v46 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v44 = v6;
  v7 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE20168(v9, v42);
  v10 = sub_22BE5CE4C(&qword_27D90E550, &qword_22C296F08);
  sub_22BE272C0(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v13 = sub_22C0B1620(v12, v43);
  type metadata accessor for TranscriptProtoRequestContent(v13);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  sub_22BE294E0();
  v15 = sub_22BE324FC();
  v17 = sub_22BE5CE4C(v15, v16);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B72C();
  v19 = sub_22BE5CE4C(&qword_27D90E570, &qword_22C296F18);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE23E58();
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE23B00(v1);
  if (v21)
  {
    sub_22BE22E64();
    if (v21)
    {
      sub_22BE33928(v1, &qword_27D90E568, &unk_22C2CC8B0);
      goto LABEL_14;
    }

LABEL_9:
    v22 = &qword_27D90E570;
    v23 = &qword_22C296F18;
    v24 = v1;
LABEL_10:
    sub_22BE33928(v24, v22, v23);
    goto LABEL_11;
  }

  sub_22BE3C968();
  sub_22BE22868();
  sub_22BE22E64();
  if (v21)
  {
    sub_22C0B1538();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B0868();
  v26 = sub_22BE1A6BC();
  v27 = static TranscriptProtoRequestContent.== infix(_:_:)(v26);
  sub_22BE2C254();
  sub_22C0B08BC();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90E568, &unk_22C2CC8B0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v28 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v29 = *(v28 + 20);
  v30 = *(v3 + v29 + 8);
  if (*(v0 + v29 + 8))
  {
    if (!v30)
    {
      goto LABEL_11;
    }

    sub_22BE3A508(v0 + v29);
    v33 = v21 && v31 == v32;
    if (!v33 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v30)
  {
    goto LABEL_11;
  }

  v34 = *(v28 + 24);
  v35 = *(v45 + 48);
  sub_22C0B1754();
  sub_22BE22868();
  sub_22C0B1754();
  sub_22BE22868();
  sub_22BE36144(v47, 1);
  if (v21)
  {
    sub_22BE18190(v47 + v35);
    if (v21)
    {
      sub_22BE33928(v47, &qword_27D90E548, &qword_22C296F00);
LABEL_28:
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v36, v37, MEMORY[0x277D216D0]);
      sub_22C0B1968();
      v25 = sub_22C272FD4();
      goto LABEL_12;
    }

    goto LABEL_32;
  }

  sub_22BE3CB6C();
  sub_22BE22868();
  sub_22BE18190(v47 + v35);
  if (v38)
  {
    sub_22C0B17A0();
    sub_22C0B08BC();
LABEL_32:
    v22 = &qword_27D90E550;
    v23 = &qword_22C296F08;
LABEL_42:
    v24 = v47;
    goto LABEL_10;
  }

  sub_22C0B1788();
  sub_22C0B0868();
  v39 = *v34 == *v44 && v34[1] == v44[1];
  if (!v39 && (sub_22C274014() & 1) == 0 || (sub_22BE9693C(v34[2], v44[2]) & 1) == 0)
  {
    sub_22BE487C0();
    sub_22C0B08BC();
    sub_22BE291B0();
    sub_22C0B08BC();
    v22 = &qword_27D90E548;
    v23 = &qword_22C296F00;
    goto LABEL_42;
  }

  sub_22BE27098();
  sub_22BE18E5C();
  sub_22BE2C988(v40, v41, MEMORY[0x277D216D0]);
  sub_22C272FD4();
  sub_22BE32478();
  sub_22C0B08BC();
  sub_22BE36680();
  sub_22C0B08BC();
  sub_22BE33928(v47, &qword_27D90E548, &qword_22C296F00);
  if (v46)
  {
    goto LABEL_28;
  }

LABEL_11:
  v25 = 0;
LABEL_12:
  sub_22BE1C1DC(v25);
  sub_22BE1AABC();
}

uint64_t sub_22BFE8F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110C8, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE8FE4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_281072DC0, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE9054(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_281072DC0, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);

  return sub_22C270774();
}

uint64_t sub_22BFE90EC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CE28);
  sub_22BE199F4(v0, qword_27D90CE28);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "originalRequest";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrites";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoExternalAgentRequestRewriteMetadata.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (sub_22BE1BAB8(), result = sub_22C270824(), !v0))
    {
      type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
      return sub_22BE25FB0();
    }
  }

  return result;
}

uint64_t sub_22BFE93A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  sub_22BE19FC4(a1);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v9 = sub_22C0B1C6C();
  if ((a3(v9) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_22BE23A04();
  sub_22BE18E5C();
  v12 = sub_22BE2C988(v10, v11, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v12) & 1;
}

uint64_t sub_22BFE94E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110C0, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE9568(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE95D8(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return sub_22C270774();
}

uint64_t sub_22BFE9664()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CE40);
  sub_22BE199F4(v0, qword_27D90CE40);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28D160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "searchTool";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lowConfidenceKnowledgeTool";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "textTool";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "convertTool";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "displayTool";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 9;
  *v18 = "knowledgeTool";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 10;
  *v20 = "openTool";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 11;
  *v22 = "openSuccessValueFromLatestRequestTool";
  *(v22 + 1) = 37;
  v22[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoRequestPrescribedPlan.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22BE236F4();
        sub_22BFE9AAC(v3, v4, v5, v6);
        break;
      case 2:
        v23 = sub_22BE236F4();
        sub_22BFE9FA4(v23, v24, v25, v26);
        break;
      case 6:
        v11 = sub_22BE236F4();
        sub_22BFEA49C(v11, v12, v13, v14);
        break;
      case 7:
        v15 = sub_22BE236F4();
        sub_22BFEA994(v15, v16, v17, v18);
        break;
      case 8:
        v7 = sub_22BE236F4();
        sub_22BFEAE8C(v7, v8, v9, v10);
        break;
      case 9:
        v27 = sub_22BE236F4();
        sub_22BFEB384(v27, v28, v29, v30);
        break;
      case 10:
        v31 = sub_22BE236F4();
        sub_22BFEB87C(v31, v32, v33, v34);
        break;
      case 11:
        v19 = sub_22BE236F4();
        sub_22BFEBD74(v19, v20, v21, v22);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFE9AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911570, &qword_22C2AE288);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v18, &qword_27D911570, &qword_22C2AE288);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90F508, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911570, &qword_22C2AE288);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911570, &qword_22C2AE288);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911570, &qword_22C2AE288);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911570, &qword_22C2AE288);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFE9FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911578, &qword_22C2AE290);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D911578, &qword_22C2AE290);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F520, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911578, &qword_22C2AE290);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911578, &qword_22C2AE290);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911578, &qword_22C2AE290);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911578, &qword_22C2AE290);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFEA49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911580, &qword_22C2AE298);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v18, &qword_27D911580, &qword_22C2AE298);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F538, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911580, &qword_22C2AE298);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911580, &qword_22C2AE298);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911580, &qword_22C2AE298);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911580, &qword_22C2AE298);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFEA994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911588, &qword_22C2AE2A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v18, &qword_27D911588, &qword_22C2AE2A0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F550, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911588, &qword_22C2AE2A0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911588, &qword_22C2AE2A0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911588, &qword_22C2AE2A0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911588, &qword_22C2AE2A0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFEAE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911590, &qword_22C2AE2A8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v18, &qword_27D911590, &qword_22C2AE2A8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F568, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911590, &qword_22C2AE2A8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911590, &qword_22C2AE2A8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911590, &qword_22C2AE2A8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911590, &qword_22C2AE2A8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFEB384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911598, &qword_22C2AE2B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v18, &qword_27D911598, &qword_22C2AE2B0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F580, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911598, &qword_22C2AE2B0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911598, &qword_22C2AE2B0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911598, &qword_22C2AE2B0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911598, &qword_22C2AE2B0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFEB87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9115A0, &qword_22C2AE2B8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22BE33928(v18, &qword_27D9115A0, &qword_22C2AE2B8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F598, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9115A0, &qword_22C2AE2B8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9115A0, &qword_22C2AE2B8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9115A0, &qword_22C2AE2B8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9115A0, &qword_22C2AE2B8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFEBD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9115A8, &qword_22C2AE2C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22BE33928(v18, &qword_27D9115A8, &qword_22C2AE2C0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F5B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9115A8, &qword_22C2AE2C0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9115A8, &qword_22C2AE2C0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9115A8, &qword_22C2AE2C0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9115A8, &qword_22C2AE2C0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoRequestPrescribedPlan.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  sub_22BE2B890(v5);
  if (v6)
  {
    goto LABEL_12;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = sub_22BE17D78();
      sub_22BFEC5AC(v27, v28, v29, v30);
      break;
    case 2u:
      v15 = sub_22BE17D78();
      sub_22BFEC7B4(v15, v16, v17, v18);
      break;
    case 3u:
      v19 = sub_22BE17D78();
      sub_22BFEC9BC(v19, v20, v21, v22);
      break;
    case 4u:
      v11 = sub_22BE17D78();
      sub_22BFECBC4(v11, v12, v13, v14);
      break;
    case 5u:
      v31 = sub_22BE17D78();
      sub_22BFECDCC(v31, v32, v33, v34);
      break;
    case 6u:
      v35 = sub_22BE17D78();
      sub_22BFECFD4(v35, v36, v37, v38);
      break;
    case 7u:
      v23 = sub_22BE17D78();
      sub_22BFED1DC(v23, v24, v25, v26);
      break;
    default:
      v7 = sub_22BE17D78();
      sub_22BFEC3A8(v7, v8, v9, v10);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_12:
    type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
    sub_22BE235A8();
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22BFEC3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F508, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFEC5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F520, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFEC7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F538, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFEC9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F550, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFECBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F568, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFECDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F580, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFECFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F598, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFED1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F5B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFED674(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110B8, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFED6F4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F4F0, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFED764(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F4F0, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);

  return sub_22C270774();
}

uint64_t sub_22BFED7FC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CE58);
  sub_22BE199F4(v0, qword_27D90CE58);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isLowConfidenceKnowledge";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "shouldOpenResultIfApplicable";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFEDAF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEDB78(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F508, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEDBE8(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F508, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return sub_22C270774();
}

uint64_t sub_22BFEDD04(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_22BE19FC4(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_22BE3636C();
  sub_22BE18E5C();
  v9 = sub_22BE2C988(v7, v8, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v9) & 1;
}

uint64_t sub_22BFEDE18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110A8, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEDE98(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F520, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEDF08(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F520, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return sub_22C270774();
}

uint64_t sub_22BFEDF94()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CE88);
  sub_22BE199F4(v0, qword_27D90CE88);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "partner";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFEE2BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110A0, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEE33C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F538, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEE3AC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F538, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);

  return sub_22C270774();
}

uint64_t sub_22BFEE444()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CEA0);
  sub_22BE199F4(v0, qword_27D90CEA0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "partner";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "directInvocationClient";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 2:
        sub_22BE374D4();
        sub_22C2705C4();
        break;
      case 3:
      case 4:
        sub_22BE2037C();
        sub_22C270694();
        break;
      default:
        continue;
    }
  }
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    sub_22BE2BC90();
    if (!v3 || (sub_22BE1BAB8(), result = sub_22C2707C4(), !v0))
    {
      v4 = sub_22BE17D60();
      result = sub_22BE515C8(v4);
      if (!v0)
      {
        v5 = sub_22BE17D60();
        sub_22BFEE7E4(v5);
        type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
        return sub_22BE1AC30();
      }
    }
  }

  return result;
}

uint64_t sub_22BFEE7E4(uint64_t result)
{
  if (*(result + 48))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t static TranscriptProtoRequestPrescribedPlanConvertTool.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE36248();
  if (!v5)
  {
    return 0;
  }

  sub_22C0B1C78();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }

    sub_22BE3C714();
    v11 = v5 && v9 == v10;
    if (!v11 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v12 = *(v2 + 48);
  v13 = *(v1 + 48);
  if (v12)
  {
    if (v13)
    {
      v14 = *(v2 + 40) == *(v1 + 40) && v12 == v13;
      if (v14 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    return 0;
  }

  if (v13)
  {
    return 0;
  }

LABEL_26:
  type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  sub_22C2704B4();
  sub_22BE18E5C();
  v17 = sub_22BE2C988(v15, v16, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v17) & 1;
}

uint64_t sub_22BFEE9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911098, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEEA38(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F550, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEEAA8(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F550, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return sub_22C270774();
}

uint64_t sub_22BFEEB40()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CEB8);
  sub_22BE199F4(v0, qword_27D90CEB8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "partner";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFEEDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_22BE19FC4(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE36248();
  if (!v6)
  {
    return 0;
  }

  sub_22C0B1C78();
  if (v9)
  {
    if (v8)
    {
      sub_22BE3C714();
      v12 = v6 && v10 == v11;
      if (v12 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_17:
  a3(0);
  sub_22C0B1BAC();
  sub_22BE18E5C();
  v15 = sub_22BE2C988(v13, v14, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v15) & 1;
}

uint64_t sub_22BFEEF0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911090, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEEF8C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F568, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEEFFC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F568, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return sub_22C270774();
}

uint64_t sub_22BFEF088()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CED0);
  sub_22BE199F4(v0, qword_27D90CED0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "partner";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFEF2B4()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 2:
        sub_22BE374D4();
        sub_22C2705C4();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }

  return result;
}

void sub_22BFEF374()
{
  sub_22BE2BB34();
  sub_22BE44820();
  sub_22BE1A730();
  if (!v3 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    sub_22BE2BC90();
    if (!v4 || (sub_22BE1BAB8(), sub_22C2707C4(), !v0))
    {
      v5 = sub_22BE17D60();
      v2(v5);
      if (!v0)
      {
        v1(0);
        v6 = sub_22BE375E4();
        sub_22BE363D4(v6, v7);
      }
    }
  }

  sub_22BEE93D4();
}

uint64_t sub_22BFEF4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911088, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEF530(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F580, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEF5A0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F580, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return sub_22C270774();
}

uint64_t sub_22BFEF62C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CEE8);
  sub_22BE199F4(v0, qword_27D90CEE8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "resultStatementId";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "elementAtIndex";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoRequestPrescribedPlanOpenTool.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = sub_22BE18E2C();
      sub_22BFEF8B8(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22BFEF970(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return sub_22C270814();
  }

  return result;
}

uint64_t sub_22BFEFC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911080, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEFCFC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F598, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEFD6C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F598, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return sub_22C270774();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22BE239F4();
      sub_22C270644();
    }
  }

  return result;
}

uint64_t static TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.== infix(_:_:)()
{
  sub_22BE18378();
  if (*(v1 + 8))
  {
    if (!*(v0 + 8))
    {
      return 0;
    }
  }

  else
  {
    sub_22BEC02E4();
    if (v3)
    {
      return 0;
    }
  }

  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  sub_22BE3636C();
  sub_22BE18E5C();
  v6 = sub_22BE2C988(v4, v5, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v6) & 1;
}

uint64_t sub_22BFF0000(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911078, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF0080(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F5B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF00F0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F5B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return sub_22C270774();
}

uint64_t sub_22BFF0188()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CF18);
  sub_22BE199F4(v0, qword_27D90CF18);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 10;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "bundleId";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "isConfirmed";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "parameterValues";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "planEventId";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "tool";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoAction.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        sub_22BE18E2C();
        sub_22C098EAC();
        break;
      case 6:
        sub_22BE239F4();
        sub_22C2705C4();
        break;
      case 7:
        v7 = sub_22BE18E2C();
        sub_22BFF0548(v7, v8, v9, v10);
        break;
      case 8:
        sub_22C0B18C0();
        sub_22BE18E2C();
        sub_22C097EC0();
        break;
      case 10:
        v3 = sub_22BE18E2C();
        sub_22BFF0640(v3, v4, v5, v6);
        break;
      case 11:
        v11 = sub_22BE18E2C();
        sub_22BFF06F4(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFF0548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C270464();
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  sub_22BE2C988(&qword_27D90E660, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);
  sub_22BE2C988(&qword_27D90E668, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);
  return sub_22C270564();
}

uint64_t sub_22BFF0640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoAction(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFF06F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoAction(0);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  return sub_22C2706F4();
}

uint64_t sub_22BFF0910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoAction(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFF0AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoAction(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E670, &unk_22C2CC890);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoAction.== infix(_:_:)()
{
  sub_22BE19460();
  v55 = v3;
  v4 = sub_22BE33690();
  v5 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v4);
  v6 = sub_22BE1B7B0(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE3FF7C(v7);
  v8 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE181D0(v10, v52);
  v54 = sub_22BE5CE4C(&qword_27D90E678, &qword_22C296F38);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v13 = sub_22BE1BC94(v12, v53);
  type metadata accessor for TranscriptProtoStatementID(v13);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v15 = sub_22BE1B328();
  v17 = sub_22BE5CE4C(v15, v16);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B01C();
  v19 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00) - 8;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BE1AED0();
  type metadata accessor for TranscriptProtoAction(v21);
  v22 = *(v19 + 56);
  sub_22C0B164C();
  sub_22BE22868();
  sub_22C0B164C();
  sub_22BE22868();
  sub_22BE1C14C(v2);
  if (v23)
  {
    sub_22BE1C14C(v2 + v22);
    if (v23)
    {
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_14;
    }

LABEL_9:
    v24 = &qword_27D909100;
    v25 = &unk_22C27FD00;
    v26 = v2;
LABEL_10:
    sub_22BE33928(v26, v24, v25);
    goto LABEL_11;
  }

  sub_22BE25C94();
  sub_22BE22868();
  sub_22BE1C14C(v2 + v22);
  if (v23)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v28 = sub_22BE23108();
  v30 = static TranscriptProtoStatementID.== infix(_:_:)(v28, v29);
  sub_22BE3C968();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  sub_22BE28DB4();
  if (v33)
  {
    if (!v31)
    {
      goto LABEL_11;
    }

    sub_22BE3A508(v32);
    v36 = v23 && v34 == v35;
    if (!v36 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v31)
  {
    goto LABEL_11;
  }

  if (*v1 != *v55)
  {
    goto LABEL_11;
  }

  sub_22BEA6DC8();
  if ((v37 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_22BE28DB4();
  if (v40)
  {
    if (!v38)
    {
      goto LABEL_11;
    }

    sub_22BE3A508(v39);
    v43 = v23 && v41 == v42;
    if (!v43 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v38)
  {
    goto LABEL_11;
  }

  v44 = *(v54 + 48);
  sub_22BE3CB6C();
  sub_22C0B1754();
  sub_22BE22868();
  sub_22C0B1754();
  sub_22BE22868();
  v45 = sub_22BE23E90();
  sub_22BE36144(v45, v46);
  if (v23)
  {
    sub_22BE18190(v0 + v44);
    if (v23)
    {
      sub_22BE33928(v0, &qword_27D90E670, &unk_22C2CC890);
LABEL_44:
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v50, v51, MEMORY[0x277D216D0]);
      v27 = sub_22C272FD4();
      goto LABEL_12;
    }

    goto LABEL_42;
  }

  sub_22BE22868();
  sub_22BE18190(v0 + v44);
  if (v47)
  {
    sub_22BE30F90();
    sub_22C0B08BC();
LABEL_42:
    v24 = &qword_27D90E678;
    v25 = &qword_22C296F38;
    v26 = v0;
    goto LABEL_10;
  }

  sub_22BE41FDC();
  sub_22C0B0868();
  v48 = sub_22BE36680();
  v49 = static TranscriptProtoGlobalToolIdentifier.== infix(_:_:)(v48);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E670, &unk_22C2CC890);
  if (v49)
  {
    goto LABEL_44;
  }

LABEL_11:
  v27 = 0;
LABEL_12:
  sub_22BE1C1DC(v27);
  sub_22BE1AABC();
}

uint64_t sub_22BFF11EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911070, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF126C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF12DC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);

  return sub_22C270774();
}

uint64_t sub_22BFF1368()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CF30);
  sub_22BE199F4(v0, qword_27D90CF30);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "promptSelection";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoActionParameterValue.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = sub_22BE18E2C();
      sub_22BFF1604(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22BFF1604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  type metadata accessor for TranscriptProtoPromptSelection(0);
  sub_22BE2C988(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);
  return sub_22C2706F4();
}

uint64_t sub_22BFF170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E698, &unk_22C2AE520);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E698, &unk_22C2AE520);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D9105B8, type metadata accessor for TranscriptProtoToolParameterValue, &protocol conformance descriptor for TranscriptProtoToolParameterValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFF18D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoPromptSelection(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E688, &qword_22C296F40);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoActionParameterValue.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE3CD04();
  v2 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v3 = sub_22BE272C0(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22BE38A28(v4);
  v5 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE29250(v7, v29);
  v8 = sub_22BE5CE4C(&qword_27D90E690, &byte_22C296F48);
  sub_22BE28784(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  type metadata accessor for TranscriptProtoToolParameterValue(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE294E0();
  v11 = sub_22BE18040();
  v13 = sub_22BE5CE4C(v11, v12);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B72C();
  v15 = sub_22BE5CE4C(&qword_27D90E6A0, &qword_22C296F50);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22C0B142C();
  sub_22C0B15FC();
  sub_22BE23B00(v1);
  if (v17)
  {
    sub_22BE22E64();
    if (v17)
    {
      sub_22BE33928(v1, &qword_27D90E698, &unk_22C2AE520);
      goto LABEL_11;
    }

LABEL_9:
    v18 = &qword_27D90E6A0;
    v19 = &qword_22C296F50;
    v20 = v1;
LABEL_20:
    sub_22BE33928(v20, v18, v19);
    goto LABEL_21;
  }

  sub_22BE3C968();
  sub_22BE22868();
  sub_22BE22E64();
  if (v17)
  {
    sub_22C0B1BC4();
    goto LABEL_9;
  }

  sub_22C0B0868();
  v21 = sub_22BE1A6BC();
  v22 = static TranscriptProtoToolParameterValue.== infix(_:_:)(v21);
  sub_22BE2565C();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90E698, &unk_22C2AE520);
  if ((v22 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  sub_22BE35EA0();
  sub_22BE4270C();
  sub_22BE3AEBC();
  v23 = sub_22BE2BA98();
  sub_22BE36144(v23, v24);
  if (v17)
  {
    sub_22BE18A84();
    if (v17)
    {
      sub_22BE33928(v0, &qword_27D90E688, &qword_22C296F40);
LABEL_24:
      sub_22C0B1CFC();
      sub_22BE18E5C();
      sub_22BE2C988(v27, v28, MEMORY[0x277D216D0]);
      v26 = sub_22C0B16D4();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22BE3CC50();
  sub_22BE18A84();
  if (v25)
  {
    sub_22C0B18A8();
    sub_22C0B08BC();
LABEL_19:
    v18 = &qword_27D90E690;
    v19 = &byte_22C296F48;
    v20 = v0;
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoPromptSelection.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E688, &qword_22C296F40);
  if (&qword_22C296F40)
  {
    goto LABEL_24;
  }

LABEL_21:
  v26 = 0;
LABEL_22:
  sub_22BE1C1DC(v26);
  sub_22BE1AABC();
}

uint64_t sub_22BFF1EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911068, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF1F64(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E660, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF1FD4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90E660, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);

  return sub_22C270774();
}

uint64_t sub_22BFF2060()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CF48);
  sub_22BE199F4(v0, qword_27D90CF48);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "cancelledActionStatementId";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoActionCancellation.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 5)
    {
      v3 = sub_22BE18E2C();
      sub_22BFF22F0(v3, v4, v5, v6);
    }

    else if (v1 == 4)
    {
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22BFF22F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionCancellation(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFF23F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFF25C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoActionCancellation(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFF2850(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911060, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF28D0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F5E8, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF2940(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F5E8, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);

  return sub_22C270774();
}

uint64_t sub_22BFF29CC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CF60);
  sub_22BE199F4(v0, qword_27D90CF60);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "confirmed";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "selectedInDisambiguation";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "denied";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoPromptSelection.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        goto LABEL_9;
      case 2:
        sub_22BE18E2C();
        sub_22BFFB580();
        break;
      case 1:
LABEL_9:
        sub_22BE18E2C();
        sub_22BFF2C74();
        break;
    }
  }
}

void sub_22BFF2C74()
{
  sub_22BE19130();
  v5 = v4;
  sub_22BE3C63C();
  v6 = sub_22BE5CE4C(&qword_27D9111D0, &byte_22C2ADF00);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v8);
  sub_22BE374E4();
  v9 = sub_22C270424();
  sub_22BE42650(v9);
  sub_22BE1B470();
  v12 = sub_22BE2C988(v10, v11, MEMORY[0x277D21558]);
  sub_22C0B15A8(v12);
  if (v0 || (sub_22BE3CF70(), v13 = sub_22C0B14AC(), sub_22C0B1FD8(v13, v14, v15), v16 = sub_22BE3C968(), sub_22BE33928(v16, v17, &byte_22C2ADF00), v3 == 1))
  {
    sub_22BE33928(v2, &qword_27D9111D0, &byte_22C2ADF00);
  }

  else
  {
    if ((*(v1 + 9) & 1) == 0)
    {
      sub_22BE18240();
      sub_22C270594();
    }

    sub_22BE33928(v2, &qword_27D9111D0, &byte_22C2ADF00);
    *v1 = v5;
    *(v1 + 8) = 1;
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void TranscriptProtoPromptSelection.traverse<A>(visitor:)()
{
  sub_22BE410C0();
  if (*(v0 + 9))
  {
    goto LABEL_8;
  }

  if (*(v0 + 8))
  {
    if (*v0)
    {
      sub_22BE17D78();
      sub_22BFFB77C();
    }

    else
    {
      sub_22BE17D78();
      sub_22BFFB694();
    }
  }

  else
  {
    v2 = sub_22BE17D78();
    sub_22BFFB8A0(v2, v3, v4, v5, 2);
  }

  if (!v1)
  {
LABEL_8:
    type metadata accessor for TranscriptProtoPromptSelection(0);
    sub_22BE235A8();
  }
}

uint64_t static TranscriptProtoPromptSelection.== infix(_:_:)()
{
  sub_22BE18378();
  if (*(v1 + 9))
  {
    if (*(v0 + 9))
    {
LABEL_3:
      type metadata accessor for TranscriptProtoPromptSelection(0);
      sub_22BE3636C();
      sub_22BE18E5C();
      v4 = sub_22BE2C988(v2, v3, MEMORY[0x277D216D0]);
      return sub_22BE2B85C(v4) & 1;
    }
  }

  else if ((*(v0 + 9) & 1) == 0)
  {
    sub_22C0B1DFC();
    if (v9)
    {
      if (v7)
      {
        if ((v8 & 1) != 0 && v6)
        {
          goto LABEL_3;
        }
      }

      else if ((v8 & 1) != 0 && !v6)
      {
        goto LABEL_3;
      }
    }

    else if ((v8 & 1) == 0 && v7 == v6)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_22BFF2FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911058, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF3044(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF30B4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);

  return sub_22C270774();
}

uint64_t sub_22BFF3140()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CF78);
  sub_22BE199F4(v0, qword_27D90CF78);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "parameterValues";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "systemStyle";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFF3370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C270464();
  type metadata accessor for TranscriptProtoParameterValue(0);
  sub_22BE2C988(&qword_27D90E6B8, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);
  sub_22BE2C988(&qword_27D90E6C0, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);
  return sub_22C270564();
}

uint64_t sub_22BFF3468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionConfirmation(0);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  sub_22BE2C988(&qword_27D90F630, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);
  return sub_22C2706F4();
}

uint64_t sub_22BFF3608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E6C8, &unk_22C2AE530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoActionConfirmation(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E6C8, &unk_22C2AE530);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F630, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoActionConfirmation.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(v1);
  sub_22BE26880();
  MEMORY[0x28223BE20](v2);
  sub_22BE38390();
  v3 = sub_22BE5CE4C(&qword_27D90E6C8, &unk_22C2AE530);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D90E6D0, &qword_22C296F58);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22BE1BC88();
  sub_22BEA4B88();
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  sub_22BE3E440(v7);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v8)
  {
    sub_22BE19538();
    if (v8)
    {
      sub_22BE33928(v0, &qword_27D90E6C8, &unk_22C2AE530);
LABEL_14:
      sub_22C0B16F4();
      sub_22BE18E5C();
      v14 = sub_22BE2C988(v12, v13, MEMORY[0x277D216D0]);
      v9 = sub_22BE2B85C(v14);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v8)
  {
    sub_22C0B1AA4();
LABEL_10:
    sub_22BE33928(v0, &qword_27D90E6D0, &qword_22C296F58);
    goto LABEL_11;
  }

  sub_22C0B0868();
  v10 = sub_22BE38970();
  v11 = static TranscriptProtoActionConfirmationSystemStyle.== infix(_:_:)(v10);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E6C8, &unk_22C2AE530);
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_11:
  v9 = 0;
LABEL_12:
  sub_22BE1C1DC(v9);
  sub_22BE1AABC();
}

uint64_t sub_22BFF3A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911050, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF3B18(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F618, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF3B88(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F618, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);

  return sub_22C270774();
}

uint64_t sub_22BFF3C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E6E0, &qword_22C2B5BF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911568, &qword_22C2AE280);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v24 = v11;
  v19 = sub_22BE1AEA8(v10, 1, v11);
  if (v19 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E6E0, &qword_22C2B5BF0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE33928(v18, &qword_27D911568, &qword_22C2AE280);
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE19DC4(v18, 0, 1, v5);
  }

  sub_22BE2C988(&qword_27D90F648, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  v20 = v27;
  sub_22C2706F4();
  if (v20)
  {
    v21 = v18;
    return sub_22BE33928(v21, &qword_27D911568, &qword_22C2AE280);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911568, &qword_22C2AE280);
    v21 = v15;
    return sub_22BE33928(v21, &qword_27D911568, &qword_22C2AE280);
  }

  sub_22C0B0868();
  if (v19 != 1)
  {
    sub_22C270594();
  }

  sub_22BE33928(v18, &qword_27D911568, &qword_22C2AE280);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E6E0, &qword_22C2B5BF0);
  sub_22C0B0868();
  return sub_22BE19DC4(v23, 0, 1, v24);
}

uint64_t sub_22BFF4164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E6E0, &qword_22C2B5BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E6E0, &qword_22C2B5BF0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F648, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFF45C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911048, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF4644(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F630, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF46B4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F630, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);

  return sub_22C270774();
}

uint64_t sub_22BFF474C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CFA8);
  sub_22BE199F4(v0, qword_27D90CFA8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "source";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isExplicitRequest";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22BE374D4();
        sub_22C2705C4();
        break;
      case 2:
        v3 = sub_22BE18E2C();
        sub_22BFF49F4(v3, v4, v5, v6);
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }

  return result;
}

uint64_t sub_22BFF49F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_22BE2C988(&qword_27D90F660, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  return sub_22C2706F4();
}

uint64_t sub_22BFF4AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E6F8, &qword_22C2B5BE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E6F8, &qword_22C2B5BE0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F660, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(v1);
  sub_22BE26880();
  MEMORY[0x28223BE20](v2);
  sub_22BE38390();
  v3 = sub_22BE5CE4C(&qword_27D90E6F8, &qword_22C2B5BE0);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D90E700, &qword_22C296F68);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE20394();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_17;
  }

  v9 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  sub_22C0B1694(v9);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (!v8)
  {
    sub_22BE194F8();
    sub_22BE22868();
    sub_22BE19538();
    if (!v10)
    {
      sub_22C0B0868();
      sub_22BE38970();
      v11 = static TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.== infix(_:_:)();
      sub_22BE324FC();
      sub_22C0B08BC();
      sub_22BE1AB1C();
      sub_22C0B08BC();
      sub_22BE33928(v0, &qword_27D90E6F8, &qword_22C2B5BE0);
      if ((v11 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    sub_22C0B1AA4();
LABEL_14:
    sub_22BE33928(v0, &qword_27D90E700, &qword_22C296F68);
    goto LABEL_17;
  }

  sub_22BE19538();
  if (!v8)
  {
    goto LABEL_14;
  }

  sub_22BE33928(v0, &qword_27D90E6F8, &qword_22C2B5BE0);
LABEL_16:
  sub_22BE36248();
  if (v8)
  {
    sub_22C0B1A60();
    sub_22BE18E5C();
    v15 = sub_22BE2C988(v13, v14, MEMORY[0x277D216D0]);
    v12 = sub_22BE2B85C(v15);
    goto LABEL_18;
  }

LABEL_17:
  v12 = 0;
LABEL_18:
  sub_22BE1C1DC(v12);
  sub_22BE1AABC();
}

uint64_t sub_22BFF4F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911040, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF500C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F648, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF507C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F648, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return sub_22C270774();
}

uint64_t sub_22BFF5114()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CFC0);
  sub_22BE199F4(v0, qword_27D90CFC0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mediaQA";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "knowledgeFallback";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "composeViaSiri";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "textAssistant";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = sub_22BE18E2C();
        v10 = 0;
        goto LABEL_9;
      case 2:
        v3 = sub_22BE18E2C();
        v10 = 1;
        goto LABEL_9;
      case 3:
        v3 = sub_22BE18E2C();
        v10 = 2;
        goto LABEL_9;
      case 4:
        v3 = sub_22BE18E2C();
        v10 = 3;
LABEL_9:
        sub_22BFF5414(v3, v4, v5, v6, v10, v7, v8, v9, v11, *v12, v12[4]);
        break;
      default:
        continue;
    }
  }
}

void sub_22BFF5414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  sub_22BE19130();
  sub_22BE3C63C();
  v14 = sub_22BE5CE4C(&qword_27D9111D0, &byte_22C2ADF00);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v16);
  sub_22BE374E4();
  v17 = sub_22C270424();
  sub_22BE42650(v17);
  sub_22BE1B470();
  v20 = sub_22BE2C988(v18, v19, MEMORY[0x277D21558]);
  sub_22C0B15A8(v20);
  if (v11 || (sub_22C0B1E30(), v21 = &qword_27D9111D0, sub_22BE3CF70(), v22 = sub_22C0B14AC(), sub_22C0B1FD8(v22, v23, v24), v25 = sub_22BE3C968(), sub_22BE33928(v25, v26, &byte_22C2ADF00), v13 == 1))
  {
    sub_22BE33928(v12, &qword_27D9111D0, &byte_22C2ADF00);
  }

  else
  {
    sub_22C0B1E10();
    if (v27 == 4)
    {
      LOBYTE(v21) = a11;
    }

    else
    {
      sub_22BE18240();
      sub_22C270594();
      sub_22C0B1E48();
    }

    sub_22BE33928(v12, &qword_27D9111D0, &byte_22C2ADF00);
    LOBYTE(byte_22C2ADF00) = v21;
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.traverse<A>(visitor:)()
{
  switch(*v0)
  {
    case 1:
      sub_22BE17D78();
      sub_22C00EAE4();
      goto LABEL_6;
    case 2:
      sub_22BE17D78();
      sub_22C00EBC4();
      goto LABEL_6;
    case 3:
      sub_22BE17D78();
      sub_22C00FC78();
      goto LABEL_6;
    case 4:
      goto LABEL_7;
    default:
      sub_22BE17D78();
      sub_22C00EA0C();
LABEL_6:
      if (!v1)
      {
LABEL_7:
        type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
        sub_22BE235A8();
      }

      return;
  }
}

uint64_t static TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.== infix(_:_:)()
{
  sub_22BE18378();
  sub_22C0B1DF0();
  if (v1 == 4)
  {
    if (v0 != 4)
    {
      return 0;
    }
  }

  else if (v1 != v0)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_22BE3636C();
  sub_22BE18E5C();
  v5 = sub_22BE2C988(v3, v4, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v5) & 1;
}

uint64_t sub_22BFF5744(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911038, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF57C4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F660, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF5834(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F660, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return sub_22C270774();
}

uint64_t sub_22BFF58C0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CFD8);
  sub_22BE199F4(v0, qword_27D90CFD8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "promptSelection";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoParameterValue.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = sub_22BE18E2C();
      sub_22BFF5B4C(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      sub_22C0B13FC();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22BFF5B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterValue(0);
  type metadata accessor for TranscriptProtoPromptSelection(0);
  sub_22BE2C988(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);
  return sub_22C2706F4();
}

void TranscriptProtoParameterValue.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  sub_22BE192B4();
  sub_22C016E74();
  if (!v0)
  {
    v1 = sub_22BE17D78();
    sub_22BFF5C68(v1, v2, v3, v4);
    type metadata accessor for TranscriptProtoParameterValue(0);
    sub_22BE19514();
  }
}

uint64_t sub_22BFF5C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoPromptSelection(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoParameterValue(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E688, &qword_22C296F40);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoParameterValue.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE48298();
  v4 = type metadata accessor for TranscriptProtoPromptSelection(v3);
  v5 = sub_22BE28784(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BEE94C8(v6);
  v7 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE3C048(v9, v43);
  v10 = sub_22BE5CE4C(&qword_27D90E690, &byte_22C296F48);
  sub_22BE1B7B0(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE35C94(v12, v44);
  sub_22C272594();
  sub_22BE35868();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v16 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1B72C();
  v18 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE2C64C();
  v21 = *(v20 + 56);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE181B0(v2);
  if (v22)
  {
    sub_22BE181B0(v2 + v21);
    if (v22)
    {
      sub_22BE33928(v2, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_11;
    }

LABEL_9:
    v25 = &qword_27D909130;
    v26 = &unk_22C27FD30;
    v27 = v2;
LABEL_20:
    sub_22BE33928(v27, v25, v26);
    goto LABEL_21;
  }

  sub_22BE1B074();
  sub_22BE22868();
  sub_22BE181B0(v2 + v21);
  if (v22)
  {
    v23 = sub_22BE19454();
    v24(v23);
    goto LABEL_9;
  }

  sub_22BE47DF4();
  v28(v1, v2 + v21, v0);
  sub_22BE192C8();
  sub_22BE2C988(v29, v30, MEMORY[0x277D727F0]);
  v31 = sub_22C272FD4();
  v32 = *(v14 + 8);
  v33 = sub_22BE25EFC();
  v32(v33);
  v34 = sub_22BE19454();
  v32(v34);
  sub_22BE33928(v2, &qword_27D909128, &qword_22C294AA0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  type metadata accessor for TranscriptProtoParameterValue(0);
  v35 = *(v45 + 48);
  sub_22BFB1AC4();
  sub_22BFB1AC4();
  v36 = sub_22BFB1A7C();
  sub_22BE3F458(v36, v37);
  if (v22)
  {
    sub_22BE181B0(v46 + v35);
    if (v22)
    {
      sub_22BE33928(v46, &qword_27D90E688, &qword_22C296F40);
LABEL_24:
      sub_22BE27098();
      sub_22BE18E5C();
      sub_22BE2C988(v41, v42, MEMORY[0x277D216D0]);
      sub_22BE3A008();
      sub_22BE39F74();
      v39 = sub_22C272FD4();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22BE22868();
  sub_22BE181B0(v46 + v35);
  if (v38)
  {
    sub_22C0B18A8();
    sub_22C0B08BC();
LABEL_19:
    v25 = &qword_27D90E690;
    v26 = &byte_22C296F48;
    v27 = v46;
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE392D4();
  v40 = static TranscriptProtoPromptSelection.== infix(_:_:)();
  sub_22BE3C5E4();
  sub_22C0B08BC();
  sub_22BE2565C();
  sub_22C0B08BC();
  sub_22BE33928(v46, &qword_27D90E688, &qword_22C296F40);
  if (v40)
  {
    goto LABEL_24;
  }

LABEL_21:
  v39 = 0;
LABEL_22:
  sub_22BE1C1DC(v39);
  sub_22BE1AABC();
}

uint64_t sub_22BFF6364(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911030, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF63E4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E6B8, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF6454(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90E6B8, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);

  return sub_22C270774();
}

uint64_t sub_22BFF64E0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CFF0);
  sub_22BE199F4(v0, qword_27D90CFF0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assistantSchemaKind";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tools";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoToolDisambiguation.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v1 = sub_22BE3B0CC();
  sub_22BE4E190(v1);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v2)
    {
      sub_22C272674();
      sub_22BE39220();
      sub_22BE2C988(v3, v4, MEMORY[0x277D72890]);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    type metadata accessor for TranscriptProtoToolDisambiguation(0);
    sub_22BE25FB0();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFF689C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911028, type metadata accessor for TranscriptProtoToolDisambiguation, &protocol conformance descriptor for TranscriptProtoToolDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF691C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F688, type metadata accessor for TranscriptProtoToolDisambiguation, &protocol conformance descriptor for TranscriptProtoToolDisambiguation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF698C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F688, type metadata accessor for TranscriptProtoToolDisambiguation, &protocol conformance descriptor for TranscriptProtoToolDisambiguation);

  return sub_22C270774();
}

uint64_t sub_22BFF6A18()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_281072E98);
  sub_22BE199F4(v0, qword_281072E98);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "responseText";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "statementOutcome";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoExternalAgentOutcome.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        v7 = sub_22BE18E2C();
        sub_22BFF6D50(v7, v8, v9, v10);
        break;
      case 3:
        v3 = sub_22BE18E2C();
        sub_22BFF6C9C(v3, v4, v5, v6);
        break;
      case 2:
        sub_22BE239F4();
        sub_22C270664();
        break;
    }
  }

  return result;
}

uint64_t sub_22BFF6C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFF6D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE2C988(&qword_2810744D0, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
  return sub_22C2706F4();
}

void static TranscriptProtoExternalAgentOutcome.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = v4;
  v7 = v6;
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE18DFC();
  v9 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE35C94(v11, v33);
  sub_22BE5CE4C(&qword_27D90CA70, &qword_22C2968E8);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E64();
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v14 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE28738();
  v16 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE2C64C();
  if ((sub_22BE9693C(*v7, *v5) & 1) == 0)
  {
    goto LABEL_22;
  }

  type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v18 = *(v16 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22C0B1C48();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE3CAA4(v3);
  if (v19)
  {
    sub_22BE3CAA4(v3 + v18);
    if (v19)
    {
      sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_12;
    }

LABEL_10:
    v20 = &qword_27D909100;
    v21 = &unk_22C27FD00;
    v22 = v3;
LABEL_21:
    sub_22BE33928(v22, v20, v21);
    goto LABEL_22;
  }

  sub_22C0B1E68();
  sub_22BE22868();
  sub_22BE3CAA4(v3 + v18);
  if (v19)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_10;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v23 = static TranscriptProtoStatementID.== infix(_:_:)(v0, v2);
  sub_22BE3C968();
  sub_22C0B08BC();
  sub_22BE1B5EC();
  sub_22C0B08BC();
  sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  sub_22BE27B84();
  sub_22BE22868();
  sub_22C0B1C48();
  sub_22BE27B84();
  sub_22BE22868();
  v24 = sub_22BE2BA98();
  sub_22BE36144(v24, v25);
  if (v19)
  {
    sub_22BE18A84();
    if (v19)
    {
      sub_22BE33928(v1, &qword_27D90CA68, &unk_22C296C50);
LABEL_25:
      sub_22C2704B4();
      sub_22BE18E5C();
      v32 = sub_22BE2C988(v30, v31, MEMORY[0x277D216D0]);
      v27 = sub_22BE406DC(v32);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  sub_22BE22868();
  sub_22BE18A84();
  if (v26)
  {
    sub_22BE38A40();
    sub_22C0B08BC();
LABEL_20:
    v20 = &qword_27D90CA70;
    v21 = &qword_22C2968E8;
    v22 = v1;
    goto LABEL_21;
  }

  sub_22C0B0868();
  v28 = sub_22BE200E0();
  static TranscriptProtoStatementOutcome.== infix(_:_:)(v28, v29);
  sub_22BE39304();
  sub_22BE39EAC();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90CA68, &unk_22C296C50);
  if (&unk_22C296C50)
  {
    goto LABEL_25;
  }

LABEL_22:
  v27 = 0;
LABEL_23:
  sub_22BE1C1DC(v27);
  sub_22BE1AABC();
}

uint64_t sub_22BFF72B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911020, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF7330(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_281072E88, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF73A0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_281072E88, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);

  return sub_22C270774();
}

uint64_t sub_22BFF742C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D008);
  sub_22BE199F4(v0, qword_27D90D008);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "outcome";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoStatementResultPayload.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = sub_22BE18E2C();
      sub_22BFF76B8(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      sub_22C0B1860();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22BFF76B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22BE2C988(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);
  return sub_22C2706F4();
}

uint64_t sub_22BFF77C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90CA58, &unk_22C2AE550);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoResponseManifest(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90CA58, &unk_22C2AE550);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoStatementResultPayload.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE3CD04();
  v2 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v3 = sub_22BE272C0(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22BE38A28(v4);
  v5 = sub_22BE5CE4C(&qword_27D90CA58, &unk_22C2AE550);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE29250(v7, v30);
  v8 = sub_22BE5CE4C(&qword_27D90CA60, &qword_22C2968E0);
  sub_22BE28784(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE294E0();
  v11 = sub_22BE18040();
  v13 = sub_22BE5CE4C(v11, v12);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B72C();
  v15 = sub_22BE5CE4C(&qword_27D90CA70, &qword_22C2968E8);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22C0B142C();
  sub_22C0B15FC();
  sub_22BE23B00(v1);
  if (v17)
  {
    sub_22BE22E64();
    if (v17)
    {
      sub_22BE33928(v1, &qword_27D90CA68, &unk_22C296C50);
      goto LABEL_11;
    }

LABEL_9:
    v18 = &qword_27D90CA70;
    v19 = &qword_22C2968E8;
    v20 = v1;
LABEL_20:
    sub_22BE33928(v20, v18, v19);
    goto LABEL_21;
  }

  sub_22BE3C968();
  sub_22BE22868();
  sub_22BE22E64();
  if (v17)
  {
    sub_22BE38A40();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B1878();
  sub_22C0B0868();
  v21 = sub_22BE1A6BC();
  v23 = static TranscriptProtoStatementOutcome.== infix(_:_:)(v21, v22);
  sub_22BE2565C();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90CA68, &unk_22C296C50);
  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_22BE35EA0();
  sub_22BE4270C();
  sub_22BE3AEBC();
  v24 = sub_22BE2BA98();
  sub_22BE36144(v24, v25);
  if (v17)
  {
    sub_22BE18A84();
    if (v17)
    {
      sub_22BE33928(v0, &qword_27D90CA58, &unk_22C2AE550);
LABEL_24:
      sub_22C0B1CFC();
      sub_22BE18E5C();
      sub_22BE2C988(v28, v29, MEMORY[0x277D216D0]);
      v27 = sub_22C0B16D4();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22BE3CC50();
  sub_22BE18A84();
  if (v26)
  {
    sub_22C0B1AA4();
LABEL_19:
    v18 = &qword_27D90CA60;
    v19 = &qword_22C2968E0;
    v20 = v0;
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoResponseManifest.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90CA58, &unk_22C2AE550);
  if (&unk_22C2AE550)
  {
    goto LABEL_24;
  }

LABEL_21:
  v27 = 0;
LABEL_22:
  sub_22BE1C1DC(v27);
  sub_22BE1AABC();
}

uint64_t sub_22BFF7DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911018, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF7E40(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F6A8, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF7EB0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F6A8, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);

  return sub_22C270774();
}

uint64_t sub_22BFF7F3C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D020);
  sub_22BE199F4(v0, qword_27D90D020);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionEventId";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "payload";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "resultStatementId";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "originProgramStatementId";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "originTaskStatementId";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "tool";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoStatementResult.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C270694();
        break;
      case 3:
        v15 = sub_22BE18E2C();
        sub_22BFF82E4(v15, v16, v17, v18);
        break;
      case 4:
        v7 = sub_22BE18E2C();
        sub_22BFF8398(v7, v8, v9, v10);
        break;
      case 5:
        v11 = sub_22BE18E2C();
        sub_22BFF844C(v11, v12, v13, v14);
        break;
      case 6:
        v3 = sub_22BE18E2C();
        sub_22BFF8500(v3, v4, v5, v6);
        break;
      case 7:
        v19 = sub_22BE18E2C();
        sub_22BFF85B4(v19, v20, v21, v22);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFF82E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_22BE2C988(&qword_27D90F6A8, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);
  return sub_22C2706F4();
}

uint64_t sub_22BFF8398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFF844C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFF8500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFF85B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoStatementResult.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  v1 = sub_22BE192B4();
  result = sub_22BE4E220(v1);
  if (!v0)
  {
    v3 = sub_22BE17D78();
    sub_22BFF8710(v3, v4, v5, v6);
    v7 = sub_22BE17D78();
    sub_22BFF88E4(v7, v8, v9, v10);
    v11 = sub_22BE17D78();
    sub_22BFF8AB8(v11, v12, v13, v14);
    v15 = sub_22BE17D78();
    sub_22BFF8C8C(v15, v16, v17, v18);
    v19 = sub_22BE17D78();
    sub_22BFF8E60(v19, v20, v21, v22);
    type metadata accessor for TranscriptProtoStatementResult(0);
    return sub_22BE19514();
  }

  return result;
}

uint64_t sub_22BFF8710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E730, &qword_22C2B5D20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoStatementResult(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E730, &qword_22C2B5D20);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F6A8, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFF88E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoStatementResult(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFF8AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoStatementResult(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFF8C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoStatementResult(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFF8E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoStatementResult(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E670, &unk_22C2CC890);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoStatementResult.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE48298();
  v70 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v9 = v8 - v7;
  v10 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE33FF0(v12, v68[0]);
  v69 = sub_22BE5CE4C(&qword_27D90E678, &qword_22C296F38);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v71 = v14;
  v15 = sub_22BE183BC();
  v77 = type metadata accessor for TranscriptProtoStatementID(v15);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  sub_22BE3668C(v17);
  v18 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v19 = sub_22BE19448(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE17B98();
  v72 = v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  v74 = v68 - v22;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v23);
  v78 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000();
  MEMORY[0x28223BE20](v24);
  sub_22BE17B98();
  v73 = v25;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22BE389A0();
  MEMORY[0x28223BE20](v27);
  sub_22BE324EC();
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_22BE28F58();
  MEMORY[0x28223BE20](v28);
  sub_22BE179EC();
  sub_22BE336DC();
  v29 = sub_22BE5CE4C(&qword_27D90E730, &qword_22C2B5D20);
  sub_22BE19448(v29);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE28738();
  v31 = sub_22BE5CE4C(&qword_27D90E738, &qword_22C296F70);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE19668();
  v33 = v1[1];
  v34 = v4[1];
  if (v33)
  {
    if (!v34)
    {
      goto LABEL_47;
    }

    v35 = *v1 == *v4 && v33 == v34;
    if (!v35 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (v34)
  {
    goto LABEL_47;
  }

  v68[2] = v9;
  v36 = type metadata accessor for TranscriptProtoStatementResult(0);
  v76 = v4;
  v68[1] = v36;
  v37 = *(v31 + 48);
  v68[3] = v1;
  sub_22BE22868();
  sub_22C0B1C9C();
  sub_22BE22868();
  sub_22BE3E950(v0);
  if (!v35)
  {
    sub_22BE18040();
    sub_22BE22868();
    sub_22BE3E950(v0 + v37);
    if (!v38)
    {
      sub_22C0B0868();
      sub_22BE1B5EC();
      static TranscriptProtoStatementResultPayload.== infix(_:_:)();
      v43 = v42;
      sub_22C0B08BC();
      sub_22BE324FC();
      sub_22C0B08BC();
      sub_22BE33928(v0, &qword_27D90E730, &qword_22C2B5D20);
      if ((v43 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_21;
    }

    sub_22C0B08BC();
LABEL_18:
    v39 = &qword_27D90E738;
    v40 = &qword_22C296F70;
    goto LABEL_19;
  }

  sub_22BE3E950(v0 + v37);
  if (!v35)
  {
    goto LABEL_18;
  }

  sub_22BE33928(v0, &qword_27D90E730, &qword_22C2B5D20);
LABEL_21:
  v44 = *(v78 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22C0B1C9C();
  sub_22BE27B84();
  sub_22BE22868();
  v45 = sub_22BE3C688();
  if (sub_22BE1AEA8(v45, v46, v77) == 1)
  {
    sub_22BE3E950(v2 + v44);
    if (!v35)
    {
      goto LABEL_28;
    }

    sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  else
  {
    sub_22BE22868();
    sub_22BE3E950(v2 + v44);
    if (v35)
    {
      sub_22BE17DB0();
      sub_22C0B08BC();
LABEL_28:
      v39 = &qword_27D909100;
      v40 = &unk_22C27FD00;
      v41 = v2;
      goto LABEL_46;
    }

    sub_22BE18AA8();
    sub_22C0B0868();
    v47 = sub_22BE200E0();
    static TranscriptProtoStatementID.== infix(_:_:)(v47, v48);
    sub_22BE39304();
    sub_22BE39EAC();
    sub_22C0B08BC();
    sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
    if ((&unk_22C2AE4A0 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v49 = *(v78 + 48);
  v50 = v75;
  sub_22BE27B84();
  sub_22BE22868();
  sub_22C0B1C9C();
  sub_22BE3CBC0();
  sub_22BE22868();
  sub_22BE3E950(v50);
  if (v35)
  {
    sub_22BE3E950(v50 + v49);
    if (!v35)
    {
      goto LABEL_45;
    }

    sub_22BE33928(v50, &qword_27D9090F8, &unk_22C2AE4A0);
    goto LABEL_37;
  }

  sub_22BE22868();
  sub_22BE3E950(v50 + v49);
  if (v51)
  {
    goto LABEL_44;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v52 = sub_22BE1C2A0();
  static TranscriptProtoStatementID.== infix(_:_:)(v52, v53);
  sub_22BE39304();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v50, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&unk_22C2AE4A0)
  {
LABEL_37:
    v54 = *(v78 + 48);
    v50 = v73;
    sub_22BE27B84();
    sub_22BE22868();
    sub_22C0B1C9C();
    sub_22BE3CBC0();
    sub_22BE22868();
    sub_22BE3E950(v50);
    if (v35)
    {
      sub_22BE3E950(v50 + v54);
      if (v35)
      {
        sub_22BE33928(v50, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_50:
        v59 = *(v69 + 48);
        v60 = v71;
        sub_22BE27B84();
        sub_22BE22868();
        sub_22C0B1C9C();
        sub_22BE3CBC0();
        v0 = v60;
        sub_22BE22868();
        v61 = sub_22BFB1A7C();
        sub_22BE36144(v61, v62);
        if (v35)
        {
          sub_22BE18190(v60 + v59);
          if (v35)
          {
            sub_22BE33928(v60, &qword_27D90E670, &unk_22C2CC890);
            goto LABEL_60;
          }
        }

        else
        {
          sub_22BE22868();
          sub_22BE18190(v60 + v59);
          if (!v63)
          {
            sub_22BE41FDC();
            sub_22C0B0868();
            v64 = sub_22BE18240();
            v65 = static TranscriptProtoGlobalToolIdentifier.== infix(_:_:)(v64);
            sub_22BE291B0();
            sub_22C0B08BC();
            sub_22BE39EAC();
            sub_22C0B08BC();
            sub_22BE33928(v60, &qword_27D90E670, &unk_22C2CC890);
            if ((v65 & 1) == 0)
            {
              goto LABEL_47;
            }

LABEL_60:
            sub_22C2704B4();
            sub_22BE18E5C();
            sub_22BE2C988(v66, v67, MEMORY[0x277D216D0]);
            sub_22BE3A008();
            v56 = sub_22C272FD4();
            goto LABEL_48;
          }

          sub_22BE30F90();
          sub_22C0B08BC();
        }

        v39 = &qword_27D90E678;
        v40 = &qword_22C296F38;
LABEL_19:
        v41 = v0;
LABEL_46:
        sub_22BE33928(v41, v39, v40);
        goto LABEL_47;
      }

LABEL_45:
      v39 = &qword_27D909100;
      v40 = &unk_22C27FD00;
      v41 = v50;
      goto LABEL_46;
    }

    sub_22BE22868();
    sub_22BE3E950(v50 + v54);
    if (!v55)
    {
      sub_22BE18AA8();
      sub_22C0B0868();
      v57 = sub_22BE1C2A0();
      static TranscriptProtoStatementID.== infix(_:_:)(v57, v58);
      sub_22BE39304();
      sub_22BE1AB74();
      sub_22C0B08BC();
      sub_22BE33928(v50, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((&unk_22C2AE4A0 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_50;
    }

LABEL_44:
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_45;
  }

LABEL_47:
  v56 = 0;
LABEL_48:
  sub_22BE1C1DC(v56);
  sub_22BE1AABC();
}

uint64_t sub_22BFF999C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911010, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF9A1C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF9A8C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);

  return sub_22C270774();
}

void TranscriptProtoResponseGenerationRequest.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoStatementResult(0), sub_22BE2C988(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFF9D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911008, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF9DA8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F6D0, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF9E18(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F6D0, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);

  return sub_22C270774();
}

uint64_t sub_22BFF9EA4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D050);
  sub_22BE199F4(v0, qword_27D90D050);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "source";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "promptStatus";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoCandidate.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22BE18E2C();
        sub_22BFFA1AC(v3, v4, v5, v6);
        break;
      case 2:
        v15 = sub_22BE18E2C();
        sub_22BFFA260(v15, v16, v17, v18);
        break;
      case 3:
        v7 = sub_22BE18E2C();
        sub_22BFFA2C8(v7, v8, v9, v10);
        break;
      case 4:
        v11 = sub_22BE18E2C();
        sub_22BFFA37C(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFFA1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoCandidate(0);
  sub_22C272594();
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  return sub_22C2706F4();
}

uint64_t sub_22BFFA2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoCandidate(0);
  type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  sub_22BE2C988(&qword_27D90F6F8, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);
  return sub_22C2706F4();
}

uint64_t sub_22BFFA37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoCandidate(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C0B1EE4();
  v5 = sub_22BE3B0CC();
  sub_22BFFA4DC(v5, v6, v7, v8);
  if (!v3)
  {
    if (*v4)
    {
      sub_22C09DAA0();
      sub_22BE23CE4();
      sub_22C2707D4();
    }

    v9 = sub_22BE17D60();
    sub_22BFFA6E8(v9, v10, v11, v12);
    v13 = sub_22BE17D60();
    sub_22BFFA8BC(v13, v14, v15, v16);
    type metadata accessor for TranscriptProtoCandidate(0);
    sub_22BE1AC30();
  }

  sub_22C0B1ED0();
}

uint64_t sub_22BFFA4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a4;
  v12[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_22C272594();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TranscriptProtoCandidate(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D909128, &qword_22C294AA0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22BFFA6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909208, &unk_22C2AE560);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoCandidate(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D909208, &unk_22C2AE560);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F6F8, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFFA8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoCandidate(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoCandidate.== infix(_:_:)()
{
  sub_22BE19460();
  v63 = v5;
  v6 = sub_22C0B1BA0();
  type metadata accessor for TranscriptProtoStatementID(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  sub_22BE3FF64(v8);
  v9 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE33FF0(v11, v57);
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v14 = sub_22BE4098C(v13, v58);
  v15 = type metadata accessor for TranscriptProtoCandidatePromptStatus(v14);
  v16 = sub_22BE1B7B0(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  sub_22C0B1ABC(v17);
  v18 = sub_22BE5CE4C(&qword_27D909208, &unk_22C2AE560);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE181D0(v20, v59);
  sub_22BE5CE4C(&qword_27D909210, &unk_22C27FE00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1BC94(v22, v60);
  sub_22C272594();
  sub_22BE35868();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22BE38390();
  v26 = sub_22BE3E79C();
  v28 = sub_22BE5CE4C(v26, v27);
  sub_22BE19448(v28);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A8B4();
  sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22C0B1A7C();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE25CD0();
  type metadata accessor for TranscriptProtoCandidate(0);
  v31 = *(v4 + 56);
  sub_22C0B1CCC();
  sub_22C0B1C54();
  sub_22C0B1CCC();
  sub_22BE181B0(v3);
  if (v32)
  {
    sub_22BE181B0(v3 + v31);
    if (v32)
    {
      sub_22BE33928(v3, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_11;
    }

LABEL_9:
    v35 = &qword_27D909130;
    v36 = &unk_22C27FD30;
    v37 = v3;
LABEL_32:
    sub_22BE33928(v37, v35, v36);
    goto LABEL_33;
  }

  sub_22BE22868();
  sub_22BE181B0(v3 + v31);
  if (v32)
  {
    v33 = sub_22BE2565C();
    v34(v33);
    goto LABEL_9;
  }

  sub_22BE47DF4();
  v38(v1, v3 + v31, v0);
  sub_22BE192C8();
  sub_22BE2C988(v39, v40, MEMORY[0x277D727F0]);
  sub_22BE2C254();
  v41 = sub_22C272FD4();
  v42 = *(v24 + 8);
  v43 = sub_22BE1804C();
  v42(v43);
  v44 = sub_22BE2565C();
  v42(v44);
  sub_22BE33928(v3, &qword_27D909128, &qword_22C294AA0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  if (*v2 != *v63)
  {
    goto LABEL_33;
  }

  v45 = v62;
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v46 = sub_22BE2BA98();
  sub_22BE36144(v46, v47);
  if (v32)
  {
    sub_22BE18A84();
    if (v32)
    {
      sub_22BE33928(v62, &qword_27D909208, &unk_22C2AE560);
      goto LABEL_22;
    }

LABEL_20:
    v35 = &qword_27D909210;
    v36 = &unk_22C27FE00;
LABEL_31:
    v37 = v45;
    goto LABEL_32;
  }

  sub_22BE22868();
  sub_22BE18A84();
  if (v48)
  {
    sub_22BE3FEA4();
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE232C8();
  static TranscriptProtoCandidatePromptStatus.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE200D4();
  sub_22C0B08BC();
  sub_22BE33928(v62, &qword_27D909208, &unk_22C2AE560);
  if ((&unk_22C2AE560 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_22:
  sub_22C0B1B6C();
  sub_22BE27B84();
  sub_22BE22868();
  v45 = v61;
  sub_22BE27B84();
  sub_22BE22868();
  v49 = sub_22BE26188();
  sub_22BE36144(v49, v50);
  if (v32)
  {
    sub_22BE18A84();
    if (v32)
    {
      sub_22BE33928(v61, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_36:
      sub_22C0B1D70();
      sub_22BE18E5C();
      sub_22BE2C988(v55, v56, MEMORY[0x277D216D0]);
      sub_22C0B1968();
      sub_22BE39F74();
      v52 = sub_22C272FD4();
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  sub_22BE22868();
  sub_22BE18A84();
  if (v51)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_30:
    v35 = &qword_27D909100;
    v36 = &unk_22C27FD00;
    goto LABEL_31;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v53 = sub_22BE232C8();
  static TranscriptProtoStatementID.== infix(_:_:)(v53, v54);
  sub_22BE39304();
  sub_22BE200D4();
  sub_22C0B08BC();
  sub_22BE33928(v61, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&unk_22C2AE4A0)
  {
    goto LABEL_36;
  }

LABEL_33:
  v52 = 0;
LABEL_34:
  sub_22BE1C1DC(v52);
  sub_22BE1AABC();
}

uint64_t sub_22BFFB15C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911000, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFFB1DC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EA50, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFFB24C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90EA50, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);

  return sub_22C270774();
}

uint64_t sub_22BFFB2D8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D068);
  sub_22BE199F4(v0, qword_27D90D068);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "notPrompted";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confirmed";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "picked";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoCandidatePromptStatus.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      sub_22BE18E2C();
      sub_22BFFB580();
    }

    else if (v1 == 2 || v1 == 1)
    {
      sub_22BE18E2C();
      sub_22BFF2C74();
    }
  }
}

void TranscriptProtoCandidatePromptStatus.traverse<A>(visitor:)()
{
  sub_22BE410C0();
  if (*(v0 + 9))
  {
    goto LABEL_8;
  }

  if (*(v0 + 8))
  {
    if (*v0)
    {
      sub_22BE17D78();
      sub_22BFFB77C();
    }

    else
    {
      sub_22BE17D78();
      sub_22BFFB694();
    }
  }

  else
  {
    v2 = sub_22BE17D78();
    sub_22BFFB8A0(v2, v3, v4, v5, 3);
  }

  if (!v1)
  {
LABEL_8:
    type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
    sub_22BE235A8();
  }
}

void sub_22BFFB694()
{
  sub_22BE2BB34();
  sub_22BE3ACB0();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE1955C();
  if ((*(v0 + 9) & 1) != 0 || (*(v0 + 8) & 1) == 0 || *v0)
  {
    __break(1u);
  }

  else
  {
    sub_22C270414();
    sub_22BE1B470();
    sub_22BE2C988(v2, v3, MEMORY[0x277D21558]);
    v4 = sub_22C0B1684();
    sub_22C0B16A4(v4, v5, v6, v7);
    v8 = sub_22C0B14DC();
    v9(v8);
    sub_22BE36324();
    sub_22BEE93D4();
  }
}

void sub_22BFFB77C()
{
  sub_22BE19130();
  sub_22BE37EB4();
  sub_22C270424();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE294E0();
  if ((*(v0 + 9) & 1) == 0 && (*(v0 + 8) & 1) != 0 && *v0)
  {
    sub_22C270414();
    sub_22BE1B470();
    sub_22BE2C988(v2, v3, MEMORY[0x277D21558]);
    sub_22BE2565C();
    sub_22C2707D4();
    v4 = sub_22BE33FCC();
    v5(v4);
    sub_22BE18478();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22BFFB8A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(result + 9) & 1) == 0 && (*(result + 8) & 1) == 0)
  {
    return sub_22C270814();
  }

  __break(1u);
  return result;
}

uint64_t static TranscriptProtoCandidatePromptStatus.== infix(_:_:)()
{
  sub_22BE18378();
  if (*(v1 + 9))
  {
    if (*(v0 + 9))
    {
LABEL_3:
      type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
      sub_22BE3636C();
      sub_22BE18E5C();
      v4 = sub_22BE2C988(v2, v3, MEMORY[0x277D216D0]);
      return sub_22BE2B85C(v4) & 1;
    }
  }

  else if ((*(v0 + 9) & 1) == 0)
  {
    sub_22C0B1DFC();
    if (v9)
    {
      if (v7)
      {
        if ((v8 & 1) != 0 && v6)
        {
          goto LABEL_3;
        }
      }

      else if ((v8 & 1) != 0 && !v6)
      {
        goto LABEL_3;
      }
    }

    else if ((v8 & 1) == 0 && v7 == v6)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_22BFFBA38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FF8, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFFBAB8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F6F8, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFFBB28(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F6F8, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);

  return sub_22C270774();
}

uint64_t sub_22BFFBBB4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D080);
  sub_22BE199F4(v0, qword_27D90D080);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "toolId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "parameters";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "clientQueryId";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "planEventId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "statementId";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "shimParameters";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoClientAction.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 2:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 3:
        v7 = sub_22BE18E2C();
        sub_22BFFBF50(v7, v8, v9, v10);
        break;
      case 4:
      case 5:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 7:
        v3 = sub_22BE18E2C();
        sub_22BFFC048(v3, v4, v5, v6);
        break;
      case 8:
        v11 = sub_22BE18E2C();
        sub_22BFFC0FC(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFFBF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C270464();
  sub_22C272594();
  v4 = MEMORY[0x277D727E0];
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  sub_22BE2C988(&qword_27D90E770, v4, MEMORY[0x277D727E8]);
  return sub_22C270564();
}

uint64_t sub_22BFFC048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoClientAction(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFFC0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C270464();
  type metadata accessor for TranscriptProtoShimParameters(0);
  sub_22BE2C988(&qword_27D90E778, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);
  sub_22BE2C988(&qword_27D90E780, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);
  return sub_22C270564();
}

void TranscriptProtoClientAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE358D4();
  v14 = v13;
  sub_22C0B149C();
  sub_22BE1B448();
  if (!v15 || (sub_22C0B1658(), sub_22C270844(), (v14 = v13) == 0))
  {
    sub_22C0B1AE4();
    if (!v16 || (sub_22C270464(), sub_22C0B19C8(), sub_22C272594(), v17 = MEMORY[0x277D727E0], sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]), sub_22BE46B68(), sub_22BE2C988(v18, v17, v19), v13 = v14, sub_22C270794(), !v14))
    {
      sub_22BE2BBFC();
      sub_22C0B1E3C();
      sub_22BFFC434(v20);
      if (!v13)
      {
        sub_22BE2BBFC();
        sub_22C0B1E3C();
        sub_22BFFC470(v21);
        sub_22BE2BBFC();
        sub_22C0B1E3C();
        sub_22BFFC4AC(v22, v23, v24, v25);
        if (*(*(v12 + 24) + 16))
        {
          sub_22C270464();
          v26 = sub_22C0B19C8();
          type metadata accessor for TranscriptProtoShimParameters(v26);
          sub_22BE2C988(&qword_27D90E778, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);
          sub_22BE2C988(&qword_27D90E780, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);
          sub_22BE37D10();
          sub_22C0B1658();
          sub_22C270794();
        }

        type metadata accessor for TranscriptProtoClientAction(0);
        sub_22BE33560();
        sub_22C270494();
      }
    }
  }

  sub_22C0B171C();
}

uint64_t sub_22BFFC434(uint64_t result)
{
  if (*(result + 40))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BFFC470(uint64_t result)
{
  if (*(result + 56))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BFFC4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoClientAction(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoClientAction.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoStatementID(v3);
  sub_22BE26880();
  MEMORY[0x28223BE20](v4);
  sub_22BE38390();
  v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE20394();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22C0B1C6C();
  sub_22BEA51FC();
  if ((v11 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22BE46B5C();
  if (v13)
  {
    if (!v12)
    {
      goto LABEL_37;
    }

    sub_22BFB1A40();
    v16 = v10 && v14 == v15;
    if (!v16 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v12)
  {
    goto LABEL_37;
  }

  v17 = *(v1 + 56);
  v18 = *(v0 + 56);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_25;
    }

LABEL_37:
    v27 = 0;
    goto LABEL_38;
  }

  if (!v18)
  {
    goto LABEL_37;
  }

  v19 = *(v1 + 48) == *(v0 + 48) && v17 == v18;
  if (!v19 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_25:
  type metadata accessor for TranscriptProtoClientAction(0);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE26A1C();
  if (v10)
  {
    sub_22BE19538();
    if (v10)
    {
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v20)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_33:
    sub_22BE33928(v2, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_37;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v21 = sub_22BE38970();
  static TranscriptProtoStatementID.== infix(_:_:)(v21, v22);
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((&qword_27D9090F8 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_35:
  sub_22BEA54D4();
  if ((v23 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22C2704B4();
  sub_22BE18E5C();
  v26 = sub_22BE2C988(v24, v25, MEMORY[0x277D216D0]);
  v27 = sub_22BE2B85C(v26);
LABEL_38:
  sub_22BE1C1DC(v27);
  sub_22BE1AABC();
}

uint64_t sub_22BFFC9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FF0, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFFCA60(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFFCAD0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);

  return sub_22C270774();
}

void TranscriptProtoShimParameters.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoShimParameters.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoShimParameter(0), sub_22BE2C988(&qword_27D90E790, type metadata accessor for TranscriptProtoShimParameter, &protocol conformance descriptor for TranscriptProtoShimParameter), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoShimParameters(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFFCDA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FE8, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFFCE24(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E778, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFFCE94(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90E778, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);

  return sub_22C270774();
}

uint64_t sub_22BFFCF20()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D0B0);
  sub_22BE199F4(v0, qword_27D90D0B0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "resolved";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "stringQuery";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "personQuery";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "photosCandidates";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void sub_22BFFD1EC()
{
  sub_22BE2BB34();
  sub_22BE26210();
  while (1)
  {
    sub_22BE180C8();
    v5 = sub_22C270584();
    if (v1 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 1:
        sub_22BE35838();
        sub_22BE35F2C();
        v4();
        break;
      case 2:
        sub_22BE35838();
        sub_22BE35F2C();
        v3();
        break;
      case 3:
        sub_22BE35838();
        sub_22BE35F2C();
        v2();
        break;
      case 4:
        sub_22BE35838();
        sub_22BE35F2C();
        v0();
        break;
      default:
        continue;
    }
  }

  sub_22BEE93D4();
}

uint64_t sub_22BFFD2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v38 = a3;
  v37 = a2;
  v5 = sub_22C272594();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v30 - v21;
  sub_22BE19DC4(&v30 - v21, 1, 1, v5);
  v30 = a1;
  sub_22BE22868();
  v31 = sub_22BE1AEA8(v12, 1, v13);
  v32 = v13;
  if (v31 == 1)
  {
    sub_22BE33928(v12, &qword_27D909218, &unk_22C2CC930);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D909128, &qword_22C294AA0);
      v23 = *(v34 + 32);
      v23(v9, v15, v5);
      v23(v22, v9, v5);
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  v24 = v35;
  sub_22C2706F4();
  if (v24)
  {
    v25 = v22;
    return sub_22BE33928(v25, &qword_27D909128, &qword_22C294AA0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v19, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D909128, &qword_22C294AA0);
    v25 = v19;
    return sub_22BE33928(v25, &qword_27D909128, &qword_22C294AA0);
  }

  v27 = *(v34 + 32);
  v27(v33, v19, v5);
  if (v31 != 1)
  {
    sub_22C270594();
  }

  v28 = v32;
  sub_22BE33928(v22, &qword_27D909128, &qword_22C294AA0);
  v29 = v30;
  sub_22BE33928(v30, &qword_27D909218, &unk_22C2CC930);
  v27(v29, v33, v5);
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v29, 0, 1, v28);
}

uint64_t sub_22BFFD7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911558, &qword_22C2AE270);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D909218, &unk_22C2CC930);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D911558, &qword_22C2AE270);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F748, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911558, &qword_22C2AE270);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911558, &qword_22C2AE270);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911558, &qword_22C2AE270);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911558, &qword_22C2AE270);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D909218, &unk_22C2CC930);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFFDCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911450, &qword_22C2AE178);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D909218, &unk_22C2CC930);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v18, &qword_27D911450, &qword_22C2AE178);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F760, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911450, &qword_22C2AE178);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911450, &qword_22C2AE178);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911450, &qword_22C2AE178);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911450, &qword_22C2AE178);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D909218, &unk_22C2CC930);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFFE1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911560, &qword_22C2AE278);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D909218, &unk_22C2CC930);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v18, &qword_27D911560, &qword_22C2AE278);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F7A0, type metadata accessor for TranscriptProtoPhotosCandidates, &protocol conformance descriptor for TranscriptProtoPhotosCandidates);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911560, &qword_22C2AE278);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911560, &qword_22C2AE278);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911560, &qword_22C2AE278);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911560, &qword_22C2AE278);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D909218, &unk_22C2CC930);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoShimParameter.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  sub_22BE2B890(v5);
  if (v6)
  {
    goto LABEL_8;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = sub_22BE17D78();
      sub_22BFFE9F4(v19, v20, v21, v22);
      break;
    case 2u:
      v11 = sub_22BE17D78();
      sub_22BFFEBFC(v11, v12, v13, v14);
      break;
    case 3u:
      v15 = sub_22BE17D78();
      sub_22BFFEE04(v15, v16, v17, v18);
      break;
    default:
      v7 = sub_22BE17D78();
      sub_22BFFE7B8(v7, v8, v9, v10);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_8:
    type metadata accessor for TranscriptProtoShimParameter(0);
    sub_22BE235A8();
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22BFFE7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_22C272594();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if (sub_22BE1AEA8(v6, 1, v11) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D909218, &unk_22C2CC930);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
      sub_22C270884();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFFE9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D909218, &unk_22C2CC930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F748, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFFEBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D909218, &unk_22C2CC930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F760, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFFEE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D909218, &unk_22C2CC930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F7A0, type metadata accessor for TranscriptProtoPhotosCandidates, &protocol conformance descriptor for TranscriptProtoPhotosCandidates);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFFF29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FE0, type metadata accessor for TranscriptProtoShimParameter, &protocol conformance descriptor for TranscriptProtoShimParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFFF31C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E790, type metadata accessor for TranscriptProtoShimParameter, &protocol conformance descriptor for TranscriptProtoShimParameter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFFF38C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90E790, type metadata accessor for TranscriptProtoShimParameter, &protocol conformance descriptor for TranscriptProtoShimParameter);

  return sub_22C270774();
}

uint64_t sub_22BFFF40C()
{
  result = MEMORY[0x2318AB8D0](0x51676E697274532ELL, 0xEC00000079726575);
  qword_27D90D0C8 = 0xD000000000000018;
  unk_27D90D0D0 = 0x800000022C2D70B0;
  return result;
}

uint64_t sub_22BFFF594(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FD8, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFFF614(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F748, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFFF684(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F748, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);

  return sub_22C270774();
}

uint64_t sub_22BFFF710()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D0F0);
  sub_22BE199F4(v0, qword_27D90D0F0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handle";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isMe";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "id";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoPersonQuery.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 2:
        v3 = sub_22BE18E2C();
        sub_22BFFFA18(v3, v4, v5, v6);
        break;
      case 3:
        sub_22BE239F4();
        sub_22C2705C4();
        break;
      case 4:
        sub_22C0B1800();
        sub_22BE18E2C();
        sub_22C098EAC();
        break;
      default:
        continue;
    }
  }
}