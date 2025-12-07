uint64_t sub_22C0458A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ECD8, &qword_22C2CC950);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90ECD8, &qword_22C2CC950);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C045AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ECD8, &qword_22C2CC950);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90ECD8, &qword_22C2CC950);
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

uint64_t sub_22C045F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D28, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C045FBC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FF08, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionInput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04602C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FF08, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionInput);

  return sub_22C270774();
}

uint64_t sub_22C0460B8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D920);
  sub_22BE199F4(v0, qword_27D90D920);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v6 = "resolvedParameters";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "unresolvedParameterSets";
  *(v10 + 8) = 23;
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
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "isAuthenticated";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 9;
  *v18 = "tool";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoActionResolverRequest.decodeMessage<A>(decoder:)()
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
        v3 = sub_22BE18E2C();
        sub_22C0464A8(v3, v4, v5, v6);
        break;
      case 4:
        sub_22BE1C37C();
        sub_22BFE7680();
        break;
      case 6:
      case 8:
        sub_22BE2037C();
        sub_22C2705C4();
        break;
      case 7:
        v7 = sub_22BE18E2C();
        sub_22C04655C(v7, v8, v9, v10);
        break;
      case 9:
        v11 = sub_22BE18E2C();
        sub_22C046610(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C0464A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionResolverRequest(0);
  type metadata accessor for TranscriptProtoParameterSet(0);
  sub_22BE2C988(&qword_27D90ECF0, type metadata accessor for TranscriptProtoParameterSet, &protocol conformance descriptor for TranscriptProtoParameterSet);
  return sub_22C2706F4();
}

uint64_t sub_22C04655C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionResolverRequest(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C046610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionResolverRequest(0);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  return sub_22C2706F4();
}

void TranscriptProtoActionResolverRequest.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v2 = sub_22BE3B0CC();
  sub_22C0467E8(v2, v3, v4, v5);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v6)
    {
      type metadata accessor for TranscriptProtoParameterSet(0);
      sub_22BE2C988(&qword_27D90ECF0, type metadata accessor for TranscriptProtoParameterSet, &protocol conformance descriptor for TranscriptProtoParameterSet);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    if (*(v1 + 8) == 1)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    v7 = sub_22BE17D60();
    sub_22C0469BC(v7, v8, v9, v10);
    if (*(v1 + 9) == 1)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    v11 = sub_22BE17D60();
    sub_22C046B90(v11, v12, v13, v14);
    type metadata accessor for TranscriptProtoActionResolverRequest(0);
    sub_22BE1AC30();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C0467E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ECF8, &qword_22C2970B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoParameterSet(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoActionResolverRequest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90ECF8, &qword_22C2970B0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ECF0, type metadata accessor for TranscriptProtoParameterSet, &protocol conformance descriptor for TranscriptProtoParameterSet);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C0469BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoActionResolverRequest(0);
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

uint64_t sub_22C046B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoActionResolverRequest(0);
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

void static TranscriptProtoActionResolverRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE48298();
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v53 = v7;
  v8 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  sub_22C0B1ABC(v10);
  sub_22BE5CE4C(&qword_27D90E678, &qword_22C296F38);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v13 = sub_22BE4098C(v12, v53);
  v14 = type metadata accessor for TranscriptProtoStatementID(v13);
  v15 = sub_22BE28784(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  sub_22BEE94C8(v16);
  v17 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE3C048(v19, v54);
  v20 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE1B7B0(v20);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE35C94(v22, v55);
  type metadata accessor for TranscriptProtoParameterSet(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v23);
  sub_22BE38390();
  v24 = sub_22BE3E79C();
  v26 = sub_22BE5CE4C(v24, v25);
  sub_22BE19448(v26);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1A8B4();
  sub_22BE5CE4C(&qword_27D90ED00, &qword_22C2970B8);
  sub_22C0B1A7C();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1B72C();
  type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v29 = *(v2 + 56);
  sub_22C0B1CCC();
  v30 = v4;
  sub_22C0B1CCC();
  sub_22BE181B0(v0);
  if (v35)
  {
    sub_22BE181B0(v0 + v29);
    if (v35)
    {
      sub_22BE33928(v0, &qword_27D90ECF8, &qword_22C2970B0);
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  sub_22BE1A6BC();
  sub_22BE22868();
  sub_22BE181B0(v0 + v29);
  if (v35)
  {
    sub_22C0B08BC();
LABEL_16:
    v36 = &qword_27D90ED00;
    v37 = &qword_22C2970B8;
    goto LABEL_17;
  }

  sub_22C0B0868();
  sub_22BE9C600();
  if (v40)
  {
    sub_22C2704B4();
    sub_22BE18E5C();
    sub_22BE2C988(v41, v42, MEMORY[0x277D216D0]);
    v43 = sub_22C272FD4();
    sub_22C0B08BC();
    sub_22C0B08BC();
    sub_22BE33928(v0, &qword_27D90ECF8, &qword_22C2970B0);
    if ((v43 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_6:
    sub_22BE9C024();
    if ((v31 & 1) == 0 || *(v1 + 8) != *(v4 + 8))
    {
      goto LABEL_19;
    }

    v32 = v57;
    sub_22C0B1DE4();
    sub_22BE27B84();
    sub_22BE22868();
    sub_22BE27B84();
    sub_22BE22868();
    v33 = sub_22BE2BA98();
    sub_22BE36144(v33, v34);
    if (v35)
    {
      sub_22BE18A84();
      if (v35)
      {
        sub_22BE33928(v57, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_31:
        if (*(v1 + 9) != *(v30 + 9))
        {
          goto LABEL_19;
        }

        sub_22C0B1B6C();
        sub_22BE27B84();
        sub_22BE22868();
        v32 = v56;
        sub_22BE27B84();
        sub_22BE22868();
        v47 = sub_22BE23E90();
        sub_22BE36144(v47, v48);
        if (v35)
        {
          sub_22BE18A84();
          if (v35)
          {
            sub_22BE33928(v56, &qword_27D90E670, &unk_22C2CC890);
            goto LABEL_42;
          }
        }

        else
        {
          sub_22BE22868();
          sub_22BE18A84();
          if (!v49)
          {
            sub_22BE41FDC();
            sub_22C0B0868();
            v50 = sub_22BE38970();
            static TranscriptProtoGlobalToolIdentifier.== infix(_:_:)(v50);
            sub_22BE39304();
            sub_22BE291B0();
            sub_22C0B08BC();
            sub_22BE33928(v56, &qword_27D90E670, &unk_22C2CC890);
            if ((&unk_22C2CC890 & 1) == 0)
            {
              goto LABEL_19;
            }

LABEL_42:
            sub_22C2704B4();
            sub_22BE18E5C();
            sub_22BE2C988(v51, v52, MEMORY[0x277D216D0]);
            sub_22BE3A008();
            v39 = sub_22C272FD4();
            goto LABEL_20;
          }

          sub_22BE30F90();
          sub_22C0B08BC();
        }

        v36 = &qword_27D90E678;
        v37 = &qword_22C296F38;
        goto LABEL_29;
      }
    }

    else
    {
      sub_22BE22868();
      sub_22BE18A84();
      if (!v44)
      {
        sub_22BE18AA8();
        sub_22C0B0868();
        v45 = sub_22BE38970();
        static TranscriptProtoStatementID.== infix(_:_:)(v45, v46);
        sub_22BE39304();
        sub_22BE291B0();
        sub_22C0B08BC();
        sub_22BE33928(v57, &qword_27D9090F8, &unk_22C2AE4A0);
        if ((&unk_22C2AE4A0 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }

      sub_22BE17DB0();
      sub_22C0B08BC();
    }

    v36 = &qword_27D909100;
    v37 = &unk_22C27FD00;
LABEL_29:
    v38 = v32;
    goto LABEL_18;
  }

  sub_22C0B08BC();
  sub_22BE2565C();
  sub_22C0B08BC();
  v36 = &qword_27D90ECF8;
  v37 = &qword_22C2970B0;
LABEL_17:
  v38 = v0;
LABEL_18:
  sub_22BE33928(v38, v36, v37);
LABEL_19:
  v39 = 0;
LABEL_20:
  sub_22BE1C1DC(v39);
  sub_22BE1AABC();
}

uint64_t sub_22C047498(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D20, type metadata accessor for TranscriptProtoActionResolverRequest, &protocol conformance descriptor for TranscriptProtoActionResolverRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C047518(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FF20, type metadata accessor for TranscriptProtoActionResolverRequest, &protocol conformance descriptor for TranscriptProtoActionResolverRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C047588(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FF20, type metadata accessor for TranscriptProtoActionResolverRequest, &protocol conformance descriptor for TranscriptProtoActionResolverRequest);

  return sub_22C270774();
}

uint64_t sub_22C047614()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D938);
  sub_22BE199F4(v0, qword_27D90D938);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "requiredContext";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "utteranceContext";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoContextRetrieved.decodeMessage<A>(decoder:)()
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

    if (v1 == 4)
    {
      sub_22BE1C37C();
      sub_22C0478F0();
    }

    else if (v1 == 3)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void sub_22C0478F0()
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

void TranscriptProtoContextRetrieved.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoRetrievedContextStatement(0), sub_22C0B1550(), sub_22BE2C988(v2, v3, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    sub_22BE3A458();
    if (!v4 || (type metadata accessor for TranscriptProtoRetrievedContextStatement(0), sub_22C0B1550(), sub_22BE2C988(v5, v6, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
    {
      type metadata accessor for TranscriptProtoContextRetrieved(0);
      sub_22BE25FB0();
    }
  }

  sub_22BE25C6C();
}

uint64_t static TranscriptProtoContextRetrieved.== infix(_:_:)()
{
  sub_22BE18378();
  sub_22BE9A770();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  sub_22BE9A770();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoContextRetrieved(0);
  sub_22BE23A04();
  sub_22BE18E5C();
  v4 = sub_22BE2C988(v2, v3, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v4) & 1;
}

uint64_t sub_22C047B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D18, type metadata accessor for TranscriptProtoContextRetrieved, &protocol conformance descriptor for TranscriptProtoContextRetrieved);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C047BE0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FF38, type metadata accessor for TranscriptProtoContextRetrieved, &protocol conformance descriptor for TranscriptProtoContextRetrieved);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C047C50(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FF38, type metadata accessor for TranscriptProtoContextRetrieved, &protocol conformance descriptor for TranscriptProtoContextRetrieved);

  return sub_22C270774();
}

uint64_t sub_22C047CDC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D950);
  sub_22BE199F4(v0, qword_27D90D950);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "retrievedContext";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoRetrievedContextStatement.decodeMessage<A>(decoder:)()
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
      sub_22C047F68(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C047F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  type metadata accessor for ContextProtoRetrievedContext(0);
  sub_22BE2C988(&qword_27D90C0F8, type metadata accessor for ContextProtoRetrievedContext, &protocol conformance descriptor for ContextProtoRetrievedContext);
  return sub_22C2706F4();
}

uint64_t sub_22C048070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091A8, &qword_22C27FDA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for ContextProtoRetrievedContext(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9091A8, &qword_22C27FDA0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90C0F8, type metadata accessor for ContextProtoRetrievedContext, &protocol conformance descriptor for ContextProtoRetrievedContext);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoRetrievedContextStatement.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE3CD04();
  v2 = type metadata accessor for ContextProtoRetrievedContext(0);
  v3 = sub_22BE272C0(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22BE38A28(v4);
  v5 = sub_22BE5CE4C(&qword_27D9091A8, &qword_22C27FDA0);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE29250(v7, v30);
  v8 = sub_22BE5CE4C(&qword_27D9091B0, &qword_22C27FDA8);
  sub_22BE28784(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE294E0();
  v11 = sub_22BE18040();
  v13 = sub_22BE5CE4C(v11, v12);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B72C();
  v15 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
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
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v18 = &qword_27D909100;
    v19 = &unk_22C27FD00;
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
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B13E4();
  sub_22C0B0868();
  v21 = sub_22BE1A6BC();
  v23 = static TranscriptProtoStatementID.== infix(_:_:)(v21, v22);
  sub_22BE2565C();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
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
      sub_22BE33928(v0, &qword_27D9091A8, &qword_22C27FDA0);
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
    v18 = &qword_27D9091B0;
    v19 = &qword_22C27FDA8;
    v20 = v0;
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static ContextProtoRetrievedContext.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9091A8, &qword_22C27FDA0);
  if (&qword_22C27FDA0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v27 = 0;
LABEL_22:
  sub_22BE1C1DC(v27);
  sub_22BE1AABC();
}

uint64_t sub_22C048670(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D10, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0486F0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90ED10, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C048760(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90ED10, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement);

  return sub_22C270774();
}

uint64_t sub_22C0487F8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D968);
  sub_22BE199F4(v0, qword_27D90D968);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dynamicEnumerationEntity";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoDynamicEnumerationEntityStatement.decodeMessage<A>(decoder:)()
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
      sub_22C048A84(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C048A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  sub_22BE2C988(&qword_27D90C0F0, type metadata accessor for ContextProtoDynamicEnumerationEntity, &protocol conformance descriptor for ContextProtoDynamicEnumerationEntity);
  return sub_22C2706F4();
}

uint64_t sub_22C048B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090E8, &qword_22C2B5A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090E8, &qword_22C2B5A90);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90C0F0, type metadata accessor for ContextProtoDynamicEnumerationEntity, &protocol conformance descriptor for ContextProtoDynamicEnumerationEntity);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoDynamicEnumerationEntityStatement.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE3CD04();
  v2 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v3 = sub_22BE272C0(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22BE38A28(v4);
  v5 = sub_22BE5CE4C(&qword_27D9090E8, &qword_22C2B5A90);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE29250(v7, v30);
  v8 = sub_22BE5CE4C(&qword_27D9090F0, &unk_22C27FCF0);
  sub_22BE28784(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE294E0();
  v11 = sub_22BE18040();
  v13 = sub_22BE5CE4C(v11, v12);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B72C();
  v15 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
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
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v18 = &qword_27D909100;
    v19 = &unk_22C27FD00;
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
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B13E4();
  sub_22C0B0868();
  v21 = sub_22BE1A6BC();
  v23 = static TranscriptProtoStatementID.== infix(_:_:)(v21, v22);
  sub_22BE2565C();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
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
      sub_22BE33928(v0, &qword_27D9090E8, &qword_22C2B5A90);
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
    v18 = &qword_27D9090F0;
    v19 = &unk_22C27FCF0;
    v20 = v0;
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static ContextProtoDynamicEnumerationEntity.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090E8, &qword_22C2B5A90);
  if (&qword_22C2B5A90)
  {
    goto LABEL_24;
  }

LABEL_21:
  v27 = 0;
LABEL_22:
  sub_22BE1C1DC(v27);
  sub_22BE1AABC();
}

uint64_t sub_22C04918C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D08, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, &protocol conformance descriptor for TranscriptProtoDynamicEnumerationEntityStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04920C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F128, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, &protocol conformance descriptor for TranscriptProtoDynamicEnumerationEntityStatement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04927C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F128, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, &protocol conformance descriptor for TranscriptProtoDynamicEnumerationEntityStatement);

  return sub_22C270774();
}

uint64_t sub_22C0493AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D00, type metadata accessor for TranscriptProtoSafetyModeRelease, &protocol conformance descriptor for TranscriptProtoSafetyModeRelease);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04942C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FF70, type metadata accessor for TranscriptProtoSafetyModeRelease, &protocol conformance descriptor for TranscriptProtoSafetyModeRelease);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04949C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FF70, type metadata accessor for TranscriptProtoSafetyModeRelease, &protocol conformance descriptor for TranscriptProtoSafetyModeRelease);

  return sub_22C270774();
}

