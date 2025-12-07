void sub_22BFBE3F4(uint64_t a1)
{
  sub_22BFBC77C(319, &qword_28106DCC0, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22BFBC77C(319, &qword_27D90C9A8, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22BFBC77C(319, &qword_28106DDA0, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_22BFBC77C(319, qword_28106FEB0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_22C2704B4();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22BFBE5EC(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_27D90C9D0, &type metadata for ContextProtoQueryDecorationCoreService, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_22BFBE714(uint64_t a1)
{
  sub_22BFBC77C(319, &qword_28106DF40, MEMORY[0x277D72800], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22BFBC77C(319, &qword_28106DF48, MEMORY[0x277D727E0], MEMORY[0x277D83D88]);
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

void sub_22BFBE848(uint64_t a1)
{
  sub_22BFBC77C(319, &qword_28106DCF0, type metadata accessor for ContextProtoSampleInvocation, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22BFBF9AC(319, &qword_28106DD48, &type metadata for ContextProtoRetrievedTool.AppSource, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22BFBC77C(319, qword_281078990, type metadata accessor for ContextProtoRetrievedTool.Definition, MEMORY[0x277D83D88]);
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

_BYTE *storeEnumTagSinglePayload for ContextProtoRetrievedTool.AppSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22BFBEA74(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22BFBEBB0(uint64_t a1)
{
  v1 = sub_22C272674();
  if (v2 <= 0x3F)
  {
    v3 = sub_22C272634();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = type metadata accessor for ContextProtoUIControlTool(319);
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_22BFBEC7C(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22BFBC77C(319, &qword_28106DF28, MEMORY[0x277D72898], MEMORY[0x277D83D88]);
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

uint64_t sub_22BFBEDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_22C2704B4();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BFBEE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  sub_22BE18378();
  sub_22BE5CE4C(v11, v12);
  sub_22BE187D0();
  if (*(v14 + 84) == v7)
  {
    v15 = v13;
    v16 = v8;
  }

  else
  {
    sub_22BE5CE4C(a6, a7);
    sub_22BE187D0();
    if (*(v17 + 84) == v7)
    {
      sub_22BE23B20();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE1C1E8();
    }

    v16 = v8 + v18;
  }

  return sub_22BE1AEA8(v16, v7, v15);
}

uint64_t sub_22BFBEF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  sub_22BE20388();
  sub_22BE18378();
  sub_22BE5CE4C(v11, v12);
  sub_22BE187D0();
  if (*(v13 + 84) != v8)
  {
    sub_22BE5CE4C(a7, a8);
    sub_22BE187D0();
    if (*(v14 + 84) == v8)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE38994();
    }
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v15, v16, v17, v18);
}

void sub_22BFBF014(uint64_t a1)
{
  sub_22BFBC77C(319, &qword_28106DF30, MEMORY[0x277D72830], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22BFBC77C(319, &qword_28106DF38, MEMORY[0x277D72818], MEMORY[0x277D83D88]);
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

uint64_t sub_22BFBF124()
{
  sub_22BE1B9D8();
  if (v0)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE1C1E8();
  v3 = sub_22BE25438(v2);

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22BFBF19C(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DBF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22C2704B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22BFBF260()
{
  sub_22BE18378();
  sub_22BE5CE4C(v2, v3);
  sub_22BE187D0();
  if (*(v5 + 84) == v0)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_22C2704B4();
    sub_22BE23B20();
    v7 = v1 + v8;
  }

  return sub_22BE1AEA8(v7, v0, v6);
}

uint64_t sub_22BFBF308()
{
  sub_22BE20388();
  sub_22BE18378();
  sub_22BE5CE4C(v1, v2);
  sub_22BE187D0();
  if (*(v3 + 84) != v0)
  {
    sub_22C2704B4();
    sub_22BE26204();
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v4, v5, v6, v7);
}

uint64_t sub_22BFBF3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_22C2704B4();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BFBF4A0(uint64_t a1)
{
  sub_22BFBC77C(319, &qword_28106DD40, type metadata accessor for ContextProtoRetrievedTool, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22BFBC77C(319, &qword_28106DCB8, type metadata accessor for ContextProtoToolRetrievalType, MEMORY[0x277D83940]);
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

void sub_22BFBF5E4(uint64_t a1)
{
  sub_22BFBC77C(319, &qword_28106DD68, type metadata accessor for ContextProtoEntityMatch, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22BFBC77C(319, &qword_28106DF48, MEMORY[0x277D727E0], MEMORY[0x277D83D88]);
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

void sub_22BFBF708(uint64_t a1)
{
  sub_22BFBC77C(319, qword_281077BF8, type metadata accessor for ContextProtoMatchProperties, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_22BFBF858(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DAD8, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22BFBC77C(319, qword_281079F30, type metadata accessor for ContextProtoAliasTypes, MEMORY[0x277D83D88]);
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

void sub_22BFBF9AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22BFBFC6C()
{

  return sub_22BE2343C();
}

void sub_22BFBFC8C(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_22BFBFCA8()
{

  return sub_22BE22814();
}

uint64_t sub_22BFBFD0C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90C9E8);
  sub_22BE199F4(v0, qword_27D90C9E8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VOICE_ONLY";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VOICE_FORWARD";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DISPLAY_FORWARD";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "DISPLAY_ONLY";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFBFFDC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CA00);
  sub_22BE199F4(v0, qword_27D90CA00);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "client_request_id";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "response_mode";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "response_locale";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "statement_result_digests";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ResponseGenerationProtoResponseGenerationInput.decodeMessage<A>(decoder:)()
{
  sub_22BE38384();
  while (1)
  {
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
        sub_22C2706A4();
        break;
      case 3:
        v5 = sub_22BE18E2C();
        sub_22BFC0340(v5, v6, v7, v8);
        break;
      case 5:
        v3 = sub_22BE18E2C();
        sub_22BFC03A8(v3, v4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFC03A8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_22BFC2E28(&qword_27D90CA38, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest);
  return sub_22C2706E4();
}

uint64_t ResponseGenerationProtoResponseGenerationInput.traverse<A>(visitor:)()
{
  sub_22BE38384();
  sub_22BE1B448();
  if (!v3 || (result = sub_22BE3E600(v2), !v1))
  {
    sub_22BE1B448();
    if (!v6 || (result = sub_22BE3E600(v5), !v1))
    {
      if (!*(v0 + 32) || (sub_22BFC29D8(), sub_22BE23CE4(), result = sub_22C2707D4(), !v1))
      {
        sub_22BE1B448();
        if (!v8 || (result = sub_22BE3E600(v7), !v1))
        {
          if (!*(*(v0 + 56) + 16) || (type metadata accessor for ResponseGenerationProtoStatementResultDigest(0), sub_22BFC2E28(&qword_27D90CA38, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest), sub_22BE23CE4(), result = sub_22C270874(), !v1))
          {
            type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0);
            return sub_22C270494();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static ResponseGenerationProtoResponseGenerationInput.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48);
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BEA18C4();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0);
  sub_22C2704B4();
  sub_22BE18674();
  sub_22BFC2E28(v8, v9, MEMORY[0x277D216D0]);
  return sub_22C272FD4() & 1;
}

uint64_t sub_22BFC0760(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFC2E28(&qword_27D90CAD8, type metadata accessor for ResponseGenerationProtoResponseGenerationInput, &protocol conformance descriptor for ResponseGenerationProtoResponseGenerationInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFC07E0(uint64_t a1)
{
  v2 = sub_22BFC2E28(&qword_27D90CAB0, type metadata accessor for ResponseGenerationProtoResponseGenerationInput, &protocol conformance descriptor for ResponseGenerationProtoResponseGenerationInput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFC0850(uint64_t a1, uint64_t a2)
{
  sub_22BFC2E28(&qword_27D90CAB0, type metadata accessor for ResponseGenerationProtoResponseGenerationInput, &protocol conformance descriptor for ResponseGenerationProtoResponseGenerationInput);

  return sub_22C270774();
}

uint64_t sub_22BFC08EC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CA18);
  sub_22BE199F4(v0, qword_27D90CA18);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tool_definition";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action_created";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "statement_outcome";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "undo_operation";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "response_manifest";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "return_value_type_display_representation";
  *(v18 + 1) = 40;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ResponseGenerationProtoStatementResultDigest.decodeMessage<A>(decoder:)()
{
  sub_22BE38384();
  while (1)
  {
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22BE18E2C();
        sub_22BFC0C9C(v3, v4, v5, v6);
        break;
      case 2:
        v19 = sub_22BE18E2C();
        sub_22BFC0D3C(v19, v20, v21, v22);
        break;
      case 3:
        v11 = sub_22BE18E2C();
        sub_22BFC0DF0(v11, v12, v13, v14);
        break;
      case 4:
        v15 = sub_22BE18E2C();
        sub_22BFC0EA4(v15, v16, v17, v18);
        break;
      case 5:
        v7 = sub_22BE18E2C();
        sub_22BFC0F18(v7, v8, v9, v10);
        break;
      case 6:
        v23 = sub_22BE18E2C();
        sub_22BFC0FCC(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFC0C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C272674();
  sub_22BFC2E28(&qword_27D90C790, MEMORY[0x277D72898], MEMORY[0x277D72890]);
  return sub_22C2706F4();
}

uint64_t sub_22BFC0D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  type metadata accessor for TranscriptProtoAction(0);
  sub_22BFC2E28(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
  return sub_22C2706F4();
}

uint64_t sub_22BFC0DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BFC2E28(&qword_2810744D0, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
  return sub_22C2706F4();
}

uint64_t sub_22BFC0EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_22BFC2DD4();
  return sub_22C2705D4();
}

uint64_t sub_22BFC0F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22BFC2E28(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);
  return sub_22C2706F4();
}

uint64_t sub_22BFC0FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_22C272644();
  sub_22BFC2E28(&qword_27D90CAE0, MEMORY[0x277D72880], MEMORY[0x277D72878]);
  return sub_22C2706F4();
}

uint64_t ResponseGenerationProtoStatementResultDigest.traverse<A>(visitor:)()
{
  sub_22BE38384();
  result = sub_22BFC114C(v0, v4, v3, v2);
  if (!v1)
  {
    v6 = sub_22BE17D78();
    sub_22BFC134C(v6, v7, v8, v9);
    v10 = sub_22BE17D78();
    sub_22BFC1520(v10, v11, v12, v13);
    v14 = sub_22BE17D78();
    sub_22BFC16F4(v14, v15, v16, v17);
    v18 = sub_22BE17D78();
    sub_22BFC1784(v18, v19, v20, v21);
    v22 = sub_22BE17D78();
    sub_22BFC1958(v22, v23, v24, v25);
    type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
    return sub_22C270494();
  }

  return result;
}

uint64_t sub_22BFC114C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = sub_22C272674();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE2B9D0(a1, v7, &qword_27D90C180, &unk_22C296C40);
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C180, &unk_22C296C40);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_22BFC2E28(&qword_27D90C790, MEMORY[0x277D72898], MEMORY[0x277D72890]);
  sub_22C270884();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_22BFC134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_22BE5CE4C(&qword_27D90CA78, &qword_22C2B5880);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_22BE2B9D0(a1 + *(v11 + 20), v7, &qword_27D90CA78, &qword_22C2B5880);
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90CA78, &qword_22C2B5880);
  }

  sub_22BFC2A84(v7, v10, type metadata accessor for TranscriptProtoAction);
  sub_22BFC2E28(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
  sub_22C270884();
  return sub_22BFC2A2C(v10, type metadata accessor for TranscriptProtoAction);
}

uint64_t sub_22BFC1520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_22BE2B9D0(a1 + *(v11 + 24), v7, &qword_27D90CA68, &unk_22C296C50);
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90CA68, &unk_22C296C50);
  }

  sub_22BFC2A84(v7, v10, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_22BFC2E28(&qword_2810744D0, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
  sub_22C270884();
  return sub_22BFC2A2C(v10, type metadata accessor for TranscriptProtoStatementOutcome);
}

uint64_t sub_22BFC16F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    sub_22BFC2DD4();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22BFC1784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_22BE5CE4C(&qword_27D90CA58, &unk_22C2AE550);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseManifest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_22BE2B9D0(a1 + *(v11 + 32), v7, &qword_27D90CA58, &unk_22C2AE550);
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90CA58, &unk_22C2AE550);
  }

  sub_22BFC2A84(v7, v10, type metadata accessor for TranscriptProtoResponseManifest);
  sub_22BFC2E28(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);
  sub_22C270884();
  return sub_22BFC2A2C(v10, type metadata accessor for TranscriptProtoResponseManifest);
}

uint64_t sub_22BFC1958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_22BE5CE4C(&qword_27D90CA48, &qword_22C296C60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_22C272644();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_22BE2B9D0(a1 + *(v12 + 36), v7, &qword_27D90CA48, &qword_22C296C60);
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90CA48, &qword_22C296C60);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_22BFC2E28(&qword_27D90CAE0, MEMORY[0x277D72880], MEMORY[0x277D72878]);
  sub_22C270884();
  return (*(v9 + 8))(v11, v8);
}

uint64_t static ResponseGenerationProtoStatementResultDigest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v116 = a1;
  v117 = a2;
  v103 = sub_22C272644();
  sub_22BE179D8();
  v99 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  v97 = v4;
  v5 = sub_22BE5CE4C(&qword_27D90CA48, &qword_22C296C60);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v98 = v7;
  v101 = sub_22BE5CE4C(&qword_27D90CA50, &qword_22C2968D8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v102 = v9;
  v106 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v100 = v11;
  v12 = sub_22BE5CE4C(&qword_27D90CA58, &unk_22C2AE550);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v104 = v14;
  v105 = sub_22BE5CE4C(&qword_27D90CA60, &qword_22C2968E0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  v107 = v16;
  v112 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v108 = v18;
  v19 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A174();
  v109 = v21;
  v111 = sub_22BE5CE4C(&qword_27D90CA70, &qword_22C2968E8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A174();
  v113 = v23;
  v115 = type metadata accessor for TranscriptProtoAction(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v24);
  sub_22BE17A44();
  v110 = v25;
  v26 = sub_22BE5CE4C(&qword_27D90CA78, &qword_22C2B5880);
  sub_22BE19448(v26);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1A174();
  v114 = v28;
  v29 = sub_22BE5CE4C(&qword_27D90CA80, &qword_22C2968F0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v32 = &v97 - v31;
  v33 = sub_22C272674();
  sub_22BE179D8();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  sub_22BE19448(v39);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  v42 = &v97 - v41;
  v43 = sub_22BE5CE4C(&qword_27D90C188, &qword_22C290E48);
  sub_22BE19448(v43);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  v46 = &v97 - v45;
  v48 = *(v47 + 56);
  sub_22BE2B9D0(v116, &v97 - v45, &qword_27D90C180, &unk_22C296C40);
  sub_22BE2B9D0(v117, &v46[v48], &qword_27D90C180, &unk_22C296C40);
  sub_22BE1AB5C(v46, 1, v33);
  if (v49)
  {
    sub_22BE1AB5C(&v46[v48], 1, v33);
    if (v49)
    {
      sub_22BE33928(v46, &qword_27D90C180, &unk_22C296C40);
      goto LABEL_11;
    }

LABEL_9:
    v50 = &qword_27D90C188;
    v51 = &qword_22C290E48;
    v52 = v46;
LABEL_31:
    sub_22BE33928(v52, v50, v51);
    goto LABEL_32;
  }

  sub_22BE2B9D0(v46, v42, &qword_27D90C180, &unk_22C296C40);
  sub_22BE1AB5C(&v46[v48], 1, v33);
  if (v49)
  {
    (*(v35 + 8))(v42, v33);
    goto LABEL_9;
  }

  (*(v35 + 32))(v38, &v46[v48], v33);
  sub_22BFC2E28(&qword_27D909248, MEMORY[0x277D72898], MEMORY[0x277D728A0]);
  v53 = sub_22C272FD4();
  v54 = *(v35 + 8);
  v54(v38, v33);
  v54(v42, v33);
  sub_22BE33928(v46, &qword_27D90C180, &unk_22C296C40);
  if ((v53 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  v55 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v56 = v55[5];
  v57 = *(v29 + 48);
  v58 = v116;
  sub_22BE1BACC(v116 + v56, v32);
  v59 = v117 + v56;
  v60 = v117;
  sub_22BE1BACC(v59, &v32[v57]);
  sub_22BE1AB5C(v32, 1, v115);
  if (v49)
  {
    sub_22BE18A84();
    if (v49)
    {
      sub_22BE33928(v32, &qword_27D90CA78, &qword_22C2B5880);
      goto LABEL_21;
    }

LABEL_19:
    v50 = &qword_27D90CA80;
    v51 = &qword_22C2968F0;
LABEL_30:
    v52 = v32;
    goto LABEL_31;
  }

  v61 = v114;
  sub_22BE2B9D0(v32, v114, &qword_27D90CA78, &qword_22C2B5880);
  sub_22BE18A84();
  if (v62)
  {
    sub_22BFC2A2C(v61, type metadata accessor for TranscriptProtoAction);
    goto LABEL_19;
  }

  sub_22BFC2A84(&v32[v57], v110, type metadata accessor for TranscriptProtoAction);
  static TranscriptProtoAction.== infix(_:_:)();
  sub_22BE1A31C();
  sub_22BFC2A2C(v61, type metadata accessor for TranscriptProtoAction);
  sub_22BE33928(v32, &qword_27D90CA78, &qword_22C2B5880);
  if ((&qword_22C2B5880 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  v63 = v55[6];
  v64 = *(v111 + 48);
  v65 = v113;
  sub_22BE1BACC(v58 + v63, v113);
  v66 = v60 + v63;
  v32 = v65;
  sub_22BE1BACC(v66, v65 + v64);
  sub_22BE1AB5C(v65, 1, v112);
  if (v49)
  {
    sub_22BE18A84();
    if (v49)
    {
      sub_22BE33928(v65, &qword_27D90CA68, &unk_22C296C50);
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v67 = v65;
  v68 = v109;
  sub_22BE2B9D0(v67, v109, &qword_27D90CA68, &unk_22C296C50);
  sub_22BE18A84();
  if (v69)
  {
    sub_22BFC2A2C(v68, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_29:
    v50 = &qword_27D90CA70;
    v51 = &qword_22C2968E8;
    goto LABEL_30;
  }

  v72 = &v32[v64];
  v73 = v108;
  sub_22BFC2A84(v72, v108, type metadata accessor for TranscriptProtoStatementOutcome);
  static TranscriptProtoStatementOutcome.== infix(_:_:)(v68, v73);
  sub_22BE1A31C();
  sub_22BFC2A2C(v68, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_22BE33928(v32, &qword_27D90CA68, &unk_22C296C50);
  if ((&unk_22C296C50 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  v74 = v55[7];
  v75 = *(v58 + v74);
  v76 = *(v60 + v74);
  if (v75 == 2)
  {
    if (v76 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v76 == 2 || ((v76 ^ v75) & 1) != 0)
  {
    goto LABEL_32;
  }

  v77 = v55[8];
  v78 = *(v105 + 48);
  v79 = v107;
  sub_22BE1BACC(v58 + v77, v107);
  v80 = v60 + v77;
  v32 = v79;
  sub_22BE1BACC(v80, v79 + v78);
  sub_22BE1AB5C(v79, 1, v106);
  if (v49)
  {
    sub_22BE18A84();
    if (v49)
    {
      sub_22BE33928(v79, &qword_27D90CA58, &unk_22C2AE550);
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v81 = v79;
  v82 = v104;
  sub_22BE2B9D0(v81, v104, &qword_27D90CA58, &unk_22C2AE550);
  sub_22BE18A84();
  if (v83)
  {
    sub_22BFC2A2C(v82, type metadata accessor for TranscriptProtoResponseManifest);
LABEL_48:
    v50 = &qword_27D90CA60;
    v51 = &qword_22C2968E0;
    goto LABEL_30;
  }

  sub_22BFC2A84(&v32[v78], v100, type metadata accessor for TranscriptProtoResponseManifest);
  static TranscriptProtoResponseManifest.== infix(_:_:)();
  sub_22BE1A31C();
  sub_22BFC2A2C(v82, type metadata accessor for TranscriptProtoResponseManifest);
  sub_22BE33928(v32, &qword_27D90CA58, &unk_22C2AE550);
  if ((&unk_22C2AE550 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_50:
  v84 = v55[9];
  v85 = v102;
  v86 = *(v101 + 48);
  sub_22BE1BACC(v58 + v84, v102);
  sub_22BE1BACC(v60 + v84, v85 + v86);
  v87 = v103;
  sub_22BE1AB5C(v85, 1, v103);
  if (v49)
  {
    sub_22BE1AB5C(v85 + v86, 1, v87);
    if (v49)
    {
      sub_22BE33928(v85, &qword_27D90CA48, &qword_22C296C60);
LABEL_60:
      sub_22C2704B4();
      sub_22BE18674();
      sub_22BFC2E28(v95, v96, MEMORY[0x277D216D0]);
      v70 = sub_22C272FD4();
      return v70 & 1;
    }

    goto LABEL_58;
  }

  v88 = v98;
  sub_22BE2B9D0(v85, v98, &qword_27D90CA48, &qword_22C296C60);
  sub_22BE1AB5C(v85 + v86, 1, v87);
  if (v89)
  {
    (*(v99 + 8))(v88, v87);
LABEL_58:
    v50 = &qword_27D90CA50;
    v51 = &qword_22C2968D8;
    v52 = v85;
    goto LABEL_31;
  }

  v90 = v99;
  v91 = v85 + v86;
  v92 = v97;
  (*(v99 + 32))(v97, v91, v87);
  sub_22BFC2E28(&qword_27D90CA88, MEMORY[0x277D72880], MEMORY[0x277D72888]);
  v93 = sub_22C272FD4();
  v94 = *(v90 + 8);
  v94(v92, v87);
  v94(v88, v87);
  sub_22BE33928(v85, &qword_27D90CA48, &qword_22C296C60);
  if (v93)
  {
    goto LABEL_60;
  }

LABEL_32:
  v70 = 0;
  return v70 & 1;
}

uint64_t sub_22BFC2784(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22C274154();
  a1(0);
  sub_22BFC2E28(a2, a3, a4);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22BFC2868(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFC2E28(&qword_27D90CAD0, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFC28E8(uint64_t a1)
{
  v2 = sub_22BFC2E28(&qword_27D90CA38, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFC2958(uint64_t a1, uint64_t a2)
{
  sub_22BFC2E28(&qword_27D90CA38, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest);

  return sub_22C270774();
}

unint64_t sub_22BFC29D8()
{
  result = qword_27D90CA30;
  if (!qword_27D90CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90CA30);
  }

  return result;
}

uint64_t sub_22BFC2A2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BE18000();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BFC2A84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE18000();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_22BFC2AE8()
{
  result = qword_27D90CA98;
  if (!qword_27D90CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90CA98);
  }

  return result;
}

unint64_t sub_22BFC2B40()
{
  result = qword_27D90CAA0;
  if (!qword_27D90CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90CAA0);
  }

  return result;
}

unint64_t sub_22BFC2DD4()
{
  result = qword_27D90CAF0;
  if (!qword_27D90CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90CAF0);
  }

  return result;
}

uint64_t sub_22BFC2E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

IntelligenceFlowPlannerSupport::ResponseGenerationProtoResponseMode_optional __swiftcall ResponseGenerationProtoResponseMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ResponseGenerationProtoResponseGenerationInput(v1);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.getter()
{
  v2 = sub_22BE1A5E4();
  v3 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(v2) + 36);
  sub_22C2704B4();
  sub_22BE18000();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(v2) + 36);
  sub_22C2704B4();
  sub_22BE18000();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ResponseGenerationProtoResponseGenerationInput(v0);
  return sub_22BE18504();
}

uint64_t ResponseGenerationProtoStatementResultDigest.init()()
{
  sub_22BE1A5E4();
  v1 = sub_22C272674();
  sub_22BE191D8(v0, v2, v3, v1);
  v4 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v5 = type metadata accessor for TranscriptProtoAction(0);
  sub_22BE1AF78(v5);
  v6 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE1AF78(v6);
  *(v0 + *(v4 + 28)) = 2;
  v7 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22BE1AF78(v7);
  v8 = sub_22C272644();
  sub_22BE1AF78(v8);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.getter()
{
  v2 = sub_22BE1A5E4();
  v3 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(v2) + 40);
  sub_22C2704B4();
  sub_22BE18000();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(v2) + 40);
  sub_22C2704B4();
  sub_22BE18000();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE18504();
}

uint64_t sub_22BFC321C@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseGenerationProtoResponseMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BFC324C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFC29D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void ResponseGenerationProtoResponseGenerationInput.clientRequestID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void ResponseGenerationProtoResponseGenerationInput.utterance.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void ResponseGenerationProtoResponseGenerationInput.responseLocale.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.init(clientRequestID:utterance:responseMode:responseLocale:statementResultDigests:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a5;
  type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v17;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.actionCreated.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3E620(&qword_27D90CA78, &qword_22C2B5880, *(v1 + 20));
}

uint64_t ResponseGenerationProtoStatementResultDigest.actionCreated.setter()
{
  v0 = sub_22BE17BC4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3B0B4(*(v1 + 20), &qword_27D90CA78, &qword_22C2B5880);
}

uint64_t ResponseGenerationProtoStatementResultDigest.actionCreated.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE18504();
}

uint64_t ResponseGenerationProtoStatementResultDigest.statementOutcome.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3E620(&qword_27D90CA68, &unk_22C296C50, *(v1 + 24));
}

uint64_t ResponseGenerationProtoStatementResultDigest.statementOutcome.setter()
{
  v0 = sub_22BE17BC4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3B0B4(*(v1 + 24), &qword_27D90CA68, &unk_22C296C50);
}

uint64_t ResponseGenerationProtoStatementResultDigest.statementOutcome.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE18504();
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.getter()
{
  v2 = sub_22BE1A5E4();
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE18504();
}

uint64_t ResponseGenerationProtoStatementResultDigest.responseManifest.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3E620(&qword_27D90CA58, &unk_22C2AE550, *(v1 + 32));
}

uint64_t ResponseGenerationProtoStatementResultDigest.responseManifest.setter()
{
  v0 = sub_22BE17BC4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3B0B4(*(v1 + 32), &qword_27D90CA58, &unk_22C2AE550);
}

uint64_t ResponseGenerationProtoStatementResultDigest.responseManifest.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE18504();
}

uint64_t ResponseGenerationProtoStatementResultDigest.returnValueTypeDisplayRepresentation.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3E620(&qword_27D90CA48, &qword_22C296C60, *(v1 + 36));
}

uint64_t ResponseGenerationProtoStatementResultDigest.returnValueTypeDisplayRepresentation.setter()
{
  v0 = sub_22BE17BC4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3B0B4(*(v1 + 36), &qword_27D90CA48, &qword_22C296C60);
}

uint64_t sub_22BFC390C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BE190C4(a1, a2, a3, a4);
  sub_22BE18000();
  v5 = sub_22BE19454();
  v6(v5);
  return v4;
}

uint64_t ResponseGenerationProtoStatementResultDigest.returnValueTypeDisplayRepresentation.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE18504();
}

uint64_t ResponseGenerationProtoStatementResultDigest.init(toolDefinition:actionCreated:statementOutcome:undoOperation:responseManifest:returnValueTypeDisplayRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = *a4;
  v11 = sub_22C272674();
  sub_22BE191D8(a7, v12, v13, v11);
  v14 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v15 = v14[5];
  v16 = type metadata accessor for TranscriptProtoAction(0);
  sub_22BE191D8(a7 + v15, v17, v18, v16);
  v19 = v14[6];
  v20 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE191D8(a7 + v19, v21, v22, v20);
  v23 = v14[7];
  *(a7 + v23) = 2;
  v24 = v14[8];
  v25 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22BE191D8(a7 + v24, v26, v27, v25);
  v28 = v14[9];
  v29 = sub_22C272644();
  sub_22BE191D8(a7 + v28, v30, v31, v29);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BFC390C(a1, a7, &qword_27D90C180, &unk_22C296C40);
  sub_22BFC390C(a2, a7 + v15, &qword_27D90CA78, &qword_22C2B5880);
  sub_22BFC390C(a3, a7 + v19, &qword_27D90CA68, &unk_22C296C50);
  *(a7 + v23) = v33;
  sub_22BFC390C(a5, a7 + v24, &qword_27D90CA58, &unk_22C2AE550);
  return sub_22BFC390C(a6, a7 + v28, &qword_27D90CA48, &qword_22C296C60);
}

unint64_t sub_22BFC3B28()
{
  result = qword_27D90CB00;
  if (!qword_27D90CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90CB00);
  }

  return result;
}

unint64_t sub_22BFC3B80()
{
  result = qword_27D90CB08;
  if (!qword_27D90CB08)
  {
    sub_22BE7431C(&qword_27D90CB10, &qword_22C296D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90CB08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationProtoResponseMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_22BFC3CE8(uint64_t a1)
{
  sub_22BFC3FCC(319, &qword_27D90CB28, type metadata accessor for ResponseGenerationProtoStatementResultDigest, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22C2704B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BFC3DE0(uint64_t a1)
{
  sub_22BFC3FCC(319, &qword_28106DF28, MEMORY[0x277D72898], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22BFC3FCC(319, &qword_27D90CB40, type metadata accessor for TranscriptProtoAction, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22BFC3FCC(319, qword_281074488, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22BFC4030();
        if (v4 <= 0x3F)
        {
          sub_22BFC3FCC(319, qword_281074730, type metadata accessor for TranscriptProtoResponseManifest, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_22BFC3FCC(319, &qword_27D90CB50, MEMORY[0x277D72880], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_22C2704B4();
              if (v7 <= 0x3F)
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

void sub_22BFC3FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22BFC4030()
{
  if (!qword_27D90CB48)
  {
    v0 = sub_22C273844();
    if (!v1)
    {
      atomic_store(v0, &qword_27D90CB48);
    }
  }
}

BOOL sub_22BFC4080(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_22BFC40D4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CB58);
  sub_22BE199F4(v0, qword_27D90CB58);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28D160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ENTITY_QUERY";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIRI_VOCABULARY";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "USER_FEEDBACK_LEARNING";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MEGADOME_ECR";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CONTEXT_REGISTRY";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RETURN_VALUE";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "USER_PROMPT";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "OMNISEARCH";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC4448()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CB70);
  sub_22BE199F4(v0, qword_27D90CB70);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "notSet";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "prescribedPlanGenerator";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "planOverride";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fullPlanner";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suggestedInvocationPlanGenerator";
  *(v16 + 1) = 32;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ruleBasedPlanGenerator";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC4740()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CB88);
  sub_22BE199F4(v0, qword_27D90CB88);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Completion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Disambiguation";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Confirmation";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Inform";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "Ask";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC49F0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CBA0);
  sub_22BE199F4(v0, qword_27D90CBA0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUPPRESS_PRINT";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC4BEC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CBB8);
  sub_22BE199F4(v0, qword_27D90CBB8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ASTUpdateKind_APPEND";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASTUpdateKind_REPLACE";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC4DE8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CBD0);
  sub_22BE199F4(v0, qword_27D90CBD0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "plus";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "minus";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "not";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC5020()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CBE8);
  sub_22BE199F4(v0, qword_27D90CBE8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_22C296E40;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 0;
  *v4 = "assign";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 1;
  *v8 = "add";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "addAssign";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subtract";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "subtractAssign";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "divide";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "divideAssign";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "multiply";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "multiplyAssign";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "exponent";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "equal";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "notEqual";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "in";
  *(v30 + 1) = 2;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "greaterThanEqual";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "greaterThan";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "lessThanEqual";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "lessThan";
  *(v38 + 1) = 8;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "and";
  *(v40 + 1) = 3;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "or";
  *(v42 + 1) = 2;
  v42[16] = 2;
  v7();
  return sub_22C2708A4();
}

uint64_t sub_22BFC5618()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC00);
  sub_22BE199F4(v0, qword_27D90CC00);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_22C296E40;
  v4 = v45 + v3;
  v5 = v45 + v3 + v1[14];
  *(v45 + v3) = 0;
  *v5 = "ASTInfixOp_ASSIGN";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22C270894();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ASTInfixOp_ADD";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ASTInfixOp_ADDASSIGN";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ASTInfixOp_SUBTRACT";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ASTInfixOp_SUBTRACTASSIGN";
  *(v15 + 1) = 25;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ASTInfixOp_DIVIDE";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ASTInfixOp_DIVIDEASSIGN";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ASTInfixOp_MULTIPLY";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "ASTInfixOp_MULTIPLYASSIGN";
  *(v23 + 1) = 25;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "ASTInfixOp_EXPONENT";
  *(v25 + 1) = 19;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "ASTInfixOp_EQUAL";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "ASTInfixOp_NOTEQUAL";
  *(v29 + 1) = 19;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "ASTInfixOp_IN";
  *(v31 + 1) = 13;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "ASTInfixOp_GREATERTHANEQUAL";
  *(v33 + 1) = 27;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "ASTInfixOp_GREATERTHAN";
  *(v35 + 1) = 22;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "ASTInfixOp_LESSTHANEQUAL";
  *(v37 + 1) = 24;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 16;
  *v39 = "ASTInfixOp_LESSTHAN";
  *(v39 + 1) = 19;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 17;
  *v41 = "ASTInfixOp_AND";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 18;
  *v43 = "ASTInfixOp_OR";
  *(v43 + 1) = 13;
  v43[16] = 2;
  v8();
  return sub_22C2708A4();
}

uint64_t sub_22BFC5C1C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC18);
  sub_22BE199F4(v0, qword_27D90CC18);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ASTPrefixOp_PLUS";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASTPrefixOp_MINUS";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ASTPrefixOp_NOT";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC5E54()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC30);
  sub_22BE199F4(v0, qword_27D90CC30);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "append";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "replace";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC6050()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC48);
  sub_22BE199F4(v0, qword_27D90CC48);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "appIntent";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "clientAction";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "schema";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "builtIn";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC62C4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC60);
  sub_22BE199F4(v0, qword_27D90CC60);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "female";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "male";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "neutral";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC6538()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC78);
  sub_22BE199F4(v0, qword_27D90CC78);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "undo";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "redo";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC674C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_28107AB80);
  sub_22BE199F4(v0, qword_28107AB80);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22C290D60;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 11;
  *v5 = "rawId";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22C270894();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "rawSessionId";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 12;
  *v11 = "rawQueryEventId";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "rawPayload";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 3;
  *v15 = "clientRequestId";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 4;
  *v17 = "clientSessionId";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "clientApplicationId";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "clientGroupId";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 13;
  *v23 = "timepoint";
  *(v23 + 1) = 9;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 6;
  *v25 = "sender";
  *(v25 + 1) = 6;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 7;
  *v27 = "postingSpan";
  *(v27 + 1) = 11;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 8;
  *v29 = "rawInitiatedSpans";
  *(v29 + 1) = 17;
  v29[16] = 2;
  v8();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoEvent.decodeMessage<A>(decoder:)()
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
      case 3:
      case 4:
      case 9:
      case 11:
        sub_22BE2037C();
        sub_22C2706A4();
        break;
      case 2:
        v11 = sub_22BE18E2C();
        sub_22BFC6C7C(v11, v12, v13, v14);
        break;
      case 6:
        v7 = sub_22BE18E2C();
        sub_22BFC6D30(v7, v8, v9, v10);
        break;
      case 7:
        v15 = sub_22BE18E2C();
        sub_22BFC6DE4(v15, v16, v17, v18);
        break;
      case 8:
        v19 = sub_22BE18E2C();
        sub_22BFC6E98(v19, v20, v21, v22);
        break;
      case 10:
        sub_22C0B19A4();
        sub_22BE18E2C();
        sub_22C02E104();
        break;
      case 12:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 13:
        v3 = sub_22BE18E2C();
        sub_22BFC6F1C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFC6C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoEvent(0);
  type metadata accessor for TranscriptProtoPayload(0);
  sub_22BE2C988(&qword_2810798C8, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);
  return sub_22C2706F4();
}

uint64_t sub_22BFC6D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoEvent(0);
  type metadata accessor for TranscriptProtoParticipantID(0);
  sub_22BE2C988(&unk_281076C00, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);
  return sub_22C2706F4();
}

uint64_t sub_22BFC6DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoEvent(0);
  type metadata accessor for TranscriptProtoSpanID(0);
  sub_22BE2C988(&unk_28107A328, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);
  return sub_22C2706F4();
}

uint64_t sub_22BFC6E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C270464();
  sub_22C270484();
  return sub_22C270574();
}

uint64_t sub_22BFC6F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoEvent(0);
  type metadata accessor for TranscriptProtoTimepoint(0);
  sub_22BE2C988(&qword_281078C68, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);
  return sub_22C2706F4();
}

void static TranscriptProtoEvent.== infix(_:_:)()
{
  sub_22BE19460();
  v6 = sub_22BE23708();
  type metadata accessor for TranscriptProtoSpanID(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE294E0();
  v8 = sub_22BE5CE4C(&qword_27D90E408, &unk_22C2CC840);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE23E58();
  v90 = sub_22BE5CE4C(&qword_27D90E410, &qword_22C296E80);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  type metadata accessor for TranscriptProtoParticipantID(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v89 = v12;
  v13 = sub_22BE5CE4C(&qword_27D90E418, &unk_22C2AE460);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v91 = v15;
  v92 = sub_22BE5CE4C(&qword_27D90E420, &qword_22C296E88);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE29250(v17, v83);
  type metadata accessor for TranscriptProtoTimepoint(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  sub_22BE3FF7C(v19);
  v20 = sub_22BE5CE4C(&qword_27D90E428, &qword_22C296E90);
  sub_22BE19448(v20);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE20168(v22, v84);
  v23 = sub_22BE5CE4C(&qword_27D90E430, &qword_22C296E98);
  sub_22BE272C0(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  v26 = sub_22C0B1620(v25, v85);
  type metadata accessor for TranscriptProtoPayload(v26);
  sub_22BE26880();
  MEMORY[0x28223BE20](v27);
  sub_22BE17CBC();
  v28 = sub_22BE5CE4C(&qword_27D90E438, &unk_22C2AE450);
  sub_22BE19448(v28);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B01C();
  v30 = sub_22BE5CE4C(&qword_27D90E440, &qword_22C296EA0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE19668();
  sub_22BE33C20();
  v34 = v34 && v32 == v33;
  if (!v34 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_30;
  }

  v35 = v2[2] == v0[2] && v2[3] == v0[3];
  if (!v35 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_30;
  }

  v36 = v2[12];
  v37 = v0[12];
  if (v36)
  {
    if (!v37)
    {
      goto LABEL_30;
    }

    v38 = v2[11] == v0[11] && v36 == v37;
    if (!v38 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v37)
  {
    goto LABEL_30;
  }

  v86 = v4;
  v87 = v3;
  v88 = type metadata accessor for TranscriptProtoEvent(0);
  v39 = *(v30 + 48);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE1972C(v1);
  if (v34)
  {
    sub_22BE1972C(v1 + v39);
    if (v34)
    {
      sub_22BE33928(v1, &qword_27D90E438, &unk_22C2AE450);
      goto LABEL_33;
    }

LABEL_28:
    v41 = &qword_27D90E440;
    v42 = &qword_22C296EA0;
    v43 = v1;
LABEL_29:
    sub_22BE33928(v43, v41, v42);
    goto LABEL_30;
  }

  sub_22BE22868();
  sub_22BE1972C(v1 + v39);
  if (v40)
  {
    sub_22C0B1AA4();
    goto LABEL_28;
  }

  sub_22C0B0868();
  v45 = sub_22BE25C08();
  v46 = static TranscriptProtoPayload.== infix(_:_:)(v45);
  sub_22BE2590C();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90E438, &unk_22C2AE450);
  if ((v46 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_33:
  v47 = v2[4] == v0[4] && v2[5] == v0[5];
  if (!v47 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_30;
  }

  v48 = v2[6] == v0[6] && v2[7] == v0[7];
  if (!v48 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_30;
  }

  v49 = v2[8] == v0[8] && v2[9] == v0[9];
  if (!v49 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_30;
  }

  v50 = *(v88 + 48);
  v51 = *(v0 + v50 + 8);
  if (*(v2 + v50 + 8))
  {
    v53 = v86;
    v52 = v87;
    if (!v51)
    {
      goto LABEL_30;
    }

    sub_22BE3A508(v2 + v50);
    v56 = v34 && v54 == v55;
    if (!v56 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v53 = v86;
    v52 = v87;
    if (v51)
    {
      goto LABEL_30;
    }
  }

  v57 = *(v94 + 48);
  v58 = v95;
  sub_22BE3A518();
  sub_22BE3A518();
  v59 = sub_22BE23E90();
  sub_22BE3F458(v59, v60);
  if (v34)
  {
    sub_22BE181B0(v95 + v57);
    if (v34)
    {
      sub_22BE33928(v95, &qword_27D90E428, &qword_22C296E90);
      goto LABEL_67;
    }

LABEL_65:
    v41 = &qword_27D90E430;
    v42 = &qword_22C296E98;
LABEL_76:
    v43 = v58;
    goto LABEL_29;
  }

  sub_22BE22868();
  sub_22BE181B0(v95 + v57);
  if (v61)
  {
    sub_22C0B1D88();
    goto LABEL_65;
  }

  sub_22C0B0868();
  static TranscriptProtoTimepoint.== infix(_:_:)();
  v63 = v62;
  sub_22BE431C0();
  sub_22C0B08BC();
  sub_22BE25EFC();
  sub_22C0B08BC();
  sub_22BE33928(v95, &qword_27D90E428, &qword_22C296E90);
  if ((v63 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_67:
  v64 = *(v92 + 48);
  sub_22BE3A518();
  v58 = v93;
  sub_22BE3A518();
  v65 = sub_22BE3C688();
  sub_22BE3F458(v65, v66);
  if (v34)
  {
    sub_22BE181B0(v93 + v64);
    if (v34)
    {
      sub_22BE33928(v93, &qword_27D90E418, &unk_22C2AE460);
      goto LABEL_83;
    }

    goto LABEL_75;
  }

  sub_22BE22868();
  sub_22BE181B0(v93 + v64);
  if (v67)
  {
    sub_22C0B08BC();
LABEL_75:
    v41 = &qword_27D90E420;
    v42 = &qword_22C296E88;
    goto LABEL_76;
  }

  sub_22C0B0868();
  v68 = *v91 == *v89 && v91[1] == v89[1];
  if (!v68 && (sub_22C274014() & 1) == 0)
  {
    sub_22C0B08BC();
    sub_22BE1B074();
    sub_22C0B08BC();
    v41 = &qword_27D90E418;
    v42 = &unk_22C2AE460;
    goto LABEL_76;
  }

  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v69, v70, MEMORY[0x277D216D0]);
  v71 = sub_22C272FD4();
  sub_22C0B08BC();
  sub_22BE3CEF4();
  sub_22C0B08BC();
  sub_22BE33928(v93, &qword_27D90E418, &unk_22C2AE460);
  if ((v71 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_83:
  v72 = *(v90 + 48);
  sub_22BE3A518();
  sub_22BE3A518();
  v73 = sub_22BFB1A7C();
  sub_22BE3F458(v73, v74);
  if (!v34)
  {
    sub_22BE22868();
    sub_22BE181B0(v52 + v72);
    if (!v79)
    {
      sub_22C0B0868();
      if (*v5 == *v53)
      {
        sub_22C2704B4();
        sub_22BE18E5C();
        sub_22BE2C988(v80, v81, MEMORY[0x277D216D0]);
        v82 = sub_22C272FD4();
        sub_22C0B08BC();
        sub_22BE25C08();
        sub_22C0B08BC();
        sub_22BE33928(v52, &qword_27D90E408, &unk_22C2CC840);
        if ((v82 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_88;
      }

      sub_22C0B08BC();
      sub_22BE291B0();
      sub_22C0B08BC();
      v41 = &qword_27D90E408;
      v42 = &unk_22C2CC840;
      goto LABEL_94;
    }

    sub_22C0B1AA4();
LABEL_93:
    v41 = &qword_27D90E410;
    v42 = &qword_22C296E80;
LABEL_94:
    v43 = v52;
    goto LABEL_29;
  }

  sub_22BE181B0(v52 + v72);
  if (!v34)
  {
    goto LABEL_93;
  }

  sub_22BE33928(v52, &qword_27D90E408, &unk_22C2CC840);
LABEL_88:
  sub_22BEA3324();
  if (v75)
  {
    sub_22C2704B4();
    sub_22BE18E5C();
    v78 = sub_22BE2C988(v76, v77, MEMORY[0x277D216D0]);
    v44 = sub_22BE35FB8(v78);
    goto LABEL_31;
  }

LABEL_30:
  v44 = 0;
LABEL_31:
  sub_22BE1C1DC(v44);
  sub_22BE1AABC();
}

uint64_t sub_22BFC7AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911170, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFC7B6C(uint64_t a1)
{
  v2 = sub_22BE2C988(&unk_28107AB68, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFC7BDC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&unk_28107AB68, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);

  return sub_22C270774();
}

uint64_t sub_22BFC7C74()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_2810798D8);
  sub_22BE199F4(v0, qword_2810798D8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_22C296E50;
  v4 = v94 + v3 + v1[14];
  *(v94 + v3) = 46;
  *v4 = "sessionStart";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v94 + v3 + v2 + v1[14];
  *(v94 + v3 + v2) = 59;
  *v8 = "userTurnStarted";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v7();
  v9 = (v94 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 60;
  *v10 = "speechPartialResult";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v94 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 41;
  *v12 = "request";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v94 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "planCreated";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v94 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "actionCreated";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v94 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "clientActionCreated";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v94 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "queriesCreated";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v94 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "variablesSet";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v7();
  v23 = (v94 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "criticalError";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v7();
  v25 = (v94 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 47;
  *v26 = "recoverableError";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v7();
  v27 = (v94 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 14;
  *v28 = "endOfPlan";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v7();
  v29 = (v94 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 15;
  *v30 = "terminate";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v7();
  v31 = (v94 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 19;
  *v32 = "queriesExecuted";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v7();
  v33 = (v94 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 21;
  *v34 = "actionResolverRequestCreated";
  *(v34 + 1) = 28;
  v34[16] = 2;
  v7();
  v35 = (v94 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 25;
  *v36 = "safetyModeRelease";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v7();
  v37 = (v94 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 26;
  *v38 = "safetyModeException";
  *(v38 + 1) = 19;
  v38[16] = 2;
  v7();
  v39 = (v94 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 27;
  *v40 = "responseGenerationRequest";
  *(v40 + 1) = 25;
  v40[16] = 2;
  v7();
  v41 = (v94 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 28;
  *v42 = "entitySpanMatched";
  *(v42 + 1) = 17;
  v42[16] = 2;
  v7();
  v43 = (v94 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 29;
  *v44 = "ContextRetrieved";
  *(v44 + 1) = 16;
  v44[16] = 2;
  v7();
  v45 = (v94 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 30;
  *v46 = "actionCanceled";
  *(v46 + 1) = 14;
  v46[16] = 2;
  v7();
  v47 = (v94 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 31;
  *v48 = "toolsRetrieved";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v7();
  v49 = (v94 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 32;
  *v50 = "systemResponseGenerated";
  *(v50 + 1) = 23;
  v50[16] = 2;
  v7();
  v51 = (v94 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 33;
  *v52 = "statementEvaluated";
  *(v52 + 1) = 18;
  v52[16] = 2;
  v7();
  v53 = (v94 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 42;
  *v54 = "externalAgentRequest";
  *(v54 + 1) = 20;
  v54[16] = 2;
  v7();
  v55 = (v94 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 36;
  *v56 = "externalAgentOutcome";
  *(v56 + 1) = 20;
  v56[16] = 2;
  v7();
  v57 = (v94 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 37;
  *v58 = "externalAgentRequestRewriteMetadata";
  *(v58 + 1) = 35;
  v58[16] = 2;
  v7();
  v59 = (v94 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 38;
  *v60 = "ToolResolution";
  *(v60 + 1) = 14;
  v60[16] = 2;
  v7();
  v61 = (v94 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 39;
  *v62 = "undoRedoRequest";
  *(v62 + 1) = 15;
  v62[16] = 2;
  v7();
  v63 = (v94 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 40;
  *v64 = "clientUndoRedoRequest";
  *(v64 + 1) = 21;
  v64[16] = 2;
  v7();
  v65 = (v94 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 43;
  *v66 = "typeConversionRequest";
  *(v66 + 1) = 21;
  v66[16] = 2;
  v7();
  v67 = (v94 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 44;
  *v68 = "typeConversionResult";
  *(v68 + 1) = 20;
  v68[16] = 2;
  v7();
  v69 = (v94 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 45;
  *v70 = "queryDecorationResult";
  *(v70 + 1) = 21;
  v70[16] = 2;
  v7();
  v71 = (v94 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 48;
  *v72 = "continuePlanning";
  *(v72 + 1) = 16;
  v72[16] = 2;
  v7();
  v73 = (v94 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 49;
  *v74 = "queryDecorationPrePlannerResult";
  *(v74 + 1) = 31;
  v74[16] = 2;
  v7();
  v75 = (v94 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 50;
  *v76 = "skipStatement";
  *(v76 + 1) = 13;
  v76[16] = 2;
  v7();
  v77 = (v94 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 51;
  *v78 = "executionPreconditionEvaluatorRequest";
  *(v78 + 1) = 37;
  v78[16] = 2;
  v7();
  v79 = (v94 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 52;
  *v80 = "requestAmendment";
  *(v80 + 1) = 16;
  v80[16] = 2;
  v7();
  v81 = (v94 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 53;
  *v82 = "toolRetrievalRequest";
  *(v82 + 1) = 20;
  v82[16] = 2;
  v7();
  v83 = (v94 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 54;
  *v84 = "contextRetrievalRequest";
  *(v84 + 1) = 23;
  v84[16] = 2;
  v7();
  v85 = (v94 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 55;
  *v86 = "spanMatchRequest";
  *(v86 + 1) = 16;
  v86[16] = 2;
  v7();
  v87 = (v94 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 56;
  *v88 = "intermediateSystemResponse";
  *(v88 + 1) = 26;
  v88[16] = 2;
  v7();
  v89 = (v94 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 57;
  *v90 = "intermediateSystemResponseRendered";
  *(v90 + 1) = 34;
  v90[16] = 2;
  v7();
  v91 = (v94 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 58;
  *v92 = "agentPrimitiveAction";
  *(v92 + 1) = 20;
  v92[16] = 2;
  v7();
  return sub_22C2708A4();
}

void TranscriptProtoPayload.decodeMessage<A>(decoder:)()
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
        v3 = sub_22BE236F4();
        sub_22BFC8BD8(v3, v4, v5, v6);
        break;
      case 4:
        v83 = sub_22BE236F4();
        sub_22BFC90D0(v83, v84, v85, v86);
        break;
      case 5:
        v71 = sub_22BE236F4();
        sub_22BFC95C8(v71, v72, v73, v74);
        break;
      case 6:
        v79 = sub_22BE236F4();
        sub_22BFC9AC0(v79, v80, v81, v82);
        break;
      case 7:
        v47 = sub_22BE236F4();
        sub_22BFC9FB8(v47, v48, v49, v50);
        break;
      case 11:
        v103 = sub_22BE236F4();
        sub_22BFCA4B0(v103, v104, v105, v106);
        break;
      case 14:
      case 15:
        sub_22BE23718();
        sub_22BFCA9A8();
        break;
      case 19:
        v123 = sub_22BE236F4();
        sub_22BFCAC34(v123, v124, v125, v126);
        break;
      case 21:
        v59 = sub_22BE236F4();
        sub_22BFCB12C(v59, v60, v61, v62);
        break;
      case 25:
        v119 = sub_22BE236F4();
        sub_22BFCB624(v119, v120, v121, v122);
        break;
      case 26:
        v43 = sub_22BE236F4();
        sub_22BFCBB1C(v43, v44, v45, v46);
        break;
      case 27:
        v55 = sub_22BE236F4();
        sub_22BFCC014(v55, v56, v57, v58);
        break;
      case 28:
        v111 = sub_22BE236F4();
        sub_22BFCC50C(v111, v112, v113, v114);
        break;
      case 29:
        v35 = sub_22BE236F4();
        sub_22BFCCA04(v35, v36, v37, v38);
        break;
      case 30:
        v75 = sub_22BE236F4();
        sub_22BFCCEFC(v75, v76, v77, v78);
        break;
      case 31:
        v31 = sub_22BE236F4();
        sub_22BFCD3F4(v31, v32, v33, v34);
        break;
      case 32:
        v91 = sub_22BE236F4();
        sub_22BFCD8EC(v91, v92, v93, v94);
        break;
      case 33:
        v115 = sub_22BE236F4();
        sub_22BFCDDE4(v115, v116, v117, v118);
        break;
      case 36:
        v143 = sub_22BE236F4();
        sub_22BFCE2DC(v143, v144, v145, v146);
        break;
      case 37:
        v99 = sub_22BE236F4();
        sub_22BFCE7D4(v99, v100, v101, v102);
        break;
      case 38:
        v107 = sub_22BE236F4();
        sub_22BFCECCC(v107, v108, v109, v110);
        break;
      case 39:
        v135 = sub_22BE236F4();
        sub_22BFCF1C4(v135, v136, v137, v138);
        break;
      case 40:
        v151 = sub_22BE236F4();
        sub_22BFCF6BC(v151, v152, v153, v154);
        break;
      case 41:
        v67 = sub_22BE236F4();
        sub_22BFCFBB4(v67, v68, v69, v70);
        break;
      case 42:
        v63 = sub_22BE236F4();
        sub_22BFD00AC(v63, v64, v65, v66);
        break;
      case 43:
        v167 = sub_22BE236F4();
        sub_22BFD05A4(v167, v168, v169, v170);
        break;
      case 44:
        v23 = sub_22BE236F4();
        sub_22BFD0A9C(v23, v24, v25, v26);
        break;
      case 45:
        v155 = sub_22BE236F4();
        sub_22BFD0F94(v155, v156, v157, v158);
        break;
      case 46:
        v159 = sub_22BE236F4();
        sub_22BFD148C(v159, v160, v161, v162);
        break;
      case 47:
        v127 = sub_22BE236F4();
        sub_22BFD1984(v127, v128, v129, v130);
        break;
      case 48:
        v87 = sub_22BE236F4();
        sub_22BFD1E7C(v87, v88, v89, v90);
        break;
      case 49:
        v131 = sub_22BE236F4();
        sub_22BFD2374(v131, v132, v133, v134);
        break;
      case 50:
        v39 = sub_22BE236F4();
        sub_22BFD286C(v39, v40, v41, v42);
        break;
      case 51:
        v27 = sub_22BE236F4();
        sub_22BFD2D64(v27, v28, v29, v30);
        break;
      case 52:
        v15 = sub_22BE236F4();
        sub_22BFD325C(v15, v16, v17, v18);
        break;
      case 53:
        v19 = sub_22BE236F4();
        sub_22BFD3754(v19, v20, v21, v22);
        break;
      case 54:
        v11 = sub_22BE236F4();
        sub_22BFD3C4C(v11, v12, v13, v14);
        break;
      case 55:
        v163 = sub_22BE236F4();
        sub_22BFD4144(v163, v164, v165, v166);
        break;
      case 56:
        v139 = sub_22BE236F4();
        sub_22BFD463C(v139, v140, v141, v142);
        break;
      case 57:
        v51 = sub_22BE236F4();
        sub_22BFD4B34(v51, v52, v53, v54);
        break;
      case 58:
        v95 = sub_22BE236F4();
        sub_22BFD502C(v95, v96, v97, v98);
        break;
      case 59:
        v147 = sub_22BE236F4();
        sub_22BFD5524(v147, v148, v149, v150);
        break;
      case 60:
        v7 = sub_22BE236F4();
        sub_22BFD5A1C(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFC8BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoPlan(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9115D0, &qword_22C2AE2E8);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v18, &qword_27D9115D0, &qword_22C2AE2E8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FAD0, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9115D0, &qword_22C2AE2E8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9115D0, &qword_22C2AE2E8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9115D0, &qword_22C2AE2E8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9115D0, &qword_22C2AE2E8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFC90D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D90CA78, &qword_22C2B5880);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v18, &qword_27D90CA78, &qword_22C2B5880);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D90CA78, &qword_22C2B5880);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D90CA78, &qword_22C2B5880);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D90CA78, &qword_22C2B5880);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D90CA78, &qword_22C2B5880);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFC95C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoClientAction(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911198, &qword_22C2ADEC8);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22BE33928(v18, &qword_27D911198, &qword_22C2ADEC8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911198, &qword_22C2ADEC8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911198, &qword_22C2ADEC8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911198, &qword_22C2ADEC8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911198, &qword_22C2ADEC8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFC9AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  MEMORY[0x28223BE20](Step);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9115D8, &qword_22C2AE2F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, Step);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22BE33928(v18, &qword_27D9115D8, &qword_22C2AE2F0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, Step);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FB40, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9115D8, &qword_22C2AE2F0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, Step) == 1)
  {
    sub_22BE33928(v18, &qword_27D9115D8, &qword_22C2AE2F0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9115D8, &qword_22C2AE2F0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9115D8, &qword_22C2AE2F0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFC9FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoVariableStep(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9115E0, &qword_22C2AE2F8);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22BE33928(v18, &qword_27D9115E0, &qword_22C2AE2F8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910018, type metadata accessor for TranscriptProtoVariableStep, &protocol conformance descriptor for TranscriptProtoVariableStep);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9115E0, &qword_22C2AE2F8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9115E0, &qword_22C2AE2F8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9115E0, &qword_22C2AE2F8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9115E0, &qword_22C2AE2F8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCA4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSessionError(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9115E8, &qword_22C2AE300);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_22BE33928(v18, &qword_27D9115E8, &qword_22C2AE300);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F7E8, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9115E8, &qword_22C2AE300);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9115E8, &qword_22C2AE300);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9115E8, &qword_22C2AE300);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9115E8, &qword_22C2AE300);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void sub_22BFCA9A8()
{
  sub_22BE19130();
  v35 = v3;
  v36 = v2;
  v5 = v4;
  v10 = sub_22C0B176C(v6, v2, v7, v8, v9, v4);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE2C64C();
  v12 = sub_22BE5CE4C(&qword_27D9111D0, &byte_22C2ADF00);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  sub_22BE32374();
  v18 = sub_22C270424();
  v19 = sub_22BE3C598();
  sub_22BE19DC4(v19, v20, 1, v18);
  sub_22BE1B470();
  sub_22BE2C988(v21, v22, MEMORY[0x277D21558]);
  sub_22C2705D4();
  if (v0 || (v34 = v5, sub_22BE3C968(), sub_22BE22868(), v23 = sub_22BE1AEA8(v16, 1, v18), v24 = sub_22BE1A6BC(), sub_22BE33928(v24, v25, &byte_22C2ADF00), v23 == 1))
  {
    sub_22BE33928(v1, &qword_27D9111D0, &byte_22C2ADF00);
  }

  else
  {
    sub_22BE22868();
    v26 = v35(0);
    v27 = sub_22BE3C688();
    v29 = sub_22BE1AEA8(v27, v28, v26);
    v30 = sub_22BE3CEF4();
    sub_22BE33928(v30, v31, v34);
    if (v29 != 1)
    {
      sub_22C270594();
    }

    sub_22BE33928(v1, &qword_27D9111D0, &byte_22C2ADF00);
    v32 = sub_22BE1B5E0();
    sub_22BE33928(v32, v33, v34);
    sub_22BE39EAC();
    swift_storeEnumTagMultiPayload();
    sub_22BE19DC4(v36, 0, 1, v26);
  }

  sub_22BE18478();
}

uint64_t sub_22BFCAC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  MEMORY[0x28223BE20](StepResults);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9115F0, &qword_22C2AE308);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, StepResults);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_22BE33928(v18, &qword_27D9115F0, &qword_22C2AE308);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, StepResults);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FBD0, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9115F0, &qword_22C2AE308);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, StepResults) == 1)
  {
    sub_22BE33928(v18, &qword_27D9115F0, &qword_22C2AE308);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9115F0, &qword_22C2AE308);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9115F0, &qword_22C2AE308);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCB12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9115F8, &qword_22C2AE310);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_22BE33928(v18, &qword_27D9115F8, &qword_22C2AE310);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FF20, type metadata accessor for TranscriptProtoActionResolverRequest, &protocol conformance descriptor for TranscriptProtoActionResolverRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9115F8, &qword_22C2AE310);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9115F8, &qword_22C2AE310);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9115F8, &qword_22C2AE310);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9115F8, &qword_22C2AE310);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCB624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911600, &qword_22C2AE318);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_22BE33928(v18, &qword_27D911600, &qword_22C2AE318);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FF70, type metadata accessor for TranscriptProtoSafetyModeRelease, &protocol conformance descriptor for TranscriptProtoSafetyModeRelease);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911600, &qword_22C2AE318);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911600, &qword_22C2AE318);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911600, &qword_22C2AE318);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911600, &qword_22C2AE318);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCBB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911608, &qword_22C2AE320);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_22BE33928(v18, &qword_27D911608, &qword_22C2AE320);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FF88, type metadata accessor for TranscriptProtoSafetyModeException, &protocol conformance descriptor for TranscriptProtoSafetyModeException);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911608, &qword_22C2AE320);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911608, &qword_22C2AE320);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911608, &qword_22C2AE320);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911608, &qword_22C2AE320);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCC014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911610, &qword_22C2AE328);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_22BE33928(v18, &qword_27D911610, &qword_22C2AE328);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F6D0, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911610, &qword_22C2AE328);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911610, &qword_22C2AE328);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911610, &qword_22C2AE328);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911610, &qword_22C2AE328);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCC50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  MEMORY[0x28223BE20](matched);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911618, &qword_22C2AE330);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, matched);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_22BE33928(v18, &qword_27D911618, &qword_22C2AE330);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, matched);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9105E0, type metadata accessor for TranscriptProtoEntitySpanMatchResult, &protocol conformance descriptor for TranscriptProtoEntitySpanMatchResult);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911618, &qword_22C2AE330);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, matched) == 1)
  {
    sub_22BE33928(v18, &qword_27D911618, &qword_22C2AE330);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911618, &qword_22C2AE330);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911618, &qword_22C2AE330);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCCA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911620, &qword_22C2AE338);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_22BE33928(v18, &qword_27D911620, &qword_22C2AE338);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FF38, type metadata accessor for TranscriptProtoContextRetrieved, &protocol conformance descriptor for TranscriptProtoContextRetrieved);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911620, &qword_22C2AE338);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911620, &qword_22C2AE338);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911620, &qword_22C2AE338);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911620, &qword_22C2AE338);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCCEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoActionCancellation(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911628, &qword_22C2AE340);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_22BE33928(v18, &qword_27D911628, &qword_22C2AE340);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F5E8, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911628, &qword_22C2AE340);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911628, &qword_22C2AE340);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911628, &qword_22C2AE340);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911628, &qword_22C2AE340);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCD3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911630, &qword_22C2AE348);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_22BE33928(v18, &qword_27D911630, &qword_22C2AE348);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9105F8, type metadata accessor for TranscriptProtoToolRetrievalResponse, &protocol conformance descriptor for TranscriptProtoToolRetrievalResponse);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911630, &qword_22C2AE348);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911630, &qword_22C2AE348);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911630, &qword_22C2AE348);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911630, &qword_22C2AE348);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCD8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSystemResponse(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911638, &qword_22C2AE350);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_22BE33928(v18, &qword_27D911638, &qword_22C2AE350);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910610, type metadata accessor for TranscriptProtoSystemResponse, &protocol conformance descriptor for TranscriptProtoSystemResponse);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911638, &qword_22C2AE350);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911638, &qword_22C2AE350);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911638, &qword_22C2AE350);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911638, &qword_22C2AE350);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCDDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoStatementResult(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911640, &qword_22C2AE358);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_22BE33928(v18, &qword_27D911640, &qword_22C2AE358);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911640, &qword_22C2AE358);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911640, &qword_22C2AE358);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911640, &qword_22C2AE358);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911640, &qword_22C2AE358);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCE2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911648, &qword_22C2AE360);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_22BE33928(v18, &qword_27D911648, &qword_22C2AE360);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_281072E88, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911648, &qword_22C2AE360);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911648, &qword_22C2AE360);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911648, &qword_22C2AE360);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911648, &qword_22C2AE360);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCE7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_22BE33928(v18, &qword_27D90E548, &qword_22C296F00);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D90E548, &qword_22C296F00);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D90E548, &qword_22C296F00);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D90E548, &qword_22C296F00);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D90E548, &qword_22C296F00);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCECCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoToolResolution(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911650, &qword_22C2AE368);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_22BE33928(v18, &qword_27D911650, &qword_22C2AE368);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9106B8, type metadata accessor for TranscriptProtoToolResolution, &protocol conformance descriptor for TranscriptProtoToolResolution);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911650, &qword_22C2AE368);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911650, &qword_22C2AE368);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911650, &qword_22C2AE368);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911650, &qword_22C2AE368);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCF1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911658, &qword_22C2AE370);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_22BE33928(v18, &qword_27D911658, &qword_22C2AE370);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9106D0, type metadata accessor for TranscriptProtoUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoUndoRedoRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911658, &qword_22C2AE370);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911658, &qword_22C2AE370);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911658, &qword_22C2AE370);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911658, &qword_22C2AE370);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCF6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911660, &qword_22C2AE378);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_22BE33928(v18, &qword_27D911660, &qword_22C2AE378);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9106E8, type metadata accessor for TranscriptProtoClientUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoClientUndoRedoRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911660, &qword_22C2AE378);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911660, &qword_22C2AE378);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911660, &qword_22C2AE378);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911660, &qword_22C2AE378);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFCFBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911190, &qword_22C2ADEC0);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v18, &qword_27D911190, &qword_22C2ADEC0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911190, &qword_22C2ADEC0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911190, &qword_22C2ADEC0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911190, &qword_22C2ADEC0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911190, &qword_22C2ADEC0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD00AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911668, &qword_22C2AE380);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_22BE33928(v18, &qword_27D911668, &qword_22C2AE380);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_281072DC0, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911668, &qword_22C2AE380);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911668, &qword_22C2AE380);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911668, &qword_22C2AE380);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911668, &qword_22C2AE380);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD05A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911670, &qword_22C2AE388);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_22BE33928(v18, &qword_27D911670, &qword_22C2AE388);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910700, type metadata accessor for TranscriptProtoTypeConversionRequest, &protocol conformance descriptor for TranscriptProtoTypeConversionRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911670, &qword_22C2AE388);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911670, &qword_22C2AE388);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911670, &qword_22C2AE388);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911670, &qword_22C2AE388);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD0A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911678, &qword_22C2AE390);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_22BE33928(v18, &qword_27D911678, &qword_22C2AE390);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910718, type metadata accessor for TranscriptProtoTypeConversionResult, &protocol conformance descriptor for TranscriptProtoTypeConversionResult);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911678, &qword_22C2AE390);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911678, &qword_22C2AE390);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911678, &qword_22C2AE390);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911678, &qword_22C2AE390);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD0F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  MEMORY[0x28223BE20](DecorationResult);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911680, &qword_22C2AE398);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, DecorationResult);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_22BE33928(v18, &qword_27D911680, &qword_22C2AE398);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, DecorationResult);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910730, type metadata accessor for TranscriptProtoQueryDecorationResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationResult);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911680, &qword_22C2AE398);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, DecorationResult) == 1)
  {
    sub_22BE33928(v18, &qword_27D911680, &qword_22C2AE398);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911680, &qword_22C2AE398);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911680, &qword_22C2AE398);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSessionStart(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911688, &qword_22C2AE3A0);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
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
      sub_22BE33928(v18, &qword_27D911688, &qword_22C2AE3A0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_2810773C0, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911688, &qword_22C2AE3A0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911688, &qword_22C2AE3A0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911688, &qword_22C2AE3A0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911688, &qword_22C2AE3A0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD1984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRecoverableError(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911690, &qword_22C2AE3A8);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_22BE33928(v18, &qword_27D911690, &qword_22C2AE3A8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FAE8, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911690, &qword_22C2AE3A8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911690, &qword_22C2AE3A8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911690, &qword_22C2AE3A8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911690, &qword_22C2AE3A8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD1E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911698, &qword_22C2AE3B0);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_22BE33928(v18, &qword_27D911698, &qword_22C2AE3B0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910808, type metadata accessor for TranscriptProtoContinuePlanning, &protocol conformance descriptor for TranscriptProtoContinuePlanning);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911698, &qword_22C2AE3B0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911698, &qword_22C2AE3B0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911698, &qword_22C2AE3B0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911698, &qword_22C2AE3B0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD2374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResult);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9116A0, &qword_22C2AE3B8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, DecorationPrePlannerResult);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_22BE33928(v18, &qword_27D9116A0, &qword_22C2AE3B8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, DecorationPrePlannerResult);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910748, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResult);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9116A0, &qword_22C2AE3B8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, DecorationPrePlannerResult) == 1)
  {
    sub_22BE33928(v18, &qword_27D9116A0, &qword_22C2AE3B8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9116A0, &qword_22C2AE3B8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9116A0, &qword_22C2AE3B8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD286C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSkipStatement(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9116A8, &qword_22C2AE3C0);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_22BE33928(v18, &qword_27D9116A8, &qword_22C2AE3C0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910820, type metadata accessor for TranscriptProtoSkipStatement, &protocol conformance descriptor for TranscriptProtoSkipStatement);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9116A8, &qword_22C2AE3C0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9116A8, &qword_22C2AE3C0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9116A8, &qword_22C2AE3C0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9116A8, &qword_22C2AE3C0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD2D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9116B0, &qword_22C2AE3C8);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_22BE33928(v18, &qword_27D9116B0, &qword_22C2AE3C8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910838, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest, &protocol conformance descriptor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9116B0, &qword_22C2AE3C8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9116B0, &qword_22C2AE3C8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9116B0, &qword_22C2AE3C8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9116B0, &qword_22C2AE3C8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9116B8, &qword_22C2AE3D0);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_22BE33928(v18, &qword_27D9116B8, &qword_22C2AE3D0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910868, type metadata accessor for TranscriptProtoRequestAmendment, &protocol conformance descriptor for TranscriptProtoRequestAmendment);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9116B8, &qword_22C2AE3D0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9116B8, &qword_22C2AE3D0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9116B8, &qword_22C2AE3D0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9116B8, &qword_22C2AE3D0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD3754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9116C0, &qword_22C2AE3D8);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_22BE33928(v18, &qword_27D9116C0, &qword_22C2AE3D8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910880, type metadata accessor for TranscriptProtoToolRetrievalRequest, &protocol conformance descriptor for TranscriptProtoToolRetrievalRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9116C0, &qword_22C2AE3D8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9116C0, &qword_22C2AE3D8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9116C0, &qword_22C2AE3D8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9116C0, &qword_22C2AE3D8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD3C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9116C8, &qword_22C2AE3E0);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_22BE33928(v18, &qword_27D9116C8, &qword_22C2AE3E0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910898, type metadata accessor for TranscriptProtoContextRetrievalRequest, &protocol conformance descriptor for TranscriptProtoContextRetrievalRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9116C8, &qword_22C2AE3E0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9116C8, &qword_22C2AE3E0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9116C8, &qword_22C2AE3E0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9116C8, &qword_22C2AE3E0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD4144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  MEMORY[0x28223BE20](matched);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9116D0, &qword_22C2AE3E8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, matched);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_22BE33928(v18, &qword_27D9116D0, &qword_22C2AE3E8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, matched);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9108B0, type metadata accessor for TranscriptProtoSpanMatchRequest, &protocol conformance descriptor for TranscriptProtoSpanMatchRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9116D0, &qword_22C2AE3E8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, matched) == 1)
  {
    sub_22BE33928(v18, &qword_27D9116D0, &qword_22C2AE3E8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9116D0, &qword_22C2AE3E8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9116D0, &qword_22C2AE3E8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9116D8, &qword_22C2AE3F0);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_22BE33928(v18, &qword_27D9116D8, &qword_22C2AE3F0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9108C8, type metadata accessor for TranscriptProtoIntermediateSystemResponse, &protocol conformance descriptor for TranscriptProtoIntermediateSystemResponse);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9116D8, &qword_22C2AE3F0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9116D8, &qword_22C2AE3F0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9116D8, &qword_22C2AE3F0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9116D8, &qword_22C2AE3F0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD4B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9116E0, &qword_22C2AE3F8);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_22BE33928(v18, &qword_27D9116E0, &qword_22C2AE3F8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9108E0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered, &protocol conformance descriptor for TranscriptProtoIntermediateSystemResponseRendered);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9116E0, &qword_22C2AE3F8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9116E0, &qword_22C2AE3F8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9116E0, &qword_22C2AE3F8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9116E0, &qword_22C2AE3F8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD502C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9116E8, &qword_22C2AE400);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_22BE33928(v18, &qword_27D9116E8, &qword_22C2AE400);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910958, type metadata accessor for TranscriptProtoAgentPrimitiveAction, &protocol conformance descriptor for TranscriptProtoAgentPrimitiveAction);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9116E8, &qword_22C2AE400);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9116E8, &qword_22C2AE400);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9116E8, &qword_22C2AE400);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9116E8, &qword_22C2AE400);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD5524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoUserTurnStarted(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9116F0, &qword_22C2AE408);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D9116F0, &qword_22C2AE408);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F3A0, type metadata accessor for TranscriptProtoUserTurnStarted, &protocol conformance descriptor for TranscriptProtoUserTurnStarted);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9116F0, &qword_22C2AE408);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9116F0, &qword_22C2AE408);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9116F0, &qword_22C2AE408);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9116F0, &qword_22C2AE408);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD5A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSpeechPartialResult(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9116F8, &qword_22C2AE410);
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
    sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v18, &qword_27D9116F8, &qword_22C2AE410);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F400, type metadata accessor for TranscriptProtoSpeechPartialResult, &protocol conformance descriptor for TranscriptProtoSpeechPartialResult);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9116F8, &qword_22C2AE410);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9116F8, &qword_22C2AE410);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9116F8, &qword_22C2AE410);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9116F8, &qword_22C2AE410);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22BFD5F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoPlan(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FAD0, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD6324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoClientAction(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD652C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  MEMORY[0x28223BE20](Step);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FB40, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD6734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoVariableStep(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910018, type metadata accessor for TranscriptProtoVariableStep, &protocol conformance descriptor for TranscriptProtoVariableStep);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD693C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSessionError(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F7E8, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD6B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  sub_22BE22868();
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v10, 1, v11) == 1)
  {
    result = sub_22BE33928(v10, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 42)
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

uint64_t sub_22BFD6D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  MEMORY[0x28223BE20](StepResults);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FBD0, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD6F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FF20, type metadata accessor for TranscriptProtoActionResolverRequest, &protocol conformance descriptor for TranscriptProtoActionResolverRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD717C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FF70, type metadata accessor for TranscriptProtoSafetyModeRelease, &protocol conformance descriptor for TranscriptProtoSafetyModeRelease);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD7384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FF88, type metadata accessor for TranscriptProtoSafetyModeException, &protocol conformance descriptor for TranscriptProtoSafetyModeException);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F6D0, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD7794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  MEMORY[0x28223BE20](matched);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9105E0, type metadata accessor for TranscriptProtoEntitySpanMatchResult, &protocol conformance descriptor for TranscriptProtoEntitySpanMatchResult);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FF38, type metadata accessor for TranscriptProtoContextRetrieved, &protocol conformance descriptor for TranscriptProtoContextRetrieved);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD7BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoActionCancellation(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F5E8, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD7DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9105F8, type metadata accessor for TranscriptProtoToolRetrievalResponse, &protocol conformance descriptor for TranscriptProtoToolRetrievalResponse);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD7FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSystemResponse(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910610, type metadata accessor for TranscriptProtoSystemResponse, &protocol conformance descriptor for TranscriptProtoSystemResponse);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD81BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementResult(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD83C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD85CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoToolResolution(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9106B8, type metadata accessor for TranscriptProtoToolResolution, &protocol conformance descriptor for TranscriptProtoToolResolution);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD87D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9106D0, type metadata accessor for TranscriptProtoUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoUndoRedoRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD89DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9106E8, type metadata accessor for TranscriptProtoClientUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoClientUndoRedoRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD8BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD8DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910700, type metadata accessor for TranscriptProtoTypeConversionRequest, &protocol conformance descriptor for TranscriptProtoTypeConversionRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD8FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910718, type metadata accessor for TranscriptProtoTypeConversionResult, &protocol conformance descriptor for TranscriptProtoTypeConversionResult);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD91FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  MEMORY[0x28223BE20](DecorationResult);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910730, type metadata accessor for TranscriptProtoQueryDecorationResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationResult);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD9404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRecoverableError(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FAE8, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD960C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910808, type metadata accessor for TranscriptProtoContinuePlanning, &protocol conformance descriptor for TranscriptProtoContinuePlanning);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD9814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResult);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910748, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResult);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD9A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSkipStatement(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910820, type metadata accessor for TranscriptProtoSkipStatement, &protocol conformance descriptor for TranscriptProtoSkipStatement);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD9C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910838, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest, &protocol conformance descriptor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD9E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910868, type metadata accessor for TranscriptProtoRequestAmendment, &protocol conformance descriptor for TranscriptProtoRequestAmendment);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDA034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910880, type metadata accessor for TranscriptProtoToolRetrievalRequest, &protocol conformance descriptor for TranscriptProtoToolRetrievalRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDA23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910898, type metadata accessor for TranscriptProtoContextRetrievalRequest, &protocol conformance descriptor for TranscriptProtoContextRetrievalRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDA444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  MEMORY[0x28223BE20](matched);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9108B0, type metadata accessor for TranscriptProtoSpanMatchRequest, &protocol conformance descriptor for TranscriptProtoSpanMatchRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDA64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9108C8, type metadata accessor for TranscriptProtoIntermediateSystemResponse, &protocol conformance descriptor for TranscriptProtoIntermediateSystemResponse);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDA854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9108E0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered, &protocol conformance descriptor for TranscriptProtoIntermediateSystemResponseRendered);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDAA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910958, type metadata accessor for TranscriptProtoAgentPrimitiveAction, &protocol conformance descriptor for TranscriptProtoAgentPrimitiveAction);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDAC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoUserTurnStarted(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F3A0, type metadata accessor for TranscriptProtoUserTurnStarted, &protocol conformance descriptor for TranscriptProtoUserTurnStarted);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDAE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSpeechPartialResult(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F400, type metadata accessor for TranscriptProtoSpeechPartialResult, &protocol conformance descriptor for TranscriptProtoSpeechPartialResult);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDB2A0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C274154();
  a1(0);
  v6 = sub_22BE1C2A0();
  sub_22BE2C988(v6, v7, a4);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22BFDB368(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911168, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFDB3E4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_2810798C8, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFDB454(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_2810798C8, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);

  return sub_22C270774();
}

