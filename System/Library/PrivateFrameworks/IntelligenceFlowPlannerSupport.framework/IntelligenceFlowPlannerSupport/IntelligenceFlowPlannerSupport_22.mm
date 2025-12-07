uint64_t sub_22C0224EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  sub_22C272594();
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  return sub_22C2706F4();
}

void TranscriptProtoParameterNotAllowed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C0B1EE4();
  sub_22BE1A730();
  if (!v5 || (sub_22BE25098(), sub_22C270844(), !v3))
  {
    sub_22BE17D60();
    sub_22BE47B20();
    if (!v3)
    {
      if (*(v4 + 16))
      {
        sub_22C09DB48();
        sub_22BE23CE4();
        sub_22C2707D4();
      }

      type metadata accessor for TranscriptProtoParameterNotAllowed(0);
      v6 = sub_22BE375E4();
      sub_22BE363D4(v6, v7);
    }
  }

  sub_22C0B1ED0();
}

void static TranscriptProtoParameterNotAllowed.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  sub_22C272594();
  sub_22BE35868();
  MEMORY[0x28223BE20](v4);
  sub_22BE17CBC();
  v5 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25CD0();
  sub_22BE33C20();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v11 = *(v3 + 48);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE181B0(v2);
  if (v10)
  {
    sub_22BE181B0(v2 + v11);
    if (v10)
    {
      sub_22BE33928(v2, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_16;
    }

LABEL_14:
    sub_22BE33928(v2, &qword_27D909130, &unk_22C27FD30);
LABEL_18:
    v25 = 0;
    goto LABEL_19;
  }

  sub_22C0B1FC0();
  sub_22BE181B0(v2 + v11);
  if (v12)
  {
    sub_22C0B19BC();
    v13 = sub_22BE36680();
    v14(v13);
    goto LABEL_14;
  }

  v15 = sub_22C0B1B78();
  v16(v15);
  sub_22BE192C8();
  sub_22BE2C988(v17, v18, MEMORY[0x277D727F0]);
  v19 = sub_22C0B19D4();
  v20 = sub_22BE3C5E4();
  MEMORY[0](v20);
  v21 = sub_22BE36680();
  MEMORY[0](v21);
  sub_22BE33928(v2, &qword_27D909128, &qword_22C294AA0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (*(v1 + 16) != *(v0 + 16))
  {
    goto LABEL_18;
  }

  sub_22C2704B4();
  sub_22BE18E5C();
  v24 = sub_22BE2C988(v22, v23, MEMORY[0x277D216D0]);
  v25 = sub_22BE35FB8(v24);
LABEL_19:
  sub_22BE1C1DC(v25);
  sub_22BE1AABC();
}

uint64_t sub_22C022A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910EC0, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C022AA0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FA80, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C022B10(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FA80, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);

  return sub_22C270774();
}

uint64_t sub_22C022B90()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D430);
  sub_22BE199F4(v0, qword_27D90D430);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "missingRequiredPhoneNumber";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "missingRequiredEmailAddress";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C022DD4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D448);
  sub_22BE199F4(v0, qword_27D90D448);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C022FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  sub_22C272594();
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  return sub_22C2706F4();
}

uint64_t sub_22C0230E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
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

void static TranscriptProtoParameterCandidatesNotFound.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  sub_22C272594();
  sub_22BE35868();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BE17CBC();
  v5 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25CD0();
  sub_22BE33C20();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_15;
  }

  type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v11 = *(v1 + 48);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE181B0(v0);
  if (v10)
  {
    sub_22BE181B0(v0 + v11);
    if (v10)
    {
      sub_22BE33928(v0, &qword_27D909128, &qword_22C294AA0);
LABEL_17:
      sub_22C2704B4();
      sub_22BE18E5C();
      v26 = sub_22BE2C988(v24, v25, MEMORY[0x277D216D0]);
      v15 = sub_22BE35FB8(v26);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_22C0B1FC0();
  sub_22BE181B0(v0 + v11);
  if (v12)
  {
    sub_22C0B19BC();
    v13 = sub_22BE36680();
    v14(v13);
LABEL_14:
    sub_22BE33928(v0, &qword_27D909130, &unk_22C27FD30);
    goto LABEL_15;
  }

  v16 = sub_22BE3BD64();
  v17(v16);
  sub_22BE192C8();
  sub_22BE2C988(v18, v19, MEMORY[0x277D727F0]);
  v20 = sub_22C0B19D4();
  v21 = *(v3 + 8);
  v22 = sub_22BE3C5E4();
  v21(v22);
  v23 = sub_22BE36680();
  v21(v23);
  sub_22BE33928(v0, &qword_27D909128, &qword_22C294AA0);
  if (v20)
  {
    goto LABEL_17;
  }

LABEL_15:
  v15 = 0;
LABEL_18:
  sub_22BE1C1DC(v15);
  sub_22BE1AABC();
}

uint64_t sub_22C023648(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910EB8, type metadata accessor for TranscriptProtoParameterCandidatesNotFound, &protocol conformance descriptor for TranscriptProtoParameterCandidatesNotFound);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0236C8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FAA8, type metadata accessor for TranscriptProtoParameterCandidatesNotFound, &protocol conformance descriptor for TranscriptProtoParameterCandidatesNotFound);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C023738(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FAA8, type metadata accessor for TranscriptProtoParameterCandidatesNotFound, &protocol conformance descriptor for TranscriptProtoParameterCandidatesNotFound);

  return sub_22C270774();
}

uint64_t sub_22C02386C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910EB0, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0238E8(uint64_t a1)
{
  v2 = sub_22BE2C988(&unk_281076C00, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C023958(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&unk_281076C00, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);

  return sub_22C270774();
}

uint64_t static TranscriptProtoSpanID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoSpanID(v2);
  sub_22BE3636C();
  sub_22BE18E5C();
  v5 = sub_22BE2C988(v3, v4, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v5) & 1;
}

uint64_t sub_22C023B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910EA8, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C023BB8(uint64_t a1)
{
  v2 = sub_22BE2C988(&unk_28107A328, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C023C28(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&unk_28107A328, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);

  return sub_22C270774();
}

uint64_t sub_22C023CCC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D460);
  sub_22BE199F4(v0, qword_27D90D460);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v6 = "prompt";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "promptResponse";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 9;
  *v12 = "statements";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "overrideId";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 11;
  *v16 = "planSource";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoPlan.decodeMessage<A>(decoder:)()
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
      case 4:
        sub_22BE2037C();
        sub_22C2706A4();
        break;
      case 9:
        v7 = sub_22BE18E2C();
        sub_22C02401C(v7, v8);
        break;
      case 10:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 11:
        v3 = sub_22BE18E2C();
        sub_22C0240BC(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C02401C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TranscriptProtoProgramStatement(0);
  sub_22BE2C988(&qword_27D90E9F8, type metadata accessor for TranscriptProtoProgramStatement, &protocol conformance descriptor for TranscriptProtoProgramStatement);
  return sub_22C2706E4();
}

void TranscriptProtoPlan.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE1A730();
  if (!v2 || (sub_22BE2910C(), sub_22C270844(), !v0))
  {
    sub_22BE1B448();
    if (!v3 || (sub_22BE2910C(), sub_22C270844(), !v0))
    {
      if (!*(*(v1 + 32) + 16) || (type metadata accessor for TranscriptProtoProgramStatement(0), sub_22BE2C988(&qword_27D90E9F8, type metadata accessor for TranscriptProtoProgramStatement, &protocol conformance descriptor for TranscriptProtoProgramStatement), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
      {
        v4 = sub_22BE17D60();
        sub_22C02422C(v4);
        if (!v0)
        {
          v5 = sub_22BE17D60();
          sub_22C024268(v5, v6, v7, v8);
          type metadata accessor for TranscriptProtoPlan(0);
          sub_22BE1AC30();
        }
      }
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C02422C(uint64_t result)
{
  if (*(result + 48))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22C024268(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 56) != 6)
  {
    sub_22C0B07C0();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t static TranscriptProtoPlan.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE3E81C();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE9FF28();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(v2 + 48);
  v11 = *(v1 + 48);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *(v2 + 40) == *(v1 + 40) && v10 == v11;
    if (!v12 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }

LABEL_21:
    v13 = *(v2 + 56);
    v14 = *(v1 + 56);
    if (v13 == 6)
    {
      if (v14 != 6)
      {
        return 0;
      }
    }

    else if (v14 == 6 || qword_22C2AE418[v13] != qword_22C2AE418[v14])
    {
      return 0;
    }

    type metadata accessor for TranscriptProtoPlan(0);
    sub_22C2704B4();
    sub_22BE18E5C();
    v17 = sub_22BE2C988(v15, v16, MEMORY[0x277D216D0]);
    return sub_22BE2B85C(v17) & 1;
  }

  if (!v11)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t sub_22C0244B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910EA0, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C024530(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FAD0, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0245A0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FAD0, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);

  return sub_22C270774();
}

uint64_t sub_22C024698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EA08, &qword_22C297000);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911478, &qword_22C2AE1A0);
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
    sub_22BE33928(v10, &qword_27D90EA08, &qword_22C297000);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE33928(v18, &qword_27D911478, &qword_22C2AE1A0);
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE19DC4(v18, 0, 1, v5);
  }

  sub_22BE2C988(&qword_27D90FB00, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);
  v20 = v27;
  sub_22C2706F4();
  if (v20)
  {
    v21 = v18;
    return sub_22BE33928(v21, &qword_27D911478, &qword_22C2AE1A0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911478, &qword_22C2AE1A0);
    v21 = v15;
    return sub_22BE33928(v21, &qword_27D911478, &qword_22C2AE1A0);
  }

  sub_22C0B0868();
  if (v19 != 1)
  {
    sub_22C270594();
  }

  sub_22BE33928(v18, &qword_27D911478, &qword_22C2AE1A0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EA08, &qword_22C297000);
  sub_22C0B0868();
  return sub_22BE19DC4(v23, 0, 1, v24);
}

uint64_t sub_22C024B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EA08, &qword_22C297000);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EA08, &qword_22C297000);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FB00, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C024FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E98, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C02505C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FAE8, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0250CC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FAE8, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);

  return sub_22C270774();
}

uint64_t sub_22C0251C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EA20, &qword_22C2B5BA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911470, &qword_22C2AE198);
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
    sub_22BE33928(v10, &qword_27D90EA20, &qword_22C2B5BA0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE33928(v18, &qword_27D911470, &qword_22C2AE198);
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE19DC4(v18, 0, 1, v5);
  }

  sub_22BE2C988(&qword_27D90FB18, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);
  v20 = v27;
  sub_22C2706F4();
  if (v20)
  {
    v21 = v18;
    return sub_22BE33928(v21, &qword_27D911470, &qword_22C2AE198);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911470, &qword_22C2AE198);
    v21 = v15;
    return sub_22BE33928(v21, &qword_27D911470, &qword_22C2AE198);
  }

  sub_22C0B0868();
  if (v19 != 1)
  {
    sub_22C270594();
  }

  sub_22BE33928(v18, &qword_27D911470, &qword_22C2AE198);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EA20, &qword_22C2B5BA0);
  sub_22C0B0868();
  return sub_22BE19DC4(v23, 0, 1, v24);
}

uint64_t sub_22C0256A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EA20, &qword_22C2B5BA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EA20, &qword_22C2B5BA0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FB18, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C025B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E90, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C025B88(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FB00, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C025BF8(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FB00, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);

  return sub_22C270774();
}

uint64_t sub_22C025C90()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D4A8);
  sub_22BE199F4(v0, qword_27D90D4A8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rawModelOutput";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prompt";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "error";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.decodeMessage<A>(decoder:)()
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

    if (result == 4)
    {
      v3 = sub_22BE18E2C();
      sub_22C025F34(v3, v4, v5, v6);
    }

    else if (result == 2 || result == 1)
    {
      sub_22BE2037C();
      sub_22C2706A4();
    }
  }

  return result;
}

uint64_t sub_22C025F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    sub_22BE1B448();
    if (!v3 || (sub_22BE2910C(), result = sub_22C270844(), !v0))
    {
      v4 = sub_22BE17D60();
      result = sub_22C026074(v4, v5, v6, v7);
      if (!v0)
      {
        type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
        v8 = sub_22BE375E4();
        return sub_22BE363D4(v8, v9);
      }
    }
  }

  return result;
}

uint64_t sub_22C026074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoPlanGenerationModelOutputError.== infix(_:_:)()
{
  sub_22BE19460();
  v6 = sub_22BE23708();
  type metadata accessor for TranscriptProtoIntelligenceFlowError(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE18DFC();
  v8 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D90EA40, &qword_22C297018);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E64();
  sub_22BE33C20();
  v13 = v13 && v11 == v12;
  if (!v13 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_31;
  }

  v14 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v14 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_31;
  }

  v15 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  sub_22C0B1694(v15);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22C0B1568();
  sub_22BE181B0(v2);
  if (v13)
  {
    sub_22BE181B0(v2 + v5);
    if (v13)
    {
      sub_22BE33928(v2, &qword_27D90EA38, &qword_22C2B5B90);
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE181B0(v2 + v5);
  if (v20)
  {
    sub_22C0B1AA4();
LABEL_20:
    v21 = &qword_27D90EA40;
    v22 = &qword_22C297018;
LABEL_30:
    sub_22BE33928(v2, v21, v22);
LABEL_31:
    v19 = 0;
    goto LABEL_32;
  }

  sub_22C0B1D54();
  v23 = *v4 == *v3 && v4[1] == v3[1];
  if (!v23 && (sub_22C274014() & 1) == 0 || v4[2] != v3[2])
  {
    sub_22C0B08BC();
    sub_22BE291B0();
    sub_22C0B08BC();
    v21 = &qword_27D90EA38;
    v22 = &qword_22C2B5B90;
    goto LABEL_30;
  }

  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v24, v25, MEMORY[0x277D216D0]);
  v26 = sub_22C0B1B14();
  sub_22C0B08BC();
  sub_22BE3EA80();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D90EA38, &qword_22C2B5B90);
  if ((v26 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  sub_22C0B1A60();
  sub_22BE18E5C();
  v18 = sub_22BE2C988(v16, v17, MEMORY[0x277D216D0]);
  v19 = sub_22BE35FB8(v18);
LABEL_32:
  sub_22BE1C1DC(v19);
  sub_22BE1AABC();
}

uint64_t sub_22C0265F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E88, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C026674(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FB18, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0266E4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FB18, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);

  return sub_22C270774();
}

void TranscriptProtoQueryResults.decodeMessage<A>(decoder:)()
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
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoQueryResults.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoCandidate(0), sub_22BE2C988(&qword_27D90EA50, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoQueryResults(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C0269BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E80, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C026A3C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EAC0, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C026AAC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90EAC0, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults);

  return sub_22C270774();
}