uint64_t sub_22C0495E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_22BE18378();
  v7 = *(v6 + 8);
  v8 = v3[1];
  if (v7)
  {
    if (v8)
    {
      v9 = *v4 == *v3 && v7 == v8;
      if (v9 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    a3(0);
    sub_22BE3636C();
    sub_22BE18E5C();
    v12 = sub_22BE2C988(v10, v11, MEMORY[0x277D216D0]);
    return sub_22BE2B85C(v12) & 1;
  }

  return 0;
}

uint64_t sub_22C04971C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CF8, type metadata accessor for TranscriptProtoSafetyModeException, &protocol conformance descriptor for TranscriptProtoSafetyModeException);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04979C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FF88, type metadata accessor for TranscriptProtoSafetyModeException, &protocol conformance descriptor for TranscriptProtoSafetyModeException);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04980C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FF88, type metadata accessor for TranscriptProtoSafetyModeException, &protocol conformance descriptor for TranscriptProtoSafetyModeException);

  return sub_22C270774();
}

void TranscriptProtoParameterSet.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoParameter(0), sub_22BE2C988(&qword_27D90ED40, type metadata accessor for TranscriptProtoParameter, &protocol conformance descriptor for TranscriptProtoParameter), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoParameterSet(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C049AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CF0, type metadata accessor for TranscriptProtoParameterSet, &protocol conformance descriptor for TranscriptProtoParameterSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C049B28(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90ECF0, type metadata accessor for TranscriptProtoParameterSet, &protocol conformance descriptor for TranscriptProtoParameterSet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C049B98(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90ECF0, type metadata accessor for TranscriptProtoParameterSet, &protocol conformance descriptor for TranscriptProtoParameterSet);

  return sub_22C270774();
}

uint64_t sub_22C049C24()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D9C8);
  sub_22BE199F4(v0, qword_27D90D9C8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collectionIndex";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "candidate";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoParameter.decodeMessage<A>(decoder:)()
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
        v3 = sub_22BE18E2C();
        sub_22C049ECC(v3, v4, v5, v6);
        break;
      case 2:
        sub_22BE374D4();
        sub_22C270644();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }

  return result;
}

uint64_t sub_22C049ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameter(0);
  type metadata accessor for TranscriptProtoCandidate(0);
  sub_22BE2C988(&qword_27D90EA50, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);
  return sub_22C2706F4();
}

void sub_22C049FD4()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_22BE1A730();
  if (!v7 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    v8 = sub_22BE17D60();
    v6(v8);
    if (!v0)
    {
      v9 = sub_22BE17D60();
      v4(v9);
      v2(0);
      v10 = sub_22BE375E4();
      sub_22BE363D4(v10, v11);
    }
  }

  sub_22BE18478();
}

uint64_t sub_22C04A068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091B8, &qword_22C27FDB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoCandidate(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoParameter(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9091B8, &qword_22C27FDB0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90EA50, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoParameter.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoCandidate(v3);
  sub_22BE26880();
  MEMORY[0x28223BE20](v4);
  sub_22BE38390();
  v5 = sub_22BE5CE4C(&qword_27D9091B8, &qword_22C27FDB0);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D9091C0, &qword_22C27FDB8);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE20394();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (*(v1 + 24))
  {
    if (!*(v0 + 24))
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_22BEC02E4();
    if (v11)
    {
      goto LABEL_19;
    }
  }

  v12 = type metadata accessor for TranscriptProtoParameter(0);
  sub_22C0B1694(v12);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v10)
  {
    sub_22BE19538();
    if (v10)
    {
      sub_22BE33928(v2, &qword_27D9091B8, &qword_22C27FDB0);
      goto LABEL_22;
    }
  }

  else
  {
    sub_22BE194F8();
    sub_22BE22868();
    sub_22BE19538();
    if (!v13)
    {
      sub_22C0B0868();
      sub_22BE38970();
      static TranscriptProtoCandidate.== infix(_:_:)();
      v16 = v15;
      sub_22BE324FC();
      sub_22C0B08BC();
      sub_22BE1AB1C();
      sub_22C0B08BC();
      sub_22BE33928(v2, &qword_27D9091B8, &qword_22C27FDB0);
      if ((v16 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_22:
      sub_22C0B1A60();
      sub_22BE18E5C();
      v19 = sub_22BE2C988(v17, v18, MEMORY[0x277D216D0]);
      v14 = sub_22BE2B85C(v19);
      goto LABEL_20;
    }

    sub_22C0B1AA4();
  }

  sub_22BE33928(v2, &qword_27D9091C0, &qword_22C27FDB8);
LABEL_19:
  v14 = 0;
LABEL_20:
  sub_22BE1C1DC(v14);
  sub_22BE1AABC();
}

uint64_t sub_22C04A524(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CE8, type metadata accessor for TranscriptProtoParameter, &protocol conformance descriptor for TranscriptProtoParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04A5A4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90ED40, type metadata accessor for TranscriptProtoParameter, &protocol conformance descriptor for TranscriptProtoParameter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04A614(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90ED40, type metadata accessor for TranscriptProtoParameter, &protocol conformance descriptor for TranscriptProtoParameter);

  return sub_22C270774();
}

uint64_t sub_22C04A6AC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D9E0);
  sub_22BE199F4(v0, qword_27D90D9E0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionConfirmed";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterValueSelected";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameterConfirmed";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "disambiguationIndexSelected";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "requirementAddressed";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "actionCanceled";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoSystemPromptResolutionUserAction.decodeMessage<A>(decoder:)()
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
      case 3:
        sub_22BE231C0();
        sub_22C04AFB8();
        break;
      case 2:
        v7 = sub_22BE236F4();
        sub_22C04AAA0(v7, v8, v9, v10);
        break;
      case 6:
        sub_22BE231C0();
        sub_22C05CD08();
        break;
      case 7:
        v3 = sub_22BE236F4();
        sub_22C04B108(v3, v4, v5, v6);
        break;
      case 8:
        v11 = sub_22BE236F4();
        sub_22C04B600(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C04AAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
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
    sub_22BE33928(v12, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D909128, &qword_22C294AA0);
      v23 = *(v34 + 32);
      v23(v9, v15, v5);
      v23(v22, v9, v5);
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
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
  sub_22BE33928(v30, &qword_27D90ED58, &qword_22C2CC940);
  v27(v29, v33, v5);
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v29, 0, 1, v28);
}

void sub_22C04AFB8()
{
  sub_22BE19130();
  sub_22C0B1E94();
  v6 = sub_22C0B176C(v0, v1, v2, v3, v4, v5);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1B72C();
  sub_22BE431FC();
  sub_22C2705B4();
  sub_22BE18478();
}