uint64_t sub_22BFDB4E0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC90);
  sub_22BE199F4(v0, qword_27D90CC90);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientSessionId";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "events";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoTranscript.decodeMessage<A>(decoder:)()
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
        sub_22BE1C37C();
        sub_22BFE0AA0();
        break;
      case 2:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }
}

void TranscriptProtoTranscript.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    v2 = sub_22BE17D60();
    sub_22BE4E1C8(v2);
    if (!v0)
    {
      sub_22C0B1AE4();
      if (v3)
      {
        type metadata accessor for TranscriptProtoEvent(0);
        sub_22BE2C988(&unk_28107AB68, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
        sub_22BE238E8();
        sub_22BE23CE4();
        sub_22C270874();
      }

      type metadata accessor for TranscriptProtoTranscript(0);
      v4 = sub_22BE375E4();
      sub_22BE363D4(v4, v5);
    }
  }

  sub_22BE25C6C();
}

uint64_t static TranscriptProtoTranscript.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22C0B1C78();
  if (v5)
  {
    if (!v4)
    {
      return 0;
    }

    sub_22BE3C714();
    v8 = v3 && v6 == v7;
    if (!v8 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  sub_22C0B1C6C();
  sub_22BEA1A08();
  if (v9)
  {
    type metadata accessor for TranscriptProtoTranscript(0);
    sub_22C0B1BAC();
    sub_22BE18E5C();
    v12 = sub_22BE2C988(v10, v11, MEMORY[0x277D216D0]);
    return sub_22BE2B85C(v12) & 1;
  }

  return 0;
}

uint64_t sub_22BFDBA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911160, type metadata accessor for TranscriptProtoTranscript, &protocol conformance descriptor for TranscriptProtoTranscript);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFDBA84(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F360, type metadata accessor for TranscriptProtoTranscript, &protocol conformance descriptor for TranscriptProtoTranscript);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFDBAF4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F360, type metadata accessor for TranscriptProtoTranscript, &protocol conformance descriptor for TranscriptProtoTranscript);

  return sub_22C270774();
}