uint64_t sub_22C026B38()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D4D8);
  sub_22BE199F4(v0, qword_27D90D4D8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "context";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "payload";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "isAuthenticated";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoQueryStep.decodeMessage<A>(decoder:)()
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
        v3 = sub_22BE18E2C();
        sub_22C026E3C(v3, v4, v5, v6);
        break;
      case 4:
        v11 = sub_22BE18E2C();
        sub_22C026EF0(v11, v12, v13, v14);
        break;
      case 5:
        v7 = sub_22BE18E2C();
        sub_22C026FA4(v7, v8, v9, v10);
        break;
      case 6:
        sub_22BE239F4();
        sub_22C2705C4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C026E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryStep(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C026EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryStep(0);
  type metadata accessor for TranscriptProtoActionParameterContext(0);
  sub_22BE2C988(&qword_27D90F7B8, type metadata accessor for TranscriptProtoActionParameterContext, &protocol conformance descriptor for TranscriptProtoActionParameterContext);
  return sub_22C2706F4();
}

uint64_t sub_22C026FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryStep(0);
  type metadata accessor for TranscriptProtoQueryPayload(0);
  sub_22BE2C988(&qword_27D90FB58, type metadata accessor for TranscriptProtoQueryPayload, &protocol conformance descriptor for TranscriptProtoQueryPayload);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoQueryStep.traverse<A>(visitor:)()
{
  v1 = sub_22BE3B0CC();
  result = sub_22C0270EC(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = sub_22BE17D60();
    sub_22C0272C0(v6, v7, v8, v9);
    v10 = sub_22BE17D60();
    sub_22C027494(v10, v11, v12, v13);
    sub_22C0B1C3C();
    if (v14)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    type metadata accessor for TranscriptProtoQueryStep(0);
    return sub_22BE1AC30();
  }

  return result;
}

uint64_t sub_22C0270EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoQueryStep(0);
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

uint64_t sub_22C0272C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EA70, &unk_22C2AE680);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoQueryStep(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EA70, &unk_22C2AE680);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F7B8, type metadata accessor for TranscriptProtoActionParameterContext, &protocol conformance descriptor for TranscriptProtoActionParameterContext);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C027494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EA60, &qword_22C2B5D40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  MEMORY[0x28223BE20](Payload);
  type metadata accessor for TranscriptProtoQueryStep(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, Payload) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EA60, &qword_22C2B5D40);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FB58, type metadata accessor for TranscriptProtoQueryPayload, &protocol conformance descriptor for TranscriptProtoQueryPayload);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoQueryStep.== infix(_:_:)()
{
  sub_22BE19460();
  v55 = v2;
  v3 = sub_22C0B1E74();
  type metadata accessor for TranscriptProtoQueryPayload(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE3FF64(v5);
  v6 = sub_22BE5CE4C(&qword_27D90EA60, &qword_22C2B5D40);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE33FF0(v8, v50);
  sub_22BE5CE4C(&qword_27D90EA68, &qword_22C297020);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v11 = sub_22BE4098C(v10, v51);
  v12 = type metadata accessor for TranscriptProtoActionParameterContext(v11);
  v13 = sub_22BE1B7B0(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  sub_22C0B1ABC(v14);
  v15 = sub_22BE5CE4C(&qword_27D90EA70, &unk_22C2AE680);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE181D0(v17, v52);
  sub_22BE5CE4C(&qword_27D90EA78, &qword_22C297028);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v20 = sub_22BE1BC94(v19, v53);
  v21 = type metadata accessor for TranscriptProtoStatementID(v20);
  sub_22BE18000();
  MEMORY[0x28223BE20](v22);
  sub_22BE179EC();
  v25 = (v24 - v23);
  v26 = sub_22BE289D8();
  v28 = sub_22BE5CE4C(v26, v27);
  sub_22BE19448(v28);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE19E64();
  v30 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00) - 8;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE25CD0();
  type metadata accessor for TranscriptProtoQueryStep(0);
  v32 = *(v30 + 56);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE3CAA4(v1);
  if (v33)
  {
    sub_22BE3CAA4(v1 + v32);
    if (v33)
    {
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v34 = &qword_27D909100;
    v35 = &unk_22C27FD00;
    v36 = v1;
LABEL_30:
    sub_22BE33928(v36, v34, v35);
    goto LABEL_31;
  }

  sub_22BE1B328();
  sub_22BE22868();
  sub_22BE3CAA4(v1 + v32);
  if (v33)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v37 = sub_22BE194F8();
  v21 = static TranscriptProtoStatementID.== infix(_:_:)(v37, v38);
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  sub_22BE3E7A8();
  sub_22C0B1DB4();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v39 = sub_22BFB1A7C();
  sub_22BE36144(v39, v40);
  if (v33)
  {
    sub_22BE18190(v21 + v0);
    if (v33)
    {
      sub_22BE33928(v21, &qword_27D90EA70, &unk_22C2AE680);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_22BE22868();
  sub_22BE18190(v21 + v0);
  if (v41)
  {
    sub_22C0B1D88();
LABEL_19:
    v34 = &qword_27D90EA78;
    v35 = &qword_22C297028;
    v36 = v21;
    goto LABEL_30;
  }

  sub_22C0B0868();
  sub_22C0B1B94();
  static TranscriptProtoActionParameterContext.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE3C968();
  sub_22C0B08BC();
  sub_22BE33928(v21, &qword_27D90EA70, &unk_22C2AE680);
  if ((&unk_22C2AE680 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  sub_22C0B1B6C();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE3CBC0();
  sub_22BE22868();
  v42 = sub_22BFB1A7C();
  sub_22BE36144(v42, v43);
  if (!v33)
  {
    sub_22C0B1D14();
    sub_22BE18A84();
    if (!v44)
    {
      sub_22C0B0868();
      v46 = sub_22BE200E0();
      static TranscriptProtoQueryPayload.== infix(_:_:)(v46);
      sub_22BE39304();
      sub_22BE39EAC();
      sub_22C0B08BC();
      sub_22BE33928(v54, &qword_27D90EA60, &qword_22C2B5D40);
      if ((&qword_22C2B5D40 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }

    sub_22BE291DC();
    sub_22C0B08BC();
    goto LABEL_29;
  }

  sub_22BE18A84();
  if (!v33)
  {
LABEL_29:
    v34 = &qword_27D90EA68;
    v35 = &qword_22C297020;
    v36 = v54;
    goto LABEL_30;
  }

  sub_22BE33928(v54, &qword_27D90EA60, &qword_22C2B5D40);
LABEL_34:
  if (*v25 == *v55)
  {
    sub_22C0B1D70();
    sub_22BE18E5C();
    v49 = sub_22BE2C988(v47, v48, MEMORY[0x277D216D0]);
    v45 = sub_22BE406DC(v49);
    goto LABEL_32;
  }

LABEL_31:
  v45 = 0;
LABEL_32:
  sub_22BE1C1DC(v45);
  sub_22BE1AABC();
}

uint64_t sub_22C027CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E78, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C027D5C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FB40, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C027DCC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FB40, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);

  return sub_22C270774();
}

uint64_t sub_22C027E58()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D4F0);
  sub_22BE199F4(v0, qword_27D90D4F0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
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
  *v10 = "person";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "string";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "id";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "answerSynthesisTool";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoQueryPayload.decodeMessage<A>(decoder:)()
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
        sub_22C0281A8(v3, v4, v5, v6);
        break;
      case 2:
        v19 = sub_22BE236F4();
        sub_22C0286A0(v19, v20, v21, v22);
        break;
      case 3:
        v11 = sub_22BE236F4();
        sub_22C028B98(v11, v12, v13, v14);
        break;
      case 4:
        v15 = sub_22BE236F4();
        sub_22C029090(v15, v16, v17, v18);
        break;
      case 5:
        v7 = sub_22BE236F4();
        sub_22C029588(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C0281A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EA88, &unk_22C2AE690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  MEMORY[0x28223BE20](PayloadEnum);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911448, &qword_22C2AE170);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, PayloadEnum);
  v27 = PayloadEnum;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90EA88, &unk_22C2AE690);
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
      sub_22BE33928(v18, &qword_27D911448, &qword_22C2AE170);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90FB70, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911448, &qword_22C2AE170);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911448, &qword_22C2AE170);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911448, &qword_22C2AE170);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911448, &qword_22C2AE170);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EA88, &unk_22C2AE690);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0286A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EA88, &unk_22C2AE690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  MEMORY[0x28223BE20](PayloadEnum);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911450, &qword_22C2AE178);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, PayloadEnum);
  v27 = PayloadEnum;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90EA88, &unk_22C2AE690);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
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
  sub_22BE33928(v25, &qword_27D90EA88, &unk_22C2AE690);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C028B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EA88, &unk_22C2AE690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  MEMORY[0x28223BE20](PayloadEnum);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911458, &qword_22C2AE180);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, PayloadEnum);
  v27 = PayloadEnum;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90EA88, &unk_22C2AE690);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v18, &qword_27D911458, &qword_22C2AE180);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FB88, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911458, &qword_22C2AE180);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911458, &qword_22C2AE180);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911458, &qword_22C2AE180);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911458, &qword_22C2AE180);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EA88, &unk_22C2AE690);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C029090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EA88, &unk_22C2AE690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  MEMORY[0x28223BE20](PayloadEnum);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911460, &qword_22C2AE188);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, PayloadEnum);
  v27 = PayloadEnum;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90EA88, &unk_22C2AE690);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v18, &qword_27D911460, &qword_22C2AE188);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FBA0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911460, &qword_22C2AE188);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911460, &qword_22C2AE188);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911460, &qword_22C2AE188);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911460, &qword_22C2AE188);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EA88, &unk_22C2AE690);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C029588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EA88, &unk_22C2AE690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  MEMORY[0x28223BE20](PayloadEnum);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911468, &qword_22C2AE190);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, PayloadEnum);
  v27 = PayloadEnum;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90EA88, &unk_22C2AE690);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v18, &qword_27D911468, &qword_22C2AE190);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FBB8, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911468, &qword_22C2AE190);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911468, &qword_22C2AE190);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911468, &qword_22C2AE190);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911468, &qword_22C2AE190);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EA88, &unk_22C2AE690);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoQueryPayload.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  sub_22BE2B890(PayloadEnum);
  if (v6)
  {
    goto LABEL_9;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = sub_22BE17D78();
      sub_22C029D9C(v23, v24, v25, v26);
      break;
    case 2u:
      v15 = sub_22BE17D78();
      sub_22C029FA4(v15, v16, v17, v18);
      break;
    case 3u:
      v19 = sub_22BE17D78();
      sub_22C02A1AC(v19, v20, v21, v22);
      break;
    case 4u:
      v11 = sub_22BE17D78();
      sub_22C02A3B4(v11, v12, v13, v14);
      break;
    default:
      v7 = sub_22BE17D78();
      sub_22C029B98(v7, v8, v9, v10);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_9:
    type metadata accessor for TranscriptProtoQueryPayload(0);
    sub_22BE235A8();
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C029B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EA88, &unk_22C2AE690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, PayloadEnum) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EA88, &unk_22C2AE690);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FB70, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C029D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EA88, &unk_22C2AE690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, PayloadEnum) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EA88, &unk_22C2AE690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
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

uint64_t sub_22C029FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EA88, &unk_22C2AE690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, PayloadEnum) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EA88, &unk_22C2AE690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FB88, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C02A1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EA88, &unk_22C2AE690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, PayloadEnum) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EA88, &unk_22C2AE690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FBA0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C02A3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EA88, &unk_22C2AE690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, PayloadEnum) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EA88, &unk_22C2AE690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FBB8, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C02A84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E70, type metadata accessor for TranscriptProtoQueryPayload, &protocol conformance descriptor for TranscriptProtoQueryPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C02A8CC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FB58, type metadata accessor for TranscriptProtoQueryPayload, &protocol conformance descriptor for TranscriptProtoQueryPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C02A93C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FB58, type metadata accessor for TranscriptProtoQueryPayload, &protocol conformance descriptor for TranscriptProtoQueryPayload);

  return sub_22C270774();
}

uint64_t sub_22C02A9BC()
{
  result = MEMORY[0x2318AB8D0](0xD000000000000010, 0x800000022C2D9C60);
  qword_27D90D508 = 0xD000000000000017;
  unk_27D90D510 = 0x800000022C2D7790;
  return result;
}

uint64_t sub_22C02AB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E68, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C02AC1C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FB70, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C02AC8C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FB70, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);

  return sub_22C270774();
}

uint64_t sub_22C02AD0C()
{
  result = MEMORY[0x2318AB8D0](0x51676E697274532ELL, 0xEC00000079726575);
  qword_27D90D530 = 0xD000000000000017;
  *algn_27D90D538 = 0x800000022C2D7790;
  return result;
}

uint64_t sub_22C02ADA0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D540);
  sub_22BE199F4(v0, qword_27D90D540);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typeId";
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

uint64_t sub_22C02AFB8()
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

    if (result == 2)
    {
      sub_22BE25300();
      sub_22C2706A4();
    }

    else if (result == 1)
    {
      sub_22BE1A8C4();
      sub_22BE32BF0();
      v0();
    }
  }

  return result;
}

uint64_t sub_22C02B030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  sub_22C2725C4();
  sub_22BE2C988(&qword_27D90C788, MEMORY[0x277D72830], MEMORY[0x277D72828]);
  return sub_22C2706F4();
}