uint64_t sub_22C04B108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911370, &qword_22C2AE0A0);
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
    sub_22BE33928(v10, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v18, &qword_27D911370, &qword_22C2AE0A0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FFF0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionRequirementResolution);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911370, &qword_22C2AE0A0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911370, &qword_22C2AE0A0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911370, &qword_22C2AE0A0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911370, &qword_22C2AE0A0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90ED58, &qword_22C2CC940);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C04B600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911378, &qword_22C2AE0A8);
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
    sub_22BE33928(v10, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v18, &qword_27D911378, &qword_22C2AE0A8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FFD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionActionCancellation);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911378, &qword_22C2AE0A8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911378, &qword_22C2AE0A8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911378, &qword_22C2AE0A8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911378, &qword_22C2AE0A8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90ED58, &qword_22C2CC940);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoSystemPromptResolutionUserAction.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  sub_22BE2B890(v5);
  if (!v6)
  {
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v20 = sub_22BE17D78();
        sub_22C04BD64(v20, v21, v22, v23);
        goto LABEL_14;
      case 2:
        v16 = sub_22BE17D78();
        sub_22C04BFA4(v16, v17, v18, v19);
        goto LABEL_10;
      case 3:
        sub_22BE17D78();
        sub_22C04C0E4();
        goto LABEL_10;
      case 4:
        v12 = sub_22BE17D78();
        sub_22C04C224(v12, v13, v14, v15);
        goto LABEL_14;
      case 5:
        v24 = sub_22BE17D78();
        sub_22C04C42C(v24, v25, v26, v27);
LABEL_14:
        sub_22BE291DC();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
      default:
        v8 = sub_22BE17D78();
        sub_22C04BC28(v8, v9, v10, v11);
LABEL_10:
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
    }
  }

  type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  sub_22BE235A8();
LABEL_4:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C04BC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_22BE22868();
  v7 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_22C2707C4();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C04BD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_22C272594();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v11) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
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

uint64_t sub_22C04BFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_22BE22868();
  v7 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_22C2707C4();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C04C0E4()
{
  v0 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_22BE22868();
  v3 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if (sub_22BE1AEA8(v2, 1, v3) == 1)
  {
    result = sub_22BE33928(v2, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_22C270814();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C04C224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FFF0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionRequirementResolution);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C04C42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FFD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionActionCancellation);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C04C8C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CE0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionUserAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04C944(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FFC0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionUserAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04C9B4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FFC0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionUserAction);

  return sub_22C270774();
}

uint64_t sub_22C04CAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionActionCancellation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04CB70(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FFD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionActionCancellation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04CBE0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FFD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionActionCancellation);

  return sub_22C270774();
}

uint64_t sub_22C04CCCC()
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
      sub_22C2705C4();
    }
  }

  return result;
}

void sub_22C04CD44()
{
  sub_22BE1B214();
  v3 = v2;
  sub_22BE18648();
  if (*v0 != 1 || (sub_22BE1BAB8(), sub_22C2707C4(), !v1))
  {
    v3(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C04CE58(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CD0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionRequirementResolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04CED8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FFF0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionRequirementResolution);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04CF48(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FFF0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionRequirementResolution);

  return sub_22C270774();
}

uint64_t sub_22C04CFD4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DA28);
  sub_22BE199F4(v0, qword_27D90DA28);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "dependencies";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C04D204()
{
  sub_22BE1B638();
  while (1)
  {
    sub_22BE18240();
    result = sub_22C270584();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 4)
    {
      v6 = sub_22C0B1638();
      v0(v6);
    }

    else if (result == 3)
    {
      v5 = sub_22C0B1638();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_22C04D278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoVariableSetter(0);
  sub_22C272594();
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  return sub_22C2706F4();
}

uint64_t sub_22C04D32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C270474();
  sub_22C272594();
  v4 = MEMORY[0x277D727E0];
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  sub_22BE2C988(&qword_27D90E770, v4, MEMORY[0x277D727E8]);
  return sub_22C270564();
}

uint64_t sub_22C04D500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  type metadata accessor for TranscriptProtoVariableSetter(0);
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

void static TranscriptProtoVariableSetter.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE17BC4();
  sub_22C272594();
  sub_22BE35868();
  MEMORY[0x28223BE20](v3);
  sub_22BE17CBC();
  v4 = sub_22BE289D8();
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE234F4();
  sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE252F0();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  v9 = type metadata accessor for TranscriptProtoVariableSetter(0);
  sub_22C0B15D0(v9);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE181B0(v1);
  if (v10)
  {
    sub_22BE181B0(v1 + v2);
    if (v10)
    {
      sub_22BE33928(v1, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_11;
    }

LABEL_9:
    sub_22BE33928(v1, &qword_27D909130, &unk_22C27FD30);
LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  sub_22BE1B18C();
  sub_22BE22868();
  sub_22BE181B0(v1 + v2);
  if (v10)
  {
    v11 = sub_22BE3F3A8();
    v12(v11);
    goto LABEL_9;
  }

  sub_22BE46530();
  v13 = sub_22BE3BD64();
  v14(v13);
  sub_22BE192C8();
  sub_22BE2C988(v15, v16, MEMORY[0x277D727F0]);
  sub_22BE19478();
  sub_22C272FD4();
  sub_22C0B1CA8();
  v17 = sub_22BE3C5E4();
  v0(v17);
  v18 = sub_22BE35838();
  v0(v18);
  sub_22BE33928(v1, &qword_27D909128, &qword_22C294AA0);
  if ((&qword_27D909128 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_22BEA4E60();
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_22C0B1AC8();
  sub_22BE18E5C();
  v22 = sub_22BE2C988(v20, v21, MEMORY[0x277D216D0]);
  v23 = sub_22BE3C4B0(v22);
LABEL_14:
  sub_22BE1C1DC(v23);
  sub_22BE1AABC();
}

uint64_t sub_22C04DA34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CC8, type metadata accessor for TranscriptProtoVariableSetter, &protocol conformance descriptor for TranscriptProtoVariableSetter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04DAB4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90ED88, type metadata accessor for TranscriptProtoVariableSetter, &protocol conformance descriptor for TranscriptProtoVariableSetter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04DB24(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90ED88, type metadata accessor for TranscriptProtoVariableSetter, &protocol conformance descriptor for TranscriptProtoVariableSetter);

  return sub_22C270774();
}

uint64_t sub_22C04DBB0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DA40);
  sub_22BE199F4(v0, qword_27D90DA40);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "setters";
  *(v6 + 8) = 7;
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
  return sub_22C2708A4();
}

void TranscriptProtoVariableStep.decodeMessage<A>(decoder:)()
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
      v3 = sub_22BE18E2C();
      sub_22C04DE4C(v3, v4, v5, v6);
    }

    else if (v1 == 2)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

uint64_t sub_22C04DE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoVariableStep(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoVariableStep.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoVariableSetter(0), sub_22BE2C988(&qword_27D90ED88, type metadata accessor for TranscriptProtoVariableSetter, &protocol conformance descriptor for TranscriptProtoVariableSetter), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v2 = sub_22BE17D60();
    sub_22C04DFB4(v2, v3, v4, v5);
    if (!v0)
    {
      type metadata accessor for TranscriptProtoVariableStep(0);
      sub_22BE25FB0();
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C04DFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoVariableStep(0);
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

void static TranscriptProtoVariableStep.== infix(_:_:)()
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
  sub_22BE19E64();
  sub_22BE1BC88();
  sub_22BE9EBEC();
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = type metadata accessor for TranscriptProtoVariableStep(0);
  sub_22BE3E440(v7);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v8)
  {
    sub_22BE19538();
    if (v8)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_14:
      sub_22C0B16F4();
      sub_22BE18E5C();
      v15 = sub_22BE2C988(v13, v14, MEMORY[0x277D216D0]);
      v9 = sub_22BE2B85C(v15);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v8)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_10:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_11;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v10 = sub_22BE38970();
  v12 = static TranscriptProtoStatementID.== infix(_:_:)(v10, v11);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_11:
  v9 = 0;
LABEL_12:
  sub_22BE1C1DC(v9);
  sub_22BE1AABC();
}

uint64_t sub_22C04E42C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CC0, type metadata accessor for TranscriptProtoVariableStep, &protocol conformance descriptor for TranscriptProtoVariableStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04E4AC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910018, type metadata accessor for TranscriptProtoVariableStep, &protocol conformance descriptor for TranscriptProtoVariableStep);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04E51C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910018, type metadata accessor for TranscriptProtoVariableStep, &protocol conformance descriptor for TranscriptProtoVariableStep);

  return sub_22C270774();
}

uint64_t sub_22C04E5A8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DA58);
  sub_22BE199F4(v0, qword_27D90DA58);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fn";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameters";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C04E7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C270464();
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_22BE2C988(&qword_27D90EDA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_22C270564();
}

uint64_t sub_22C04EA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CB8, type metadata accessor for TranscriptProtoASTFlatExprCallVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCallVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04EACC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910030, type metadata accessor for TranscriptProtoASTFlatExprCallVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCallVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04EB3C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910030, type metadata accessor for TranscriptProtoASTFlatExprCallVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCallVariant);

  return sub_22C270774();
}

uint64_t sub_22C04ECEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CB0, type metadata accessor for TranscriptProtoASTFlatExprSayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSayVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04ED6C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910048, type metadata accessor for TranscriptProtoASTFlatExprSayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSayVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04EDDC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910048, type metadata accessor for TranscriptProtoASTFlatExprSayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSayVariant);

  return sub_22C270774();
}

uint64_t sub_22C04EE68()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DA88);
  sub_22BE199F4(v0, qword_27D90DA88);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rawEventId";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pickType";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C04F080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  type metadata accessor for TranscriptProtoASTPickType(0);
  sub_22BE2C988(&qword_27D9100F0, type metadata accessor for TranscriptProtoASTPickType, &protocol conformance descriptor for TranscriptProtoASTPickType);
  return sub_22C2706F4();
}

uint64_t sub_22C04F174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EDB8, &qword_22C2B5AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoASTPickType(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EDB8, &qword_22C2B5AC0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D9100F0, type metadata accessor for TranscriptProtoASTPickType, &protocol conformance descriptor for TranscriptProtoASTPickType);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoASTFlatExprPickVariant.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoASTPickType(v1);
  sub_22BE26880();
  MEMORY[0x28223BE20](v2);
  sub_22BE38390();
  v3 = sub_22BE5CE4C(&qword_27D90EDB8, &qword_22C2B5AC0);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D90EDC0, &qword_22C2970C8);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE20394();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  sub_22BE3E440(v9);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v8)
  {
    sub_22BE19538();
    if (v8)
    {
      sub_22BE33928(v0, &qword_27D90EDB8, &qword_22C2B5AC0);
LABEL_17:
      sub_22C0B16F4();
      sub_22BE18E5C();
      v15 = sub_22BE2C988(v13, v14, MEMORY[0x277D216D0]);
      v11 = sub_22BE2B85C(v15);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v10)
  {
    sub_22C0B1AA4();
LABEL_14:
    sub_22BE33928(v0, &qword_27D90EDC0, &qword_22C2970C8);
    goto LABEL_15;
  }

  sub_22C0B0868();
  sub_22BE38970();
  v12 = static TranscriptProtoASTPickType.== infix(_:_:)();
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90EDB8, &qword_22C2B5AC0);
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_15:
  v11 = 0;
LABEL_18:
  sub_22BE1C1DC(v11);
  sub_22BE1AABC();
}

uint64_t sub_22C04F60C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CA8, type metadata accessor for TranscriptProtoASTFlatExprPickVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04F68C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910060, type metadata accessor for TranscriptProtoASTFlatExprPickVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04F6FC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910060, type metadata accessor for TranscriptProtoASTFlatExprPickVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickVariant);

  return sub_22C270774();
}

uint64_t sub_22C04F898(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CA0, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprConfirmVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04F918(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910078, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprConfirmVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04F988(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910078, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprConfirmVariant);

  return sub_22C270774();
}

uint64_t sub_22C04FB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C98, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUndoVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04FBB8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910090, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUndoVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04FC28(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910090, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUndoVariant);

  return sub_22C270774();
}

uint64_t sub_22C04FDC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C90, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprRejectVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04FE44(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9100A8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprRejectVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04FEB4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9100A8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprRejectVariant);

  return sub_22C270774();
}