uint64_t sub_22BFDBB80()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_281078C78);
  sub_22BE199F4(v0, qword_281078C78);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rawDate";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suspendingClockInstantNs";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "continuousClockInstantNs";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rawBootSessionUUID";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoTimepoint.decodeMessage<A>(decoder:)()
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
        sub_22BFDBE5C(v3, v4, v5, v6);
        break;
      case 2:
      case 3:
        sub_22BE2037C();
        sub_22C2706D4();
        break;
      case 4:
        sub_22BE374D4();
        sub_22C2706A4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFDBE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoTimepoint(0);
  sub_22C270454();
  sub_22BE2C988(&qword_28107F1E0, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return sub_22C2706F4();
}

void static TranscriptProtoTimepoint.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  sub_22BE17BC4();
  sub_22C270454();
  sub_22BE35868();
  MEMORY[0x28223BE20](v5);
  sub_22BE18DFC();
  v6 = sub_22BE289D8();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE234F4();
  sub_22BE5CE4C(&qword_27D90E478, &qword_22C296EB0);
  sub_22BE252F0();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B01C();
  v11 = *(type metadata accessor for TranscriptProtoTimepoint(0) + 28);
  v12 = *(v2 + 56);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE181B0(v1);
  if (!v13)
  {
    sub_22BE1B18C();
    sub_22BE22868();
    sub_22BE181B0(v1 + v12);
    if (!v13)
    {
      sub_22BE46530();
      v16 = sub_22C0B19F4();
      v17(v16);
      sub_22BE39180();
      sub_22BE2C988(v18, v19, MEMORY[0x277D21578]);
      sub_22BE33560();
      sub_22C272FD4();
      sub_22C0B1CA8();
      v20 = sub_22BE431C0();
      v11(v20);
      v21 = sub_22BE35838();
      v11(v21);
      sub_22BE33928(v1, &qword_27D90E470, &unk_22C2AE480);
      if (&qword_27D90E470)
      {
        goto LABEL_11;
      }

LABEL_19:
      v26 = 0;
      goto LABEL_20;
    }

    v14 = sub_22BE3F3A8();
    v15(v14);
LABEL_9:
    sub_22BE33928(v1, &qword_27D90E478, &qword_22C296EB0);
    goto LABEL_19;
  }

  sub_22BE181B0(v1 + v12);
  if (!v13)
  {
    goto LABEL_9;
  }

  sub_22BE33928(v1, &qword_27D90E470, &unk_22C2AE480);