void sub_22C02B124()
{
  sub_22BE1B214();
  v2 = v1;
  v3 = sub_22BE3B0CC();
  v4(v3);
  if (!v0)
  {
    sub_22BE1B448();
    if (v5)
    {
      sub_22BE2910C();
      sub_22C270844();
    }

    v2(0);
    sub_22BE25FB0();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C02B1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a4;
  v12[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_22C2725C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D909280, &unk_22C294B50);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C988(&qword_27D90C788, MEMORY[0x277D72830], MEMORY[0x277D72828]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

void static TranscriptProtoQueryPayload.StringQuery.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE17BC4();
  sub_22C2725C4();
  sub_22BE35868();
  MEMORY[0x28223BE20](v3);
  sub_22BE18DFC();
  v4 = sub_22BE289D8();
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE234F4();
  sub_22BE5CE4C(&qword_27D909288, &unk_22C27FE70);
  sub_22BE252F0();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  v9 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  sub_22C0B15D0(v9);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE181B0(v1);
  if (!v10)
  {
    sub_22BE1B18C();
    sub_22BE22868();
    sub_22BE181B0(v1 + v2);
    if (!v10)
    {
      sub_22BE46530();
      v14 = sub_22C0B19F4();
      v15(v14);
      sub_22C0B1890();
      sub_22BE2C988(v16, v17, MEMORY[0x277D72838]);
      sub_22BE33560();
      sub_22C272FD4();
      sub_22C0B1CA8();
      v18 = sub_22BE431C0();
      v0(v18);
      v19 = sub_22BE35838();
      v0(v19);
      sub_22BE33928(v1, &qword_27D909280, &unk_22C294B50);
      if ((&qword_27D909280 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    v11 = sub_22BE3F3A8();
    v12(v11);
LABEL_9:
    sub_22BE33928(v1, &qword_27D909288, &unk_22C27FE70);
    goto LABEL_10;
  }

  sub_22BE181B0(v1 + v2);
  if (!v10)
  {
    goto LABEL_9;
  }

  sub_22BE33928(v1, &qword_27D909280, &unk_22C294B50);
LABEL_12:
  sub_22BEC04E8();
  if (v10)
  {
    v22 = v20 == v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 || (sub_22C274014() & 1) != 0)
  {
    sub_22C0B1AC8();
    sub_22BE18E5C();
    v25 = sub_22BE2C988(v23, v24, MEMORY[0x277D216D0]);
    v13 = sub_22BE3C4B0(v25);
    goto LABEL_18;
  }

LABEL_10:
  v13 = 0;
LABEL_18:
  sub_22BE1C1DC(v13);
  sub_22BE1AABC();
}

uint64_t sub_22C02B6C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E60, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C02B740(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FB88, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C02B7B0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FB88, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);

  return sub_22C270774();
}

uint64_t sub_22C02B830()
{
  result = MEMORY[0x2318AB8D0](0xD000000000000010, 0x800000022C2D9C40);
  qword_27D90D558 = 0xD000000000000017;
  unk_27D90D560 = 0x800000022C2D7790;
  return result;
}

uint64_t sub_22C02B8C4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D568);
  sub_22BE199F4(v0, qword_27D90D568);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typeId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ids";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C02BAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  sub_22C2725C4();
  sub_22BE2C988(&qword_27D90C788, MEMORY[0x277D72830], MEMORY[0x277D72828]);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoQueryPayload.IdentifierQuery.traverse<A>(visitor:)()
{
  v2 = sub_22BE3B0CC();
  result = sub_22C02BC14(v2, v3, v4, v5);
  if (!v0)
  {
    if (*(*v1 + 16))
    {
      sub_22BE1BAB8();
      sub_22C270824();
    }

    type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
    return sub_22BE25FB0();
  }

  return result;
}

uint64_t sub_22C02BC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a4;
  v12[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_22C2725C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D909280, &unk_22C294B50);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C988(&qword_27D90C788, MEMORY[0x277D72830], MEMORY[0x277D72828]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

void static TranscriptProtoQueryPayload.IdentifierQuery.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  sub_22BE17BC4();
  sub_22C2725C4();
  sub_22BE35868();
  MEMORY[0x28223BE20](v5);
  sub_22BE17CBC();
  v6 = sub_22BE289D8();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE234F4();
  sub_22BE5CE4C(&qword_27D909288, &unk_22C27FE70);
  sub_22BE252F0();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B01C();
  v11 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  sub_22C0B15D0(v11);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE181B0(v1);
  if (v12)
  {
    sub_22BE181B0(v1 + v2);
    if (v12)
    {
      sub_22BE33928(v1, &qword_27D909280, &unk_22C294B50);
      goto LABEL_11;
    }

LABEL_9:
    sub_22BE33928(v1, &qword_27D909288, &unk_22C27FE70);
LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  sub_22BE1B18C();
  sub_22BE22868();
  sub_22BE181B0(v1 + v2);
  if (v12)
  {
    v13 = sub_22BE3F3A8();
    v14(v13);
    goto LABEL_9;
  }

  sub_22BE46530();
  v15 = sub_22BE3BD64();
  v16(v15);
  sub_22C0B1890();
  sub_22BE2C988(v17, v18, MEMORY[0x277D72838]);
  sub_22BE19478();
  sub_22C272FD4();
  sub_22C0B1CA8();
  v19 = sub_22BE3C5E4();
  v0(v19);
  v20 = sub_22BE35838();
  v0(v20);
  sub_22BE33928(v1, &qword_27D909280, &unk_22C294B50);
  if ((&qword_27D909280 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((sub_22BE9693C(*v25, *v4) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_22C0B1AC8();
  sub_22BE18E5C();
  v23 = sub_22BE2C988(v21, v22, MEMORY[0x277D216D0]);
  v24 = sub_22BE3C4B0(v23);
LABEL_14:
  sub_22BE1C1DC(v24);
  sub_22BE1AABC();
}

uint64_t sub_22C02C12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E58, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C02C1AC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FBA0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C02C21C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FBA0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);

  return sub_22C270774();
}

uint64_t sub_22C02C29C()
{
  result = MEMORY[0x2318AB8D0](0xD000000000000019, 0x800000022C2D9C10);
  qword_27D90D580 = 0xD000000000000017;
  *algn_27D90D588 = 0x800000022C2D7790;
  return result;
}

uint64_t sub_22C02C394()
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

    if (result == 2)
    {
      sub_22BE1A8C4();
      sub_22BE32BF0();
      v0();
    }
  }

  return result;
}

void sub_22C02C41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE358D4();
  sub_22BE3E638();
  if (!v14)
  {
    goto LABEL_4;
  }

  v18 = v13;
  sub_22C270464();
  sub_22C0B19C8();
  sub_22C272594();
  v15 = MEMORY[0x277D727E0];
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  sub_22BE46B68();
  sub_22BE2C988(v16, v15, v17);
  sub_22BE37D10();
  sub_22BE3CEA4();
  sub_22C0B1658();
  sub_22C270794();
  if (!v12)
  {
    v13 = v18;
LABEL_4:
    v13(0);
    sub_22BE294F8();
  }

  sub_22C0B171C();
}

uint64_t sub_22C02C5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E50, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C02C638(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FBB8, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C02C6A8(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FBB8, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);

  return sub_22C270774();
}

uint64_t sub_22C02C734()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D5A8);
  sub_22BE199F4(v0, qword_27D90D5A8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "queryResults";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "originStatementId";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rawQueryEventId";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoQueryStepResults.decodeMessage<A>(decoder:)()
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
        sub_22BE2037C();
        sub_22C2706A4();
        break;
      case 2:
        v3 = sub_22BE18E2C();
        sub_22C02CA2C(v3, v4, v5, v6);
        break;
      case 1:
        sub_22BE1C37C();
        sub_22BFE7680();
        break;
    }
  }
}

uint64_t sub_22C02CA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryStepResults(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoQueryStepResults.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoQueryResults(0), sub_22BE2C988(&qword_27D90EAC0, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v2 = sub_22BE17D60();
    sub_22C02CBB4(v2, v3, v4, v5);
    if (!v0)
    {
      sub_22BE1B448();
      if (v6)
      {
        sub_22BE2910C();
        sub_22C270844();
      }

      type metadata accessor for TranscriptProtoQueryStepResults(0);
      v7 = sub_22BE375E4();
      sub_22BE363D4(v7, v8);
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C02CBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoQueryStepResults(0);
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

uint64_t sub_22C02D07C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E48, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C02D0FC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FBD0, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C02D16C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FBD0, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);

  return sub_22C270774();
}

uint64_t sub_22C02D1F8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D5C0);
  sub_22BE199F4(v0, qword_27D90D5C0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "fullPrint";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fullSpeak";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "supportingPrint";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "supportingSpeak";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoResponseDialog.decodeMessage<A>(decoder:)()
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

uint64_t TranscriptProtoResponseDialog.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    v3 = sub_22BE17D60();
    result = sub_22BE4E2BC(v3);
    if (!v0)
    {
      v4 = sub_22BE17D60();
      sub_22BE4E2F4(v4);
      v5 = sub_22BE17D60();
      sub_22BF9AA4C(v5);
      type metadata accessor for TranscriptProtoResponseDialog(0);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t static TranscriptProtoResponseDialog.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[3];
  if (v2[3])
  {
    if (!v6)
    {
      return 0;
    }

    sub_22BFB1A50();
    v9 = v5 && v7 == v8;
    if (!v9 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_22BE46B5C();
  if (v11)
  {
    if (!v10)
    {
      return 0;
    }

    sub_22BFB1A40();
    v14 = v5 && v12 == v13;
    if (!v14 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = v2[7];
  v16 = v1[7];
  if (v15)
  {
    if (v16)
    {
      v17 = v2[6] == v1[6] && v15 == v16;
      if (v17 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v16)
  {
LABEL_31:
    type metadata accessor for TranscriptProtoResponseDialog(0);
    sub_22C2704B4();
    sub_22BE18E5C();
    v20 = sub_22BE2C988(v18, v19, MEMORY[0x277D216D0]);
    return sub_22BE2B85C(v20) & 1;
  }

  return 0;
}

uint64_t sub_22C02D738(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E40, type metadata accessor for TranscriptProtoResponseDialog, &protocol conformance descriptor for TranscriptProtoResponseDialog);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C02D7B8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FBE8, type metadata accessor for TranscriptProtoResponseDialog, &protocol conformance descriptor for TranscriptProtoResponseDialog);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C02D828(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FBE8, type metadata accessor for TranscriptProtoResponseDialog, &protocol conformance descriptor for TranscriptProtoResponseDialog);

  return sub_22C270774();
}

uint64_t sub_22C02D8B4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D5D8);
  sub_22BE199F4(v0, qword_27D90D5D8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22C28E690;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "visualOutput";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "printedDialogOutput";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "spokenDialogOutput";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "responseType";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "resultStatementIds";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "options";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "attribution";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "dialogIdentifier";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "entities";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v7();
  return sub_22C2708A4();
}

void TranscriptProtoResponseOutput.decodeMessage<A>(decoder:)()
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
        sub_22BE1C37C();
        sub_22BFE7680();
        break;
      case 2:
        v11 = sub_22BE18E2C();
        sub_22C02DDCC(v11, v12, v13, v14);
        break;
      case 3:
        v3 = sub_22BE18E2C();
        sub_22C02DE80(v3, v4, v5, v6);
        break;
      case 4:
        v7 = sub_22BE18E2C();
        sub_22C02DF34(v7, v8, v9, v10);
        break;
      case 5:
        sub_22BE18E2C();
        sub_22BFE0AA0();
        break;
      case 6:
        v15 = sub_22BE18E2C();
        sub_22C02DF9C(v15, v16, v17, v18);
        break;
      case 7:
        v19 = sub_22BE18E2C();
        sub_22C02E050(v19, v20, v21, v22);
        break;
      case 8:
        sub_22BE3C980();
        sub_22BE18E2C();
        sub_22C02E104();
        break;
      case 9:
        v23 = sub_22BE18E2C();
        sub_22C02E148(v23, v24);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C02DDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseOutput(0);
  type metadata accessor for TranscriptProtoDialogType(0);
  sub_22BE2C988(&qword_27D90FD60, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);
  return sub_22C2706F4();
}

uint64_t sub_22C02DE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseOutput(0);
  type metadata accessor for TranscriptProtoDialogType(0);
  sub_22BE2C988(&qword_27D90FD60, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);
  return sub_22C2706F4();
}

uint64_t sub_22C02DF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseOutput(0);
  type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  sub_22BE2C988(&qword_27D90FC18, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);
  return sub_22C2706F4();
}

uint64_t sub_22C02E050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseOutput(0);
  type metadata accessor for TranscriptProtoVisualOutput(0);
  sub_22BE2C988(&qword_27D90EAD8, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);
  return sub_22C2706F4();
}

uint64_t sub_22C02E104()
{
  v0 = sub_22BE378F4();
  v2 = v1(v0);
  sub_22BE26130(*(v2 + 48));
  return sub_22C270694();
}

uint64_t sub_22C02E148(uint64_t a1, uint64_t a2)
{
  sub_22C272574();
  sub_22BE2C988(&qword_27D90EAE8, MEMORY[0x277D727C8], MEMORY[0x277D727C0]);
  return sub_22C2706E4();
}

void TranscriptProtoResponseOutput.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v2 || (type metadata accessor for TranscriptProtoVisualOutput(0), sub_22BE2C988(&qword_27D90EAD8, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v3 = sub_22BE17D60();
    sub_22C02E3D8(v3, v4, v5, v6);
    if (!v0)
    {
      v7 = sub_22BE17D60();
      sub_22C02E5AC(v7, v8, v9, v10);
      if (*(v1 + 8))
      {
        sub_22C09DB9C();
        sub_22BE23CE4();
        sub_22C2707D4();
      }

      sub_22C0B1AE4();
      if (v11)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_22BE1974C();
        sub_22BE2C988(v12, v13, &protocol conformance descriptor for TranscriptProtoStatementID);
        sub_22BE238E8();
        sub_22BE23CE4();
        sub_22C270874();
      }

      v14 = sub_22BE17D60();
      sub_22C02E780(v14, v15, v16, v17);
      v18 = sub_22BE17D60();
      sub_22C02E954(v18, v19, v20, v21);
      sub_22BE3C980();
      sub_22BE17D60();
      sub_22C02EB28();
      if (*(*(v1 + 24) + 16))
      {
        sub_22C272574();
        sub_22BE2C988(&qword_27D90EAE8, MEMORY[0x277D727C8], MEMORY[0x277D727C0]);
        sub_22BE238E8();
        sub_22BE23CE4();
        sub_22C270874();
      }

      type metadata accessor for TranscriptProtoResponseOutput(0);
      sub_22BE1AC30();
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C02E3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EB10, &qword_22C2CC960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoDialogType(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EB10, &qword_22C2CC960);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FD60, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C02E5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EB10, &qword_22C2CC960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoDialogType(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EB10, &qword_22C2CC960);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FD60, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C02E780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EB00, &unk_22C2AE6B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EB00, &unk_22C2AE6B0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FC18, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C02E954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EAF0, &qword_22C2B5C30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoVisualOutput(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EAF0, &qword_22C2B5C30);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90EAD8, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);
  sub_22C270884();
  return sub_22C0B08BC();
}

void sub_22C02EB28()
{
  v0 = sub_22BE379B8();
  v1(v0);
  sub_22C0B1DD8();
  if (v2)
  {
    sub_22BE25B10();
    sub_22C270844();
  }
}