uint64_t sub_22C050050(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C88, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCancelVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0500D0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9100C0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCancelVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C050140(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9100C0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCancelVariant);

  return sub_22C270774();
}

uint64_t sub_22C050270(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C80, type metadata accessor for TranscriptProtoASTFlatExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprContinuePlanningVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0502F0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9100D8, type metadata accessor for TranscriptProtoASTFlatExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprContinuePlanningVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C050360(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9100D8, type metadata accessor for TranscriptProtoASTFlatExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprContinuePlanningVariant);

  return sub_22C270774();
}

uint64_t sub_22C0503E8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DB18);
  sub_22BE199F4(v0, qword_27D90DB18);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "index";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "none";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoASTPickType.decodeMessage<A>(decoder:)()
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

    if (result == 3)
    {
      v7 = sub_22BE18E2C();
      sub_22C0506D0(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = sub_22BE18E2C();
      sub_22C05063C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t TranscriptProtoASTPickType.traverse<A>(visitor:)()
{
  sub_22BE410C0();
  if (*(v0 + 8) == 255 || ((v2 = sub_22BE17D78(), (v6 & 1) == 0) ? (result = sub_22C0507CC(v2)) : (result = sub_22C05080C(v2, v3, v4, v5)), !v1))
  {
    type metadata accessor for TranscriptProtoASTPickType(0);
    return sub_22BE235A8();
  }

  return result;
}

uint64_t sub_22C0507CC(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != 255 && (v1 & 1) == 0)
  {
    return sub_22C270814();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05080C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 != 255 && (v4 & 1) != 0)
  {
    return sub_22C2707C4();
  }

  __break(1u);
  return result;
}

uint64_t static TranscriptProtoASTPickType.== infix(_:_:)()
{
  sub_22BE18378();
  v3 = *(v2 + 8);
  v5 = *(v4 + 8);
  if (v3 == 255)
  {
    if (v5 == 255)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 == 255)
  {
    return 0;
  }

  v6 = *v1;
  v7 = *v0;
  if (v3)
  {
    if (v5 & 1) == 0 || ((v7 ^ v6))
    {
      return 0;
    }
  }

  else if ((v5 & 1) != 0 || v6 != v7)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for TranscriptProtoASTPickType(0);
  sub_22BE3636C();
  sub_22BE18E5C();
  v11 = sub_22BE2C988(v9, v10, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v11) & 1;
}

uint64_t sub_22C0509A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C78, type metadata accessor for TranscriptProtoASTPickType, &protocol conformance descriptor for TranscriptProtoASTPickType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C050A28(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9100F0, type metadata accessor for TranscriptProtoASTPickType, &protocol conformance descriptor for TranscriptProtoASTPickType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C050A98(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9100F0, type metadata accessor for TranscriptProtoASTPickType, &protocol conformance descriptor for TranscriptProtoASTPickType);

  return sub_22C270774();
}

uint64_t sub_22C050B24()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DB30);
  sub_22BE199F4(v0, qword_27D90DB30);
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
  *v12 = "pickOne";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C050D68()
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

    if (result == 3 || result == 2)
    {
      sub_22BE2037C();
      sub_22C2705C4();
    }

    else if (result == 1)
    {
      sub_22BE239F4();
      sub_22C2706A4();
    }
  }

  return result;
}

void sub_22C050E0C()
{
  sub_22BE1B214();
  v3 = v2;
  sub_22BE1A730();
  if (!v4 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    sub_22BE2BC90();
    if (!v5 || (sub_22BE1BAB8(), sub_22C2707C4(), !v0))
    {
      if (*(v1 + 17) != 1 || (sub_22BE1BAB8(), sub_22C2707C4(), !v0))
      {
        v3(0);
        v6 = sub_22BE375E4();
        sub_22BE363D4(v6, v7);
      }
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C050ECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_22BE19FC4(a1);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE36248();
  if (!v8 || *(v4 + 17) != *(v3 + 17))
  {
    return 0;
  }

  a3(0);
  sub_22C0B1BAC();
  sub_22BE18E5C();
  v12 = sub_22BE2C988(v10, v11, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v12) & 1;
}

uint64_t sub_22C050FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C70, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSearchVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C051078(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910108, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSearchVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0510E8(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910108, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSearchVariant);

  return sub_22C270774();
}

uint64_t sub_22C051224(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C68, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTExprContinuePlanningVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0512A4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910120, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTExprContinuePlanningVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C051314(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910120, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTExprContinuePlanningVariant);

  return sub_22C270774();
}

void TranscriptProtoASTFlatExprUpdateParametersVariant.decodeMessage<A>(decoder:)()
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

void TranscriptProtoASTFlatExprUpdateParametersVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0), sub_22BE2C988(&qword_27D90EE10, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateVariant), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C0515E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C60, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateParametersVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C051664(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910138, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateParametersVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0516D4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910138, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateParametersVariant);

  return sub_22C270774();
}

uint64_t sub_22C051804(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C58, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps, &protocol conformance descriptor for TranscriptProtoASTFlatExprGetMentionedApps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C051884(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910150, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps, &protocol conformance descriptor for TranscriptProtoASTFlatExprGetMentionedApps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0518F4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910150, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps, &protocol conformance descriptor for TranscriptProtoASTFlatExprGetMentionedApps);

  return sub_22C270774();
}