LABEL_11:
  if (*v0 != *v4 || v0[1] != v4[1])
  {
    goto LABEL_19;
  }

  v22 = v0[2] == v4[2] && v0[3] == v4[3];
  if (!v22 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_22C2704B4();
  sub_22BE18E5C();
  v25 = sub_22BE2C988(v23, v24, MEMORY[0x277D216D0]);
  v26 = sub_22BE3C4B0(v25);
LABEL_20:
  sub_22BE1C1DC(v26);
  sub_22BE1AABC();
}

uint64_t sub_22BFDC274(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911158, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFDC2F0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_281078C68, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFDC360(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_281078C68, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);

  return sub_22C270774();
}

uint64_t sub_22BFDC3EC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_2810773D0);
  sub_22BE199F4(v0, qword_2810773D0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "initialLocaleSettings";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "originatingDevice";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "genderSettings";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "shouldExecutePreviousActionsForUserPrompt";
  *(v14 + 1) = 41;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoSessionStart.decodeMessage<A>(decoder:)()
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
      case 2:
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
      case 3:
        v7 = sub_22BE18E2C();
        sub_22BFDC730(v7, v8, v9, v10);
        break;
      case 5:
        v3 = sub_22BE18E2C();
        sub_22BFDC7E4(v3, v4, v5, v6);
        break;
      case 6:
        sub_22BE18E2C();
        sub_22C0855E4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFDC730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSessionStart(0);
  type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_22BE2C988(&qword_27D910698, type metadata accessor for TranscriptProtoDeviceDetails, &protocol conformance descriptor for TranscriptProtoDeviceDetails);
  return sub_22C2706F4();
}