void static TranscriptProtoResponseOutput.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoVisualOutput(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE18DFC();
  v7 = sub_22BE5CE4C(&qword_27D90EAF0, &qword_22C2B5C30);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v70 = sub_22BE5CE4C(&qword_27D90EAF8, &qword_22C297038);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE1AED0();
  v11 = type metadata accessor for TranscriptProtoVisualOutputOptions(v10);
  v12 = sub_22BE28784(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  v69 = v13;
  v14 = sub_22BE5CE4C(&qword_27D90EB00, &unk_22C2AE6B0);
  sub_22BE19448(v14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE3C048(v16, v64);
  v17 = sub_22BE5CE4C(&qword_27D90EB08, &qword_22C297040);
  sub_22BE1B7B0(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE35C94(v19, v65);
  type metadata accessor for TranscriptProtoDialogType(0);
  sub_22BE28F58();
  MEMORY[0x28223BE20](v20);
  sub_22BE1955C();
  v21 = sub_22BE5CE4C(&qword_27D90EB10, &qword_22C2CC960);
  v22 = sub_22BE19448(v21);
  MEMORY[0x28223BE20](v22);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE5CE4C(&qword_27D90EB18, &qword_22C297048);
  sub_22BE18000();
  MEMORY[0x28223BE20](v25);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v26);
  sub_22BE32374();
  sub_22BE1BC88();
  sub_22BE9E6B4();
  if ((v27 & 1) == 0)
  {
    goto LABEL_23;
  }

  v67 = v4;
  v73 = v0;
  v66 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v28 = *(v24 + 48);
  v68 = v1;
  sub_22BE22868();
  sub_22C0B1C54();
  sub_22BE22868();
  sub_22BE3E950(v3);
  if (v29)
  {
    sub_22BE3E950(v3 + v28);
    if (v29)
    {
      sub_22BE33928(v3, &qword_27D90EB10, &qword_22C2CC960);
      goto LABEL_12;
    }

LABEL_10:
    v30 = &qword_27D90EB18;
    v31 = &qword_22C297048;
    v32 = v3;
LABEL_22:
    sub_22BE33928(v32, v30, v31);
    goto LABEL_23;
  }

  sub_22BE22868();
  sub_22BE3E950(v3 + v28);
  if (v29)
  {
    sub_22C0B1848();
    sub_22C0B08BC();
    goto LABEL_10;
  }

  sub_22BE2C260();
  sub_22C0B0868();
  v33 = sub_22BE1BF88();
  v34 = static TranscriptProtoDialogType.== infix(_:_:)(v33);
  sub_22BE35838();
  sub_22C0B08BC();
  sub_22BE3C5E4();
  sub_22C0B08BC();
  sub_22BE33928(v3, &qword_27D90EB10, &qword_22C2CC960);
  if ((v34 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v35 = *(v24 + 48);
  v36 = &qword_22C2CC960;
  sub_22BFB1AC4();
  sub_22C0B1C54();
  sub_22BFB1AC4();
  sub_22BE3E950(v2);
  if (v29)
  {
    sub_22BE3E950(v2 + v35);
    v37 = v67;
    if (v29)
    {
      sub_22BE33928(v2, &qword_27D90EB10, &qword_22C2CC960);
      goto LABEL_26;
    }

LABEL_20:
    v30 = &qword_27D90EB18;
    v31 = &qword_22C297048;
LABEL_21:
    v32 = v2;
    goto LABEL_22;
  }

  sub_22BE22868();
  sub_22BE3E950(v2 + v35);
  v37 = v67;
  if (v38)
  {
    sub_22C0B1848();
    sub_22C0B08BC();
    goto LABEL_20;
  }

  sub_22BE2C260();
  sub_22C0B0868();
  v40 = sub_22BE3AF28();
  v36 = static TranscriptProtoDialogType.== infix(_:_:)(v40);
  sub_22BE35838();
  sub_22C0B08BC();
  sub_22BE431C0();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D90EB10, &qword_22C2CC960);
  if ((v36 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  if (*(v1 + 8) != *(v0 + 8))
  {
    goto LABEL_23;
  }

  sub_22BE97814();
  if ((v41 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_22C0B1DE4();
  v2 = v72;
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v42 = sub_22BE23E90();
  sub_22BE36144(v42, v43);
  if (v29)
  {
    sub_22BE18190(v36 + v72);
    if (v29)
    {
      sub_22BE33928(v72, &qword_27D90EB00, &unk_22C2AE6B0);
      goto LABEL_33;
    }

    goto LABEL_41;
  }

  sub_22BE22868();
  sub_22BE18190(v36 + v72);
  if (v47)
  {
    sub_22C0B1AFC();
LABEL_41:
    v30 = &qword_27D90EB08;
    v31 = &qword_22C297040;
    goto LABEL_21;
  }

  sub_22C0B0868();
  if (*v71 != *v69)
  {
    sub_22C0B08BC();
    sub_22BE1AB74();
    sub_22C0B08BC();
    v30 = &qword_27D90EB00;
    v31 = &unk_22C2AE6B0;
    goto LABEL_21;
  }

  sub_22BE46030();
  sub_22BE18E5C();
  v51 = sub_22BE2C988(v49, v50, MEMORY[0x277D216D0]);
  v52 = sub_22BE3C4B0(v51);
  sub_22C0B08BC();
  sub_22BE3C5E4();
  sub_22C0B08BC();
  sub_22BE33928(v72, &qword_27D90EB00, &unk_22C2AE6B0);
  if ((v52 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_33:
  v44 = *(v70 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v45 = sub_22BE406A0();
  sub_22BE36144(v45, v46);
  if (!v29)
  {
    sub_22BE22868();
    sub_22BE18190(v37 + v44);
    if (!v48)
    {
      sub_22C0B0868();
      v53 = sub_22BE2590C();
      v54 = static TranscriptProtoVisualOutput.== infix(_:_:)(v53);
      sub_22BE200D4();
      sub_22C0B08BC();
      sub_22BE1AB74();
      sub_22C0B08BC();
      sub_22BE33928(v37, &qword_27D90EAF0, &qword_22C2B5C30);
      if ((v54 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_51;
    }

    sub_22C0B1AFC();
LABEL_47:
    v30 = &qword_27D90EAF8;
    v31 = &qword_22C297038;
    v32 = v37;
    goto LABEL_22;
  }

  sub_22BE18190(v37 + v44);
  if (!v29)
  {
    goto LABEL_47;
  }

  sub_22BE33928(v37, &qword_27D90EAF0, &qword_22C2B5C30);
LABEL_51:
  v55 = *(v66 + 48);
  v56 = *(v73 + v55 + 8);
  if (*(v68 + v55 + 8))
  {
    if (!v56)
    {
      goto LABEL_23;
    }

    sub_22BE3A508(v68 + v55);
    v59 = v29 && v57 == v58;
    if (!v59 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v56)
  {
    goto LABEL_23;
  }

  sub_22BE9EA00();
  if (v60)
  {
    v61 = *(v66 + 52);
    sub_22C2704B4();
    sub_22BE18E5C();
    sub_22BE2C988(v62, v63, MEMORY[0x277D216D0]);
    v39 = sub_22C0B1B54(v68 + v61);
    goto LABEL_24;
  }

LABEL_23:
  v39 = 0;
LABEL_24:
  sub_22BE1C1DC(v39);
  sub_22BE1AABC();
}

uint64_t sub_22C02F498(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E38, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C02F518(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C02F588(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);

  return sub_22C270774();
}

uint64_t sub_22C02F724(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E30, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C02F7A4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FC18, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C02F814(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FC18, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);

  return sub_22C270774();
}

uint64_t sub_22C02F8A0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D608);
  sub_22BE199F4(v0, qword_27D90D608);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "liveActivity";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inAppResponse";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "systemSnippet";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "pluginSnippet";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "aceCommand";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoVisualOutput.decodeMessage<A>(decoder:)()
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
        sub_22C02FBF0(v3, v4, v5, v6);
        break;
      case 2:
        v19 = sub_22BE236F4();
        sub_22C0300E8(v19, v20, v21, v22);
        break;
      case 3:
        v11 = sub_22BE236F4();
        sub_22C0305E0(v11, v12, v13, v14);
        break;
      case 5:
        v15 = sub_22BE236F4();
        sub_22C030AD8(v15, v16, v17, v18);
        break;
      case 6:
        v7 = sub_22BE236F4();
        sub_22C030FD0(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C02FBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911420, &qword_22C2AE148);
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
    sub_22BE33928(v10, &qword_27D9091F8, &qword_22C2AE6C0);
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
      sub_22BE33928(v18, &qword_27D911420, &qword_22C2AE148);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90FC40, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911420, &qword_22C2AE148);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911420, &qword_22C2AE148);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911420, &qword_22C2AE148);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911420, &qword_22C2AE148);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D9091F8, &qword_22C2AE6C0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0300E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911428, &qword_22C2AE150);
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
    sub_22BE33928(v10, &qword_27D9091F8, &qword_22C2AE6C0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D911428, &qword_22C2AE150);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FC58, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911428, &qword_22C2AE150);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911428, &qword_22C2AE150);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911428, &qword_22C2AE150);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911428, &qword_22C2AE150);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D9091F8, &qword_22C2AE6C0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0305E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911430, &qword_22C2AE158);
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
    sub_22BE33928(v10, &qword_27D9091F8, &qword_22C2AE6C0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v18, &qword_27D911430, &qword_22C2AE158);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FC70, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911430, &qword_22C2AE158);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911430, &qword_22C2AE158);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911430, &qword_22C2AE158);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911430, &qword_22C2AE158);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D9091F8, &qword_22C2AE6C0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C030AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911438, &qword_22C2AE160);
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
    sub_22BE33928(v10, &qword_27D9091F8, &qword_22C2AE6C0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v18, &qword_27D911438, &qword_22C2AE160);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FC88, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911438, &qword_22C2AE160);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911438, &qword_22C2AE160);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911438, &qword_22C2AE160);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911438, &qword_22C2AE160);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D9091F8, &qword_22C2AE6C0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C030FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoAceCommandOutputPayload(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911440, &qword_22C2AE168);
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
    sub_22BE33928(v10, &qword_27D9091F8, &qword_22C2AE6C0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v18, &qword_27D911440, &qword_22C2AE168);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FCA0, type metadata accessor for TranscriptProtoAceCommandOutputPayload, &protocol conformance descriptor for TranscriptProtoAceCommandOutputPayload);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911440, &qword_22C2AE168);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911440, &qword_22C2AE168);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911440, &qword_22C2AE168);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911440, &qword_22C2AE168);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D9091F8, &qword_22C2AE6C0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoVisualOutput.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  sub_22BE2B890(v5);
  if (v6)
  {
    goto LABEL_9;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = sub_22BE17D78();
      sub_22C0317E4(v23, v24, v25, v26);
      break;
    case 2u:
      v15 = sub_22BE17D78();
      sub_22C0319EC(v15, v16, v17, v18);
      break;
    case 3u:
      v19 = sub_22BE17D78();
      sub_22C031BF4(v19, v20, v21, v22);
      break;
    case 4u:
      v11 = sub_22BE17D78();
      sub_22C031DFC(v11, v12, v13, v14);
      break;
    default:
      v7 = sub_22BE17D78();
      sub_22C0315E0(v7, v8, v9, v10);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_9:
    type metadata accessor for TranscriptProtoVisualOutput(0);
    sub_22BE235A8();
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C0315E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9091F8, &qword_22C2AE6C0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FC40, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0317E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9091F8, &qword_22C2AE6C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FC58, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0319EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9091F8, &qword_22C2AE6C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FC70, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C031BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9091F8, &qword_22C2AE6C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FC88, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C031DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoAceCommandOutputPayload(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9091F8, &qword_22C2AE6C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FCA0, type metadata accessor for TranscriptProtoAceCommandOutputPayload, &protocol conformance descriptor for TranscriptProtoAceCommandOutputPayload);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C032294(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E28, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C032314(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EAD8, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C032384(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90EAD8, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);

  return sub_22C270774();
}

uint64_t sub_22C032520(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E20, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0325A0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FC40, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C032610(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FC40, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);

  return sub_22C270774();
}

uint64_t sub_22C0327AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E18, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03282C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FC58, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03289C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FC58, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);

  return sub_22C270774();
}

uint64_t sub_22C032A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E10, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C032AB8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FC70, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C032B28(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FC70, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);

  return sub_22C270774();
}

uint64_t sub_22C032BB4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D668);
  sub_22BE199F4(v0, qword_27D90D668);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pluginModelData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C032E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E08, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C032EF0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FC88, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C032F60(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FC88, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);

  return sub_22C270774();
}

void TranscriptProtoAceCommandOutputPayload.decodeMessage<A>(decoder:)()
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
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C033104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EB58, &unk_22C2AE6D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoAceCommandOutputData(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EB58, &unk_22C2AE6D0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FCB8, type metadata accessor for TranscriptProtoAceCommandOutputData, &protocol conformance descriptor for TranscriptProtoAceCommandOutputData);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C03355C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910E00, type metadata accessor for TranscriptProtoAceCommandOutputPayload, &protocol conformance descriptor for TranscriptProtoAceCommandOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0335DC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FCA0, type metadata accessor for TranscriptProtoAceCommandOutputPayload, &protocol conformance descriptor for TranscriptProtoAceCommandOutputPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03364C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FCA0, type metadata accessor for TranscriptProtoAceCommandOutputPayload, &protocol conformance descriptor for TranscriptProtoAceCommandOutputPayload);

  return sub_22C270774();
}