uint64_t sub_22C05197C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DB90);
  sub_22BE199F4(v0, qword_27D90DB90);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "path";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "kind";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoASTFlatExprUpdateVariant.decodeMessage<A>(decoder:)()
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
        sub_22C051CB8(v3, v4, v5, v6);
        break;
      case 2:
        sub_22C0B18D8();
        sub_22BE1C37C();
        sub_22BFE7680();
        break;
      case 3:
        v7 = sub_22BE18E2C();
        sub_22C051D6C(v7, v8, v9, v10);
        break;
      case 4:
        v11 = sub_22BE18E2C();
        sub_22C051E20(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C051CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

uint64_t sub_22C051D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

void TranscriptProtoASTFlatExprUpdateVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v2 = sub_22BE3B0CC();
  sub_22C051F7C(v2, v3, v4, v5);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v6)
    {
      type metadata accessor for TranscriptProtoASTFlatValue(0);
      sub_22C0B1920();
      sub_22BE2C988(v7, v8, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    v9 = sub_22BE17D60();
    sub_22C052150(v9, v10, v11, v12);
    if (*(v1 + 8) == 1)
    {
      sub_22C09DBF0();
      sub_22BE23CE4();
      sub_22C2707D4();
    }

    type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
    sub_22BE1AC30();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C051F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C052150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoASTFlatExprUpdateVariant.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = v4;
  v6 = sub_22BE48298();
  type metadata accessor for TranscriptProtoASTFlatValue(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v32 = v8;
  v9 = sub_22BE19454();
  v11 = sub_22BE5CE4C(v9, v10);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v13);
  sub_22BE324EC();
  sub_22BE5CE4C(&qword_27D90EE38, &qword_22C2970D0);
  sub_22BE28F58();
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  v31 = v15;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE32374();
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v17 = *(v1 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE200F8(v2);
  if (v18)
  {
    sub_22BE200F8(v2 + v17);
    if (v18)
    {
      sub_22BE33928(v2, &qword_27D90EE30, &unk_22C2AE760);
      goto LABEL_12;
    }

LABEL_9:
    v19 = v2;
LABEL_10:
    sub_22BE33928(v19, &qword_27D90EE38, &qword_22C2970D0);
    goto LABEL_24;
  }

  sub_22BE3E79C();
  sub_22BE22868();
  sub_22BE200F8(v2 + v17);
  if (v18)
  {
    sub_22BE25764();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE28A14();
  sub_22C0B0868();
  v20 = static TranscriptProtoASTFlatValue.== infix(_:_:)(v3, v32);
  sub_22BE200D4();
  sub_22C0B08BC();
  sub_22BE1B074();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D90EE30, &unk_22C2AE760);
  if ((v20 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  sub_22BE98ABC();
  if ((v21 & 1) == 0)
  {
    goto LABEL_24;
  }

  v22 = *(v1 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE200F8(v31);
  if (!v18)
  {
    sub_22BE22868();
    sub_22BE200F8(v31 + v22);
    if (!v23)
    {
      sub_22BE28A14();
      sub_22C0B0868();
      v24 = sub_22BE25C08();
      v26 = static TranscriptProtoASTFlatValue.== infix(_:_:)(v24, v25);
      sub_22BE1AB74();
      sub_22C0B08BC();
      sub_22BE291B0();
      sub_22C0B08BC();
      sub_22BE33928(v31, &qword_27D90EE30, &unk_22C2AE760);
      if ((v26 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    sub_22BE25764();
    sub_22C0B08BC();
    goto LABEL_21;
  }

  sub_22BE200F8(v31 + v22);
  if (!v18)
  {
LABEL_21:
    v19 = v31;
    goto LABEL_10;
  }

  sub_22BE33928(v31, &qword_27D90EE30, &unk_22C2AE760);
LABEL_23:
  if (*(v0 + 8) == *(v5 + 8))
  {
    sub_22C2704B4();
    sub_22BE18E5C();
    sub_22BE2C988(v28, v29, MEMORY[0x277D216D0]);
    v30 = sub_22BE3A008();
    v27 = sub_22C0B1B54(v30);
    goto LABEL_25;
  }

LABEL_24:
  v27 = 0;
LABEL_25:
  sub_22BE1C1DC(v27);
  sub_22BE1AABC();
}

uint64_t sub_22C052774(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C50, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0527F4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EE10, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C052864(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90EE10, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateVariant);

  return sub_22C270774();
}

uint64_t sub_22C052A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C48, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickOneVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C052A80(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910178, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickOneVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C052AF0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910178, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickOneVariant);

  return sub_22C270774();
}

uint64_t sub_22C052CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C40, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprResolveToolVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C052D20(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910190, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprResolveToolVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C052D90(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910190, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprResolveToolVariant);

  return sub_22C270774();
}

uint64_t sub_22C052E1C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DBD8);
  sub_22BE199F4(v0, qword_27D90DBD8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C053034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

uint64_t sub_22C053128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoASTFlatExprDotVariant.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE2021C();
  type metadata accessor for TranscriptProtoASTFlatValue(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17CBC();
  v7 = sub_22BE289D8();
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  sub_22BE5CE4C(&qword_27D90EE38, &qword_22C2970D0);
  sub_22BE252F0();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  sub_22C0B1DC0();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE19FE0(v1);
  if (!v12)
  {
    sub_22BE3AF28();
    sub_22BE22868();
    sub_22BE19FE0(v1 + v2);
    if (!v12)
    {
      sub_22C0B0868();
      v14 = sub_22BE1B5E0();
      v16 = static TranscriptProtoASTFlatValue.== infix(_:_:)(v14, v15);
      sub_22BE194F8();
      sub_22C0B08BC();
      sub_22BE18240();
      sub_22C0B08BC();
      sub_22BE33928(v1, &qword_27D90EE30, &unk_22C2AE760);
      if ((v16 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    sub_22BE25764();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v1, &qword_27D90EE38, &qword_22C2970D0);
    goto LABEL_10;
  }

  sub_22BE19FE0(v1 + v2);
  if (!v12)
  {
    goto LABEL_9;
  }

  sub_22BE33928(v1, &qword_27D90EE30, &unk_22C2AE760);
LABEL_12:
  v17 = *v0 == *v4 && v0[1] == v4[1];
  if (v17 || (sub_22C274014() & 1) != 0)
  {
    sub_22C2704B4();
    sub_22BE18E5C();
    v20 = sub_22BE2C988(v18, v19, MEMORY[0x277D216D0]);
    v13 = sub_22BE39E58(v20);
    goto LABEL_18;
  }

LABEL_10:
  v13 = 0;
LABEL_18:
  sub_22BE1C1DC(v13);
  sub_22BE1AABC();
}

uint64_t sub_22C0535FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C38, type metadata accessor for TranscriptProtoASTFlatExprDotVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprDotVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C05367C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9101A8, type metadata accessor for TranscriptProtoASTFlatExprDotVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprDotVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0536EC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9101A8, type metadata accessor for TranscriptProtoASTFlatExprDotVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprDotVariant);

  return sub_22C270774();
}

uint64_t sub_22C053778()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DBF0);
  sub_22BE199F4(v0, qword_27D90DBF0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_22C296E60;
  v4 = v46 + v3 + v1[14];
  *(v46 + v3) = 1;
  *v4 = "value";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v46 + v3 + v2 + v1[14];
  *(v46 + v3 + v2) = 2;
  *v8 = "prefix";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v46 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "infix";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v46 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "dot";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v7();
  v13 = (v46 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "index";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v46 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "call";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v46 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "endOfPlan";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  v19 = (v46 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "say";
  *(v20 + 1) = 3;
  v20[16] = 2;
  v7();
  v21 = (v46 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "pick";
  *(v22 + 1) = 4;
  v22[16] = 2;
  v7();
  v23 = (v46 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "confirm";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v46 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "search";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v7();
  v27 = (v46 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "pickOne";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v7();
  v29 = (v46 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "noMatchingTool";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v7();
  v31 = (v46 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "undo";
  *(v32 + 1) = 4;
  v32[16] = 2;
  v7();
  v33 = (v46 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "resolveTool";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v7();
  v35 = (v46 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "reject";
  *(v36 + 1) = 6;
  v36[16] = 2;
  v7();
  v37 = (v46 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 18;
  *v38 = "cancel";
  *(v38 + 1) = 6;
  v38[16] = 2;
  v7();
  v39 = (v46 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 19;
  *v40 = "continuePlanning";
  *(v40 + 1) = 16;
  v40[16] = 2;
  v7();
  v41 = (v46 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 20;
  *v42 = "updateParameters";
  *(v42 + 1) = 16;
  v42[16] = 2;
  v7();
  v43 = (v46 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 21;
  *v44 = "getMentionedApps";
  *(v44 + 1) = 16;
  v44[16] = 2;
  v7();
  return sub_22C2708A4();
}

void TranscriptProtoASTFlatExpr.decodeMessage<A>(decoder:)()
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
        v3 = sub_22BE236F4();
        sub_22C053F78(v3, v4, v5, v6);
        break;
      case 2:
        v43 = sub_22BE236F4();
        sub_22C054470(v43, v44, v45, v46);
        break;
      case 3:
        v27 = sub_22BE236F4();
        sub_22C054968(v27, v28, v29, v30);
        break;
      case 4:
        v35 = sub_22BE236F4();
        sub_22C054E60(v35, v36, v37, v38);
        break;
      case 5:
        v19 = sub_22BE236F4();
        sub_22C055358(v19, v20, v21, v22);
        break;
      case 6:
        v51 = sub_22BE236F4();
        sub_22C055850(v51, v52, v53, v54);
        break;
      case 8:
      case 14:
        sub_22BE231C0();
        sub_22BFCA9A8();
        break;
      case 9:
        v39 = sub_22BE236F4();
        sub_22C055D48(v39, v40, v41, v42);
        break;
      case 10:
        v67 = sub_22BE236F4();
        sub_22C056240(v67, v68, v69, v70);
        break;
      case 11:
        v23 = sub_22BE236F4();
        sub_22C056738(v23, v24, v25, v26);
        break;
      case 12:
        v63 = sub_22BE236F4();
        sub_22C056C30(v63, v64, v65, v66);
        break;
      case 13:
        v15 = sub_22BE236F4();
        sub_22C057128(v15, v16, v17, v18);
        break;
      case 15:
        v55 = sub_22BE236F4();
        sub_22C057620(v55, v56, v57, v58);
        break;
      case 16:
        v11 = sub_22BE236F4();
        sub_22C057B18(v11, v12, v13, v14);
        break;
      case 17:
        v31 = sub_22BE236F4();
        sub_22C058010(v31, v32, v33, v34);
        break;
      case 18:
        v7 = sub_22BE236F4();
        sub_22C058508(v7, v8, v9, v10);
        break;
      case 19:
        v47 = sub_22BE236F4();
        sub_22C058A00(v47, v48, v49, v50);
        break;
      case 20:
        v59 = sub_22BE236F4();
        sub_22C058EF8(v59, v60, v61, v62);
        break;
      case 21:
        v71 = sub_22BE236F4();
        sub_22C0593F0(v71, v72, v73, v74);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C053F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
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
      sub_22BE33928(v18, &qword_27D90EE30, &unk_22C2AE760);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D90EE30, &unk_22C2AE760);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D90EE30, &unk_22C2AE760);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C054470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9112E8, &qword_22C2AE018);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D9112E8, &qword_22C2AE018);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9102D8, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPrefixVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9112E8, &qword_22C2AE018);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9112E8, &qword_22C2AE018);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9112E8, &qword_22C2AE018);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9112E8, &qword_22C2AE018);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C054968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9112F0, &qword_22C2AE020);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v18, &qword_27D9112F0, &qword_22C2AE020);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910230, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprInfixVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9112F0, &qword_22C2AE020);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9112F0, &qword_22C2AE020);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9112F0, &qword_22C2AE020);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9112F0, &qword_22C2AE020);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C054E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9112F8, &qword_22C2AE028);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v18, &qword_27D9112F8, &qword_22C2AE028);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9101A8, type metadata accessor for TranscriptProtoASTFlatExprDotVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprDotVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9112F8, &qword_22C2AE028);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9112F8, &qword_22C2AE028);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9112F8, &qword_22C2AE028);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9112F8, &qword_22C2AE028);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C055358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911300, &qword_22C2AE030);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v18, &qword_27D911300, &qword_22C2AE030);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910218, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprIndexVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911300, &qword_22C2AE030);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911300, &qword_22C2AE030);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911300, &qword_22C2AE030);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911300, &qword_22C2AE030);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C055850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911308, &qword_22C2AE038);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v18, &qword_27D911308, &qword_22C2AE038);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910030, type metadata accessor for TranscriptProtoASTFlatExprCallVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCallVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911308, &qword_22C2AE038);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911308, &qword_22C2AE038);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911308, &qword_22C2AE038);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911308, &qword_22C2AE038);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C055D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911310, &qword_22C2AE040);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22BE33928(v18, &qword_27D911310, &qword_22C2AE040);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910048, type metadata accessor for TranscriptProtoASTFlatExprSayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSayVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911310, &qword_22C2AE040);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911310, &qword_22C2AE040);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911310, &qword_22C2AE040);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911310, &qword_22C2AE040);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C056240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911318, &qword_22C2AE048);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22BE33928(v18, &qword_27D911318, &qword_22C2AE048);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910060, type metadata accessor for TranscriptProtoASTFlatExprPickVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911318, &qword_22C2AE048);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911318, &qword_22C2AE048);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911318, &qword_22C2AE048);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911318, &qword_22C2AE048);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C056738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911320, &qword_22C2AE050);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22BE33928(v18, &qword_27D911320, &qword_22C2AE050);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910078, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprConfirmVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911320, &qword_22C2AE050);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911320, &qword_22C2AE050);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911320, &qword_22C2AE050);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911320, &qword_22C2AE050);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C056C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911328, &qword_22C2AE058);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_22BE33928(v18, &qword_27D911328, &qword_22C2AE058);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910108, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSearchVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911328, &qword_22C2AE058);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911328, &qword_22C2AE058);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911328, &qword_22C2AE058);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911328, &qword_22C2AE058);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C057128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911330, &qword_22C2AE060);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_22BE33928(v18, &qword_27D911330, &qword_22C2AE060);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910178, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickOneVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911330, &qword_22C2AE060);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911330, &qword_22C2AE060);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911330, &qword_22C2AE060);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911330, &qword_22C2AE060);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C057620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911338, &qword_22C2AE068);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_22BE33928(v18, &qword_27D911338, &qword_22C2AE068);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910090, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUndoVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911338, &qword_22C2AE068);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911338, &qword_22C2AE068);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911338, &qword_22C2AE068);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911338, &qword_22C2AE068);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C057B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911340, &qword_22C2AE070);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_22BE33928(v18, &qword_27D911340, &qword_22C2AE070);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910190, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprResolveToolVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911340, &qword_22C2AE070);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911340, &qword_22C2AE070);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911340, &qword_22C2AE070);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911340, &qword_22C2AE070);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C058010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911348, &qword_22C2AE078);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_22BE33928(v18, &qword_27D911348, &qword_22C2AE078);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9100A8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprRejectVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911348, &qword_22C2AE078);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911348, &qword_22C2AE078);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911348, &qword_22C2AE078);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911348, &qword_22C2AE078);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C058508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911350, &qword_22C2AE080);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_22BE33928(v18, &qword_27D911350, &qword_22C2AE080);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9100C0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCancelVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911350, &qword_22C2AE080);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911350, &qword_22C2AE080);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911350, &qword_22C2AE080);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911350, &qword_22C2AE080);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C058A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911358, &qword_22C2AE088);
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
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_22BE33928(v18, &qword_27D911358, &qword_22C2AE088);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910120, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTExprContinuePlanningVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911358, &qword_22C2AE088);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911358, &qword_22C2AE088);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911358, &qword_22C2AE088);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911358, &qword_22C2AE088);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C058EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
  MEMORY[0x28223BE20](updated);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911360, &qword_22C2AE090);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, updated);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_22BE33928(v18, &qword_27D911360, &qword_22C2AE090);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, updated);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910138, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateParametersVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911360, &qword_22C2AE090);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, updated) == 1)
  {
    sub_22BE33928(v18, &qword_27D911360, &qword_22C2AE090);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911360, &qword_22C2AE090);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911360, &qword_22C2AE090);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0593F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  MEMORY[0x28223BE20](MentionedApps);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911368, &qword_22C2AE098);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, MentionedApps);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_22BE33928(v18, &qword_27D911368, &qword_22C2AE098);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, MentionedApps);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910150, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps, &protocol conformance descriptor for TranscriptProtoASTFlatExprGetMentionedApps);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911368, &qword_22C2AE098);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, MentionedApps) == 1)
  {
    sub_22BE33928(v18, &qword_27D911368, &qword_22C2AE098);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911368, &qword_22C2AE098);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911368, &qword_22C2AE098);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoASTFlatExpr.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  sub_22BE2B890(v5);
  if (!v6)
  {
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v52 = sub_22BE17D78();
        sub_22C059CDC(v52, v53, v54, v55);
        goto LABEL_22;
      case 2:
        v36 = sub_22BE17D78();
        sub_22C059EE4(v36, v37, v38, v39);
        goto LABEL_22;
      case 3:
        v44 = sub_22BE17D78();
        sub_22C05A0EC(v44, v45, v46, v47);
        goto LABEL_22;
      case 4:
        v24 = sub_22BE17D78();
        sub_22C05A2F4(v24, v25, v26, v27);
        goto LABEL_22;
      case 5:
        v60 = sub_22BE17D78();
        sub_22C05A4FC(v60, v61, v62, v63);
        goto LABEL_22;
      case 6:
        v68 = sub_22BE17D78();
        sub_22C05A92C(v68, v69, v70, v71);
        goto LABEL_22;
      case 7:
        v48 = sub_22BE17D78();
        sub_22C05AB34(v48, v49, v50, v51);
        goto LABEL_22;
      case 8:
        v80 = sub_22BE17D78();
        sub_22C05AD3C(v80, v81, v82, v83);
        goto LABEL_27;
      case 9:
        v32 = sub_22BE17D78();
        sub_22C05AF44(v32, v33, v34, v35);
        goto LABEL_27;
      case 10:
        v76 = sub_22BE17D78();
        sub_22C05B14C(v76, v77, v78, v79);
        goto LABEL_27;
      case 11:
        v20 = sub_22BE17D78();
        sub_22C05B57C(v20, v21, v22, v23);
        goto LABEL_27;
      case 12:
        v28 = sub_22BE17D78();
        sub_22C05B784(v28, v29, v30, v31);
        goto LABEL_27;
      case 13:
        v64 = sub_22BE17D78();
        sub_22C05B98C(v64, v65, v66, v67);
        goto LABEL_27;
      case 14:
        v16 = sub_22BE17D78();
        sub_22C05BB94(v16, v17, v18, v19);
        goto LABEL_27;
      case 15:
        v40 = sub_22BE17D78();
        sub_22C05BD9C(v40, v41, v42, v43);
        goto LABEL_27;
      case 16:
        v12 = sub_22BE17D78();
        sub_22C05BFA4(v12, v13, v14, v15);
        goto LABEL_27;
      case 17:
        v56 = sub_22BE17D78();
        sub_22C05C1AC(v56, v57, v58, v59);
LABEL_27:
        if (v0)
        {
          sub_22BE48A74();
          sub_22C0B08BC();
          goto LABEL_4;
        }

        sub_22BE48A74();
        sub_22C0B08BC();
        break;
      case 18:
        v72 = sub_22BE17D78();
        sub_22C05A704(v72, v73, v74, v75);
        goto LABEL_31;
      case 19:
        v84 = sub_22BE17D78();
        sub_22C05B354(v84, v85, v86, v87);
LABEL_31:
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
      default:
        v8 = sub_22BE17D78();
        sub_22C059AD8(v8, v9, v10, v11);
LABEL_22:
        sub_22BE48A74();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
    }
  }

  type metadata accessor for TranscriptProtoASTFlatExpr(0);
  sub_22BE235A8();