uint64_t sub_22BFDC7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSessionStart(0);
  type metadata accessor for TranscriptProtoGenderSettings(0);
  sub_22BE2C988(&qword_27D910668, type metadata accessor for TranscriptProtoGenderSettings, &protocol conformance descriptor for TranscriptProtoGenderSettings);
  return sub_22C2706F4();
}

void static TranscriptProtoSessionStart.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoGenderSettings(v2);
  sub_22BE18000();
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22C0B1ABC(v4);
  v5 = sub_22BE5CE4C(&qword_27D90E490, &qword_22C296EB8);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v54 = v7;
  v55 = sub_22BE5CE4C(&qword_27D90E498, &qword_22C296EC0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE3C048(v9, v51);
  v10 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v11 = sub_22BE272C0(v10);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v12 = sub_22BE5CE4C(&qword_27D90E4A0, &unk_22C2AE490);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE29250(v14, v52);
  v15 = sub_22BE5CE4C(&qword_27D90E4A8, &qword_22C296EC8);
  sub_22BE28784(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE23E58();
  type metadata accessor for TranscriptProtoLocaleSettings(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v17);
  sub_22BE38390();
  v18 = sub_22BE1AEE4();
  v20 = sub_22BE5CE4C(v18, v19);
  sub_22BE19448(v20);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E64();
  v22 = sub_22BE5CE4C(&qword_27D90E4B8, &qword_22C296ED0);
  sub_22BE19448(v22);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1B01C();
  v25 = *(v24 + 56);
  sub_22C0B1A8C();
  sub_22C0B1C60();
  sub_22C0B1A8C();
  sub_22BE181B0(v0);
  if (v26)
  {
    sub_22BE181B0(v0 + v25);
    if (v26)
    {
      sub_22BE33928(v0, &qword_27D90E4B0, &unk_22C2CC8A0);
      goto LABEL_11;
    }

LABEL_9:
    v27 = &qword_27D90E4B8;
    v28 = &qword_22C296ED0;
    v29 = v0;
LABEL_40:
    sub_22BE33928(v29, v27, v28);
    goto LABEL_41;
  }

  sub_22BE25C08();
  sub_22BE22868();
  sub_22BE181B0(v0 + v25);
  if (v26)
  {
    sub_22C0B1AFC();
    goto LABEL_9;
  }

  sub_22C0B0868();
  v30 = sub_22BE1C2A0();
  v32 = static TranscriptProtoLocaleSettings.== infix(_:_:)(v30, v31);
  sub_22BE1804C();
  sub_22C0B08BC();
  sub_22BE3C5E4();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E4B0, &unk_22C2CC8A0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_11:
  type metadata accessor for TranscriptProtoSessionStart(0);
  v33 = *(v57 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v34 = sub_22BE3C598();
  sub_22BE36144(v34, v35);
  if (v26)
  {
    sub_22BE18190(v1 + v33);
    if (v26)
    {
      sub_22BE33928(v1, &qword_27D90E4A0, &unk_22C2AE490);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_22BE22868();
  sub_22BE18190(v1 + v33);
  if (v36)
  {
    sub_22C0B1AFC();
LABEL_19:
    v27 = &qword_27D90E4A8;
    v28 = &qword_22C296EC8;
    v29 = v1;
    goto LABEL_40;
  }

  sub_22C0B0868();
  sub_22BE1C2A0();
  static TranscriptProtoDeviceDetails.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90E4A0, &unk_22C2AE490);
  if ((&unk_22C2AE490 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_21:
  v37 = *(v55 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE3CBC0();
  sub_22BE22868();
  v38 = sub_22BFB1A7C();
  sub_22BE36144(v38, v39);
  if (!v26)
  {
    sub_22BE22868();
    sub_22BE18190(v56 + v37);
    if (!v42)
    {
      sub_22C0B0868();
      if (*v54 == *v53 && v54[1] == v53[1])
      {
        sub_22BE27098();
        sub_22BE18E5C();
        v45 = sub_22BE2C988(v43, v44, MEMORY[0x277D216D0]);
        v46 = sub_22BE3C4B0(v45);
        sub_22C0B08BC();
        sub_22BE3C5E4();
        sub_22C0B08BC();
        sub_22BE33928(v56, &qword_27D90E490, &qword_22C296EB8);
        if ((v46 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_26;
      }

      sub_22C0B08BC();
      sub_22BE1AB74();
      sub_22C0B08BC();
      v27 = &qword_27D90E490;
      v28 = &qword_22C296EB8;
      goto LABEL_39;
    }

    sub_22C0B1AFC();
LABEL_33:
    v27 = &qword_27D90E498;
    v28 = &qword_22C296EC0;
LABEL_39:
    v29 = v56;
    goto LABEL_40;
  }

  sub_22BE18190(v56 + v37);
  if (!v26)
  {
    goto LABEL_33;
  }

  sub_22BE33928(v56, &qword_27D90E490, &qword_22C296EB8);
LABEL_26:
  sub_22C0B1BDC();
  if (!v26)
  {
    if (v40 == 2 || ((v41 ^ v40) & 1) != 0)
    {
      goto LABEL_41;
    }

LABEL_45:
    sub_22C0B1D70();
    sub_22BE18E5C();
    v50 = sub_22BE2C988(v48, v49, MEMORY[0x277D216D0]);
    v47 = sub_22BE406DC(v50);
    goto LABEL_42;
  }

  if (v40 == 2)
  {
    goto LABEL_45;
  }

LABEL_41:
  v47 = 0;
LABEL_42:
  sub_22BE1C1DC(v47);
  sub_22BE1AABC();
}

uint64_t sub_22BFDCFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911150, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFDD050(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_2810773C0, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFDD0C0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_2810773C0, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);

  return sub_22C270774();
}

uint64_t sub_22BFDD14C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CCA8);
  sub_22BE199F4(v0, qword_27D90CCA8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dateTime";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timeZone";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFDD364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_22C270454();
  sub_22BE2C988(&qword_28107F1E0, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return sub_22C2706F4();
}

uint64_t sub_22BFDD458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a4;
  v12[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_22C270454();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E470, &unk_22C2AE480);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C988(&qword_28107F1E0, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

void static TranscriptProtoDateTimeContext.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE17BC4();
  sub_22C270454();
  sub_22BE35868();
  MEMORY[0x28223BE20](v3);
  sub_22BE18DFC();
  v4 = sub_22BE289D8();
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE234F4();
  sub_22BE5CE4C(&qword_27D90E478, &qword_22C296EB0);
  sub_22BE252F0();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  v9 = type metadata accessor for TranscriptProtoDateTimeContext(0);
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
      sub_22BE39180();
      sub_22BE2C988(v16, v17, MEMORY[0x277D21578]);
      sub_22BE33560();
      sub_22C272FD4();
      sub_22C0B1CA8();
      v18 = sub_22BE431C0();
      v0(v18);
      v19 = sub_22BE35838();
      v0(v19);
      sub_22BE33928(v1, &qword_27D90E470, &unk_22C2AE480);
      if ((&qword_27D90E470 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    v11 = sub_22BE3F3A8();
    v12(v11);
LABEL_9:
    sub_22BE33928(v1, &qword_27D90E478, &qword_22C296EB0);
    goto LABEL_10;
  }

  sub_22BE181B0(v1 + v2);
  if (!v10)
  {
    goto LABEL_9;
  }

  sub_22BE33928(v1, &qword_27D90E470, &unk_22C2AE480);
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

uint64_t sub_22BFDD990(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911148, type metadata accessor for TranscriptProtoDateTimeContext, &protocol conformance descriptor for TranscriptProtoDateTimeContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFDDA10(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F388, type metadata accessor for TranscriptProtoDateTimeContext, &protocol conformance descriptor for TranscriptProtoDateTimeContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFDDA80(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F388, type metadata accessor for TranscriptProtoDateTimeContext, &protocol conformance descriptor for TranscriptProtoDateTimeContext);

  return sub_22C270774();
}

uint64_t sub_22BFDDB0C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CCC0);
  sub_22BE199F4(v0, qword_27D90CCC0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "turn";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "turnId";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "siriRequestContext";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoUserTurnStarted.decodeMessage<A>(decoder:)()
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
        sub_22BFDDE10(v3, v4, v5, v6);
        break;
      case 2:
        v11 = sub_22BE18E2C();
        sub_22BFDDEC4(v11, v12, v13, v14);
        break;
      case 3:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 4:
        v7 = sub_22BE18E2C();
        sub_22BFDDF78(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFDDE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUserTurnStarted(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFDDEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUserTurnStarted(0);
  type metadata accessor for TranscriptProtoUserTurn(0);
  sub_22BE2C988(&qword_27D90F3B8, type metadata accessor for TranscriptProtoUserTurn, &protocol conformance descriptor for TranscriptProtoUserTurn);
  return sub_22C2706F4();
}

uint64_t sub_22BFDDF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUserTurnStarted(0);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE2C988(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContext);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoUserTurnStarted.traverse<A>(visitor:)()
{
  v1 = sub_22BE3B0CC();
  result = sub_22BFDE0C4(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = sub_22BE17D60();
    sub_22BFDE298(v6, v7, v8, v9);
    sub_22BE1B448();
    if (v10)
    {
      sub_22BE2910C();
      sub_22C270844();
    }

    v11 = sub_22BE17D60();
    sub_22BFDE46C(v11, v12, v13, v14);
    type metadata accessor for TranscriptProtoUserTurnStarted(0);
    return sub_22BE1AC30();
  }

  return result;
}

uint64_t sub_22BFDE0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoUserTurnStarted(0);
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

uint64_t sub_22BFDE298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E4D8, &qword_22C2B5DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoUserTurn(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoUserTurnStarted(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E4D8, &qword_22C2B5DB0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F3B8, type metadata accessor for TranscriptProtoUserTurn, &protocol conformance descriptor for TranscriptProtoUserTurn);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFDE46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoUserTurnStarted(0);
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

void static TranscriptProtoUserTurnStarted.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22C0B1E74();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE3FF64(v5);
  v6 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE33FF0(v8, v49);
  sub_22BE5CE4C(&qword_27D90E4D0, &qword_22C296ED8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v11 = sub_22BE4098C(v10, v50);
  v12 = type metadata accessor for TranscriptProtoUserTurn(v11);
  v13 = sub_22BE1B7B0(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  sub_22C0B1ABC(v14);
  v15 = sub_22BE5CE4C(&qword_27D90E4D8, &qword_22C2B5DB0);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE181D0(v17, v51);
  sub_22BE5CE4C(&qword_27D90E4E0, &qword_22C296EE0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v20 = sub_22BE1BC94(v19, v52);
  v21 = type metadata accessor for TranscriptProtoStatementID(v20);
  sub_22BE18000();
  MEMORY[0x28223BE20](v22);
  sub_22BE179EC();
  sub_22BE336DC();
  v23 = sub_22BE289D8();
  v25 = sub_22BE5CE4C(v23, v24);
  sub_22BE19448(v25);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE19E64();
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22C0B1A7C();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE19668();
  type metadata accessor for TranscriptProtoUserTurnStarted(0);
  v28 = *(v2 + 56);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22C0B1C48();
  v30 = v29;
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE3CAA4(v0);
  if (v31)
  {
    sub_22BE3CAA4(v0 + v28);
    if (v31)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v32 = &qword_27D909100;
    v33 = &unk_22C27FD00;
    v34 = v0;
LABEL_35:
    sub_22BE33928(v34, v32, v33);
    goto LABEL_36;
  }

  sub_22BE1A8C4();
  sub_22BE22868();
  sub_22BE3CAA4(v0 + v28);
  if (v31)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE4160C();
  sub_22C0B0868();
  v35 = sub_22BE1AB74();
  v21 = static TranscriptProtoStatementID.== infix(_:_:)(v35, v36);
  sub_22C0B08BC();
  sub_22BE194F8();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_11:
  sub_22BE3E7A8();
  sub_22C0B1DB4();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v37 = sub_22BFB1A7C();
  sub_22BE36144(v37, v38);
  if (v31)
  {
    sub_22BE18190(v21 + v1);
    if (v31)
    {
      sub_22BE33928(v21, &qword_27D90E4D8, &qword_22C2B5DB0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_22BE22868();
  sub_22BE18190(v21 + v1);
  if (v39)
  {
    sub_22C0B1D88();
LABEL_19:
    v32 = &qword_27D90E4E0;
    v33 = &qword_22C296EE0;
    v34 = v21;
    goto LABEL_35;
  }

  sub_22C0B0868();
  v40 = sub_22C0B1B94();
  static TranscriptProtoUserTurn.== infix(_:_:)(v40);
  sub_22BE39304();
  sub_22BE3C968();
  sub_22C0B08BC();
  sub_22BE33928(v21, &qword_27D90E4D8, &qword_22C2B5DB0);
  if ((&qword_22C2B5DB0 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_21:
  v41 = *v2 == *v30 && *(v2 + 8) == v30[1];
  if (!v41 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_22C0B1B6C();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE3CBC0();
  sub_22BE22868();
  v42 = sub_22BFB1A7C();
  sub_22BE36144(v42, v43);
  if (v31)
  {
    sub_22BE18A84();
    if (v31)
    {
      sub_22BE33928(v53, &qword_27D90C7E8, &unk_22C2AE4B0);
LABEL_39:
      sub_22C0B1D70();
      sub_22BE18E5C();
      v48 = sub_22BE2C988(v46, v47, MEMORY[0x277D216D0]);
      v45 = sub_22BE406DC(v48);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  sub_22C0B1D14();
  sub_22BE18A84();
  if (v44)
  {
    sub_22BE291DC();
    sub_22C0B08BC();
LABEL_34:
    v32 = &qword_27D90E4D0;
    v33 = &qword_22C296ED8;
    v34 = v53;
    goto LABEL_35;
  }

  sub_22C0B17E8();
  sub_22C0B0868();
  sub_22BE200E0();
  static ContextProtoStructuredContextSiriRequestContext.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE39EAC();
  sub_22C0B08BC();
  sub_22BE33928(v53, &qword_27D90C7E8, &unk_22C2AE4B0);
  if (&unk_22C2AE4B0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v45 = 0;
LABEL_37:
  sub_22BE1C1DC(v45);
  sub_22BE1AABC();
}