uint64_t sub_22C0336D8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D698);
  sub_22BE199F4(v0, qword_27D90D698);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "addViews";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "addDialogs";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sayIt";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "repeatIt";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "requestCompleted";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "commandFailed";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoAceCommandOutputData.decodeMessage<A>(decoder:)()
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
        sub_22C033A7C(v3, v4, v5, v6);
        break;
      case 2:
        v19 = sub_22BE236F4();
        sub_22C033F74(v19, v20, v21, v22);
        break;
      case 3:
        v11 = sub_22BE236F4();
        sub_22C03446C(v11, v12, v13, v14);
        break;
      case 4:
        v15 = sub_22BE236F4();
        sub_22C034964(v15, v16, v17, v18);
        break;
      case 5:
        v7 = sub_22BE236F4();
        sub_22C034E5C(v7, v8, v9, v10);
        break;
      case 6:
        v23 = sub_22BE236F4();
        sub_22C035354(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C033A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoAddViews(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9113F0, &qword_22C2AE118);
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
    sub_22BE33928(v10, &qword_27D90EB70, &qword_22C2CCA50);
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
      sub_22BE33928(v18, &qword_27D9113F0, &qword_22C2AE118);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90FCD0, type metadata accessor for TranscriptProtoAddViews, &protocol conformance descriptor for TranscriptProtoAddViews);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9113F0, &qword_22C2AE118);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9113F0, &qword_22C2AE118);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9113F0, &qword_22C2AE118);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9113F0, &qword_22C2AE118);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EB70, &qword_22C2CCA50);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C033F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoAddDialogs(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9113F8, &qword_22C2AE120);
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
    sub_22BE33928(v10, &qword_27D90EB70, &qword_22C2CCA50);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D9113F8, &qword_22C2AE120);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FCE8, type metadata accessor for TranscriptProtoAddDialogs, &protocol conformance descriptor for TranscriptProtoAddDialogs);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9113F8, &qword_22C2AE120);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9113F8, &qword_22C2AE120);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9113F8, &qword_22C2AE120);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9113F8, &qword_22C2AE120);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EB70, &qword_22C2CCA50);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C03446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSayIt(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911400, &qword_22C2AE128);
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
    sub_22BE33928(v10, &qword_27D90EB70, &qword_22C2CCA50);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v18, &qword_27D911400, &qword_22C2AE128);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FD00, type metadata accessor for TranscriptProtoSayIt, &protocol conformance descriptor for TranscriptProtoSayIt);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911400, &qword_22C2AE128);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911400, &qword_22C2AE128);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911400, &qword_22C2AE128);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911400, &qword_22C2AE128);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EB70, &qword_22C2CCA50);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C034964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRepeatIt(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911408, &qword_22C2AE130);
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
    sub_22BE33928(v10, &qword_27D90EB70, &qword_22C2CCA50);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v18, &qword_27D911408, &qword_22C2AE130);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FD18, type metadata accessor for TranscriptProtoRepeatIt, &protocol conformance descriptor for TranscriptProtoRepeatIt);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911408, &qword_22C2AE130);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911408, &qword_22C2AE130);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911408, &qword_22C2AE130);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911408, &qword_22C2AE130);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EB70, &qword_22C2CCA50);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C034E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestCompleted(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911410, &qword_22C2AE138);
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
    sub_22BE33928(v10, &qword_27D90EB70, &qword_22C2CCA50);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v18, &qword_27D911410, &qword_22C2AE138);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FD30, type metadata accessor for TranscriptProtoRequestCompleted, &protocol conformance descriptor for TranscriptProtoRequestCompleted);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911410, &qword_22C2AE138);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911410, &qword_22C2AE138);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911410, &qword_22C2AE138);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911410, &qword_22C2AE138);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EB70, &qword_22C2CCA50);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C035354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoCommandFailed(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911418, &qword_22C2AE140);
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
    sub_22BE33928(v10, &qword_27D90EB70, &qword_22C2CCA50);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v18, &qword_27D911418, &qword_22C2AE140);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FD48, type metadata accessor for TranscriptProtoCommandFailed, &protocol conformance descriptor for TranscriptProtoCommandFailed);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911418, &qword_22C2AE140);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911418, &qword_22C2AE140);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911418, &qword_22C2AE140);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911418, &qword_22C2AE140);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EB70, &qword_22C2CCA50);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoAceCommandOutputData.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  sub_22BE2B890(v5);
  if (v6)
  {
    goto LABEL_10;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = sub_22BE17D78();
      sub_22C035B74(v23, v24, v25, v26);
      break;
    case 2u:
      v15 = sub_22BE17D78();
      sub_22C035D7C(v15, v16, v17, v18);
      break;
    case 3u:
      v19 = sub_22BE17D78();
      sub_22C035F84(v19, v20, v21, v22);
      break;
    case 4u:
      v11 = sub_22BE17D78();
      sub_22C03618C(v11, v12, v13, v14);
      break;
    case 5u:
      v27 = sub_22BE17D78();
      sub_22C036394(v27, v28, v29, v30);
      break;
    default:
      v7 = sub_22BE17D78();
      sub_22C035970(v7, v8, v9, v10);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoAceCommandOutputData(0);
    sub_22BE235A8();
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C035970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoAddViews(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EB70, &qword_22C2CCA50);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FCD0, type metadata accessor for TranscriptProtoAddViews, &protocol conformance descriptor for TranscriptProtoAddViews);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C035B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoAddDialogs(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EB70, &qword_22C2CCA50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FCE8, type metadata accessor for TranscriptProtoAddDialogs, &protocol conformance descriptor for TranscriptProtoAddDialogs);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C035D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSayIt(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EB70, &qword_22C2CCA50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FD00, type metadata accessor for TranscriptProtoSayIt, &protocol conformance descriptor for TranscriptProtoSayIt);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C035F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRepeatIt(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EB70, &qword_22C2CCA50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FD18, type metadata accessor for TranscriptProtoRepeatIt, &protocol conformance descriptor for TranscriptProtoRepeatIt);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C03618C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestCompleted(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EB70, &qword_22C2CCA50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FD30, type metadata accessor for TranscriptProtoRequestCompleted, &protocol conformance descriptor for TranscriptProtoRequestCompleted);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C036394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoCommandFailed(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EB70, &qword_22C2CCA50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FD48, type metadata accessor for TranscriptProtoCommandFailed, &protocol conformance descriptor for TranscriptProtoCommandFailed);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C03682C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910DF8, type metadata accessor for TranscriptProtoAceCommandOutputData, &protocol conformance descriptor for TranscriptProtoAceCommandOutputData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0368AC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FCB8, type metadata accessor for TranscriptProtoAceCommandOutputData, &protocol conformance descriptor for TranscriptProtoAceCommandOutputData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03691C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FCB8, type metadata accessor for TranscriptProtoAceCommandOutputData, &protocol conformance descriptor for TranscriptProtoAceCommandOutputData);

  return sub_22C270774();
}

uint64_t sub_22C036A38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = sub_22BE2F1D4(a1);
  if ((MEMORY[0x2318A6720](v4) & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_22BE3636C();
  sub_22BE18E5C();
  v7 = sub_22BE2C988(v5, v6, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v7) & 1;
}

uint64_t sub_22C036B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910DF0, type metadata accessor for TranscriptProtoAddViews, &protocol conformance descriptor for TranscriptProtoAddViews);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C036BC0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FCD0, type metadata accessor for TranscriptProtoAddViews, &protocol conformance descriptor for TranscriptProtoAddViews);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C036C30(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FCD0, type metadata accessor for TranscriptProtoAddViews, &protocol conformance descriptor for TranscriptProtoAddViews);

  return sub_22C270774();
}

uint64_t sub_22C036DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910DE8, type metadata accessor for TranscriptProtoAddDialogs, &protocol conformance descriptor for TranscriptProtoAddDialogs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C036E4C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FCE8, type metadata accessor for TranscriptProtoAddDialogs, &protocol conformance descriptor for TranscriptProtoAddDialogs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C036EBC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FCE8, type metadata accessor for TranscriptProtoAddDialogs, &protocol conformance descriptor for TranscriptProtoAddDialogs);

  return sub_22C270774();
}

uint64_t sub_22C037090(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910DE0, type metadata accessor for TranscriptProtoSayIt, &protocol conformance descriptor for TranscriptProtoSayIt);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C037110(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FD00, type metadata accessor for TranscriptProtoSayIt, &protocol conformance descriptor for TranscriptProtoSayIt);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C037180(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FD00, type metadata accessor for TranscriptProtoSayIt, &protocol conformance descriptor for TranscriptProtoSayIt);

  return sub_22C270774();
}

uint64_t sub_22C037328(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910DD8, type metadata accessor for TranscriptProtoRepeatIt, &protocol conformance descriptor for TranscriptProtoRepeatIt);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0373A8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FD18, type metadata accessor for TranscriptProtoRepeatIt, &protocol conformance descriptor for TranscriptProtoRepeatIt);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C037418(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FD18, type metadata accessor for TranscriptProtoRepeatIt, &protocol conformance descriptor for TranscriptProtoRepeatIt);

  return sub_22C270774();
}

uint64_t sub_22C0375B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910DD0, type metadata accessor for TranscriptProtoRequestCompleted, &protocol conformance descriptor for TranscriptProtoRequestCompleted);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C037634(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FD30, type metadata accessor for TranscriptProtoRequestCompleted, &protocol conformance descriptor for TranscriptProtoRequestCompleted);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0376A4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FD30, type metadata accessor for TranscriptProtoRequestCompleted, &protocol conformance descriptor for TranscriptProtoRequestCompleted);

  return sub_22C270774();
}

uint64_t sub_22C037840(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910DC8, type metadata accessor for TranscriptProtoCommandFailed, &protocol conformance descriptor for TranscriptProtoCommandFailed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0378C0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FD48, type metadata accessor for TranscriptProtoCommandFailed, &protocol conformance descriptor for TranscriptProtoCommandFailed);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C037930(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FD48, type metadata accessor for TranscriptProtoCommandFailed, &protocol conformance descriptor for TranscriptProtoCommandFailed);

  return sub_22C270774();
}

uint64_t sub_22C0379BC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D740);
  sub_22BE199F4(v0, qword_27D90D740);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "staticText";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sonicText";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "generatedText";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "unableToGenerate";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suppressed";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "catDialog";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoDialogType.decodeMessage<A>(decoder:)()
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
        sub_22C037D60(v3, v4, v5, v6);
        break;
      case 2:
        v19 = sub_22BE236F4();
        sub_22C038258(v19, v20, v21, v22);
        break;
      case 3:
        v11 = sub_22BE236F4();
        sub_22C038750(v11, v12, v13, v14);
        break;
      case 4:
        v15 = sub_22BE236F4();
        sub_22C038C48(v15, v16, v17, v18);
        break;
      case 5:
        v7 = sub_22BE236F4();
        sub_22C039140(v7, v8, v9, v10);
        break;
      case 6:
        v23 = sub_22BE236F4();
        sub_22C039638(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C037D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoStaticText(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9113C0, &qword_22C2AE0E8);
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
    sub_22BE33928(v10, &qword_27D90EBB8, &qword_22C297060);
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
      sub_22BE33928(v18, &qword_27D9113C0, &qword_22C2AE0E8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90FD78, type metadata accessor for TranscriptProtoStaticText, &protocol conformance descriptor for TranscriptProtoStaticText);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9113C0, &qword_22C2AE0E8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9113C0, &qword_22C2AE0E8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9113C0, &qword_22C2AE0E8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9113C0, &qword_22C2AE0E8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EBB8, &qword_22C297060);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C038258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSonicText(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9113C8, &qword_22C2AE0F0);
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
    sub_22BE33928(v10, &qword_27D90EBB8, &qword_22C297060);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D9113C8, &qword_22C2AE0F0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FDA8, type metadata accessor for TranscriptProtoSonicText, &protocol conformance descriptor for TranscriptProtoSonicText);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9113C8, &qword_22C2AE0F0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9113C8, &qword_22C2AE0F0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9113C8, &qword_22C2AE0F0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9113C8, &qword_22C2AE0F0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EBB8, &qword_22C297060);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C038750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoGeneratedText(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9113D0, &qword_22C2AE0F8);
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
    sub_22BE33928(v10, &qword_27D90EBB8, &qword_22C297060);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v18, &qword_27D9113D0, &qword_22C2AE0F8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FDC0, type metadata accessor for TranscriptProtoGeneratedText, &protocol conformance descriptor for TranscriptProtoGeneratedText);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9113D0, &qword_22C2AE0F8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9113D0, &qword_22C2AE0F8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9113D0, &qword_22C2AE0F8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9113D0, &qword_22C2AE0F8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EBB8, &qword_22C297060);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C038C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoUnableToGenerate(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9113D8, &qword_22C2AE100);
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
    sub_22BE33928(v10, &qword_27D90EBB8, &qword_22C297060);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v18, &qword_27D9113D8, &qword_22C2AE100);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FDD8, type metadata accessor for TranscriptProtoUnableToGenerate, &protocol conformance descriptor for TranscriptProtoUnableToGenerate);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9113D8, &qword_22C2AE100);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9113D8, &qword_22C2AE100);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9113D8, &qword_22C2AE100);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9113D8, &qword_22C2AE100);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EBB8, &qword_22C297060);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C039140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSuppressed(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9113E0, &qword_22C2AE108);
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
    sub_22BE33928(v10, &qword_27D90EBB8, &qword_22C297060);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v18, &qword_27D9113E0, &qword_22C2AE108);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FDF0, type metadata accessor for TranscriptProtoSuppressed, &protocol conformance descriptor for TranscriptProtoSuppressed);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9113E0, &qword_22C2AE108);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9113E0, &qword_22C2AE108);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9113E0, &qword_22C2AE108);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9113E0, &qword_22C2AE108);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EBB8, &qword_22C297060);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C039638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoCATDialog(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9113E8, &qword_22C2AE110);
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
    sub_22BE33928(v10, &qword_27D90EBB8, &qword_22C297060);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v18, &qword_27D9113E8, &qword_22C2AE110);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FD90, type metadata accessor for TranscriptProtoCATDialog, &protocol conformance descriptor for TranscriptProtoCATDialog);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9113E8, &qword_22C2AE110);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9113E8, &qword_22C2AE110);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9113E8, &qword_22C2AE110);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9113E8, &qword_22C2AE110);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EBB8, &qword_22C297060);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoDialogType.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoDialogFormat(0);
  sub_22BE2B890(v5);
  if (v6)
  {
    goto LABEL_10;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = sub_22BE17D78();
      sub_22C039E58(v23, v24, v25, v26);
      break;
    case 2u:
      v15 = sub_22BE17D78();
      sub_22C03A060(v15, v16, v17, v18);
      break;
    case 3u:
      v19 = sub_22BE17D78();
      sub_22C03A268(v19, v20, v21, v22);
      break;
    case 4u:
      v11 = sub_22BE17D78();
      sub_22C03A470(v11, v12, v13, v14);
      break;
    case 5u:
      v27 = sub_22BE17D78();
      sub_22C03A678(v27, v28, v29, v30);
      break;
    default:
      v7 = sub_22BE17D78();
      sub_22C039C54(v7, v8, v9, v10);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoDialogType(0);
    sub_22BE235A8();
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C039C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoStaticText(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EBB8, &qword_22C297060);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FD78, type metadata accessor for TranscriptProtoStaticText, &protocol conformance descriptor for TranscriptProtoStaticText);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C039E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSonicText(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EBB8, &qword_22C297060);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FDA8, type metadata accessor for TranscriptProtoSonicText, &protocol conformance descriptor for TranscriptProtoSonicText);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C03A060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoGeneratedText(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EBB8, &qword_22C297060);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FDC0, type metadata accessor for TranscriptProtoGeneratedText, &protocol conformance descriptor for TranscriptProtoGeneratedText);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C03A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoUnableToGenerate(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EBB8, &qword_22C297060);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FDD8, type metadata accessor for TranscriptProtoUnableToGenerate, &protocol conformance descriptor for TranscriptProtoUnableToGenerate);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C03A470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSuppressed(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EBB8, &qword_22C297060);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FDF0, type metadata accessor for TranscriptProtoSuppressed, &protocol conformance descriptor for TranscriptProtoSuppressed);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C03A678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoCATDialog(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EBB8, &qword_22C297060);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FD90, type metadata accessor for TranscriptProtoCATDialog, &protocol conformance descriptor for TranscriptProtoCATDialog);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C03AB10(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910DC0, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03AB90(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FD60, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03AC00(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FD60, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);

  return sub_22C270774();
}

uint64_t sub_22C03AD9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910DB8, type metadata accessor for TranscriptProtoStaticText, &protocol conformance descriptor for TranscriptProtoStaticText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03AE1C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FD78, type metadata accessor for TranscriptProtoStaticText, &protocol conformance descriptor for TranscriptProtoStaticText);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03AE8C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FD78, type metadata accessor for TranscriptProtoStaticText, &protocol conformance descriptor for TranscriptProtoStaticText);

  return sub_22C270774();
}