LABEL_4:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C059AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C059CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9102D8, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPrefixVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C059EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910230, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprInfixVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05A0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9101A8, type metadata accessor for TranscriptProtoASTFlatExprDotVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprDotVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05A2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910218, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprIndexVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05A4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910030, type metadata accessor for TranscriptProtoASTFlatExprCallVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCallVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05A704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  sub_22BE22868();
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v10, 1, v11) == 1)
  {
    result = sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 18)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_22C2707D4();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05A92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910048, type metadata accessor for TranscriptProtoASTFlatExprSayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSayVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05AB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910060, type metadata accessor for TranscriptProtoASTFlatExprPickVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05AD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910078, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprConfirmVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05AF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910108, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSearchVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05B14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910178, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickOneVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05B354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  sub_22BE22868();
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v10, 1, v11) == 1)
  {
    result = sub_22BE33928(v10, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 19)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_22C2707D4();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05B57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910090, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUndoVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05B784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910190, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprResolveToolVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05B98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9100A8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprRejectVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05BB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9100C0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCancelVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05BD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910120, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTExprContinuePlanningVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05BFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
  MEMORY[0x28223BE20](updated);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910138, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateParametersVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05C1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  MEMORY[0x28223BE20](MentionedApps);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910150, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps, &protocol conformance descriptor for TranscriptProtoASTFlatExprGetMentionedApps);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05C63C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C30, type metadata accessor for TranscriptProtoASTFlatExpr, &protocol conformance descriptor for TranscriptProtoASTFlatExpr);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C05C6BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9101C0, type metadata accessor for TranscriptProtoASTFlatExpr, &protocol conformance descriptor for TranscriptProtoASTFlatExpr);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C05C72C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9101C0, type metadata accessor for TranscriptProtoASTFlatExpr, &protocol conformance descriptor for TranscriptProtoASTFlatExpr);

  return sub_22C270774();
}

uint64_t sub_22C05C7B8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DC08);
  sub_22BE199F4(v0, qword_27D90DC08);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22C290DA0;
  v4 = v27 + v3;
  v5 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v5 = "null";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22C270894();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "BOOL";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "double";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "string";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "array";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dict";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "symbol";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "identifier";
  *(v23 + 1) = 10;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "statement";
  *(v25 + 1) = 9;
  v25[16] = 2;
  v8();
  return sub_22C2708A4();
}

void TranscriptProtoASTFlatValue.decodeMessage<A>(decoder:)()
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
        sub_22BE231C0();
        sub_22BFCA9A8();
        break;
      case 2:
        sub_22BE231C0();
        sub_22C04AFB8();
        break;
      case 3:
        sub_22BE231C0();
        sub_22C05CD08();
        break;
      case 4:
        v7 = sub_22BE231C0();
        sub_22C070D7C(v7, v8, v9, v10, v11, v12, v13);
        break;
      case 5:
      case 9:
      case 10:
        sub_22BE231C0();
        sub_22C05D830();
        break;
      case 6:
        v14 = sub_22BE236F4();
        sub_22C05CE40(v14, v15, v16, v17);
        break;
      case 7:
        v18 = sub_22BE236F4();
        sub_22C05D338(v18, v19, v20, v21);
        break;
      case 11:
        v3 = sub_22BE236F4();
        sub_22C05D980(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

void sub_22C05CD08()
{
  sub_22BE19130();
  v3 = v2;
  v5 = v4;
  v11 = sub_22C0B176C(v6, v4, v7, v8, v9, v10);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B72C();
  sub_22BE37DE0();
  sub_22BE431FC();
  sub_22C270644();
  if (!v1 && (v21 & 1) == 0)
  {
    sub_22BE32BF0();
    sub_22BE22868();
    v13 = v3(0);
    sub_22C0B1FD8(v0, 1, v13);
    sub_22BE25300();
    sub_22BE33928(v14, v15, v16);
    if (v5 != 1)
    {
      sub_22BE180C8();
      sub_22C270594();
    }

    sub_22BE25300();
    sub_22BE33928(v17, v18, v19);
    *v5 = v20;
    sub_22BE1A8C4();
    swift_storeEnumTagMultiPayload();
    sub_22C0B1B34();
  }

  sub_22BE18478();
}

uint64_t sub_22C05CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9112D8, &qword_22C2AE008);
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
    sub_22BE33928(v10, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v18, &qword_27D9112D8, &qword_22C2AE008);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9101E8, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueArrayVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9112D8, &qword_22C2AE008);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9112D8, &qword_22C2AE008);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9112D8, &qword_22C2AE008);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9112D8, &qword_22C2AE008);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D909178, &qword_22C27FD70);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C05D338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9112E0, &qword_22C2AE010);
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
    sub_22BE33928(v10, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v18, &qword_27D9112E0, &qword_22C2AE010);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910200, type metadata accessor for TranscriptProtoASTFlatValueDictVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueDictVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9112E0, &qword_22C2AE010);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9112E0, &qword_22C2AE010);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9112E0, &qword_22C2AE010);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9112E0, &qword_22C2AE010);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D909178, &qword_22C27FD70);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void sub_22C05D830()
{
  sub_22BE19130();
  sub_22C0B1E94();
  sub_22BE18378();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE2C64C();
  sub_22BE431FC();
  sub_22C270694();
  if (v0)
  {
  }

  sub_22BE18478();
}

uint64_t sub_22C05D980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
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
    sub_22BE33928(v10, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22BE33928(v18, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9090F8, &unk_22C2AE4A0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9090F8, &unk_22C2AE4A0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D909178, &qword_22C27FD70);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoASTFlatValue.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  sub_22BE2B890(v5);
  if (!v6)
  {
    sub_22BE1AEE4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BE28654();
        sub_22BE17D78();
        sub_22C071898();
        goto LABEL_12;
      case 2u:
        sub_22BE28654();
        sub_22BE17D78();
        sub_22C07195C();
        goto LABEL_12;
      case 3u:
        sub_22C0B08BC();
        sub_22BE28654();
        sub_22BE17D78();
        sub_22C071A2C();
        goto LABEL_12;
      case 4u:
        v7 = sub_22BE17D78();
        sub_22C05E2B8(v7, v8, v9, v10);
        goto LABEL_16;
      case 5u:
        v15 = sub_22BE17D78();
        sub_22C05E4C0(v15, v16, v17, v18);
        goto LABEL_16;
      case 6u:
        sub_22BE28CC0();
        sub_22C0B08BC();
        sub_22BE17D78();
        sub_22C05E81C();
        goto LABEL_12;
      case 7u:
        sub_22BE28CC0();
        sub_22C0B08BC();
        sub_22BE17D78();
        sub_22C05E6C8();
        goto LABEL_12;
      case 8u:
        v19 = sub_22BE17D78();
        sub_22C05E970(v19, v20, v21, v22);
LABEL_16:
        sub_22BE28CC0();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_14;
      case 9u:
        v11 = sub_22BE17D78();
        sub_22C05E090(v11, v12, v13, v14);
        goto LABEL_12;
      default:
        sub_22BE28654();
        sub_22BE17D78();
        sub_22C0717D8();
LABEL_12:
        if (!v0)
        {
          break;
        }

        goto LABEL_14;
    }
  }

  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE235A8();
LABEL_14:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C05E090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  sub_22BE22868();
  v11 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if (sub_22BE1AEA8(v10, 1, v11) == 1)
  {
    result = sub_22BE33928(v10, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 9)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_22C2707D4();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05E2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9101E8, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueArrayVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05E4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910200, type metadata accessor for TranscriptProtoASTFlatValueDictVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueDictVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void sub_22C05E6C8()
{
  v0 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  sub_22BE22868();
  v3 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if (sub_22BE1AEA8(v2, 1, v3) == 1)
  {
    sub_22BE33928(v2, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22C270844();

      return;
    }

    sub_22C0B08BC();
  }

  __break(1u);
}

void sub_22C05E81C()
{
  v0 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  sub_22BE22868();
  v3 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if (sub_22BE1AEA8(v2, 1, v3) == 1)
  {
    sub_22BE33928(v2, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22C270844();

      return;
    }

    sub_22C0B08BC();
  }

  __break(1u);
}

uint64_t sub_22C05E970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22C0B0868();
      sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05EE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C28, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C05EE80(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C05EEF0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);

  return sub_22C270774();
}

void TranscriptProtoASTFlatValueArrayVariant.decodeMessage<A>(decoder:)()
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
      sub_22C0B18D8();
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoASTFlatValueArrayVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoASTFlatValue(0), sub_22C0B1920(), sub_22BE2C988(v2, v3, &protocol conformance descriptor for TranscriptProtoASTFlatValue), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C05F1A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C20, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueArrayVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C05F224(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9101E8, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueArrayVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C05F294(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9101E8, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueArrayVariant);

  return sub_22C270774();
}

uint64_t sub_22C05F38C()
{
  sub_22BE1B0D8();
  while (1)
  {
    sub_22BE1AB1C();
    result = sub_22C270584();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22BE1A8C4();
      sub_22BE32BF0();
      v0();
    }
  }

  return result;
}

uint64_t sub_22C05F3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C270464();
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_22BE2C988(&qword_27D90EDA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_22C270564();
}

uint64_t sub_22C05F664(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C18, type metadata accessor for TranscriptProtoASTFlatValueDictVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueDictVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C05F6E4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910200, type metadata accessor for TranscriptProtoASTFlatValueDictVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueDictVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C05F754(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910200, type metadata accessor for TranscriptProtoASTFlatValueDictVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueDictVariant);

  return sub_22C270774();
}