uint64_t sub_22C03B054(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910DB0, type metadata accessor for TranscriptProtoCATDialog, &protocol conformance descriptor for TranscriptProtoCATDialog);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03B0D4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FD90, type metadata accessor for TranscriptProtoCATDialog, &protocol conformance descriptor for TranscriptProtoCATDialog);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03B144(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FD90, type metadata accessor for TranscriptProtoCATDialog, &protocol conformance descriptor for TranscriptProtoCATDialog);

  return sub_22C270774();
}

uint64_t sub_22C03B2E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910DA8, type metadata accessor for TranscriptProtoSonicText, &protocol conformance descriptor for TranscriptProtoSonicText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03B360(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FDA8, type metadata accessor for TranscriptProtoSonicText, &protocol conformance descriptor for TranscriptProtoSonicText);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03B3D0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FDA8, type metadata accessor for TranscriptProtoSonicText, &protocol conformance descriptor for TranscriptProtoSonicText);

  return sub_22C270774();
}

uint64_t sub_22C03B56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910DA0, type metadata accessor for TranscriptProtoGeneratedText, &protocol conformance descriptor for TranscriptProtoGeneratedText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03B5EC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FDC0, type metadata accessor for TranscriptProtoGeneratedText, &protocol conformance descriptor for TranscriptProtoGeneratedText);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03B65C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FDC0, type metadata accessor for TranscriptProtoGeneratedText, &protocol conformance descriptor for TranscriptProtoGeneratedText);

  return sub_22C270774();
}

uint64_t sub_22C03B78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D98, type metadata accessor for TranscriptProtoUnableToGenerate, &protocol conformance descriptor for TranscriptProtoUnableToGenerate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03B80C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FDD8, type metadata accessor for TranscriptProtoUnableToGenerate, &protocol conformance descriptor for TranscriptProtoUnableToGenerate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03B87C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FDD8, type metadata accessor for TranscriptProtoUnableToGenerate, &protocol conformance descriptor for TranscriptProtoUnableToGenerate);

  return sub_22C270774();
}

uint64_t sub_22C03B9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D90, type metadata accessor for TranscriptProtoSuppressed, &protocol conformance descriptor for TranscriptProtoSuppressed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03BA28(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FDF0, type metadata accessor for TranscriptProtoSuppressed, &protocol conformance descriptor for TranscriptProtoSuppressed);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03BA98(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FDF0, type metadata accessor for TranscriptProtoSuppressed, &protocol conformance descriptor for TranscriptProtoSuppressed);

  return sub_22C270774();
}

uint64_t sub_22C03BB20()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D7E8);
  sub_22BE199F4(v0, qword_27D90D7E8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28D160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "parameters";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dialog";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "visual";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "templateId";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "templateLocation";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "useTemplateAsFallback";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "dialogPresentationHint";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "attribution";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoResponseManifest.decodeMessage<A>(decoder:)()
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
        sub_22BE1C37C();
        sub_22BFE7680();
        break;
      case 2:
        v11 = sub_22BE18E2C();
        sub_22C03BFB8(v11, v12, v13, v14);
        break;
      case 3:
        v3 = sub_22BE18E2C();
        sub_22C03C06C(v3, v4, v5, v6);
        break;
      case 4:
        sub_22BE39718();
        sub_22BE18E2C();
        sub_22C098EAC();
        break;
      case 5:
        sub_22C0B1818();
        sub_22BE18E2C();
        sub_22C097EC0();
        break;
      case 6:
        v15 = sub_22BE18E2C();
        sub_22C03C120(v15, v16, v17, v18);
        break;
      case 7:
        v19 = sub_22BE18E2C();
        sub_22C03C184(v19, v20, v21, v22);
        break;
      case 8:
        v7 = sub_22BE18E2C();
        sub_22C03C1F8(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C03BFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseManifest(0);
  type metadata accessor for TranscriptProtoResponseDialog(0);
  sub_22BE2C988(&qword_27D90FBE8, type metadata accessor for TranscriptProtoResponseDialog, &protocol conformance descriptor for TranscriptProtoResponseDialog);
  return sub_22C2706F4();
}

uint64_t sub_22C03C06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseManifest(0);
  type metadata accessor for TranscriptProtoResponseVisual(0);
  sub_22BE2C988(&qword_27D90FE28, type metadata accessor for TranscriptProtoResponseVisual, &protocol conformance descriptor for TranscriptProtoResponseVisual);
  return sub_22C2706F4();
}

uint64_t sub_22C03C184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22C0B076C();
  return sub_22C2705D4();
}

uint64_t sub_22C03C1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseManifest(0);
  type metadata accessor for TranscriptProtoUIType(0);
  sub_22BE2C988(&qword_27D90EC48, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType);
  return sub_22C2706F4();
}

void TranscriptProtoResponseManifest.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoResponseParameter(0), sub_22BE2C988(&qword_27D90EC00, type metadata accessor for TranscriptProtoResponseParameter, &protocol conformance descriptor for TranscriptProtoResponseParameter), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v2 = sub_22BE17D60();
    sub_22C03C3D0(v2, v3, v4, v5);
    if (!v0)
    {
      v6 = sub_22BE17D60();
      sub_22C03C5A4(v6, v7, v8, v9);
      sub_22BE39718();
      sub_22BE17D60();
      sub_22C099168();
      sub_22C0B1818();
      sub_22BE17D60();
      sub_22C0983C4();
      v10 = sub_22BE17D60();
      sub_22C03C778(v10, v11, v12, v13);
      v14 = sub_22BE17D60();
      sub_22C03C7F0(v14, v15, v16, v17);
      v18 = sub_22BE17D60();
      sub_22C03C880(v18, v19, v20, v21);
      type metadata accessor for TranscriptProtoResponseManifest(0);
      sub_22BE1AC30();
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C03C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EC28, &unk_22C2CCA30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoResponseDialog(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EC28, &unk_22C2CCA30);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FBE8, type metadata accessor for TranscriptProtoResponseDialog, &protocol conformance descriptor for TranscriptProtoResponseDialog);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C03C5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EC18, &unk_22C2AE700);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoResponseVisual(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EC18, &unk_22C2AE700);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FE28, type metadata accessor for TranscriptProtoResponseVisual, &protocol conformance descriptor for TranscriptProtoResponseVisual);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C03C778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22C03C7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    sub_22C0B076C();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22C03C880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EC08, &unk_22C2CCA20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoUIType(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EC08, &unk_22C2CCA20);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90EC48, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoResponseManifest.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = v4;
  v6 = sub_22BE37EB4();
  v7 = type metadata accessor for TranscriptProtoUIType(v6);
  v8 = sub_22BE1B7B0(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE294E0();
  v9 = sub_22BE5CE4C(&qword_27D90EC08, &unk_22C2CCA20);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE181D0(v11, v64);
  v69 = sub_22BE5CE4C(&qword_27D90EC10, &qword_22C297070);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE1AED0();
  type metadata accessor for TranscriptProtoResponseVisual(v13);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  sub_22BE17A44();
  sub_22BE3668C(v15);
  v16 = sub_22BE5CE4C(&qword_27D90EC18, &unk_22C2AE700);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE35C94(v18, v65);
  sub_22BE5CE4C(&qword_27D90EC20, &qword_22C297078);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v21 = sub_22C0B1620(v20, v66);
  type metadata accessor for TranscriptProtoResponseDialog(v21);
  sub_22BE18000();
  MEMORY[0x28223BE20](v22);
  sub_22BE18DFC();
  v23 = sub_22BE5CE4C(&qword_27D90EC28, &unk_22C2CCA30);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE1B72C();
  v25 = sub_22BE5CE4C(&qword_27D90EC30, &qword_22C297080);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1B01C();
  sub_22BE9CC18();
  if ((v27 & 1) == 0)
  {
    goto LABEL_22;
  }

  v68 = v3;
  v67 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v28 = *(v25 + 48);
  sub_22C0B1F90();
  sub_22C0B1F90();
  sub_22BE3CAA4(v1);
  if (v29)
  {
    sub_22BE3CAA4(v1 + v28);
    if (v29)
    {
      sub_22BE33928(v1, &qword_27D90EC28, &unk_22C2CCA30);
      goto LABEL_12;
    }

LABEL_10:
    v30 = &qword_27D90EC30;
    v31 = &qword_22C297080;
    v32 = v1;
LABEL_21:
    sub_22BE33928(v32, v30, v31);
    goto LABEL_22;
  }

  sub_22BE291B0();
  sub_22BE22868();
  sub_22BE3CAA4(v1 + v28);
  if (v29)
  {
    sub_22C0B1BC4();
    goto LABEL_10;
  }

  sub_22C0B0868();
  v33 = static TranscriptProtoResponseDialog.== infix(_:_:)(v0);
  sub_22BE431C0();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90EC28, &unk_22C2CCA30);
  if ((v33 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v34 = sub_22BE2BA98();
  sub_22BE36144(v34, v35);
  if (v29)
  {
    sub_22BE18A84();
    v36 = v68;
    if (v29)
    {
      sub_22BE33928(v70, &qword_27D90EC18, &unk_22C2AE700);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  sub_22BE22868();
  sub_22BE18A84();
  v36 = v68;
  if (v37)
  {
    sub_22C0B1D88();
LABEL_20:
    v30 = &qword_27D90EC20;
    v31 = &qword_22C297078;
    v32 = v70;
    goto LABEL_21;
  }

  sub_22C0B0868();
  sub_22C0B1B94();
  static TranscriptProtoResponseVisual.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE3C968();
  sub_22C0B08BC();
  sub_22BE33928(v70, &qword_27D90EC18, &unk_22C2AE700);
  if ((&unk_22C2AE700 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  sub_22C0B1DA0();
  if (v41)
  {
    if (!v39)
    {
      goto LABEL_22;
    }

    sub_22BE3A508(v40);
    v44 = v29 && v42 == v43;
    if (!v44 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v39)
  {
    goto LABEL_22;
  }

  sub_22C0B1DA0();
  if (v47)
  {
    if (!v45)
    {
      goto LABEL_22;
    }

    sub_22BE3A508(v46);
    v50 = v29 && v48 == v49;
    if (!v50 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v45)
  {
    goto LABEL_22;
  }

  v51 = *(v67 + 36);
  v52 = *(v2 + v51);
  v53 = *(v5 + v51);
  if (v52 == 2)
  {
    if (v53 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v53 == 2 || ((v52 ^ v53) & 1) != 0)
  {
    goto LABEL_22;
  }

  v54 = *(v67 + 40);
  v55 = *(v2 + v54);
  v56 = *(v5 + v54);
  if (v55 == 2)
  {
    if (v56 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v56 == 2 || ((v56 ^ v55) & 1) != 0)
  {
    goto LABEL_22;
  }

  v57 = *(v69 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v58 = sub_22BE26188();
  sub_22BE36144(v58, v59);
  if (v29)
  {
    sub_22BE18190(v36 + v57);
    if (v29)
    {
      sub_22BE33928(v36, &qword_27D90EC08, &unk_22C2CCA20);
LABEL_63:
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v62, v63, MEMORY[0x277D216D0]);
      v38 = sub_22C272FD4();
      goto LABEL_23;
    }

    goto LABEL_61;
  }

  sub_22C0B1FA8();
  sub_22BE18190(v36 + v57);
  if (v60)
  {
    sub_22C0B1AFC();
LABEL_61:
    v30 = &qword_27D90EC10;
    v31 = &qword_22C297070;
    v32 = v36;
    goto LABEL_21;
  }

  sub_22C0B0868();
  v61 = sub_22BE1C2A0();
  static TranscriptProtoUIType.== infix(_:_:)(v61);
  sub_22BE39304();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v36, &qword_27D90EC08, &unk_22C2CCA20);
  if (&unk_22C2CCA20)
  {
    goto LABEL_63;
  }

LABEL_22:
  v38 = 0;
LABEL_23:
  sub_22BE1C1DC(v38);
  sub_22BE1AABC();
}

uint64_t sub_22C03D1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D88, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03D254(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03D2C4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);

  return sub_22C270774();
}

uint64_t sub_22C03D350()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D800);
  sub_22BE199F4(v0, qword_27D90D800);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "required";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "format";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "profanityFilter";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoResponseParameter.decodeMessage<A>(decoder:)()
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
        sub_22C2705F4();
        break;
      case 3:
      case 5:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 4:
      case 6:
        sub_22BE2037C();
        sub_22C2705B4();
        break;
      default:
        continue;
    }
  }
}

uint64_t TranscriptProtoResponseParameter.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    v3 = sub_22BE17D60();
    result = sub_22C03D794(v3, v4, v5, v6);
    if (!v0)
    {
      v7 = sub_22BE17D60();
      sub_22BE4E2F4(v7);
      v8 = sub_22BE17D60();
      sub_22C03D828(v8, v9, v10, v11);
      v12 = sub_22BE17D60();
      sub_22C03D864(v12);
      v13 = sub_22BE17D60();
      sub_22C03D8A0(v13, v14, v15, v16);
      type metadata accessor for TranscriptProtoResponseParameter(0);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t sub_22C03D794(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 24);
  if (v4 >> 60 != 15)
  {
    v5 = *(result + 16);
    sub_22BE29D7C(v5, v4);
    sub_22C2707E4();
    return sub_22BF158B4(v5, v4);
  }

  return result;
}

uint64_t sub_22C03D828(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 48) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22C03D864(uint64_t result)
{
  if (*(result + 64))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22C03D8A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 72) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t static TranscriptProtoResponseParameter.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 24);
  if (*(v2 + 24) >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      v7 = sub_22BE1C2A0();
      sub_22BF1C1E4(v7, v8);
      v9 = sub_22BE1AB1C();
      sub_22BF1C1E4(v9, v10);
      v11 = sub_22BE1C2A0();
      sub_22BF158B4(v11, v12);
      goto LABEL_13;
    }

LABEL_10:
    v13 = sub_22BE1C2A0();
    sub_22BF1C1E4(v13, v14);
    v15 = sub_22BE1AB1C();
    sub_22BF1C1E4(v15, v16);
    v17 = sub_22BE1C2A0();
    sub_22BF158B4(v17, v18);
    v19 = sub_22BE1AB1C();
    sub_22BF158B4(v19, v20);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v22 = sub_22BE1C2A0();
  sub_22BF1C1E4(v22, v23);
  v24 = sub_22BE1AB1C();
  sub_22BF1C1E4(v24, v25);
  sub_22BE1C2A0();
  sub_22BE32BF0();
  v26 = MEMORY[0x2318A6720]();
  v27 = sub_22BE1AB1C();
  sub_22BF158B4(v27, v28);
  v29 = sub_22BE1C2A0();
  sub_22BF158B4(v29, v30);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  sub_22BE46B5C();
  if (v32)
  {
    if (!v31)
    {
      return 0;
    }

    sub_22BFB1A40();
    v35 = v5 && v33 == v34;
    if (!v35 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v36 = *(v2 + 48);
  v37 = *(v1 + 48);
  if (v36 == 2)
  {
    if (v37 != 2)
    {
      return 0;
    }
  }

  else if (v37 == 2 || ((v36 ^ v37) & 1) != 0)
  {
    return 0;
  }

  v38 = *(v2 + 64);
  v39 = *(v1 + 64);
  if (v38)
  {
    if (!v39)
    {
      return 0;
    }

    v40 = *(v2 + 56) == *(v1 + 56) && v38 == v39;
    if (!v40 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v41 = *(v2 + 72);
  v42 = *(v1 + 72);
  if (v41 != 2)
  {
    if (v42 != 2 && ((v41 ^ v42) & 1) == 0)
    {
      goto LABEL_41;
    }

    return 0;
  }

  if (v42 != 2)
  {
    return 0;
  }

LABEL_41:
  type metadata accessor for TranscriptProtoResponseParameter(0);
  sub_22C2704B4();
  sub_22BE18E5C();
  v45 = sub_22BE2C988(v43, v44, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v45) & 1;
}

uint64_t sub_22C03DB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D80, type metadata accessor for TranscriptProtoResponseParameter, &protocol conformance descriptor for TranscriptProtoResponseParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03DBF0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EC00, type metadata accessor for TranscriptProtoResponseParameter, &protocol conformance descriptor for TranscriptProtoResponseParameter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03DC60(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90EC00, type metadata accessor for TranscriptProtoResponseParameter, &protocol conformance descriptor for TranscriptProtoResponseParameter);

  return sub_22C270774();
}

uint64_t sub_22C03DCEC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D818);
  sub_22BE199F4(v0, qword_27D90D818);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "views";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "labels";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "options";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoResponseVisual.decodeMessage<A>(decoder:)()
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
      case 6:
        v3 = sub_22BE18E2C();
        sub_22C03E028(v3, v4, v5, v6);
        break;
      case 5:
        sub_22BE1C37C();
        sub_22C0478F0();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22BFE7680();
        break;
    }
  }
}