uint64_t sub_22C05F7E0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DC50);
  sub_22BE199F4(v0, qword_27D90DC50);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoASTFlatExprIndexVariant.decodeMessage<A>(decoder:)()
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
      sub_22C05FA7C(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C05FA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

uint64_t sub_22C05FB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C05FD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoASTFlatExprIndexVariant.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = v1;
  v3 = sub_22BE2021C();
  type metadata accessor for TranscriptProtoASTFlatValue(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v32[1] = v5;
  v6 = sub_22BE1B074();
  v8 = sub_22BE5CE4C(v6, v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  v32[0] = v10;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  sub_22BE32374();
  v12 = sub_22BE5CE4C(&qword_27D90EE38, &qword_22C2970D0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v14);
  v16 = v32 - v15;
  v18 = *(v17 + 48);
  sub_22BE22868();
  v32[3] = v2;
  sub_22BE22868();
  sub_22BE200F8(v16);
  if (v19)
  {
    sub_22BE200F8(&v16[v18]);
    if (v19)
    {
      sub_22BE33928(v16, &qword_27D90EE30, &unk_22C2AE760);
      goto LABEL_11;
    }

LABEL_9:
    v20 = v16;
LABEL_20:
    sub_22BE33928(v20, &qword_27D90EE38, &qword_22C2970D0);
    goto LABEL_21;
  }

  sub_22BE289D8();
  sub_22BE22868();
  sub_22BE200F8(&v16[v18]);
  if (v19)
  {
    sub_22BE25764();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE28A14();
  sub_22C0B0868();
  v21 = sub_22BE25EFC();
  v23 = static TranscriptProtoASTFlatValue.== infix(_:_:)(v21, v22);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE3C968();
  sub_22C0B08BC();
  sub_22BE33928(v16, &qword_27D90EE30, &unk_22C2AE760);
  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  v24 = *(v12 + 48);
  sub_22C0B1CE4();
  sub_22C0B1CE4();
  sub_22BE200F8(v0);
  if (v19)
  {
    sub_22BE200F8(v0 + v24);
    if (v19)
    {
      sub_22BE33928(v0, &qword_27D90EE30, &unk_22C2AE760);
LABEL_24:
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v30, v31, MEMORY[0x277D216D0]);
      v26 = sub_22C0B1D30();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22C0B1DB4();
  sub_22BE22868();
  sub_22BE200F8(v0 + v24);
  if (v25)
  {
    sub_22BE25764();
    sub_22C0B08BC();
LABEL_19:
    v20 = v0;
    goto LABEL_20;
  }

  sub_22BE28A14();
  sub_22C0B0868();
  v27 = sub_22BE35838();
  v29 = static TranscriptProtoASTFlatValue.== infix(_:_:)(v27, v28);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE39EAC();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90EE30, &unk_22C2AE760);
  if (v29)
  {
    goto LABEL_24;
  }

LABEL_21:
  v26 = 0;
LABEL_22:
  sub_22BE1C1DC(v26);
  sub_22BE1AABC();
}

uint64_t sub_22C060348(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C10, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprIndexVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0603C8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910218, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprIndexVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C060438(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910218, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprIndexVariant);

  return sub_22C270774();
}

uint64_t sub_22C0604C4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DC68);
  sub_22BE199F4(v0, qword_27D90DC68);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "third";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C0607AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

uint64_t sub_22C060860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

uint64_t sub_22C0609AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C060B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoASTFlatExprInfixVariant.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoASTFlatValue(v4);
  sub_22BE26880();
  MEMORY[0x28223BE20](v5);
  sub_22BE38390();
  v6 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v8);
  sub_22BE324EC();
  sub_22BE5CE4C(&qword_27D90EE38, &qword_22C2970D0);
  sub_22BE28F58();
  MEMORY[0x28223BE20](v9);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v10);
  sub_22BE32374();
  sub_22C0B16C4();
  if (!v11)
  {
    goto LABEL_23;
  }

  type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  sub_22C0B1EA8();
  sub_22BE26234();
  sub_22BE22868();
  sub_22C0B1F38();
  sub_22BE1972C(v3);
  if (v11)
  {
    sub_22BE1972C(v3 + v0);
    if (v11)
    {
      sub_22BE33928(v3, &qword_27D90EE30, &unk_22C2AE760);
      goto LABEL_13;
    }

LABEL_11:
    v12 = v3;
LABEL_22:
    sub_22BE33928(v12, &qword_27D90EE38, &qword_22C2970D0);
    goto LABEL_23;
  }

  sub_22BE3E79C();
  sub_22BE22868();
  sub_22BE1972C(v3 + v0);
  if (v11)
  {
    sub_22BE25764();
    sub_22C0B08BC();
    goto LABEL_11;
  }

  sub_22BE28A14();
  sub_22C0B0868();
  v13 = sub_22C0B1AF0();
  v15 = static TranscriptProtoASTFlatValue.== infix(_:_:)(v13, v14);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE1B074();
  sub_22C0B08BC();
  sub_22BE33928(v3, &qword_27D90EE30, &unk_22C2AE760);
  if ((v15 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v16 = *(v2 + 48);
  sub_22C0B1CE4();
  sub_22C0B1CE4();
  sub_22BE26A1C();
  if (v11)
  {
    sub_22BE1972C(v1 + v16);
    if (v11)
    {
      sub_22BE33928(v1, &qword_27D90EE30, &unk_22C2AE760);
LABEL_26:
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v22, v23, MEMORY[0x277D216D0]);
      v18 = sub_22C0B1C14();
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  sub_22BE3CB6C();
  sub_22BE22868();
  sub_22BE1972C(v1 + v16);
  if (v17)
  {
    sub_22BE25764();
    sub_22C0B08BC();
LABEL_21:
    v12 = v1;
    goto LABEL_22;
  }

  sub_22BE28A14();
  sub_22C0B0868();
  v19 = sub_22BE36680();
  v21 = static TranscriptProtoASTFlatValue.== infix(_:_:)(v19, v20);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90EE30, &unk_22C2AE760);
  if (v21)
  {
    goto LABEL_26;
  }

LABEL_23:
  v18 = 0;
LABEL_24:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C06114C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C08, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprInfixVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0611CC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910230, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprInfixVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C06123C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910230, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprInfixVariant);

  return sub_22C270774();
}