uint64_t sub_22C03E028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseVisual(0);
  type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  sub_22BE2C988(&qword_27D90FE40, type metadata accessor for TranscriptProtoResponseVisualOptions, &protocol conformance descriptor for TranscriptProtoResponseVisualOptions);
  return sub_22C2706F4();
}

void TranscriptProtoResponseVisual.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoUIType(0), sub_22BE2C988(&qword_27D90EC48, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    sub_22BE3A458();
    if (!v2 || (type metadata accessor for TranscriptProtoUILabel(0), sub_22BE2C988(&qword_27D90EC50, type metadata accessor for TranscriptProtoUILabel, &protocol conformance descriptor for TranscriptProtoUILabel), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
    {
      v3 = sub_22BE17D60();
      sub_22C03E1F8(v3, v4, v5, v6);
      if (!v0)
      {
        type metadata accessor for TranscriptProtoResponseVisual(0);
        v7 = sub_22BE375E4();
        sub_22BE363D4(v7, v8);
      }
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C03E1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EC58, &unk_22C2AE710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoResponseVisual(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90EC58, &unk_22C2AE710);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FE40, type metadata accessor for TranscriptProtoResponseVisualOptions, &protocol conformance descriptor for TranscriptProtoResponseVisualOptions);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoResponseVisual.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE23708();
  type metadata accessor for TranscriptProtoResponseVisualOptions(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE18DFC();
  v6 = sub_22BE5CE4C(&qword_27D90EC58, &unk_22C2AE710);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D90EC60, &qword_22C297088);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E64();
  sub_22BE9DD00();
  if ((v9 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_22BE9E04C();
  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

  v11 = type metadata accessor for TranscriptProtoResponseVisual(0);
  sub_22C0B1694(v11);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22C0B1568();
  sub_22BE181B0(v0);
  if (v16)
  {
    sub_22BE181B0(v0 + v3);
    if (v16)
    {
      sub_22BE33928(v0, &qword_27D90EC58, &unk_22C2AE710);
      goto LABEL_8;
    }

LABEL_12:
    v17 = &qword_27D90EC60;
    v18 = &qword_22C297088;
LABEL_13:
    sub_22BE33928(v0, v17, v18);
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE181B0(v0 + v3);
  if (v16)
  {
    sub_22C0B1AA4();
    goto LABEL_12;
  }

  sub_22C0B1D54();
  if (*v2 != *v1)
  {
    sub_22C0B08BC();
    sub_22BE291B0();
    sub_22C0B08BC();
    v17 = &qword_27D90EC58;
    v18 = &unk_22C2AE710;
    goto LABEL_13;
  }

  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v19, v20, MEMORY[0x277D216D0]);
  v21 = sub_22C0B1B14();
  sub_22C0B08BC();
  sub_22BE3EA80();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90EC58, &unk_22C2AE710);
  if ((v21 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  sub_22C0B1A60();
  sub_22BE18E5C();
  v14 = sub_22BE2C988(v12, v13, MEMORY[0x277D216D0]);
  v15 = sub_22BE35FB8(v14);
LABEL_15:
  sub_22BE1C1DC(v15);
  sub_22BE1AABC();
}

uint64_t sub_22C03E73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D78, type metadata accessor for TranscriptProtoResponseVisual, &protocol conformance descriptor for TranscriptProtoResponseVisual);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03E7BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FE28, type metadata accessor for TranscriptProtoResponseVisual, &protocol conformance descriptor for TranscriptProtoResponseVisual);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03E82C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FE28, type metadata accessor for TranscriptProtoResponseVisual, &protocol conformance descriptor for TranscriptProtoResponseVisual);

  return sub_22C270774();
}

uint64_t sub_22C03E93C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = sub_22BE1B2D4();
  v4(v3);
  sub_22BE3636C();
  sub_22BE18E5C();
  v7 = sub_22BE2C988(v5, v6, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v7) & 1;
}

uint64_t sub_22C03EA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D70, type metadata accessor for TranscriptProtoResponseVisualOptions, &protocol conformance descriptor for TranscriptProtoResponseVisualOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03EAC4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FE40, type metadata accessor for TranscriptProtoResponseVisualOptions, &protocol conformance descriptor for TranscriptProtoResponseVisualOptions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03EB34(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FE40, type metadata accessor for TranscriptProtoResponseVisualOptions, &protocol conformance descriptor for TranscriptProtoResponseVisualOptions);

  return sub_22C270774();
}

uint64_t sub_22C03EBCC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D848);
  sub_22BE199F4(v0, qword_27D90D848);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "archiveView";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "liveActivity";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "pluginSnippet";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "controlSnippet";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoUIType.decodeMessage<A>(decoder:)()
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
        sub_22C03EED4(v3, v4, v5, v6);
        break;
      case 2:
        v15 = sub_22BE236F4();
        sub_22C03F3CC(v15, v16, v17, v18);
        break;
      case 4:
        v7 = sub_22BE236F4();
        sub_22C03F8C4(v7, v8, v9, v10);
        break;
      case 5:
        v11 = sub_22BE236F4();
        sub_22C03FDBC(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C03EED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoUitype(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911398, &qword_22C2AE0C8);
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
    sub_22BE33928(v10, &qword_27D9091E0, &qword_22C27FDD8);
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
      sub_22BE33928(v18, &qword_27D911398, &qword_22C2AE0C8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90FE90, type metadata accessor for TranscriptProtoArchiveViewPayload, &protocol conformance descriptor for TranscriptProtoArchiveViewPayload);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911398, &qword_22C2AE0C8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911398, &qword_22C2AE0C8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911398, &qword_22C2AE0C8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911398, &qword_22C2AE0C8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D9091E0, &qword_22C27FDD8);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C03F3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoUitype(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9113A0, &qword_22C2AE0D0);
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
    sub_22BE33928(v10, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D9113A0, &qword_22C2AE0D0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FEA8, type metadata accessor for TranscriptProtoLiveActivityPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityPayload);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9113A0, &qword_22C2AE0D0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9113A0, &qword_22C2AE0D0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9113A0, &qword_22C2AE0D0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9113A0, &qword_22C2AE0D0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D9091E0, &qword_22C27FDD8);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C03F8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoUitype(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9113A8, &qword_22C2AE0D8);
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
    sub_22BE33928(v10, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v18, &qword_27D9113A8, &qword_22C2AE0D8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FEC0, type metadata accessor for TranscriptProtoPluginSnippetPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetPayload);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9113A8, &qword_22C2AE0D8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9113A8, &qword_22C2AE0D8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9113A8, &qword_22C2AE0D8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9113A8, &qword_22C2AE0D8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D9091E0, &qword_22C27FDD8);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C03FDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoControlPayload(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoUitype(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9113B0, &qword_22C2AE0E0);
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
    sub_22BE33928(v10, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v18, &qword_27D9113B0, &qword_22C2AE0E0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FED8, type metadata accessor for TranscriptProtoControlPayload, &protocol conformance descriptor for TranscriptProtoControlPayload);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9113B0, &qword_22C2AE0E0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9113B0, &qword_22C2AE0E0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9113B0, &qword_22C2AE0E0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9113B0, &qword_22C2AE0E0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D9091E0, &qword_22C27FDD8);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoUIType.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoUitype(0);
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
      sub_22C0405C4(v19, v20, v21, v22);
      break;
    case 2u:
      v11 = sub_22BE17D78();
      sub_22C0407CC(v11, v12, v13, v14);
      break;
    case 3u:
      v15 = sub_22BE17D78();
      sub_22C0409D4(v15, v16, v17, v18);
      break;
    default:
      v7 = sub_22BE17D78();
      sub_22C0403C0(v7, v8, v9, v10);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_8:
    type metadata accessor for TranscriptProtoUIType(0);
    sub_22BE235A8();
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C0403C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoUitype(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FE90, type metadata accessor for TranscriptProtoArchiveViewPayload, &protocol conformance descriptor for TranscriptProtoArchiveViewPayload);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0405C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoUitype(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FEA8, type metadata accessor for TranscriptProtoLiveActivityPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityPayload);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0407CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoUitype(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FEC0, type metadata accessor for TranscriptProtoPluginSnippetPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetPayload);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0409D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoControlPayload(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoUitype(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FED8, type metadata accessor for TranscriptProtoControlPayload, &protocol conformance descriptor for TranscriptProtoControlPayload);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C040E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D68, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C040EEC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EC48, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C040F5C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90EC48, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType);

  return sub_22C270774();
}

uint64_t sub_22C041060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D9091D0, &qword_22C27FDC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoLabel(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911390, &qword_22C2AE0C0);
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
    sub_22BE33928(v10, &qword_27D9091D0, &qword_22C27FDC8);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE33928(v18, &qword_27D911390, &qword_22C2AE0C0);
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE19DC4(v18, 0, 1, v5);
  }

  sub_22BE2C988(&qword_27D90FE78, type metadata accessor for TranscriptProtoUIConfirmationLabel, &protocol conformance descriptor for TranscriptProtoUIConfirmationLabel);
  v20 = v27;
  sub_22C2706F4();
  if (v20)
  {
    v21 = v18;
    return sub_22BE33928(v21, &qword_27D911390, &qword_22C2AE0C0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911390, &qword_22C2AE0C0);
    v21 = v15;
    return sub_22BE33928(v21, &qword_27D911390, &qword_22C2AE0C0);
  }

  sub_22C0B0868();
  if (v19 != 1)
  {
    sub_22C270594();
  }

  sub_22BE33928(v18, &qword_27D911390, &qword_22C2AE0C0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D9091D0, &qword_22C27FDC8);
  sub_22C0B0868();
  return sub_22BE19DC4(v23, 0, 1, v24);
}

uint64_t sub_22C041544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091D0, &qword_22C27FDC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoLabel(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9091D0, &qword_22C27FDC8);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FE78, type metadata accessor for TranscriptProtoUIConfirmationLabel, &protocol conformance descriptor for TranscriptProtoUIConfirmationLabel);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C0419A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D60, type metadata accessor for TranscriptProtoUILabel, &protocol conformance descriptor for TranscriptProtoUILabel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C041A24(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EC50, type metadata accessor for TranscriptProtoUILabel, &protocol conformance descriptor for TranscriptProtoUILabel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C041A94(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90EC50, type metadata accessor for TranscriptProtoUILabel, &protocol conformance descriptor for TranscriptProtoUILabel);

  return sub_22C270774();
}

uint64_t sub_22C041B20()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D878);
  sub_22BE199F4(v0, qword_27D90D878);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "affirmative";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "negative";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoUIConfirmationLabel.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    sub_22BE1B448();
    if (!v3 || (sub_22BE2910C(), result = sub_22C270844(), !v0))
    {
      type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
      return sub_22BE25FB0();
    }
  }

  return result;
}

uint64_t static TranscriptProtoUIConfirmationLabel.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE3E81C();
  v6 = v3 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  sub_22BE23A04();
  sub_22BE18E5C();
  v9 = sub_22BE2C988(v7, v8, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v9) & 1;
}

uint64_t sub_22C041EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D58, type metadata accessor for TranscriptProtoUIConfirmationLabel, &protocol conformance descriptor for TranscriptProtoUIConfirmationLabel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C041F6C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FE78, type metadata accessor for TranscriptProtoUIConfirmationLabel, &protocol conformance descriptor for TranscriptProtoUIConfirmationLabel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C041FDC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FE78, type metadata accessor for TranscriptProtoUIConfirmationLabel, &protocol conformance descriptor for TranscriptProtoUIConfirmationLabel);

  return sub_22C270774();
}