uint64_t sub_22C0612C8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DC80);
  sub_22BE199F4(v0, qword_27D90DC80);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_22C296E70;
  v4 = v71 + v3;
  v5 = v71 + v3 + v1[14];
  *(v71 + v3) = 1;
  *v5 = "value";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22C270894();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "statementId";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "prefix";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "infix";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "index";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "updateParameters";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "call";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "say";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 10;
  *v23 = "pick";
  *(v23 + 1) = 4;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 12;
  *v25 = "confirm";
  *(v25 + 1) = 7;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 13;
  *v27 = "search";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 25;
  *v29 = "structuredSearch";
  *(v29 + 1) = 16;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 14;
  *v31 = "pickOne";
  *(v31 + 1) = 7;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 15;
  *v33 = "resolveTool";
  *(v33 + 1) = 11;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 16;
  *v35 = "undo";
  *(v35 + 1) = 4;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 17;
  *v37 = "reject";
  *(v37 + 1) = 6;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "cancel";
  *(v39 + 1) = 6;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "noMatchingTool";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "continuePlanning";
  *(v43 + 1) = 16;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "endOfPlan";
  *(v45 + 1) = 9;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "getMentionedApps";
  *(v47 + 1) = 16;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "open";
  *(v49 + 1) = 4;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "explicitResolutionRequest";
  *(v51 + 1) = 25;
  v51[16] = 2;
  v8();
  v52 = (v4 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 26;
  *v53 = "payload";
  *(v53 + 1) = 7;
  v53[16] = 2;
  v8();
  v54 = (v4 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 27;
  *v55 = "format";
  *(v55 + 1) = 6;
  v55[16] = 2;
  v8();
  v56 = (v4 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 28;
  *v57 = "retrieveContext";
  *(v57 + 1) = 15;
  v57[16] = 2;
  v8();
  v58 = (v4 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 29;
  *v59 = "retrieveSpans";
  *(v59 + 1) = 13;
  v59[16] = 2;
  v8();
  v60 = (v4 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 30;
  *v61 = "retrieveTools";
  *(v61 + 1) = 13;
  v61[16] = 2;
  v8();
  v62 = (v4 + 28 * v2);
  v63 = v62 + v1[14];
  *v62 = 31;
  *v63 = "siriXFallback";
  *(v63 + 1) = 13;
  v63[16] = 2;
  v8();
  v64 = (v4 + 29 * v2);
  v65 = v64 + v1[14];
  *v64 = 32;
  *v65 = "userConfirm";
  *(v65 + 1) = 11;
  v65[16] = 2;
  v8();
  v66 = (v4 + 30 * v2);
  v67 = v66 + v1[14];
  *v66 = 33;
  *v67 = "userDisambiguate";
  *(v67 + 1) = 16;
  v67[16] = 2;
  v8();
  v68 = (v4 + 31 * v2);
  v69 = v68 + v1[14];
  *v68 = 34;
  *v69 = "answerSynthesis";
  *(v69 + 1) = 15;
  v69[16] = 2;
  v8();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoExpression.decodeMessage<A>(decoder:)()
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
        sub_22C061E54(v3, v4, v5, v6);
        break;
      case 2:
        v59 = sub_22BE236F4();
        sub_22C06234C(v59, v60, v61, v62);
        break;
      case 3:
        v43 = sub_22BE236F4();
        sub_22C062844(v43, v44, v45, v46);
        break;
      case 4:
        v51 = sub_22BE236F4();
        sub_22C062D3C(v51, v52, v53, v54);
        break;
      case 6:
        v23 = sub_22BE236F4();
        sub_22C063234(v23, v24, v25, v26);
        break;
      case 7:
        v75 = sub_22BE236F4();
        sub_22C06372C(v75, v76, v77, v78);
        break;
      case 8:
        v87 = sub_22BE236F4();
        sub_22C063C24(v87, v88, v89, v90);
        break;
      case 9:
        v55 = sub_22BE236F4();
        sub_22C06411C(v55, v56, v57, v58);
        break;
      case 10:
        v99 = sub_22BE236F4();
        sub_22C064614(v99, v100, v101, v102);
        break;
      case 12:
        v31 = sub_22BE236F4();
        sub_22C064B0C(v31, v32, v33, v34);
        break;
      case 13:
        v95 = sub_22BE236F4();
        sub_22C065004(v95, v96, v97, v98);
        break;
      case 14:
        v19 = sub_22BE236F4();
        sub_22C0654FC(v19, v20, v21, v22);
        break;
      case 15:
        v27 = sub_22BE236F4();
        sub_22C0659F4(v27, v28, v29, v30);
        break;
      case 16:
        v83 = sub_22BE236F4();
        sub_22C065EEC(v83, v84, v85, v86);
        break;
      case 17:
        v15 = sub_22BE236F4();
        sub_22C0663E4(v15, v16, v17, v18);
        break;
      case 18:
        v47 = sub_22BE236F4();
        sub_22C0668DC(v47, v48, v49, v50);
        break;
      case 19:
        v11 = sub_22BE236F4();
        sub_22C066DD4(v11, v12, v13, v14);
        break;
      case 20:
        v67 = sub_22BE236F4();
        sub_22C0672CC(v67, v68, v69, v70);
        break;
      case 21:
        v91 = sub_22BE236F4();
        sub_22C0677C4(v91, v92, v93, v94);
        break;
      case 22:
        v111 = sub_22BE236F4();
        sub_22C067CBC(v111, v112, v113, v114);
        break;
      case 23:
        v71 = sub_22BE236F4();
        sub_22C0681B4(v71, v72, v73, v74);
        break;
      case 24:
        v79 = sub_22BE236F4();
        sub_22C0686AC(v79, v80, v81, v82);
        break;
      case 25:
        v107 = sub_22BE236F4();
        sub_22C068BA4(v107, v108, v109, v110);
        break;
      case 26:
        v115 = sub_22BE236F4();
        sub_22C06909C(v115, v116, v117, v118);
        break;
      case 27:
        v39 = sub_22BE236F4();
        sub_22C069594(v39, v40, v41, v42);
        break;
      case 28:
        v35 = sub_22BE236F4();
        sub_22C069A8C(v35, v36, v37, v38);
        break;
      case 29:
        v127 = sub_22BE236F4();
        sub_22C069F84(v127, v128, v129, v130);
        break;
      case 30:
        v7 = sub_22BE236F4();
        sub_22C06A47C(v7, v8, v9, v10);
        break;
      case 31:
        v119 = sub_22BE236F4();
        sub_22C06A974(v119, v120, v121, v122);
        break;
      case 32:
        v123 = sub_22BE236F4();
        sub_22C06AE6C(v123, v124, v125, v126);
        break;
      case 33:
        v103 = sub_22BE236F4();
        sub_22C06B364(v103, v104, v105, v106);
        break;
      case 34:
        v63 = sub_22BE236F4();
        sub_22C06B85C(v63, v64, v65, v66);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C061E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoValueExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9111E0, &qword_22C2ADF10);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
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
      sub_22BE33928(v18, &qword_27D9111E0, &qword_22C2ADF10);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D910278, type metadata accessor for TranscriptProtoValueExpression, &protocol conformance descriptor for TranscriptProtoValueExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9111E0, &qword_22C2ADF10);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9111E0, &qword_22C2ADF10);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9111E0, &qword_22C2ADF10);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9111E0, &qword_22C2ADF10);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C06234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9090F8, &unk_22C2AE4A0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9090F8, &unk_22C2AE4A0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C062844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9111E8, &qword_22C2ADF18);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v18, &qword_27D9111E8, &qword_22C2ADF18);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9102A8, type metadata accessor for TranscriptProtoPrefixExpression, &protocol conformance descriptor for TranscriptProtoPrefixExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9111E8, &qword_22C2ADF18);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9111E8, &qword_22C2ADF18);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9111E8, &qword_22C2ADF18);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9111E8, &qword_22C2ADF18);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C062D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoInfixExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9111F0, &qword_22C2ADF20);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v18, &qword_27D9111F0, &qword_22C2ADF20);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9102C0, type metadata accessor for TranscriptProtoInfixExpression, &protocol conformance descriptor for TranscriptProtoInfixExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9111F0, &qword_22C2ADF20);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9111F0, &qword_22C2ADF20);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9111F0, &qword_22C2ADF20);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9111F0, &qword_22C2ADF20);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C063234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoIndexExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9111F8, &qword_22C2ADF28);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v18, &qword_27D9111F8, &qword_22C2ADF28);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9102F0, type metadata accessor for TranscriptProtoIndexExpression, &protocol conformance descriptor for TranscriptProtoIndexExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9111F8, &qword_22C2ADF28);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9111F8, &qword_22C2ADF28);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9111F8, &qword_22C2ADF28);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9111F8, &qword_22C2ADF28);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C06372C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  MEMORY[0x28223BE20](updated);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911200, &qword_22C2ADF30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, updated);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v18, &qword_27D911200, &qword_22C2ADF30);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, updated);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910308, type metadata accessor for TranscriptProtoUpdateParametersExpression, &protocol conformance descriptor for TranscriptProtoUpdateParametersExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911200, &qword_22C2ADF30);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, updated) == 1)
  {
    sub_22BE33928(v18, &qword_27D911200, &qword_22C2ADF30);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911200, &qword_22C2ADF30);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911200, &qword_22C2ADF30);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C063C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoCallExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911208, &qword_22C2ADF38);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22BE33928(v18, &qword_27D911208, &qword_22C2ADF38);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910340, type metadata accessor for TranscriptProtoCallExpression, &protocol conformance descriptor for TranscriptProtoCallExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911208, &qword_22C2ADF38);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911208, &qword_22C2ADF38);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911208, &qword_22C2ADF38);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911208, &qword_22C2ADF38);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C06411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSayExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911210, &qword_22C2ADF40);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22BE33928(v18, &qword_27D911210, &qword_22C2ADF40);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9103A0, type metadata accessor for TranscriptProtoSayExpression, &protocol conformance descriptor for TranscriptProtoSayExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911210, &qword_22C2ADF40);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911210, &qword_22C2ADF40);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911210, &qword_22C2ADF40);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911210, &qword_22C2ADF40);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C064614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoPickExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911218, &qword_22C2ADF48);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22BE33928(v18, &qword_27D911218, &qword_22C2ADF48);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9103B8, type metadata accessor for TranscriptProtoPickExpression, &protocol conformance descriptor for TranscriptProtoPickExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911218, &qword_22C2ADF48);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911218, &qword_22C2ADF48);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911218, &qword_22C2ADF48);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911218, &qword_22C2ADF48);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C064B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911220, &qword_22C2ADF50);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_22BE33928(v18, &qword_27D911220, &qword_22C2ADF50);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9103D0, type metadata accessor for TranscriptProtoConfirmExpression, &protocol conformance descriptor for TranscriptProtoConfirmExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911220, &qword_22C2ADF50);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911220, &qword_22C2ADF50);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911220, &qword_22C2ADF50);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911220, &qword_22C2ADF50);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C065004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSearchExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911228, &qword_22C2ADF58);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_22BE33928(v18, &qword_27D911228, &qword_22C2ADF58);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9103E8, type metadata accessor for TranscriptProtoSearchExpression, &protocol conformance descriptor for TranscriptProtoSearchExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911228, &qword_22C2ADF58);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911228, &qword_22C2ADF58);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911228, &qword_22C2ADF58);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911228, &qword_22C2ADF58);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0654FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911230, &qword_22C2ADF60);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_22BE33928(v18, &qword_27D911230, &qword_22C2ADF60);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910428, type metadata accessor for TranscriptProtoPickOneExpression, &protocol conformance descriptor for TranscriptProtoPickOneExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911230, &qword_22C2ADF60);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911230, &qword_22C2ADF60);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911230, &qword_22C2ADF60);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911230, &qword_22C2ADF60);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0659F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911238, &qword_22C2ADF68);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_22BE33928(v18, &qword_27D911238, &qword_22C2ADF68);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910440, type metadata accessor for TranscriptProtoResolveToolExpression, &protocol conformance descriptor for TranscriptProtoResolveToolExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911238, &qword_22C2ADF68);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911238, &qword_22C2ADF68);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911238, &qword_22C2ADF68);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911238, &qword_22C2ADF68);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C065EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoUndoExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911240, &qword_22C2ADF70);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_22BE33928(v18, &qword_27D911240, &qword_22C2ADF70);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910458, type metadata accessor for TranscriptProtoUndoExpression, &protocol conformance descriptor for TranscriptProtoUndoExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911240, &qword_22C2ADF70);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911240, &qword_22C2ADF70);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911240, &qword_22C2ADF70);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911240, &qword_22C2ADF70);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0663E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRejectExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911248, &qword_22C2ADF78);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_22BE33928(v18, &qword_27D911248, &qword_22C2ADF78);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910470, type metadata accessor for TranscriptProtoRejectExpression, &protocol conformance descriptor for TranscriptProtoRejectExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911248, &qword_22C2ADF78);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911248, &qword_22C2ADF78);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911248, &qword_22C2ADF78);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911248, &qword_22C2ADF78);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0668DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoCancelExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911250, &qword_22C2ADF80);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_22BE33928(v18, &qword_27D911250, &qword_22C2ADF80);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910488, type metadata accessor for TranscriptProtoCancelExpression, &protocol conformance descriptor for TranscriptProtoCancelExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911250, &qword_22C2ADF80);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911250, &qword_22C2ADF80);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911250, &qword_22C2ADF80);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911250, &qword_22C2ADF80);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C066DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911258, &qword_22C2ADF88);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_22BE33928(v18, &qword_27D911258, &qword_22C2ADF88);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9104A0, type metadata accessor for TranscriptProtoNoMatchingToolExpression, &protocol conformance descriptor for TranscriptProtoNoMatchingToolExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911258, &qword_22C2ADF88);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911258, &qword_22C2ADF88);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911258, &qword_22C2ADF88);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911258, &qword_22C2ADF88);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0672CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911260, &qword_22C2ADF90);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_22BE33928(v18, &qword_27D911260, &qword_22C2ADF90);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9104B8, type metadata accessor for TranscriptProtoContinuePlanningExpression, &protocol conformance descriptor for TranscriptProtoContinuePlanningExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911260, &qword_22C2ADF90);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911260, &qword_22C2ADF90);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911260, &qword_22C2ADF90);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911260, &qword_22C2ADF90);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0677C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911268, &qword_22C2ADF98);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_22BE33928(v18, &qword_27D911268, &qword_22C2ADF98);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9104D0, type metadata accessor for TranscriptProtoEndOfPlanExpression, &protocol conformance descriptor for TranscriptProtoEndOfPlanExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911268, &qword_22C2ADF98);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911268, &qword_22C2ADF98);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911268, &qword_22C2ADF98);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911268, &qword_22C2ADF98);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C067CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  MEMORY[0x28223BE20](MentionedAppsExpression);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911270, &qword_22C2ADFA0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, MentionedAppsExpression);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_22BE33928(v18, &qword_27D911270, &qword_22C2ADFA0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, MentionedAppsExpression);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9104E8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression, &protocol conformance descriptor for TranscriptProtoGetMentionedAppsExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911270, &qword_22C2ADFA0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, MentionedAppsExpression) == 1)
  {
    sub_22BE33928(v18, &qword_27D911270, &qword_22C2ADFA0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911270, &qword_22C2ADFA0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911270, &qword_22C2ADFA0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0681B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoOpenExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911278, &qword_22C2ADFA8);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_22BE33928(v18, &qword_27D911278, &qword_22C2ADFA8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910500, type metadata accessor for TranscriptProtoOpenExpression, &protocol conformance descriptor for TranscriptProtoOpenExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911278, &qword_22C2ADFA8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911278, &qword_22C2ADFA8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911278, &qword_22C2ADFA8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911278, &qword_22C2ADFA8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0686AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911280, &qword_22C2ADFB0);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_22BE33928(v18, &qword_27D911280, &qword_22C2ADFB0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910518, type metadata accessor for TranscriptProtoExplicitResolutionRequest, &protocol conformance descriptor for TranscriptProtoExplicitResolutionRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911280, &qword_22C2ADFB0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911280, &qword_22C2ADFB0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911280, &qword_22C2ADFB0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911280, &qword_22C2ADFB0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C068BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911288, &qword_22C2ADFB8);
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
    sub_22BE33928(v10, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_22BE33928(v18, &qword_27D911288, &qword_22C2ADFB8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910400, type metadata accessor for TranscriptProtoStructuredSearchExpression, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911288, &qword_22C2ADFB8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911288, &qword_22C2ADFB8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911288, &qword_22C2ADFB8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911288, &qword_22C2ADFB8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}