uint64_t sub_22C042068()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D890);
  sub_22BE199F4(v0, qword_27D90D890);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "viewData";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "containerBundleId";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "targetBundleId";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoArchiveViewPayload.traverse<A>(visitor:)()
{
  v1 = sub_22C0B149C();
  switch(v2 >> 62)
  {
    case 1uLL:
      v3 = v1;
      v4 = v1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v3 = *(v1 + 16);
      v4 = *(v1 + 24);
LABEL_6:
      if (v3 != v4)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_22BE25098();
      result = sub_22C2707E4();
      if (!v0)
      {
LABEL_8:
        v6 = sub_22BE17D60();
        result = sub_22BE4E2BC(v6);
        if (!v0)
        {
          v7 = sub_22BE17D60();
          sub_22BE4E2F4(v7);
          type metadata accessor for TranscriptProtoArchiveViewPayload(0);
          v8 = sub_22BE375E4();
          return sub_22BE363D4(v8, v9);
        }
      }

      return result;
  }
}

uint64_t static TranscriptProtoArchiveViewPayload.== infix(_:_:)(uint64_t a1)
{
  v3 = sub_22BE2F1D4(a1);
  if ((MEMORY[0x2318A6720](v3) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 24);
  if (*(v2 + 24))
  {
    if (!v4)
    {
      return 0;
    }

    sub_22BFB1A50();
    v7 = v7 && v5 == v6;
    if (!v7 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  sub_22BE46B5C();
  if (v9)
  {
    if (v8)
    {
      sub_22BFB1A40();
      v12 = v7 && v10 == v11;
      if (v12 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_18;
      }
    }
  }

  else if (!v8)
  {
LABEL_18:
    type metadata accessor for TranscriptProtoArchiveViewPayload(0);
    sub_22C0B1BAC();
    sub_22BE18E5C();
    v15 = sub_22BE2C988(v13, v14, MEMORY[0x277D216D0]);
    return sub_22BE2B85C(v15) & 1;
  }

  return 0;
}

uint64_t sub_22C042510(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D50, type metadata accessor for TranscriptProtoArchiveViewPayload, &protocol conformance descriptor for TranscriptProtoArchiveViewPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C042590(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FE90, type metadata accessor for TranscriptProtoArchiveViewPayload, &protocol conformance descriptor for TranscriptProtoArchiveViewPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C042600(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FE90, type metadata accessor for TranscriptProtoArchiveViewPayload, &protocol conformance descriptor for TranscriptProtoArchiveViewPayload);

  return sub_22C270774();
}

uint64_t sub_22C04279C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D48, type metadata accessor for TranscriptProtoLiveActivityPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04281C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FEA8, type metadata accessor for TranscriptProtoLiveActivityPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04288C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FEA8, type metadata accessor for TranscriptProtoLiveActivityPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityPayload);

  return sub_22C270774();
}

uint64_t sub_22C042918()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D8C0);
  sub_22BE199F4(v0, qword_27D90D8C0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pluginModelData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C042B30()
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

    if (result == 2)
    {
      sub_22BE25300();
      sub_22C2706A4();
    }

    else if (result == 1)
    {
      sub_22BE25300();
      v0();
    }
  }

  return result;
}

void sub_22C042BD4()
{
  sub_22BE2BB34();
  v2 = v1;
  sub_22BE18648();
  v3 = sub_22BE3E8FC();
  if (sub_22BFC4080(v3, v4) || (sub_22BE3E8FC(), sub_22BE25098(), sub_22C2707E4(), !v0))
  {
    sub_22BE1B448();
    if (!v5 || (sub_22BE2910C(), sub_22C270844(), !v0))
    {
      v2(0);
      sub_22BE25FB0();
    }
  }

  sub_22BEE93D4();
}

uint64_t sub_22C042C80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = sub_22BE2F1D4(a1);
  if ((MEMORY[0x2318A6720](v4) & 1) == 0)
  {
    return 0;
  }

  sub_22BE3E81C();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_22BE23A04();
  sub_22BE18E5C();
  v10 = sub_22BE2C988(v8, v9, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v10) & 1;
}

uint64_t sub_22C042DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D40, type metadata accessor for TranscriptProtoPluginSnippetPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C042E20(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FEC0, type metadata accessor for TranscriptProtoPluginSnippetPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C042E90(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FEC0, type metadata accessor for TranscriptProtoPluginSnippetPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetPayload);

  return sub_22C270774();
}

void sub_22C042F88()
{
  sub_22BE1B214();
  v1 = sub_22C0B149C();
  v4 = v3;
  switch(v2 >> 62)
  {
    case 1uLL:
      v5 = v1;
      v6 = v1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v5 = *(v1 + 16);
      v6 = *(v1 + 24);
LABEL_6:
      if (v5 != v6)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_22BE25098();
      sub_22C2707E4();
      if (!v0)
      {
LABEL_8:
        v4(0);
        sub_22BE294F8();
      }

      sub_22BE25C6C();
      return;
  }
}

uint64_t sub_22C0430DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D38, type metadata accessor for TranscriptProtoControlPayload, &protocol conformance descriptor for TranscriptProtoControlPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04315C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FED8, type metadata accessor for TranscriptProtoControlPayload, &protocol conformance descriptor for TranscriptProtoControlPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0431CC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FED8, type metadata accessor for TranscriptProtoControlPayload, &protocol conformance descriptor for TranscriptProtoControlPayload);

  return sub_22C270774();
}

uint64_t sub_22C043258()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D8F0);
  sub_22BE199F4(v0, qword_27D90D8F0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
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
  *(v5 + v2) = 2;
  *v10 = "userAction";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "systemResponseEventId";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "input";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoSystemPromptResolution.decodeMessage<A>(decoder:)()
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
        sub_22BE374D4();
        sub_22C270694();
        break;
      case 2:
        v11 = sub_22BE18E2C();
        sub_22C0435B0(v11, v12, v13, v14);
        break;
      case 3:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 4:
        v7 = sub_22BE18E2C();
        sub_22C043664(v7, v8, v9, v10);
        break;
      case 6:
        v3 = sub_22BE18E2C();
        sub_22C043718(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C0435B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  sub_22BE2C988(&qword_27D90FFC0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionUserAction);
  return sub_22C2706F4();
}

uint64_t sub_22C043664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C043718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  sub_22BE2C988(&qword_27D90FF08, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionInput);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoSystemPromptResolution.traverse<A>(visitor:)()
{
  v1 = sub_22BE3B0CC();
  result = sub_22BF97580(v1);
  if (!v0)
  {
    v3 = sub_22BE17D60();
    sub_22C043874(v3, v4, v5, v6);
    sub_22BE1B448();
    if (v7)
    {
      sub_22BE2910C();
      sub_22C270844();
    }

    v8 = sub_22BE17D60();
    sub_22C043A48(v8, v9, v10, v11);
    v12 = sub_22BE17D60();
    sub_22C043C1C(v12, v13, v14, v15);
    type metadata accessor for TranscriptProtoSystemPromptResolution(0);
    return sub_22BE1AC30();
  }

  return result;
}

uint64_t sub_22C043874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ECC0, &qword_22C297098);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90ECC0, &qword_22C297098);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FFC0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C043A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoSystemPromptResolution(0);
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

uint64_t sub_22C043C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ECB0, &unk_22C2AE730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90ECB0, &unk_22C2AE730);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FF08, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionInput);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoSystemPromptResolution.== infix(_:_:)()
{
  sub_22BE19460();
  v6 = v5;
  v7 = sub_22BE37EB4();
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(v7);
  v9 = sub_22BE28784(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE294E0();
  v10 = sub_22BE5CE4C(&qword_27D90ECB0, &unk_22C2AE730);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE181D0(v12, v54);
  v13 = sub_22BE5CE4C(&qword_27D90ECB8, &qword_22C297090);
  sub_22BE1B7B0(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE1AED0();
  type metadata accessor for TranscriptProtoStatementID(v15);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  sub_22BE38A28(v17);
  v18 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE35C94(v20, v55);
  v21 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  v24 = sub_22C0B1620(v23, v56);
  type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(v24);
  sub_22BE18000();
  MEMORY[0x28223BE20](v25);
  sub_22BE18DFC();
  v26 = sub_22BE5CE4C(&qword_27D90ECC0, &qword_22C297098);
  sub_22BE19448(v26);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1B72C();
  v28 = sub_22BE5CE4C(&qword_27D90ECC8, &qword_22C2970A0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE19E64();
  v30 = v3[3];
  v31 = v6[3];
  if (v30)
  {
    if (!v31)
    {
      goto LABEL_45;
    }

    v32 = v3[2] == v6[2] && v30 == v31;
    if (!v32 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v31)
  {
    goto LABEL_45;
  }

  v57 = v4;
  type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v33 = *(v28 + 48);
  sub_22C0B1F90();
  sub_22C0B1F90();
  sub_22BE3CAA4(v1);
  if (v32)
  {
    sub_22BE3CAA4(v1 + v33);
    if (v32)
    {
      sub_22BE33928(v1, &qword_27D90ECC0, &qword_22C297098);
      goto LABEL_20;
    }

LABEL_18:
    v35 = &qword_27D90ECC8;
    v36 = &qword_22C2970A0;
    v37 = v1;
LABEL_44:
    sub_22BE33928(v37, v35, v36);
    goto LABEL_45;
  }

  sub_22BE1AB74();
  sub_22BE22868();
  sub_22BE3CAA4(v1 + v33);
  if (v34)
  {
    sub_22C0B1BC4();
    goto LABEL_18;
  }

  sub_22C0B0868();
  v38 = static TranscriptProtoSystemPromptResolutionUserAction.== infix(_:_:)(v0, v2);
  sub_22BE431C0();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90ECC0, &qword_22C297098);
  if ((v38 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_20:
  v39 = *v3 == *v6 && v3[1] == v6[1];
  if (!v39 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_45;
  }

  v40 = *(v21 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v41 = sub_22BE3C598();
  sub_22BE36144(v41, v42);
  if (v32)
  {
    sub_22BE18190(v59 + v40);
    v43 = v57;
    if (v32)
    {
      sub_22BE33928(v59, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  sub_22BE22868();
  sub_22BE18190(v59 + v40);
  v43 = v57;
  if (v44)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_33:
    v35 = &qword_27D909100;
    v36 = &unk_22C27FD00;
    v37 = v59;
    goto LABEL_44;
  }

  sub_22BE18AA8();
  v40 = v58;
  sub_22C0B0868();
  v45 = sub_22BE1C2A0();
  static TranscriptProtoStatementID.== infix(_:_:)(v45, v46);
  sub_22BE39304();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v59, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((&unk_22C2AE4A0 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_35:
  sub_22C0B1DE4();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v47 = sub_22BE23E90();
  sub_22BE36144(v47, v48);
  if (v32)
  {
    sub_22BE18190(v43 + v40);
    if (v32)
    {
      sub_22BE33928(v43, &qword_27D90ECB0, &unk_22C2AE730);
LABEL_48:
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v52, v53, MEMORY[0x277D216D0]);
      sub_22BE3A008();
      v50 = sub_22C272FD4();
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  sub_22C0B1FA8();
  sub_22BE18190(v43 + v40);
  if (v49)
  {
    sub_22C0B1AFC();
LABEL_43:
    v35 = &qword_27D90ECB8;
    v36 = &qword_22C297090;
    v37 = v43;
    goto LABEL_44;
  }

  sub_22C0B0868();
  v51 = sub_22BE1C2A0();
  static TranscriptProtoSystemPromptResolutionInput.== infix(_:_:)(v51);
  sub_22BE39304();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v43, &qword_27D90ECB0, &unk_22C2AE730);
  if (&unk_22C2AE730)
  {
    goto LABEL_48;
  }

LABEL_45:
  v50 = 0;
LABEL_46:
  sub_22BE1C1DC(v50);
  sub_22BE1AABC();
}

uint64_t sub_22C0444DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D30, type metadata accessor for TranscriptProtoSystemPromptResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04455C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FEF0, type metadata accessor for TranscriptProtoSystemPromptResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolution);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0445CC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90FEF0, type metadata accessor for TranscriptProtoSystemPromptResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolution);

  return sub_22C270774();
}

uint64_t sub_22C044658()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D908);
  sub_22BE199F4(v0, qword_27D90D908);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "touch";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "headGesture";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "speech";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoSystemPromptResolutionInput.decodeMessage<A>(decoder:)()
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
      case 2:
        sub_22BE231C0();
        sub_22BFCA9A8();
        break;
      case 3:
        v3 = sub_22BE236F4();
        sub_22C044994(v3, v4, v5, v6);
        break;
      case 4:
        v7 = sub_22BE236F4();
        sub_22C044E8C(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C044994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90ECD8, &qword_22C2CC950);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
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
    sub_22BE33928(v10, &qword_27D90ECD8, &qword_22C2CC950);
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
  sub_22BE33928(v25, &qword_27D90ECD8, &qword_22C2CC950);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C044E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90ECD8, &qword_22C2CC950);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
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
    sub_22BE33928(v10, &qword_27D90ECD8, &qword_22C2CC950);
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
  sub_22BE33928(v25, &qword_27D90ECD8, &qword_22C2CC950);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoSystemPromptResolutionInput.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  sub_22BE2B890(v5);
  if (!v6)
  {
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v16 = sub_22BE17D78();
        sub_22C045AA4(v16, v17, v18, v19);
        goto LABEL_12;
      case 2:
        sub_22BE17D78();
        sub_22C0454D4();
        goto LABEL_9;
      case 3:
        v12 = sub_22BE17D78();
        sub_22C045678(v12, v13, v14, v15);
LABEL_9:
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
      default:
        v8 = sub_22BE17D78();
        sub_22C0458A0(v8, v9, v10, v11);
LABEL_12:
        sub_22BE291DC();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
    }
  }

  type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  sub_22BE235A8();
LABEL_4:
  sub_22BE1965C();
  sub_22BEE93D4();
}

void sub_22C0454D4()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_22C270424();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v7);
  sub_22BE1955C();
  v8 = sub_22BE5CE4C(v6, v4);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  sub_22BE1AB1C();
  sub_22BE22868();
  v10 = v2(0);
  v11 = sub_22BE26188();
  sub_22BE1AB5C(v11, v12, v10);
  if (v13)
  {
    sub_22BE33928(v0, v6, v4);
  }

  else
  {
    sub_22BE1B328();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_22BE431C0();
    sub_22C0B08BC();
    if (EnumCaseMultiPayload == 2)
    {
      sub_22C270414();
      sub_22BE1B470();
      sub_22BE2C988(v15, v16, MEMORY[0x277D21558]);
      sub_22C0B1684();
      sub_22C2707D4();
      v17 = sub_22BE39EAC();
      v18(v17);
      sub_22BE18478();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_22C045678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D90ECD8, &qword_22C2CC950);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  sub_22BE22868();
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if (sub_22BE1AEA8(v10, 1, v11) == 1)
  {
    result = sub_22BE33928(v10, &qword_27D90ECD8, &qword_22C2CC950);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 3)
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