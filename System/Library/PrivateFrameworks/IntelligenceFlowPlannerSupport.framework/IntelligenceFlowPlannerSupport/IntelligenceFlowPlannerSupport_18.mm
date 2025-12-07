uint64_t sub_22BF9F580(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6D0, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9F600(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9F670(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);

  return sub_22C270774();
}

uint64_t sub_22BF9F714()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BD40);
  sub_22BE199F4(v0, qword_27D90BD40);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF9F9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6C8, type metadata accessor for ContextProtoCGPoint, &protocol conformance descriptor for ContextProtoCGPoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9FA50(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C498, type metadata accessor for ContextProtoCGPoint, &protocol conformance descriptor for ContextProtoCGPoint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9FAC0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C498, type metadata accessor for ContextProtoCGPoint, &protocol conformance descriptor for ContextProtoCGPoint);

  return sub_22C270774();
}

uint64_t sub_22BF9FB64()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BD58);
  sub_22BE199F4(v0, qword_27D90BD58);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF9FD68()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_22BE2037C();
      sub_22C270684();
    }
  }

  return result;
}

void sub_22BF9FDF0()
{
  sub_22BE1B214();
  v4 = v3;
  sub_22BE18648();
  if (*v0 == 0.0 || (sub_22BE254E4(), sub_22C270834(), !v1))
  {
    if (*(v2 + 8) == 0.0 || (sub_22BE254E4(), sub_22C270834(), !v1))
    {
      v4(0);
      sub_22BE1AC30();
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22BF9FEA0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_22BE18378();
  if (*(v3 + 8) != *(v4 + 8))
  {
    return 0;
  }

  v2(0);
  sub_22BE23A04();
  sub_22BE18E14();
  v7 = sub_22BE2C940(v5, v6, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v7) & 1;
}

uint64_t sub_22BF9FFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6C0, type metadata accessor for ContextProtoCGSize, &protocol conformance descriptor for ContextProtoCGSize);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA0040(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C4B0, type metadata accessor for ContextProtoCGSize, &protocol conformance descriptor for ContextProtoCGSize);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA00B0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C4B0, type metadata accessor for ContextProtoCGSize, &protocol conformance descriptor for ContextProtoCGSize);

  return sub_22C270774();
}

uint64_t sub_22BFA0148()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BD70);
  sub_22BE199F4(v0, qword_27D90BD70);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22C28E690;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "version";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 3;
  *v8 = "spans";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "spansIsPresent";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "toolRetrievalResponse";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "dynamicEnumerationEntities";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "dynamicEnumerationEntitiesIsPresent";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "context";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "contextIsPresent";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "deviceIdsID";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  return sub_22C2708A4();
}

void ContextProtoVersionedQueryDecorationOutput.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    v1 = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = sub_22BE18E2C();
        sub_22BFA0604(v3, v4, v5, v6);
        break;
      case 3:
        sub_22BE3E938();
        sub_22BE18E2C();
        sub_22BF9A07C();
        break;
      case 4:
      case 7:
      case 9:
        sub_22BE2037C();
        sub_22C2705C4();
        break;
      case 5:
        v7 = sub_22BE18E2C();
        sub_22BFA066C(v7, v8, v9, v10);
        break;
      case 6:
        sub_22BE18E2C();
        sub_22BFA1640();
        break;
      case 8:
        sub_22BE18E2C();
        sub_22BFA16B4();
        break;
      case 10:
        v11 = sub_22BE18E2C();
        sub_22BFA0720(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFA066C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_22BE2C940(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);
  return sub_22C2706F4();
}

void ContextProtoVersionedQueryDecorationOutput.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE18648();
  if (!*(*v0 + 16) || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_22BE23590(), sub_22BE2C940(v3, v4, &protocol conformance descriptor for ContextProtoSpanMatchedEntity), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v1))
  {
    if (*(v2 + 8) != 1 || (sub_22BE1BAB8(), sub_22C2707C4(), !v1))
    {
      v5 = sub_22BE17D60();
      sub_22BFA0964(v5, v6, v7, v8);
      if (!v1)
      {
        if (*(*(v2 + 16) + 16))
        {
          type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
          sub_22BFB1A28();
          sub_22BE2C940(v9, v10, &protocol conformance descriptor for ContextProtoDynamicEnumerationEntity);
          sub_22BE238E8();
          sub_22BE23CE4();
          sub_22C270874();
        }

        if (*(v2 + 24) == 1)
        {
          sub_22BE1BAB8();
          sub_22C2707C4();
        }

        if (*(*(v2 + 32) + 16))
        {
          type metadata accessor for ContextProtoRetrievedContext(0);
          sub_22BE35580();
          sub_22BE2C940(v11, v12, &protocol conformance descriptor for ContextProtoRetrievedContext);
          sub_22BE238E8();
          sub_22BE23CE4();
          sub_22C270874();
        }

        if (*(v2 + 40) == 1)
        {
          sub_22BE1BAB8();
          sub_22C2707C4();
        }

        v13 = sub_22BE17D60();
        sub_22BFA0B38(v13);
        type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
        sub_22BE1AC30();
      }
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFA0964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, DecorationToolRetrievalResponse) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C100, &unk_22C294B20);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
}

uint64_t sub_22BFA0B38(uint64_t a1)
{
  result = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BFA0F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6B8, type metadata accessor for ContextProtoVersionedQueryDecorationOutput, &protocol conformance descriptor for ContextProtoVersionedQueryDecorationOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA0FB4(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C4C8, type metadata accessor for ContextProtoVersionedQueryDecorationOutput, &protocol conformance descriptor for ContextProtoVersionedQueryDecorationOutput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA1024(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C4C8, type metadata accessor for ContextProtoVersionedQueryDecorationOutput, &protocol conformance descriptor for ContextProtoVersionedQueryDecorationOutput);

  return sub_22C270774();
}

uint64_t sub_22BFA110C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BDA0);
  sub_22BE199F4(v0, qword_27D90BDA0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28D160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 12;
  *v6 = "spans";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 13;
  *v10 = "spansIsPresent";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 11;
  *v12 = "toolRetrievalResponse";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 22;
  *v14 = "dynamicEnumerationEntities";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 23;
  *v16 = "dynamicEnumerationEntitiesIsPresent";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 24;
  *v18 = "context";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 25;
  *v20 = "contextIsPresent";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 26;
  *v22 = "deviceIdsId";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  return sub_22C2708A4();
}

void ContextProtoQueryDecorationOutput.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    v1 = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 11:
        v3 = sub_22BE18E2C();
        sub_22BFA158C(v3, v4, v5, v6);
        break;
      case 12:
        sub_22BE3E938();
        sub_22BE18E2C();
        sub_22BF9A07C();
        break;
      case 13:
      case 23:
      case 25:
        sub_22BE2037C();
        sub_22C2705C4();
        break;
      case 22:
        sub_22BE18E2C();
        sub_22BFA1640();
        break;
      case 24:
        sub_22BE18E2C();
        sub_22BFA16B4();
        break;
      case 26:
        v7 = sub_22BE18E2C();
        sub_22BFA1728(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFA158C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoQueryDecorationOutput(0);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_22BE2C940(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);
  return sub_22C2706F4();
}

uint64_t sub_22BFA1640()
{
  v0 = sub_22BE378F4();
  type metadata accessor for ContextProtoDynamicEnumerationEntity(v0);
  sub_22BFB1A28();
  sub_22BE2C940(v1, v2, &protocol conformance descriptor for ContextProtoDynamicEnumerationEntity);
  sub_22BE25B10();
  return sub_22C2706E4();
}

uint64_t sub_22BFA16B4()
{
  v0 = sub_22BE378F4();
  type metadata accessor for ContextProtoRetrievedContext(v0);
  sub_22BE35580();
  sub_22BE2C940(v1, v2, &protocol conformance descriptor for ContextProtoRetrievedContext);
  sub_22BE25B10();
  return sub_22C2706E4();
}

void ContextProtoQueryDecorationOutput.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3B090();
  sub_22BE3C860();
  sub_22BFA196C(v2, v3, v4, v5);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v6)
    {
      type metadata accessor for ContextProtoSpanMatchedEntity(0);
      sub_22BE23590();
      sub_22BE2C940(v7, v8, &protocol conformance descriptor for ContextProtoSpanMatchedEntity);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    if (*(v1 + 8) == 1)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    if (*(*(v1 + 16) + 16))
    {
      type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
      sub_22BFB1A28();
      sub_22BE2C940(v9, v10, &protocol conformance descriptor for ContextProtoDynamicEnumerationEntity);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    if (*(v1 + 24) == 1)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    if (*(*(v1 + 32) + 16))
    {
      type metadata accessor for ContextProtoRetrievedContext(0);
      sub_22BE35580();
      sub_22BE2C940(v11, v12, &protocol conformance descriptor for ContextProtoRetrievedContext);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    if (*(v1 + 40) == 1)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    v13 = sub_22BE17D60();
    sub_22BFA1B40(v13);
    type metadata accessor for ContextProtoQueryDecorationOutput(0);
    sub_22BE1AC30();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFA196C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoQueryDecorationOutput(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, DecorationToolRetrievalResponse) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C100, &unk_22C294B20);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
}

uint64_t sub_22BFA1B40(uint64_t a1)
{
  result = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BFA1F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6B0, type metadata accessor for ContextProtoQueryDecorationOutput, &protocol conformance descriptor for ContextProtoQueryDecorationOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA1FBC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C4F0, type metadata accessor for ContextProtoQueryDecorationOutput, &protocol conformance descriptor for ContextProtoQueryDecorationOutput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA202C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C4F0, type metadata accessor for ContextProtoQueryDecorationOutput, &protocol conformance descriptor for ContextProtoQueryDecorationOutput);

  return sub_22C270774();
}

uint64_t sub_22BFA20C4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BDB8);
  sub_22BE199F4(v0, qword_27D90BDB8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D40;
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
  *(v5 + v2) = 8;
  *v10 = "requestId";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 9;
  *v12 = "caller";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "contextId";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 11;
  *v16 = "loggingSalt";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 12;
  *v18 = "servicesExecuted";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 13;
  *v20 = "deviceIdsId";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoQueryDecorationInput.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
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
      case 8:
      case 10:
      case 11:
      case 13:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 9:
        v3 = sub_22BE18E2C();
        sub_22BFA2498(v3, v4, v5, v6);
        break;
      case 12:
        v7 = sub_22BE18E2C();
        sub_22BFA2500(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t ContextProtoQueryDecorationInput.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25B10(), result = sub_22C270844(), !v0))
  {
    v4 = sub_22BE17D60();
    result = sub_22BFA2680(v4);
    if (!v0)
    {
      if (*(v1 + 16))
      {
        sub_22BFADFA0();
        sub_22BE23CE4();
        sub_22C2707D4();
      }

      v5 = sub_22BE17D60();
      sub_22BFA26BC(v5);
      v6 = sub_22BE17D60();
      sub_22BFA26F8(v6);
      if (*(*(v1 + 24) + 16))
      {
        sub_22BFADFF4();
        sub_22BE23CE4();
        sub_22C2707B4();
      }

      v7 = sub_22BE17D60();
      sub_22BFA2734(v7);
      type metadata accessor for ContextProtoQueryDecorationInput(0);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t sub_22BFA2680(uint64_t result)
{
  if (*(result + 40))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BFA26BC(uint64_t result)
{
  if (*(result + 56))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BFA26F8(uint64_t result)
{
  if (*(result + 72))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BFA2734(uint64_t result)
{
  if (*(result + 88))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t static ContextProtoQueryDecorationInput.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE46B5C();
  if (v7)
  {
    if (!v6)
    {
      return 0;
    }

    sub_22BFB1A40();
    v10 = v5 && v8 == v9;
    if (!v10 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_22BE36248();
  if (!v5)
  {
    return 0;
  }

  sub_22BE292F4();
  if (v12)
  {
    if (!v11)
    {
      return 0;
    }

    sub_22BE2BBDC();
    v15 = v5 && v13 == v14;
    if (!v15 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  sub_22BE2BA8C();
  if (v17)
  {
    if (!v16)
    {
      return 0;
    }

    sub_22BFB1A60();
    v20 = v5 && v18 == v19;
    if (!v20 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (sub_22BEBFE50())
  {
    v21 = *(v2 + 88);
    v22 = *(v1 + 88);
    if (v21)
    {
      if (!v22)
      {
        return 0;
      }

      v23 = *(v2 + 80) == *(v1 + 80) && v21 == v22;
      if (!v23 && (sub_22C274014() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      type metadata accessor for ContextProtoQueryDecorationInput(0);
      sub_22C2704B4();
      sub_22BE18E14();
      v26 = sub_22BE2C940(v24, v25, MEMORY[0x277D216D0]);
      return sub_22BE2B85C(v26) & 1;
    }

    if (!v22)
    {
      goto LABEL_43;
    }
  }

  return 0;
}

uint64_t sub_22BFA296C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6A8, type metadata accessor for ContextProtoQueryDecorationInput, &protocol conformance descriptor for ContextProtoQueryDecorationInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA29EC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C508, type metadata accessor for ContextProtoQueryDecorationInput, &protocol conformance descriptor for ContextProtoQueryDecorationInput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA2A5C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C508, type metadata accessor for ContextProtoQueryDecorationInput, &protocol conformance descriptor for ContextProtoQueryDecorationInput);

  return sub_22C270774();
}

uint64_t sub_22BFA2AF4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BDD0);
  sub_22BE199F4(v0, qword_27D90BDD0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterTypeInstance";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "typedValue";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoDynamicEnumerationEntity.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = sub_22BE18E2C();
        sub_22BFA2E4C(v7, v8, v9, v10);
        break;
      case 2:
        v3 = sub_22BE18E2C();
        sub_22BFA2D98(v3, v4, v5, v6);
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }

  return result;
}

uint64_t sub_22BFA2D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  sub_22C2725A4();
  sub_22BE2C940(&qword_27D90C7B0, MEMORY[0x277D72800], MEMORY[0x277D727F8]);
  return sub_22C2706F4();
}

uint64_t sub_22BFA2E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  sub_22C272594();
  sub_22BE2C940(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  return sub_22C2706F4();
}

void sub_22BFA2F54()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_22BE1A730();
  if (!v7 || (sub_22BE25B10(), sub_22C270844(), !v0))
  {
    v8 = sub_22BE17D60();
    v6(v8);
    if (!v0)
    {
      v9 = sub_22BE17D60();
      v4(v9);
      v2(0);
      sub_22BE1AC30();
    }
  }

  sub_22BE18478();
}

uint64_t sub_22BFA2FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a4;
  v12[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_22C2725A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C138, &qword_22C2CB830);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C940(&qword_27D90C7B0, MEMORY[0x277D72800], MEMORY[0x277D727F8]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22BFA31FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D909128, &qword_22C294AA0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C940(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

void static ContextProtoDynamicEnumerationEntity.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v4 = sub_22C272594();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v46 = v8;
  v9 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v47 = v11;
  v48 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v49 = v13;
  sub_22BE183BC();
  v14 = sub_22C2725A4();
  sub_22BE179D8();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BE179EC();
  sub_22BE2BB64();
  v18 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE234F4();
  v20 = sub_22BE5CE4C(&qword_27D90C140, &qword_22C290E40);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE25CD0();
  v22 = *v1 == *v0 && v1[1] == v0[1];
  if (!v22 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_26;
  }

  v45 = v4;
  type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v23 = *(v20 + 48);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE181B0(v2);
  if (v22)
  {
    sub_22BE181B0(v2 + v23);
    if (v22)
    {
      sub_22BE33928(v2, &qword_27D90C138, &qword_22C2CB830);
      goto LABEL_16;
    }

LABEL_14:
    v27 = &qword_27D90C140;
    v28 = &qword_22C290E40;
    v29 = v2;
LABEL_25:
    sub_22BE33928(v29, v27, v28);
    goto LABEL_26;
  }

  sub_22BE3AF28();
  sub_22BE22868();
  sub_22BE181B0(v2 + v23);
  if (v24)
  {
    v25 = sub_22BE35838();
    v26(v25);
    goto LABEL_14;
  }

  (*(v16 + 32))(v3, v2 + v23, v14);
  sub_22BE2C940(&qword_27D90C148, MEMORY[0x277D72800], MEMORY[0x277D72808]);
  v30 = sub_22C272FD4();
  v31 = *(v16 + 8);
  v31(v3, v14);
  v32 = sub_22BE35838();
  (v31)(v32);
  sub_22BE33928(v2, &qword_27D90C138, &qword_22C2CB830);
  if ((v30 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  v33 = *(v48 + 48);
  sub_22BE3A518();
  sub_22BE3A518();
  v34 = sub_22BFB1A7C();
  sub_22BE1AB5C(v34, v35, v45);
  if (v22)
  {
    sub_22BE1AB5C(v49 + v33, 1, v45);
    if (v22)
    {
      sub_22BE33928(v49, &qword_27D909128, &qword_22C294AA0);
LABEL_29:
      sub_22C2704B4();
      sub_22BE18E14();
      sub_22BE2C940(v43, v44, MEMORY[0x277D216D0]);
      v37 = sub_22C272FD4();
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_22BE22868();
  sub_22BE1AB5C(v49 + v33, 1, v45);
  if (v36)
  {
    (*(v6 + 8))(v47, v45);
LABEL_24:
    v27 = &qword_27D909130;
    v28 = &unk_22C27FD30;
    v29 = v49;
    goto LABEL_25;
  }

  (*(v6 + 32))(v46, v49 + v33, v45);
  sub_22BE231A8();
  sub_22BE2C940(v38, v39, MEMORY[0x277D727F0]);
  v40 = sub_22C272FD4();
  v41 = *(v6 + 8);
  v42 = sub_22BE232C8();
  v41(v42);
  (v41)(v47, v45);
  sub_22BE33928(v49, &qword_27D909128, &qword_22C294AA0);
  if (v40)
  {
    goto LABEL_29;
  }

LABEL_26:
  v37 = 0;
LABEL_27:
  sub_22BE1C1DC(v37);
  sub_22BE1AABC();
}

uint64_t sub_22BFA3A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6A0, type metadata accessor for ContextProtoDynamicEnumerationEntity, &protocol conformance descriptor for ContextProtoDynamicEnumerationEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA3AC4(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C0F0, type metadata accessor for ContextProtoDynamicEnumerationEntity, &protocol conformance descriptor for ContextProtoDynamicEnumerationEntity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA3B34(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C0F0, type metadata accessor for ContextProtoDynamicEnumerationEntity, &protocol conformance descriptor for ContextProtoDynamicEnumerationEntity);

  return sub_22C270774();
}

uint64_t sub_22BFA3BCC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BDE8);
  sub_22BE199F4(v0, qword_27D90BDE8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "definition";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "similarityScore";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sampleInvocations";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "stage";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "source";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoRetrievedTool.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22BE18E2C();
        sub_22BFA3F1C(v3, v4, v5, v6);
        break;
      case 2:
        sub_22BE239F4();
        sub_22C270614();
        break;
      case 3:
        v11 = sub_22BE18E2C();
        sub_22BFA3FD0(v11, v12);
        break;
      case 4:
        v13 = sub_22BE18E2C();
        sub_22BFA4070(v13, v14, v15, v16);
        break;
      case 5:
        v7 = sub_22BE18E2C();
        sub_22BFA40D8(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFA3F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoRetrievedTool(0);
  type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  sub_22BE2C940(&qword_27D90C560, type metadata accessor for ContextProtoRetrievedTool.Definition, &protocol conformance descriptor for ContextProtoRetrievedTool.Definition);
  return sub_22C2706F4();
}

uint64_t sub_22BFA3FD0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContextProtoSampleInvocation(0);
  sub_22BE2C940(&qword_27D90C158, type metadata accessor for ContextProtoSampleInvocation, &protocol conformance descriptor for ContextProtoSampleInvocation);
  return sub_22C2706E4();
}

void ContextProtoRetrievedTool.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3B090();
  sub_22BE3C860();
  sub_22BFA4294(v2, v3, v4, v5);
  if (!v0)
  {
    if (*v1 != 0.0)
    {
      sub_22BE254E4();
      sub_22C2707F4();
    }

    if (*(*(v1 + 8) + 16))
    {
      type metadata accessor for ContextProtoSampleInvocation(0);
      sub_22BE2C940(&qword_27D90C158, type metadata accessor for ContextProtoSampleInvocation, &protocol conformance descriptor for ContextProtoSampleInvocation);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    if (*(v1 + 16))
    {
      sub_22BFAE048();
      sub_22BE23CE4();
      sub_22C2707D4();
    }

    if (*(*(v1 + 24) + 16))
    {
      sub_22BFAE09C();
      sub_22BE23CE4();
      sub_22C2707B4();
    }

    type metadata accessor for ContextProtoRetrievedTool(0);
    sub_22BE1AC30();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFA4294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoRetrievedTool(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090D0, &unk_22C294B30);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C560, type metadata accessor for ContextProtoRetrievedTool.Definition, &protocol conformance descriptor for ContextProtoRetrievedTool.Definition);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoRetrievedTool.Definition);
}

void static ContextProtoRetrievedTool.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17CBC();
  v7 = sub_22BE289D8();
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  v11 = sub_22BE5CE4C(&qword_27D9090D8, &unk_22C27FCE0) - 8;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE25CD0();
  type metadata accessor for ContextProtoRetrievedTool(0);
  v13 = *(v11 + 56);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE19FE0(v0);
  if (v14)
  {
    sub_22BE19FE0(v0 + v13);
    if (v14)
    {
      sub_22BE33928(v0, &qword_27D9090D0, &unk_22C294B30);
      goto LABEL_11;
    }

LABEL_9:
    sub_22BE33928(v0, &qword_27D9090D8, &unk_22C27FCE0);
LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

  sub_22BE3AF28();
  sub_22BE22868();
  sub_22BE19FE0(v0 + v13);
  if (v14)
  {
    sub_22BE25F98();
    sub_22BFB18F4(v1, v15);
    goto LABEL_9;
  }

  sub_22BFB18A0();
  v16 = sub_22BE1B5E0();
  v17 = static ContextProtoRetrievedTool.Definition.== infix(_:_:)(v16);
  v18 = sub_22BE194F8();
  sub_22BFB18F4(v18, v19);
  v20 = sub_22BE18240();
  sub_22BFB18F4(v20, v21);
  sub_22BE33928(v0, &qword_27D9090D0, &unk_22C294B30);
  if ((v17 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (*v5 != *v3)
  {
    goto LABEL_16;
  }

  sub_22BE9F4F8();
  if ((v22 & 1) == 0 || *(v5 + 16) != *(v3 + 16) || (sub_22BE9F6A0(*(v5 + 24), *(v3 + 24)) & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v23, v24, MEMORY[0x277D216D0]);
  v25 = sub_22C272FD4();
LABEL_17:
  sub_22BE1C1DC(v25);
  sub_22BE1AABC();
}

uint64_t sub_22BFA47D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C698, type metadata accessor for ContextProtoRetrievedTool, &protocol conformance descriptor for ContextProtoRetrievedTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA4850(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C1B8, type metadata accessor for ContextProtoRetrievedTool, &protocol conformance descriptor for ContextProtoRetrievedTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA48C0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C1B8, type metadata accessor for ContextProtoRetrievedTool, &protocol conformance descriptor for ContextProtoRetrievedTool);

  return sub_22C270774();
}

uint64_t sub_22BFA4940()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BE00);
  sub_22BE199F4(v0, qword_27D90BE00);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "inForeground";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "spanMatch";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFA4B3C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BE18);
  sub_22BE199F4(v0, qword_27D90BE18);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "one";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "two";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "three";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "four";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFA4DAC()
{
  result = MEMORY[0x2318AB8D0](0x74696E696665442ELL, 0xEB000000006E6F69);
  qword_27D90BE30 = 0xD000000000000015;
  *algn_27D90BE38 = 0x800000022C2D5490;
  return result;
}

uint64_t static ContextProtoRetrievedTool.Definition.protoMessageName.getter()
{
  if (qword_27D9064F8 != -1)
  {
    swift_once();
  }

  return sub_22BE19454();
}

uint64_t sub_22BFA4E84()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BE40);
  sub_22BE199F4(v0, qword_27D90BE40);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "implementation";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assistantSchema";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entitySetter";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "clientAction";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "uiControl";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoRetrievedTool.Definition.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22BE236F4();
        sub_22BFA51D4(v3, v4, v5, v6);
        break;
      case 2:
        v19 = sub_22BE236F4();
        sub_22BFA56E4(v19, v20, v21, v22);
        break;
      case 3:
        v11 = sub_22BE236F4();
        sub_22BFA5BFC(v11, v12, v13, v14);
        break;
      case 4:
        v15 = sub_22BE236F4();
        sub_22BFA6114(v15, v16, v17, v18);
        break;
      case 5:
        v7 = sub_22BE236F4();
        sub_22BFA662C(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFA51D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v38 = a3;
  v37 = a2;
  v5 = sub_22C272674();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
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
    sub_22BE33928(v12, &qword_27D9090C0, &qword_22C27FCC8);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22BFB18F4(v15, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    }

    else
    {
      sub_22BE33928(v22, &qword_27D90C180, &unk_22C296C40);
      v23 = *(v34 + 32);
      v23(v9, v15, v5);
      v23(v22, v9, v5);
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C940(&qword_27D90C790, MEMORY[0x277D72898], MEMORY[0x277D72890]);
  v24 = v35;
  sub_22C2706F4();
  if (v24)
  {
    v25 = v22;
    return sub_22BE33928(v25, &qword_27D90C180, &unk_22C296C40);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v19, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90C180, &unk_22C296C40);
    v25 = v19;
    return sub_22BE33928(v25, &qword_27D90C180, &unk_22C296C40);
  }

  v27 = *(v34 + 32);
  v27(v33, v19, v5);
  if (v31 != 1)
  {
    sub_22C270594();
  }

  v28 = v32;
  sub_22BE33928(v22, &qword_27D90C180, &unk_22C296C40);
  v29 = v30;
  sub_22BE33928(v30, &qword_27D9090C0, &qword_22C27FCC8);
  v27(v29, v33, v5);
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v29, 0, 1, v28);
}

uint64_t sub_22BFA56E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v38 = a3;
  v37 = a2;
  v5 = sub_22C272634();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE5CE4C(&qword_27D90C7A0, &qword_22C294A68);
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
    sub_22BE33928(v12, &qword_27D9090C0, &qword_22C27FCC8);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D90C7A0, &qword_22C294A68);
      v23 = *(v34 + 32);
      v23(v9, v15, v5);
      v23(v22, v9, v5);
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v15, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    }
  }

  sub_22BE2C940(&qword_27D90C798, MEMORY[0x277D72870], MEMORY[0x277D72868]);
  v24 = v35;
  sub_22C2706F4();
  if (v24)
  {
    v25 = v22;
    return sub_22BE33928(v25, &qword_27D90C7A0, &qword_22C294A68);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v19, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90C7A0, &qword_22C294A68);
    v25 = v19;
    return sub_22BE33928(v25, &qword_27D90C7A0, &qword_22C294A68);
  }

  v27 = *(v34 + 32);
  v27(v33, v19, v5);
  if (v31 != 1)
  {
    sub_22C270594();
  }

  v28 = v32;
  sub_22BE33928(v22, &qword_27D90C7A0, &qword_22C294A68);
  v29 = v30;
  sub_22BE33928(v30, &qword_27D9090C0, &qword_22C27FCC8);
  v27(v29, v33, v5);
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v29, 0, 1, v28);
}

uint64_t sub_22BFA5BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v38 = a3;
  v37 = a2;
  v5 = sub_22C272674();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
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
    sub_22BE33928(v12, &qword_27D9090C0, &qword_22C27FCC8);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D90C180, &unk_22C296C40);
      v23 = *(v34 + 32);
      v23(v9, v15, v5);
      v23(v22, v9, v5);
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v15, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    }
  }

  sub_22BE2C940(&qword_27D90C790, MEMORY[0x277D72898], MEMORY[0x277D72890]);
  v24 = v35;
  sub_22C2706F4();
  if (v24)
  {
    v25 = v22;
    return sub_22BE33928(v25, &qword_27D90C180, &unk_22C296C40);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v19, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90C180, &unk_22C296C40);
    v25 = v19;
    return sub_22BE33928(v25, &qword_27D90C180, &unk_22C296C40);
  }

  v27 = *(v34 + 32);
  v27(v33, v19, v5);
  if (v31 != 1)
  {
    sub_22C270594();
  }

  v28 = v32;
  sub_22BE33928(v22, &qword_27D90C180, &unk_22C296C40);
  v29 = v30;
  sub_22BE33928(v30, &qword_27D9090C0, &qword_22C27FCC8);
  v27(v29, v33, v5);
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v29, 0, 1, v28);
}

uint64_t sub_22BFA6114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v38 = a3;
  v37 = a2;
  v5 = sub_22C272674();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
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
    sub_22BE33928(v12, &qword_27D9090C0, &qword_22C27FCC8);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v22, &qword_27D90C180, &unk_22C296C40);
      v23 = *(v34 + 32);
      v23(v9, v15, v5);
      v23(v22, v9, v5);
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v15, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    }
  }

  sub_22BE2C940(&qword_27D90C790, MEMORY[0x277D72898], MEMORY[0x277D72890]);
  v24 = v35;
  sub_22C2706F4();
  if (v24)
  {
    v25 = v22;
    return sub_22BE33928(v25, &qword_27D90C180, &unk_22C296C40);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v19, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90C180, &unk_22C296C40);
    v25 = v19;
    return sub_22BE33928(v25, &qword_27D90C180, &unk_22C296C40);
  }

  v27 = *(v34 + 32);
  v27(v33, v19, v5);
  if (v31 != 1)
  {
    sub_22C270594();
  }

  v28 = v32;
  sub_22BE33928(v22, &qword_27D90C180, &unk_22C296C40);
  v29 = v30;
  sub_22BE33928(v30, &qword_27D9090C0, &qword_22C27FCC8);
  v27(v29, v33, v5);
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v29, 0, 1, v28);
}

uint64_t sub_22BFA662C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ContextProtoUIControlTool(0);
  MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE5CE4C(&qword_27D90C7A8, &qword_22C294A70);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_22BE19DC4(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_22BE22868();
  v28 = sub_22BE1AEA8(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_22BE33928(v10, &qword_27D9090C0, &qword_22C27FCC8);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v20, &qword_27D90C7A8, &qword_22C294A70);
      sub_22BFB18A0();
      sub_22BFB18A0();
      sub_22BE19DC4(v20, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v13, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    }
  }

  sub_22BE2C940(&qword_27D90C578, type metadata accessor for ContextProtoUIControlTool, &protocol conformance descriptor for ContextProtoUIControlTool);
  v21 = v31;
  sub_22C2706F4();
  if (v21)
  {
    v22 = v20;
    return sub_22BE33928(v22, &qword_27D90C7A8, &qword_22C294A70);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v17, 1, v5) == 1)
  {
    sub_22BE33928(v20, &qword_27D90C7A8, &qword_22C294A70);
    v22 = v17;
    return sub_22BE33928(v22, &qword_27D90C7A8, &qword_22C294A70);
  }

  sub_22BFB18A0();
  if (v28 != 1)
  {
    sub_22C270594();
  }

  v24 = v29;
  sub_22BE33928(v20, &qword_27D90C7A8, &qword_22C294A70);
  v25 = v27;
  sub_22BE33928(v27, &qword_27D9090C0, &qword_22C27FCC8);
  sub_22BFB18A0();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v25, 0, 1, v24);
}

uint64_t ContextProtoRetrievedTool.Definition.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  v2 = sub_22BE289D8();
  v4 = sub_22BE5CE4C(v2, v3);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE234F4();
  sub_22BE36CB8();
  sub_22BE22868();
  v6 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v7 = sub_22BFB1A7C();
  if (sub_22BE1AEA8(v7, v8, v6) == 1)
  {
    goto LABEL_9;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = sub_22BE17D78();
      sub_22BFA6EA0(v25, v26, v27, v28);
      break;
    case 2u:
      v17 = sub_22BE17D78();
      sub_22BFA70E0(v17, v18, v19, v20);
      break;
    case 3u:
      v21 = sub_22BE17D78();
      sub_22BFA7320(v21, v22, v23, v24);
      break;
    case 4u:
      v13 = sub_22BE17D78();
      sub_22BFA7560(v13, v14, v15, v16);
      break;
    default:
      v9 = sub_22BE17D78();
      sub_22BFA6C64(v9, v10, v11, v12);
      break;
  }

  sub_22BE180E4();
  result = sub_22BFB18F4(v1, v29);
  if (!v0)
  {
LABEL_9:
    type metadata accessor for ContextProtoRetrievedTool.Definition(0);
    return sub_22BE19514();
  }

  return result;
}

uint64_t sub_22BFA6C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_22C272674();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v11 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v11) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9090C0, &qword_22C27FCC8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_22BE2C940(&qword_27D90C790, MEMORY[0x277D72898], MEMORY[0x277D72890]);
      sub_22C270884();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_22BFB18F4(v6, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFA6EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_22C272634();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v11 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v11) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9090C0, &qword_22C27FCC8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_22BE2C940(&qword_27D90C798, MEMORY[0x277D72870], MEMORY[0x277D72868]);
      sub_22C270884();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_22BFB18F4(v6, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFA70E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_22C272674();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v11 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v11) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9090C0, &qword_22C27FCC8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_22BE2C940(&qword_27D90C790, MEMORY[0x277D72898], MEMORY[0x277D72890]);
      sub_22C270884();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_22BFB18F4(v6, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFA7320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_22C272674();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v11 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v11) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9090C0, &qword_22C27FCC8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_22BE2C940(&qword_27D90C790, MEMORY[0x277D72898], MEMORY[0x277D72890]);
      sub_22C270884();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_22BFB18F4(v6, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFA7560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ContextProtoUIControlTool(0);
  MEMORY[0x28223BE20](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v10 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v10) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D9090C0, &qword_22C27FCC8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BFB18A0();
      sub_22BE2C940(&qword_27D90C578, type metadata accessor for ContextProtoUIControlTool, &protocol conformance descriptor for ContextProtoUIControlTool);
      sub_22C270884();
      return sub_22BFB18F4(v9, type metadata accessor for ContextProtoUIControlTool);
    }

    result = sub_22BFB18F4(v6, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFA79F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C690, type metadata accessor for ContextProtoRetrievedTool.Definition, &protocol conformance descriptor for ContextProtoRetrievedTool.Definition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA7A70(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C560, type metadata accessor for ContextProtoRetrievedTool.Definition, &protocol conformance descriptor for ContextProtoRetrievedTool.Definition);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA7AE0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C560, type metadata accessor for ContextProtoRetrievedTool.Definition, &protocol conformance descriptor for ContextProtoRetrievedTool.Definition);

  return sub_22C270774();
}

uint64_t sub_22BFA7B78()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BE58);
  sub_22BE199F4(v0, qword_27D90BE58);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "appBundleId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "command";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "commandId";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "toolDef";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoUIControlTool.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 4:
        v3 = sub_22BE18E2C();
        sub_22BFA7E6C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFA7E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoUIControlTool(0);
  sub_22C272674();
  sub_22BE2C940(&qword_27D90C790, MEMORY[0x277D72898], MEMORY[0x277D72890]);
  return sub_22C2706F4();
}

uint64_t ContextProtoUIControlTool.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  v1 = sub_22BE192B4();
  result = sub_22BE4E220(v1);
  if (!v0)
  {
    v3 = sub_22BE17D78();
    sub_22BE4E2BC(v3);
    v4 = sub_22BE17D78();
    sub_22BE4E2F4(v4);
    v5 = sub_22BE17D78();
    sub_22BFA7FA8(v5, v6, v7, v8);
    type metadata accessor for ContextProtoUIControlTool(0);
    return sub_22BE19514();
  }

  return result;
}

uint64_t sub_22BFA7FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a4;
  v12[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_22C272674();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoUIControlTool(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C180, &unk_22C296C40);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C940(&qword_27D90C790, MEMORY[0x277D72898], MEMORY[0x277D72890]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

void static ContextProtoUIControlTool.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v5 = sub_22C272674();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE17CBC();
  v9 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B01C();
  v11 = sub_22BE5CE4C(&qword_27D90C188, &qword_22C290E48);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE25CD0();
  v13 = v1[1];
  v14 = v0[1];
  if (v13)
  {
    if (!v14)
    {
      goto LABEL_37;
    }

    v15 = *v1 == *v0 && v13 == v14;
    if (!v15 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v14)
  {
    goto LABEL_37;
  }

  v16 = v1[3];
  v17 = v0[3];
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_37;
    }

    v18 = v1[2] == v0[2] && v16 == v17;
    if (!v18 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v17)
  {
    goto LABEL_37;
  }

  v19 = v1[5];
  v20 = v0[5];
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_37;
    }

    v21 = v1[4] == v0[4] && v19 == v20;
    if (!v21 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v20)
  {
    goto LABEL_37;
  }

  type metadata accessor for ContextProtoUIControlTool(0);
  v22 = *(v11 + 48);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE181B0(v3);
  if (v15)
  {
    sub_22BE181B0(v3 + v22);
    if (v15)
    {
      sub_22BE33928(v3, &qword_27D90C180, &unk_22C296C40);
LABEL_40:
      sub_22C2704B4();
      sub_22BE18E14();
      v30 = sub_22BE2C940(v28, v29, MEMORY[0x277D216D0]);
      v24 = sub_22BE35FB8(v30);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  sub_22BE22868();
  sub_22BE181B0(v3 + v22);
  if (v23)
  {
    (*(v7 + 8))(v4, v5);
LABEL_36:
    sub_22BE33928(v3, &qword_27D90C188, &qword_22C290E48);
    goto LABEL_37;
  }

  (*(v7 + 32))(v2, v3 + v22, v5);
  sub_22BE2C940(&qword_27D909248, MEMORY[0x277D72898], MEMORY[0x277D728A0]);
  v25 = sub_22C272FD4();
  v26 = *(v7 + 8);
  v27 = sub_22BE3C5E4();
  v26(v27);
  (v26)(v4, v5);
  sub_22BE33928(v3, &qword_27D90C180, &unk_22C296C40);
  if (v25)
  {
    goto LABEL_40;
  }

LABEL_37:
  v24 = 0;
LABEL_38:
  sub_22BE1C1DC(v24);
  sub_22BE1AABC();
}

uint64_t sub_22BFA85D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C688, type metadata accessor for ContextProtoUIControlTool, &protocol conformance descriptor for ContextProtoUIControlTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA8658(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C578, type metadata accessor for ContextProtoUIControlTool, &protocol conformance descriptor for ContextProtoUIControlTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA86C8(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C578, type metadata accessor for ContextProtoUIControlTool, &protocol conformance descriptor for ContextProtoUIControlTool);

  return sub_22C270774();
}

uint64_t sub_22BFA8760()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BE70);
  sub_22BE199F4(v0, qword_27D90BE70);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "invocationString";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoSampleInvocation.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22BE2037C();
      sub_22C270614();
    }

    else if (result == 1)
    {
      sub_22BE239F4();
      sub_22C2706A4();
    }
  }

  return result;
}

uint64_t ContextProtoSampleInvocation.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25B10(), result = sub_22C270844(), !v0))
  {
    if (*(v1 + 16) == 0.0 || (sub_22BE254E4(), result = sub_22C2707F4(), !v0))
    {
      type metadata accessor for ContextProtoSampleInvocation(0);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t static ContextProtoSampleInvocation.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0 || *(v2 + 16) != *(v1 + 16))
  {
    return 0;
  }

  type metadata accessor for ContextProtoSampleInvocation(0);
  sub_22BE23A04();
  sub_22BE18E14();
  v8 = sub_22BE2C940(v6, v7, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v8) & 1;
}

uint64_t sub_22BFA8B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C680, type metadata accessor for ContextProtoSampleInvocation, &protocol conformance descriptor for ContextProtoSampleInvocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA8BEC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C158, type metadata accessor for ContextProtoSampleInvocation, &protocol conformance descriptor for ContextProtoSampleInvocation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA8C5C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C158, type metadata accessor for ContextProtoSampleInvocation, &protocol conformance descriptor for ContextProtoSampleInvocation);

  return sub_22C270774();
}

uint64_t sub_22BFA8CF4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BE88);
  sub_22BE199F4(v0, qword_27D90BE88);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "definition";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void ContextProtoToolRetrievalType.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    v1 = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = sub_22BE18E2C();
      sub_22BFA8F90(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      sub_22BE18E2C();
      sub_22BF9EA14();
    }
  }
}

uint64_t sub_22BFA8F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoToolRetrievalType(0);
  sub_22C2725B4();
  sub_22BE2C940(&qword_27D90C780, MEMORY[0x277D72818], MEMORY[0x277D72810]);
  return sub_22C2706F4();
}

uint64_t sub_22BFA9098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D909280, &unk_22C294B50);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C940(&qword_27D90C788, MEMORY[0x277D72830], MEMORY[0x277D72828]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22BFA9298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a4;
  v12[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D909270, &unk_22C2CB810);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_22C2725B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoToolRetrievalType(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D909270, &unk_22C2CB810);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C940(&qword_27D90C780, MEMORY[0x277D72818], MEMORY[0x277D72810]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

void static ContextProtoToolRetrievalType.== infix(_:_:)()
{
  sub_22BE19460();
  v44 = sub_22C2725B4();
  sub_22BE179D8();
  v41 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  v39 = v4;
  v5 = sub_22BE5CE4C(&qword_27D909270, &unk_22C2CB810);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v40 = v7;
  v42 = sub_22BE5CE4C(&qword_27D909278, &unk_22C27FE60);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v43 = v9;
  sub_22BE183BC();
  v10 = sub_22C2725C4();
  sub_22BE179D8();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v14 = sub_22BE324FC();
  v16 = sub_22BE5CE4C(v14, v15);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BE5CE4C(&qword_27D909288, &unk_22C27FE70);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE2BB64();
  v21 = *(v20 + 56);
  sub_22BE36318();
  sub_22BFB1AAC();
  sub_22BFB1AAC();
  sub_22BE181B0(v1);
  if (v22)
  {
    sub_22BE181B0(v1 + v21);
    if (v22)
    {
      sub_22BE33928(v1, &qword_27D909280, &unk_22C294B50);
      goto LABEL_11;
    }

LABEL_9:
    v25 = &qword_27D909288;
    v26 = &unk_22C27FE70;
    v27 = v1;
LABEL_20:
    sub_22BE33928(v27, v25, v26);
    goto LABEL_21;
  }

  sub_22BE22868();
  sub_22BE181B0(v1 + v21);
  if (v22)
  {
    v23 = sub_22BE19454();
    v24(v23);
    goto LABEL_9;
  }

  (*(v12 + 32))(v0, v1 + v21, v10);
  sub_22BE2C940(&qword_27D909298, MEMORY[0x277D72830], MEMORY[0x277D72838]);
  v28 = sub_22C272FD4();
  v29 = *(v12 + 8);
  v29(v0, v10);
  v30 = sub_22BE19454();
  (v29)(v30);
  sub_22BE33928(v1, &qword_27D909280, &unk_22C294B50);
  if ((v28 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  type metadata accessor for ContextProtoToolRetrievalType(0);
  v31 = *(v42 + 48);
  sub_22BE36540();
  sub_22BE36540();
  sub_22BE1AB5C(v43, 1, v44);
  if (v22)
  {
    sub_22BE19FE0(v43 + v31);
    if (v22)
    {
      sub_22BE33928(v43, &qword_27D909270, &unk_22C2CB810);
LABEL_24:
      sub_22C2704B4();
      sub_22BE18E14();
      v38 = sub_22BE2C940(v36, v37, MEMORY[0x277D216D0]);
      v33 = sub_22BE3605C(v38);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22BE22868();
  sub_22BE19FE0(v43 + v31);
  if (v32)
  {
    (*(v41 + 8))(v40, v44);
LABEL_19:
    v25 = &qword_27D909278;
    v26 = &unk_22C27FE60;
    v27 = v43;
    goto LABEL_20;
  }

  (*(v41 + 32))(v39, v43 + v31, v44);
  sub_22BE2C940(&qword_27D909290, MEMORY[0x277D72818], MEMORY[0x277D72820]);
  v34 = sub_22C272FD4();
  v35 = *(v41 + 8);
  v35(v39, v44);
  v35(v40, v44);
  sub_22BE33928(v43, &qword_27D909270, &unk_22C2CB810);
  if (v34)
  {
    goto LABEL_24;
  }

LABEL_21:
  v33 = 0;
LABEL_22:
  sub_22BE1C1DC(v33);
  sub_22BE1AABC();
}

uint64_t sub_22BFA9A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C678, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA9B1C(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C1C0, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA9B8C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C1C0, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType);

  return sub_22C270774();
}

uint64_t sub_22BFA9C24()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BEA0);
  sub_22BE199F4(v0, qword_27D90BEA0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
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
  *v10 = "appBundleIds";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoToolQuery.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22BE2037C();
      sub_22C270664();
    }

    else if (result == 1)
    {
      sub_22BE239F4();
      sub_22C2706A4();
    }
  }

  return result;
}

uint64_t ContextProtoToolQuery.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25B10(), result = sub_22C270844(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (sub_22BE1BAB8(), result = sub_22C270824(), !v0))
    {
      type metadata accessor for ContextProtoToolQuery(0);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t static ContextProtoToolQuery.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0 || (sub_22BE9693C(*(v2 + 16), *(v1 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ContextProtoToolQuery(0);
  sub_22BE23A04();
  sub_22BE18E14();
  v8 = sub_22BE2C940(v6, v7, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v8) & 1;
}

uint64_t sub_22BFAA02C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C670, type metadata accessor for ContextProtoToolQuery, &protocol conformance descriptor for ContextProtoToolQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFAA0AC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C5B0, type metadata accessor for ContextProtoToolQuery, &protocol conformance descriptor for ContextProtoToolQuery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFAA11C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C5B0, type metadata accessor for ContextProtoToolQuery, &protocol conformance descriptor for ContextProtoToolQuery);

  return sub_22C270774();
}

void sub_22BFAA244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v4 = sub_22C270584();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 1)
    {
      sub_22BF9EA14();
    }
  }
}

uint64_t sub_22BFAA31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  sub_22BE33A5C();
  v7 = sub_22BE192B4();
  result = v8(v7);
  if (!v5)
  {
    a5(0);
    return sub_22BE19514();
  }

  return result;
}

uint64_t sub_22BFAA384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090D0, &unk_22C294B30);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C560, type metadata accessor for ContextProtoRetrievedTool.Definition, &protocol conformance descriptor for ContextProtoRetrievedTool.Definition);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoRetrievedTool.Definition);
}

uint64_t sub_22BFAA7F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C668, type metadata accessor for ContextProtoToolQueryOutput, &protocol conformance descriptor for ContextProtoToolQueryOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFAA870(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C5C8, type metadata accessor for ContextProtoToolQueryOutput, &protocol conformance descriptor for ContextProtoToolQueryOutput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFAA8E0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C5C8, type metadata accessor for ContextProtoToolQueryOutput, &protocol conformance descriptor for ContextProtoToolQueryOutput);

  return sub_22C270774();
}

uint64_t sub_22BFAA978()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BED0);
  sub_22BE199F4(v0, qword_27D90BED0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "originalSubQuery";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrittenQuery";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "confidence";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "retrievedTools";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "types";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        sub_22BE2037C();
        sub_22C2706A4();
        break;
      case 3:
        sub_22BE2037C();
        sub_22C270614();
        break;
      case 4:
        v5 = sub_22BE18E2C();
        sub_22BFAACC4(v5, v6);
        break;
      case 5:
        v3 = sub_22BE18E2C();
        sub_22BFAAD64(v3, v4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFAACC4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContextProtoRetrievedTool(0);
  sub_22BE2C940(&qword_27D90C1B8, type metadata accessor for ContextProtoRetrievedTool, &protocol conformance descriptor for ContextProtoRetrievedTool);
  return sub_22C2706E4();
}

uint64_t sub_22BFAAD64(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContextProtoToolRetrievalType(0);
  sub_22BE2C940(&qword_27D90C1C0, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType);
  return sub_22C2706E4();
}

void ContextProtoQueryDecorationToolRetrievalResponse.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE1A730();
  if (!v2 || (sub_22BE25B10(), sub_22C270844(), !v0))
  {
    sub_22BE1B448();
    if (!v3 || (sub_22BE25B10(), sub_22C270844(), !v0))
    {
      if (*(v1 + 32) == 0.0 || (sub_22BE254E4(), sub_22C2707F4(), !v0))
      {
        if (!*(*(v1 + 40) + 16) || (type metadata accessor for ContextProtoRetrievedTool(0), sub_22BE2C940(&qword_27D90C1B8, type metadata accessor for ContextProtoRetrievedTool, &protocol conformance descriptor for ContextProtoRetrievedTool), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
        {
          if (!*(*(v1 + 48) + 16) || (type metadata accessor for ContextProtoToolRetrievalType(0), sub_22BE2C940(&qword_27D90C1C0, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
          {
            type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
            sub_22BE1AC30();
          }
        }
      }
    }
  }

  sub_22BE25C6C();
}

uint64_t static ContextProtoQueryDecorationToolRetrievalResponse.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 32) != *(v1 + 32))
  {
    return 0;
  }

  sub_22BE98FD4();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_22BE9983C();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_22C2704B4();
  sub_22BE18E14();
  v11 = sub_22BE2C940(v9, v10, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v11) & 1;
}

uint64_t sub_22BFAB0FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C660, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFAB17C(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFAB1EC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);

  return sub_22C270774();
}

uint64_t sub_22BFAB284()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BEE8);
  sub_22BE199F4(v0, qword_27D90BEE8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typedValue";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "matchMetadata";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void ContextProtoSpanMatchedEntity.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    v1 = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_22BE18E2C();
      sub_22BF9A07C();
    }

    else if (v1 == 1)
    {
      v3 = sub_22BE18E2C();
      sub_22BFAB520(v3, v4, v5, v6);
    }
  }
}

uint64_t sub_22BFAB520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoSpanMatchedEntity(0);
  sub_22C272594();
  sub_22BE2C940(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  return sub_22C2706F4();
}

void ContextProtoSpanMatchedEntity.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3B090();
  sub_22BE3C860();
  sub_22BFAB6A8();
  if (!v0)
  {
    sub_22BE41DF4();
    if (v1)
    {
      type metadata accessor for ContextProtoEntityMatch(0);
      sub_22BE2C940(&qword_27D90C1D0, type metadata accessor for ContextProtoEntityMatch, &protocol conformance descriptor for ContextProtoEntityMatch);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    type metadata accessor for ContextProtoSpanMatchedEntity(0);
    sub_22BE1AC30();
  }

  sub_22BE25C6C();
}

void sub_22BFAB6A8()
{
  sub_22BE19130();
  v1 = v0;
  v16[0] = v2;
  v16[1] = v3;
  v4 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v7 = v16 - v6;
  v8 = sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v1(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    sub_22BE33928(v7, &qword_27D909128, &qword_22C294AA0);
  }

  else
  {
    v10 = sub_22BE1AEE4();
    v11(v10);
    sub_22BE231A8();
    sub_22BE2C940(v12, v13, MEMORY[0x277D727D8]);
    sub_22C270884();
    v14 = sub_22BE18240();
    v15(v14);
  }

  sub_22BE18478();
}

void static ContextProtoSpanMatchedEntity.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = sub_22C272594();
  sub_22BE179D8();
  v25 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BE17CBC();
  v5 = sub_22BE289D8();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE234F4();
  v9 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30) - 8;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B01C();
  type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v11 = *(v9 + 56);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE181B0(v1);
  if (v12)
  {
    sub_22BE181B0(v1 + v11);
    if (v12)
    {
      sub_22BE33928(v1, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_11;
    }

LABEL_9:
    sub_22BE33928(v1, &qword_27D909130, &unk_22C27FD30);
LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  sub_22BE22868();
  sub_22BE181B0(v1 + v11);
  if (v12)
  {
    v13 = sub_22BE35838();
    v14(v13);
    goto LABEL_9;
  }

  (*(v25 + 32))(v0, v1 + v11, v2);
  sub_22BE231A8();
  sub_22BE2C940(v15, v16, MEMORY[0x277D727F0]);
  sub_22BE1B5E0();
  v17 = sub_22C272FD4();
  v18 = *(v25 + 8);
  v19 = sub_22BE3C5E4();
  v18(v19);
  v20 = sub_22BE35838();
  v18(v20);
  sub_22BE33928(v1, &qword_27D909128, &qword_22C294AA0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_22BE977C0();
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v22, v23, MEMORY[0x277D216D0]);
  v24 = sub_22C272FD4();
LABEL_14:
  sub_22BE1C1DC(v24);
  sub_22BE1AABC();
}

uint64_t sub_22BFABC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C658, type metadata accessor for ContextProtoSpanMatchedEntity, &protocol conformance descriptor for ContextProtoSpanMatchedEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFABC80(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C0E8, type metadata accessor for ContextProtoSpanMatchedEntity, &protocol conformance descriptor for ContextProtoSpanMatchedEntity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFABCF0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C0E8, type metadata accessor for ContextProtoSpanMatchedEntity, &protocol conformance descriptor for ContextProtoSpanMatchedEntity);

  return sub_22C270774();
}

uint64_t sub_22BFABD88()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BF00);
  sub_22BE199F4(v0, qword_27D90BF00);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sourceItemIdentifier";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "entityName";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "startIndex";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "endIndex";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "matchScore";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "matchProperties";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "matcherType";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "originAppBundleId";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "userUtterance";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "identifier";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoEntityMatch.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 10:
      case 11:
        sub_22BE2037C();
        sub_22C2706A4();
        break;
      case 4:
      case 5:
        sub_22BE2037C();
        sub_22C270654();
        break;
      case 7:
        sub_22BE2037C();
        sub_22C270614();
        break;
      case 8:
        v7 = sub_22BE18E2C();
        sub_22BFAC250(v7, v8, v9, v10);
        break;
      case 9:
        v11 = sub_22BE18E2C();
        sub_22BFAC304(v11, v12, v13, v14);
        break;
      case 12:
        v3 = sub_22BE18E2C();
        sub_22BFAC36C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFAC250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoEntityMatch(0);
  type metadata accessor for ContextProtoMatchProperties(0);
  sub_22BE2C940(&qword_27D90C618, type metadata accessor for ContextProtoMatchProperties, &protocol conformance descriptor for ContextProtoMatchProperties);
  return sub_22C2706F4();
}

uint64_t ContextProtoEntityMatch.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25B10(), result = sub_22C270844(), !v0))
  {
    sub_22BE1B448();
    if (!v4 || (sub_22BE25B10(), result = sub_22C270844(), !v0))
    {
      if (!*(v1 + 32) || (sub_22BE1BAB8(), result = sub_22C270814(), !v0))
      {
        if (!*(v1 + 40) || (sub_22BE1BAB8(), result = sub_22C270814(), !v0))
        {
          if (*(v1 + 48) == 0.0 || (sub_22BE254E4(), result = sub_22C2707F4(), !v0))
          {
            v5 = sub_22BE17D60();
            result = sub_22BFAC558(v5, v6, v7, v8);
            if (!v0)
            {
              if (*(v1 + 52))
              {
                sub_22BFAE0F0();
                sub_22BE23CE4();
                sub_22C2707D4();
              }

              sub_22BE1B448();
              if (v9)
              {
                sub_22BE25B10();
                sub_22C270844();
              }

              sub_22BE1B448();
              if (v10)
              {
                sub_22BE25B10();
                sub_22C270844();
              }

              v11 = sub_22BE17D60();
              sub_22BFAC72C(v11);
              type metadata accessor for ContextProtoEntityMatch(0);
              return sub_22BE1AC30();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22BFAC558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909118, &unk_22C294B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  MEMORY[0x28223BE20](matched);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoEntityMatch(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, matched) == 1)
  {
    return sub_22BE33928(v6, &qword_27D909118, &unk_22C294B60);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C618, type metadata accessor for ContextProtoMatchProperties, &protocol conformance descriptor for ContextProtoMatchProperties);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoMatchProperties);
}

uint64_t sub_22BFAC72C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoEntityMatch(0);
  if (*(a1 + *(result + 52) + 8))
  {
    return sub_22C270844();
  }

  return result;
}

void static ContextProtoEntityMatch.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  type metadata accessor for ContextProtoMatchProperties(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE17CBC();
  v6 = sub_22BE5CE4C(&qword_27D909118, &unk_22C294B60);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE234F4();
  v8 = sub_22BE5CE4C(&byte_27D909120, &unk_22C27FD20);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  v10 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v10 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_44;
  }

  v11 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v11 && (sub_22C274014() & 1) == 0 || *(v1 + 32) != *(v0 + 32) || *(v1 + 40) != *(v0 + 40) || *(v1 + 48) != *(v0 + 48))
  {
    goto LABEL_44;
  }

  type metadata accessor for ContextProtoEntityMatch(0);
  v12 = *(v8 + 48);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE19FE0(v2);
  if (v10)
  {
    sub_22BE19FE0(v2 + v12);
    if (v10)
    {
      sub_22BE33928(v2, &qword_27D909118, &unk_22C294B60);
      goto LABEL_24;
    }

LABEL_22:
    sub_22BE33928(v2, &byte_27D909120, &unk_22C27FD20);
    goto LABEL_44;
  }

  sub_22BE3AF28();
  sub_22BE22868();
  sub_22BE19FE0(v2 + v12);
  if (v13)
  {
    sub_22BFB18F4(v3, type metadata accessor for ContextProtoMatchProperties);
    goto LABEL_22;
  }

  sub_22BFB18A0();
  sub_22BE1B5E0();
  static ContextProtoMatchProperties.== infix(_:_:)();
  v15 = v14;
  v16 = sub_22BE194F8();
  sub_22BFB18F4(v16, v17);
  v18 = sub_22BE18240();
  sub_22BFB18F4(v18, v19);
  sub_22BE33928(v2, &qword_27D909118, &unk_22C294B60);
  if ((v15 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_24:
  if (*(v1 + 52) != *(v0 + 52))
  {
    goto LABEL_44;
  }

  v20 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v20 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_44;
  }

  v21 = *(v1 + 72) == *(v0 + 72) && *(v1 + 80) == *(v0 + 80);
  if (!v21 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_44;
  }

  sub_22BE2F1A0();
  if (v24)
  {
    if (v22)
    {
      sub_22BE3A508(v23);
      v27 = v10 && v25 == v26;
      if (v27 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_42;
      }
    }

LABEL_44:
    v31 = 0;
    goto LABEL_45;
  }

  if (v22)
  {
    goto LABEL_44;
  }

LABEL_42:
  sub_22C2704B4();
  sub_22BE18E14();
  v30 = sub_22BE2C940(v28, v29, MEMORY[0x277D216D0]);
  v31 = sub_22BE2B85C(v30);
LABEL_45:
  sub_22BE1C1DC(v31);
  sub_22BE1AABC();
}

uint64_t sub_22BFACBB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C650, type metadata accessor for ContextProtoEntityMatch, &protocol conformance descriptor for ContextProtoEntityMatch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFACC30(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C1D0, type metadata accessor for ContextProtoEntityMatch, &protocol conformance descriptor for ContextProtoEntityMatch);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFACCA0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C1D0, type metadata accessor for ContextProtoEntityMatch, &protocol conformance descriptor for ContextProtoEntityMatch);

  return sub_22C270774();
}

uint64_t sub_22BFACD2C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BF18);
  sub_22BE199F4(v0, qword_27D90BF18);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "maxTokenCount";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "matchedTokenCount";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "matchedAliasTypes";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoMatchProperties.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v3 = sub_22BE18E2C();
      sub_22BFACFC8(v3, v4, v5, v6);
    }

    else if (result == 2 || result == 1)
    {
      sub_22BE2037C();
      sub_22C270644();
    }
  }

  return result;
}

uint64_t sub_22BFACFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoMatchProperties(0);
  type metadata accessor for ContextProtoAliasTypes(0);
  sub_22BE2C940(&qword_27D90C630, type metadata accessor for ContextProtoAliasTypes, &protocol conformance descriptor for ContextProtoAliasTypes);
  return sub_22C2706F4();
}

uint64_t sub_22BFAD0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t), void (*a7)(void))
{
  sub_22BE33A5C();
  v11 = sub_22BE192B4();
  result = v12(v11);
  if (!v7)
  {
    v14 = sub_22BE17D78();
    a5(v14);
    v15 = sub_22BE17D78();
    a6(v15);
    a7(0);
    return sub_22BE19514();
  }

  return result;
}

uint64_t sub_22BFAD184(uint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    return sub_22C270814();
  }

  return result;
}

uint64_t sub_22BFAD1BC(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    return sub_22C270814();
  }

  return result;
}

uint64_t sub_22BFAD1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoAliasTypes(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoMatchProperties(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D909108, &unk_22C2B5E20);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C630, type metadata accessor for ContextProtoAliasTypes, &protocol conformance descriptor for ContextProtoAliasTypes);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoAliasTypes);
}

void static ContextProtoMatchProperties.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE23708();
  type metadata accessor for ContextProtoAliasTypes(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B01C();
  v11 = sub_22BE5CE4C(&unk_27D909110, &unk_22C27FD10);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E64();
  if (*(v1 + 8))
  {
    if (!*(v0 + 8))
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_22BEC02E4();
    if (v13)
    {
      goto LABEL_20;
    }
  }

  if ((*(v1 + 24) & 1) == 0)
  {
    sub_22BEC02E4();
    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  if (!*(v0 + 24))
  {
    goto LABEL_20;
  }

LABEL_9:
  type metadata accessor for ContextProtoMatchProperties(0);
  v15 = *(v11 + 48);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE181B0(v2);
  if (v20)
  {
    sub_22BE181B0(v2 + v15);
    if (v20)
    {
      sub_22BE33928(v2, &qword_27D909108, &unk_22C2B5E20);
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE181B0(v2 + v15);
  if (v20)
  {
    sub_22BFB18F4(v3, type metadata accessor for ContextProtoAliasTypes);
LABEL_18:
    v21 = &unk_27D909110;
    v22 = &unk_22C27FD10;
LABEL_19:
    sub_22BE33928(v2, v21, v22);
    goto LABEL_20;
  }

  sub_22BFB18A0();
  v23 = sub_22BEBFE50();
  if ((v23 & 1) == 0)
  {
    sub_22BFB18F4(v8, type metadata accessor for ContextProtoAliasTypes);
    sub_22BFB18F4(v3, type metadata accessor for ContextProtoAliasTypes);
    v21 = &qword_27D909108;
    v22 = &unk_22C2B5E20;
    goto LABEL_19;
  }

  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v24, v25, MEMORY[0x277D216D0]);
  v26 = sub_22C272FD4();
  sub_22BFB18F4(v8, type metadata accessor for ContextProtoAliasTypes);
  sub_22BFB18F4(v3, type metadata accessor for ContextProtoAliasTypes);
  sub_22BE33928(v2, &qword_27D909108, &unk_22C2B5E20);
  if ((v26 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  sub_22C2704B4();
  sub_22BE18E14();
  v18 = sub_22BE2C940(v16, v17, MEMORY[0x277D216D0]);
  v19 = sub_22BE35FB8(v18);
LABEL_21:
  sub_22BE1C1DC(v19);
  sub_22BE1AABC();
}

uint64_t sub_22BFAD7B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C648, type metadata accessor for ContextProtoMatchProperties, &protocol conformance descriptor for ContextProtoMatchProperties);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFAD838(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C618, type metadata accessor for ContextProtoMatchProperties, &protocol conformance descriptor for ContextProtoMatchProperties);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFAD8A8(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C618, type metadata accessor for ContextProtoMatchProperties, &protocol conformance descriptor for ContextProtoMatchProperties);

  return sub_22C270774();
}

uint64_t sub_22BFAD95C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22C2708C4();
  sub_22BE952A4(v9, a2);
  v10 = sub_22BE200D4();
  sub_22BE199F4(v10, v11);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v12 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22C275160;
  v15 = v14 + v13 + v12[14];
  *(v14 + v13) = a3;
  *v15 = a4;
  *(v15 + 8) = a5;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x277D21870];
  sub_22C270894();
  sub_22BE18000();
  (*(v17 + 104))(v15, v16);
  return sub_22C2708A4();
}

uint64_t ContextProtoAliasTypes.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = sub_22BE18E2C();
      sub_22BFADB30(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t ContextProtoAliasTypes.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (!*(*v0 + 16) || (sub_22BFAE144(), sub_22BE23CE4(), result = sub_22C2707B4(), !v1))
  {
    type metadata accessor for ContextProtoAliasTypes(0);
    return sub_22BE1AC30();
  }

  return result;
}

uint64_t static ContextProtoAliasTypes.== infix(_:_:)()
{
  sub_22BE18378();
  if ((sub_22BEBFE50() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ContextProtoAliasTypes(0);
  sub_22BE3636C();
  sub_22BE18E14();
  v2 = sub_22BE2C940(v0, v1, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v2) & 1;
}

uint64_t sub_22BFADD34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C640, type metadata accessor for ContextProtoAliasTypes, &protocol conformance descriptor for ContextProtoAliasTypes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFADDB4(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C630, type metadata accessor for ContextProtoAliasTypes, &protocol conformance descriptor for ContextProtoAliasTypes);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFADE24(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C630, type metadata accessor for ContextProtoAliasTypes, &protocol conformance descriptor for ContextProtoAliasTypes);

  return sub_22C270774();
}

uint64_t sub_22BFADEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C274154();
  sub_22C272EE4();
  return sub_22C2741A4();
}

unint64_t sub_22BFADEF8()
{
  result = qword_27D90BF48;
  if (!qword_27D90BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90BF48);
  }

  return result;
}

unint64_t sub_22BFADF4C()
{
  result = qword_27D90BFD0;
  if (!qword_27D90BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90BFD0);
  }

  return result;
}

unint64_t sub_22BFADFA0()
{
  result = qword_27D90C120;
  if (!qword_27D90C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C120);
  }

  return result;
}

unint64_t sub_22BFADFF4()
{
  result = qword_27D90C128;
  if (!qword_27D90C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C128);
  }

  return result;
}

unint64_t sub_22BFAE048()
{
  result = qword_27D90C160;
  if (!qword_27D90C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C160);
  }

  return result;
}

unint64_t sub_22BFAE09C()
{
  result = qword_27D90C168;
  if (!qword_27D90C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C168);
  }

  return result;
}

unint64_t sub_22BFAE0F0()
{
  result = qword_27D90C1E0;
  if (!qword_27D90C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C1E0);
  }

  return result;
}

unint64_t sub_22BFAE144()
{
  result = qword_27D90C1F8;
  if (!qword_27D90C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C1F8);
  }

  return result;
}

unint64_t sub_22BFAE19C()
{
  result = qword_27D90C208;
  if (!qword_27D90C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C208);
  }

  return result;
}

unint64_t sub_22BFAE1F4()
{
  result = qword_27D90C210;
  if (!qword_27D90C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C210);
  }

  return result;
}

unint64_t sub_22BFAE24C()
{
  result = qword_27D90C218;
  if (!qword_27D90C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C218);
  }

  return result;
}

unint64_t sub_22BFAE2A4()
{
  result = qword_27D90C220;
  if (!qword_27D90C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C220);
  }

  return result;
}

unint64_t sub_22BFAE2FC()
{
  result = qword_27D90C228;
  if (!qword_27D90C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C228);
  }

  return result;
}

unint64_t sub_22BFAE354()
{
  result = qword_27D90C230;
  if (!qword_27D90C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C230);
  }

  return result;
}

unint64_t sub_22BFAE3AC()
{
  result = qword_27D90C238;
  if (!qword_27D90C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C238);
  }

  return result;
}

unint64_t sub_22BFAE404()
{
  result = qword_27D90C240;
  if (!qword_27D90C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C240);
  }

  return result;
}

unint64_t sub_22BFAE45C()
{
  result = qword_27D90C248;
  if (!qword_27D90C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C248);
  }

  return result;
}

unint64_t sub_22BFAE4B4()
{
  result = qword_27D90C250;
  if (!qword_27D90C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C250);
  }

  return result;
}

unint64_t sub_22BFAE50C()
{
  result = qword_27D90C258;
  if (!qword_27D90C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C258);
  }

  return result;
}

unint64_t sub_22BFAE564()
{
  result = qword_27D90C260;
  if (!qword_27D90C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C260);
  }

  return result;
}

unint64_t sub_22BFAE5BC()
{
  result = qword_27D90C268;
  if (!qword_27D90C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C268);
  }

  return result;
}

unint64_t sub_22BFAE614()
{
  result = qword_27D90C270;
  if (!qword_27D90C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C270);
  }

  return result;
}

unint64_t sub_22BFAE66C()
{
  result = qword_27D90C278;
  if (!qword_27D90C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C278);
  }

  return result;
}

unint64_t sub_22BFAE6C4()
{
  result = qword_27D90C280;
  if (!qword_27D90C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C280);
  }

  return result;
}

unint64_t sub_22BFAE71C()
{
  result = qword_27D90C288;
  if (!qword_27D90C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C288);
  }

  return result;
}

unint64_t sub_22BFAE774()
{
  result = qword_27D90C290;
  if (!qword_27D90C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C290);
  }

  return result;
}

unint64_t sub_22BFAE7CC()
{
  result = qword_27D90C298;
  if (!qword_27D90C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C298);
  }

  return result;
}

unint64_t sub_22BFAE824()
{
  result = qword_27D90C2A0;
  if (!qword_27D90C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C2A0);
  }

  return result;
}

unint64_t sub_22BFAE87C()
{
  result = qword_27D90C2A8;
  if (!qword_27D90C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C2A8);
  }

  return result;
}

unint64_t sub_22BFAE8D4()
{
  result = qword_27D90C2B0;
  if (!qword_27D90C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C2B0);
  }

  return result;
}

unint64_t sub_22BFAE92C()
{
  result = qword_27D90C2B8;
  if (!qword_27D90C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C2B8);
  }

  return result;
}

unint64_t sub_22BFAE984()
{
  result = qword_27D90C2C0;
  if (!qword_27D90C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C2C0);
  }

  return result;
}

unint64_t sub_22BFB03BC()
{
  result = qword_27D90C4D8;
  if (!qword_27D90C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C4D8);
  }

  return result;
}

unint64_t sub_22BFB0414()
{
  result = qword_27D90C4E0;
  if (!qword_27D90C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C4E0);
  }

  return result;
}

unint64_t sub_22BFB08EC()
{
  result = qword_27D90C538;
  if (!qword_27D90C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C538);
  }

  return result;
}

unint64_t sub_22BFB0944()
{
  result = qword_27D90C540;
  if (!qword_27D90C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C540);
  }

  return result;
}

unint64_t sub_22BFB099C()
{
  result = qword_27D90C548;
  if (!qword_27D90C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C548);
  }

  return result;
}

unint64_t sub_22BFB09F4()
{
  result = qword_27D90C550;
  if (!qword_27D90C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C550);
  }

  return result;
}

unint64_t sub_22BFB16A8()
{
  result = qword_27D90C7B8;
  if (!qword_27D90C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C7B8);
  }

  return result;
}

unint64_t sub_22BFB16FC()
{
  result = qword_27D90C7C0;
  if (!qword_27D90C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C7C0);
  }

  return result;
}

unint64_t sub_22BFB1750()
{
  result = qword_27D90C7C8;
  if (!qword_27D90C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C7C8);
  }

  return result;
}

unint64_t sub_22BFB17A4()
{
  result = qword_27D90C7D0;
  if (!qword_27D90C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C7D0);
  }

  return result;
}

unint64_t sub_22BFB17F8()
{
  result = qword_27D90C7D8;
  if (!qword_27D90C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C7D8);
  }

  return result;
}

unint64_t sub_22BFB184C()
{
  result = qword_27D90C7E0;
  if (!qword_27D90C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C7E0);
  }

  return result;
}

uint64_t sub_22BFB18A0()
{
  v1 = sub_22BE1B2D4();
  v2(v1);
  sub_22BE18000();
  v3 = sub_22BE19454();
  v4(v3);
  return v0;
}

uint64_t sub_22BFB18F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BE18000();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_22BFB194C()
{
  result = qword_27D90C818;
  if (!qword_27D90C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C818);
  }

  return result;
}

uint64_t sub_22BFB1AAC()
{

  return sub_22BE22868();
}

uint64_t sub_22BFB1AC4()
{

  return sub_22BE22868();
}

uint64_t ContextProtoRetrievedContext.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for ContextProtoRetrievedContext(v1);
  v3 = sub_22C272594();
  v4 = sub_22BE25B20();
  sub_22BE19DC4(v4, v5, v6, v3);
  type metadata accessor for ContextProtoConfidence(0);
  v7 = sub_22BE25B20();
  sub_22BE19DC4(v7, v8, v9, v10);
  type metadata accessor for ContextProtoContextMetadata(0);
  v11 = sub_22BE25B20();
  sub_22BE19DC4(v11, v12, v13, v14);
  sub_22BE1A140();
  sub_22BE19DC4(v15, v16, v17, v3);
  v18 = type metadata accessor for ContextProtoStructuredContext(0);
  sub_22BE1AF78(v18);
  sub_22BFBFC8C(*(v2 + 40));
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t ContextProtoRetrievedContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoRetrievedContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoContextMetadata.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for ContextProtoContextMetadata(v1);
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  v3 = sub_22BE3A230();
  type metadata accessor for ContextProtoConfidence(v3);
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  v8 = type metadata accessor for ContextProtoBoundingBox(0);
  sub_22BE1A140();
  sub_22BE19DC4(v9, v10, v11, v8);
  sub_22BE311D4(v2[9]);
  sub_22BFBFC8C(v2[10]);
  *(v0 + v2[11]) = 2;
  *(v0 + v2[12]) = 2;
  sub_22BE1A140();
  sub_22BE19DC4(v12, v13, v14, v8);
  *(v0 + v2[14]) = 6;
  v15 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  sub_22BE1AF78(v15);
  sub_22BFBFC8C(v2[16]);
  v16 = type metadata accessor for ContextProtoCGRect(0);
  sub_22BE1A140();
  sub_22BE19DC4(v17, v18, v19, v16);
  sub_22BE1A140();
  sub_22BE19DC4(v20, v21, v22, v16);
  sub_22BE311D4(v2[19]);
  sub_22BFBFC8C(v2[20]);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoContextMetadata.unknownFields.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v1 = sub_22BE23C98();

  return v2(v1);
}

uint64_t ContextProtoContextMetadata.unknownFields.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v1 = sub_22BE33684();

  return v2(v1);
}

uint64_t ContextProtoContextMetadata.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(v1);
  *v0 = 0u;
  v0[1] = 0u;
  return sub_22BE37CF8(v2);
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoBoundingBox.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22BE41564(a1);
  *(v1 + 8) = 0;
  *(v1 + 12) = v2;
  *(v1 + 16) = 0;
  *(v1 + 20) = v2;
  *(v1 + 24) = 0;
  *(v1 + 28) = v2;
  type metadata accessor for ContextProtoBoundingBox(0);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t ContextProtoBoundingBox.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoBoundingBox(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoSurroundingText.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoSurroundingText(v1);
  *v0 = 0;
  v0[1] = 0;
  v2 = type metadata accessor for ContextProtoBoundingBox(0);
  sub_22BE1AF78(v2);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22BFB22C8()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22BFB234C()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t ContextProtoSurroundingText.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoSurroundingText(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoConfidence.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for ContextProtoConfidence(v1);
  result = sub_22BE37CF8(v2);
  *v0 = 0;
  *(v0 + 4) = 0;
  return result;
}

uint64_t ContextProtoConfidence.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoConfidence(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContext(v0);
  return sub_22BE18504();
}

void ContextProtoStructedContextNowPlayingMediaItem.init()(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 89) = 1031;
  *(a1 + 91) = 9;
  type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.unknownFields.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v1 = sub_22BE23C98();

  return v2(v1);
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.unknownFields.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v1 = sub_22BE33684();

  return v2(v1);
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(a1 + 80) = 33686018;
  *(a1 + 84) = 2;
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  sub_22BE1A140();
  sub_22BE19DC4(v3, v4, v5, v6);
  *(a1 + v2[16]) = xmmword_22C28E6A0;
  sub_22BFBFC8C(v2[17]);
  sub_22BFBFC8C(v2[18]);
  v7 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  sub_22BE1AF78(v7);
  sub_22BE311D4(v2[20]);
  sub_22BFBFC8C(v2[21]);
  *(a1 + v2[22]) = 2;
  *(a1 + v2[23]) = 2;
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  v8 = sub_22BE25B20();
  sub_22BE19DC4(v8, v9, v10, v11);
  *(a1 + v2[25]) = 12;
  *(a1 + v2[26]) = 2;
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v13 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v13;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.unknownFields.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v1 = sub_22BE23C98();

  return v2(v1);
}

uint64_t ContextProtoStructuredContextSiriRequestContext.unknownFields.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v1 = sub_22BE33684();

  return v2(v1);
}

uint64_t ContextProtoStructuredContextSiriRequestContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22BE41564(a1);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 28) = v2;
  *(v1 + 32) = 0;
  *(v1 + 36) = v2;
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22BFB29F0()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22BFB2A74()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1282;
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(v1);
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(v1);
  *v0 = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22BFB2D0C()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22BFB2D90()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(v0);
  return sub_22BE18504();
}

void ContextProtoStructuredContextIntelligenceCommandContext.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(v1);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x277D84F90];
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(v0);
  return sub_22BE18504();
}

void ContextProtoStructedContextAppInFocusContext.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoStructedContextAppInFocusContext(v1);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t sub_22BFB2F90()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22BE3A230();
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22BFB3010()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22BE3A230();
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t ContextProtoStructedContextAppInFocusContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructedContextAppInFocusContext(v0);
  return sub_22BE18504();
}

void ContextProtoStructedContextAppContext.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoStructedContextAppContext(v1);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t ContextProtoStructedContextAppContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructedContextAppContext(v0);
  return sub_22BE18504();
}

void ContextProtoStructuredContextOnScreenUIText.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoStructuredContextOnScreenUIText(v1);
  v2 = sub_22BFBFC98();
  type metadata accessor for ContextProtoCGRect(v2);
  sub_22BE1A140();
  sub_22BE19DC4(v3, v4, v5, v6);
  v7 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  sub_22BE1AF78(v7);
  sub_22BE311D4(*(v0 + 28));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t ContextProtoStructuredContextOnScreenUIText.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextOnScreenUIText(v0);
  return sub_22BE18504();
}

uint64_t sub_22BFB32D8(void (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  sub_22BE1A140();
  sub_22BE19DC4(v3, v4, v5, v6);
  a2(0);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22BFB336C()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22BFB33F0()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadata.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init()()
{
  v2 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(v2);
  v3 = sub_22BFBFC98();
  type metadata accessor for ContextProtoCGRect(v3);
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  sub_22BE311D4(*(v1 + 24));
  sub_22BFBFC8C(*(v1 + 28));
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoCGRect.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoCGRect(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoCGPoint.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoCGPoint(v0);
  return sub_22BE18504();
}

uint64_t sub_22BFB3704()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  result = sub_22BE37CF8(v3);
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t ContextProtoCGSize.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoCGSize(v0);
  return sub_22BE18504();
}

void ContextProtoVersionedQueryDecorationOutput.init()()
{
  v0 = sub_22BE1A5E4();
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(v0);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_22BE1AF78(DecorationToolRetrievalResponse);
  sub_22BFBFC8C(*(DecorationOutput + 48));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE29ED4(MEMORY[0x277D84F90]);
}

uint64_t ContextProtoVersionedQueryDecorationOutput.unknownFields.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoVersionedQueryDecorationOutput(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v1 = sub_22BE23C98();

  return v2(v1);
}

uint64_t ContextProtoVersionedQueryDecorationOutput.unknownFields.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoVersionedQueryDecorationOutput(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v1 = sub_22BE33684();

  return v2(v1);
}

uint64_t ContextProtoVersionedQueryDecorationOutput.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoVersionedQueryDecorationOutput(v0);
  return sub_22BE18504();
}

void ContextProtoQueryDecorationOutput.init()()
{
  v0 = sub_22BE1A5E4();
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(v0);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_22BE1AF78(DecorationToolRetrievalResponse);
  sub_22BFBFC8C(*(DecorationOutput + 44));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE29ED4(MEMORY[0x277D84F90]);
}

uint64_t ContextProtoQueryDecorationOutput.unknownFields.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoQueryDecorationOutput(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v1 = sub_22BE23C98();

  return v2(v1);
}

uint64_t ContextProtoQueryDecorationOutput.unknownFields.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoQueryDecorationOutput(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v1 = sub_22BE33684();

  return v2(v1);
}

uint64_t ContextProtoQueryDecorationOutput.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoQueryDecorationOutput(v0);
  return sub_22BE18504();
}

void ContextProtoQueryDecorationInput.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoQueryDecorationInput(v1);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_22BFB3B84()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22BFB3C08()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t ContextProtoQueryDecorationInput.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoQueryDecorationInput(v0);
  return sub_22BE18504();
}

void ContextProtoDynamicEnumerationEntity.init()()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoDynamicEnumerationEntity(v0);
  sub_22BFBFC98();
  v1 = sub_22C2725A4();
  sub_22BE1AF78(v1);
  v2 = sub_22C272594();
  sub_22BE1AF78(v2);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t ContextProtoDynamicEnumerationEntity.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoDynamicEnumerationEntity(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoRetrievedTool.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoRetrievedTool(v1);
  v2 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  sub_22BE1AF78(v2);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  v4 = MEMORY[0x277D84F90];
  *(v0 + 8) = MEMORY[0x277D84F90];
  *(v0 + 16) = 0;
  *(v0 + 24) = v4;
  return result;
}

uint64_t ContextProtoRetrievedTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoRetrievedTool(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoRetrievedTool.Definition.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoRetrievedTool.Definition(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoUIControlTool.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoUIControlTool(v1);
  *v0 = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  sub_22BE3A230();
  v2 = sub_22C272674();
  sub_22BE1AF78(v2);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t ContextProtoUIControlTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoUIControlTool(v0);
  return sub_22BE18504();
}

void ContextProtoSampleInvocation.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for ContextProtoSampleInvocation(v1);
  sub_22BE37CF8(v2);
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t ContextProtoSampleInvocation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoSampleInvocation(v0);
  return sub_22BE18504();
}

uint64_t sub_22BFB4178(void (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  a1(0);
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  a2(0);
  a3(0);
  sub_22BE1A140();
  sub_22BE19DC4(v9, v10, v11, v12);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t ContextProtoToolRetrievalType.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoToolRetrievalType(v0);
  return sub_22BE18504();
}

void ContextProtoToolQuery.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for ContextProtoToolQuery(v1);
  sub_22BE37CF8(v2);
  sub_22BE412F4();
  *(v0 + 16) = MEMORY[0x277D84F90];
}

uint64_t ContextProtoToolQuery.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoToolQuery(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoToolQueryOutput.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoToolQueryOutput(v0);
  return sub_22BE18504();
}

void ContextProtoQueryDecorationToolRetrievalResponse.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(v1);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  v3 = MEMORY[0x277D84F90];
  *(v0 + 40) = MEMORY[0x277D84F90];
  *(v0 + 48) = v3;
}

uint64_t sub_22BFB4478()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22BFB44FC()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoSpanMatchedEntity.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoSpanMatchedEntity(v1);
  sub_22BFBFC98();
  v2 = sub_22C272594();
  sub_22BE1AF78(v2);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoSpanMatchedEntity.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoSpanMatchedEntity(v0);
  return sub_22BE18504();
}

void ContextProtoEntityMatch.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for ContextProtoEntityMatch(v1);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  sub_22BE1AF78(matched);
  sub_22BFBFC8C(*(v2 + 52));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  v0[2] = 0;
  v0[3] = v4;
  v0[4] = 0;
  v0[5] = 0;
  *(v0 + 45) = 0;
  v0[7] = 0;
  v0[8] = v4;
  v0[9] = 0;
  v0[10] = v4;
}

uint64_t ContextProtoEntityMatch.unknownFields.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoEntityMatch(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v1 = sub_22BE23C98();

  return v2(v1);
}

uint64_t ContextProtoEntityMatch.unknownFields.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoEntityMatch(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v1 = sub_22BE33684();

  return v2(v1);
}

uint64_t ContextProtoEntityMatch.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoEntityMatch(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoMatchProperties.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for ContextProtoMatchProperties(0);
  v1 = type metadata accessor for ContextProtoAliasTypes(0);
  sub_22BE1AF78(v1);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t ContextProtoMatchProperties.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoMatchProperties(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoAliasTypes.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoAliasTypes(v1);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoAliasTypes.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoAliasTypes(v0);
  return sub_22BE18504();
}

uint64_t sub_22BFB49F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFB194C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22BFB4A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFADEF8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22BFB4AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFB184C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22BFB4B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFB17F8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22BFB4BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFB17A4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22BFB4C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFB16FC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22BFB4CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFB1750();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22BFB4D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFADF4C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22BFB4DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFADFF4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22BFB4E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFADFA0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22BFB4EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFAE0F0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22BFB4F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFAE144();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ContextProtoRetrievedContext.value.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoRetrievedContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoRetrievedContext.relevance.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoRetrievedContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoRetrievedContext.metadata.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoRetrievedContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoRetrievedContext.typedValue.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoRetrievedContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoRetrievedContext.structuredContext.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoRetrievedContext(v0);
  return sub_22BFBFCA8();
}

uint64_t ContextProtoRetrievedContext.structuredContext.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoRetrievedContext(v0);
  return sub_22BE390BC();
}

uint64_t ContextProtoRetrievedContext.structuredContext.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoRetrievedContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoRetrievedContext.identifier.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoRetrievedContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoRetrievedContext.init(value:relevance:type:metadata:typedValue:structuredContext:identifier:)@<X0>(char *a1@<X2>, uint64_t a2@<X6>, uint64_t a3@<X7>, _BYTE *a4@<X8>)
{
  v27 = *a1;
  v5 = type metadata accessor for ContextProtoRetrievedContext(0);
  v6 = sub_22C272594();
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v6);
  type metadata accessor for ContextProtoConfidence(0);
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v13);
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BE1A140();
  sub_22BE19DC4(v14, v15, v16, v17);
  sub_22BE1A140();
  sub_22BE19DC4(v18, v19, v20, v6);
  type metadata accessor for ContextProtoStructuredContext(0);
  sub_22BE1A140();
  sub_22BE19DC4(v21, v22, v23, v24);
  v25 = &a4[*(v5 + 40)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  sub_22BE2343C();
  *a4 = v27;
  sub_22BE2343C();
  sub_22BE2343C();
  result = sub_22BE2343C();
  *v25 = a2;
  v25[1] = a3;
  return result;
}

void ContextProtoContextMetadata.entityID.setter()
{
  sub_22BE1A8A8();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
}

void ContextProtoContextMetadata.appBundleID.setter()
{
  sub_22BE1A8A8();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
}

uint64_t sub_22BFB5650()
{
  v0 = sub_22BE1C364();
  v1(v0);
  return sub_22BE182B4();
}

uint64_t sub_22BFB56B0()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t ContextProtoContextMetadata.saliency.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

uint64_t sub_22BFB5750()
{
  v0 = sub_22BE1C364();
  v1(v0);
  return sub_22BE182B4();
}

uint64_t sub_22BFB57B0()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t ContextProtoContextMetadata.onScreenBoundingBox.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

void ContextProtoContextMetadata.seq.setter()
{
  v0 = sub_22BE2021C();
  v1 = type metadata accessor for ContextProtoContextMetadata(v0);
  sub_22BE1AC84(*(v1 + 36));
}

uint64_t ContextProtoContextMetadata.seq.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

uint64_t sub_22BFB58DC(uint64_t (*a1)(void))
{
  a1(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t sub_22BFB592C()
{
  v3 = sub_22BE23708();
  v4(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContextProtoContextMetadata.groupID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoContextMetadata.isSelected.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ContextProtoContextMetadata(v2);
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t ContextProtoContextMetadata.isSelected.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoContextMetadata.isPrimary.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ContextProtoContextMetadata(v2);
  *(v1 + *(result + 48)) = v0;
  return result;
}

uint64_t ContextProtoContextMetadata.isPrimary.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoContextMetadata.screenDimensions.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BFBFCA8();
}

uint64_t ContextProtoContextMetadata.screenDimensions.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE390BC();
}

uint64_t ContextProtoContextMetadata.screenDimensions.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoContextMetadata.dataSource.getter()
{
  v2 = sub_22BE1A5E4();
  result = type metadata accessor for ContextProtoContextMetadata(v2);
  *v0 = *(v1 + *(result + 56));
  return result;
}

uint64_t ContextProtoContextMetadata.dataSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t ContextProtoContextMetadata.dataSource.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoContextMetadata.displayRepresentation.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoContextMetadata.appBundleIdentifier.getter()
{
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t ContextProtoContextMetadata.appBundleIdentifier.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for ContextProtoContextMetadata(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContextProtoContextMetadata.appBundleIdentifier.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoContextMetadata.screenSize.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BFBFCA8();
}

uint64_t ContextProtoContextMetadata.screenSize.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE390BC();
}

uint64_t ContextProtoContextMetadata.screenSize.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoContextMetadata.frame.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BFBFCA8();
}

uint64_t ContextProtoContextMetadata.frame.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE390BC();
}

uint64_t ContextProtoContextMetadata.frame.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

void ContextProtoContextMetadata.elementVisibility.setter()
{
  v0 = sub_22BE2021C();
  v1 = type metadata accessor for ContextProtoContextMetadata(v0);
  sub_22BE1AC84(*(v1 + 76));
}

uint64_t ContextProtoContextMetadata.elementVisibility.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoContextMetadata.processInstanceIdentifier.getter()
{
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t ContextProtoContextMetadata.processInstanceIdentifier.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for ContextProtoContextMetadata(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContextProtoContextMetadata.processInstanceIdentifier.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoContextMetadata(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoContextMetadata.init(entityID:appBundleID:saliency:onScreenSurroundingText:onScreenBoundingBox:seq:groupID:isSelected:isPrimary:screenDimensions:dataSource:displayRepresentation:appBundleIdentifier:screenSize:frame:elementVisibility:processInstanceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, void *a7@<X8>, char a8, uint64_t a9, uint64_t a10, char a11, char a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23)
{
  v60 = *a14;
  v25 = type metadata accessor for ContextProtoContextMetadata(0);
  v26 = sub_22BE3A230();
  v27 = type metadata accessor for ContextProtoConfidence(v26);
  sub_22BE1AF78(v27);
  v28 = type metadata accessor for ContextProtoBoundingBox(0);
  v29 = sub_22BE25B20();
  sub_22BE19DC4(v29, v30, v31, v28);
  v32 = a7 + v25[9];
  v53 = (a7 + v25[10]);
  v54 = v25[12];
  v55 = v25[11];
  sub_22BE1A140();
  sub_22BE19DC4(v33, v34, v35, v28);
  v36 = v25[14];
  *(a7 + v36) = 6;
  v52 = v36;
  type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  v37 = sub_22BE25B20();
  sub_22BE19DC4(v37, v38, v39, v40);
  v41 = (a7 + v25[16]);
  v42 = type metadata accessor for ContextProtoCGRect(0);
  sub_22BE1A140();
  sub_22BE19DC4(v43, v44, v45, v42);
  v46 = sub_22BE25B20();
  sub_22BE19DC4(v46, v47, v48, v42);
  v49 = a7 + v25[19];
  v50 = (a7 + v25[20]);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  a7[1] = a1;
  a7[2] = a2;
  a7[3] = a3;
  a7[4] = a4;
  sub_22BE2343C();
  *a7 = a5;
  sub_22BE28CA8();
  *v32 = a6;
  v32[8] = a8 & 1;
  *v53 = a9;
  v53[1] = a10;
  *(a7 + v55) = a11;
  *(a7 + v54) = a12;
  sub_22BE28CA8();
  *(a7 + v52) = v60;
  sub_22BE2343C();
  *v41 = a16;
  v41[1] = a17;
  sub_22BE28CA8();
  result = sub_22BE28CA8();
  *v49 = a20;
  v49[8] = a21 & 1;
  *v50 = a22;
  v50[1] = a23;
  return result;
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.init(title:subtitle:)()
{
  v5 = sub_22BE2597C();
  type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(v5);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  return result;
}

uint64_t ContextProtoBoundingBox.yCoordinate.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.width.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.init(xCoordinate:yCoordinate:width:height:)()
{
  v5 = sub_22BE2597C();
  type metadata accessor for ContextProtoBoundingBox(v5);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v4 = v3;
  *(v4 + 4) = BYTE4(v3) & 1;
  *(v4 + 8) = v2;
  *(v4 + 12) = BYTE4(v2) & 1;
  *(v4 + 16) = v1;
  *(v4 + 20) = BYTE4(v1) & 1;
  *(v4 + 24) = v0;
  *(v4 + 28) = BYTE4(v0) & 1;
  return result;
}

uint64_t sub_22BFB64C8()
{
  v0 = sub_22BE1C364();
  v1(v0);
  return sub_22BE182B4();
}

uint64_t sub_22BFB6528()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t ContextProtoSurroundingText.onScreenBoundingBox.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoSurroundingText(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoSurroundingText.init(text:onScreenBoundingBox:)()
{
  sub_22BFBFCC0();
  type metadata accessor for ContextProtoSurroundingText(0);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_22BE1A140();
  sub_22BE19DC4(v3, v4, v5, v6);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  return sub_22BE2343C();
}

uint64_t ContextProtoConfidence.init(score:bucket:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v5 = *a1;
  v6 = type metadata accessor for ContextProtoConfidence(0);
  result = sub_22BE37CF8(v6);
  *a2 = a3;
  *(a2 + 4) = v5;
  return result;
}

void static ContextProtoStructuredContextKind.== infix(_:_:)()
{
  sub_22BE19460();
  v43[6] = v2;
  v43[7] = v3;
  v4 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v43[5] = v6;
  v7 = sub_22BE183BC();
  v8 = type metadata accessor for ContextProtoStructedContextAppContext(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v43[4] = v10;
  v11 = sub_22BE183BC();
  v12 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(v11);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v43[3] = v14;
  v15 = sub_22BE183BC();
  v16 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(v15);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v43[2] = v18;
  v19 = sub_22BE183BC();
  v20 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(v19);
  v21 = sub_22BE19448(v20);
  MEMORY[0x28223BE20](v21);
  sub_22BE17A44();
  v43[1] = v22;
  v23 = sub_22BE183BC();
  v24 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v23);
  v25 = sub_22BE19448(v24);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  v43[0] = v26;
  v27 = sub_22BE183BC();
  type metadata accessor for ContextProtoStructuredContextKind(v27);
  sub_22BE18000();
  MEMORY[0x28223BE20](v28);
  sub_22BE183AC();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v43 - v33;
  MEMORY[0x28223BE20](v35);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v36);
  sub_22BE1B618();
  MEMORY[0x28223BE20](v37);
  v39 = v43 - v38;
  MEMORY[0x28223BE20](v40);
  v41 = sub_22BE5CE4C(&qword_27D90C820, &qword_22C294AE0);
  v42 = sub_22BE19448(v41);
  MEMORY[0x28223BE20](v42);
  sub_22BFBFCF8();
  sub_22BFBA5AC();
  sub_22BFBA5AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE18E40();
      sub_22BFBA5AC();
      if (sub_22BE48DF8() != 1)
      {
        goto LABEL_14;
      }

      sub_22BE3D6A0();
      sub_22BFB6E00();
      static ContextProtoStructuredContextIntelligenceCommandContext.== infix(_:_:)(v39);
      sub_22BFB6DAC();
      goto LABEL_16;
    case 2u:
      sub_22BE18E40();
      sub_22BFBA5AC();
      if (sub_22BE48DF8() != 2)
      {
        goto LABEL_14;
      }

      sub_22BE3D6A0();
      sub_22BFB6E00();
      static ContextProtoStructedContextAppInFocusContext.== infix(_:_:)(v1);
      sub_22BFB6DAC();
      goto LABEL_16;
    case 3u:
      sub_22BE18E40();
      sub_22BFBA5AC();
      if (sub_22BE48DF8() != 3)
      {
        goto LABEL_14;
      }

      sub_22BE3D6A0();
      sub_22BFB6E00();
      static ContextProtoStructuredContextOnScreenUIText.== infix(_:_:)();
      sub_22BFB6DAC();
      goto LABEL_16;
    case 4u:
      sub_22BE18E40();
      sub_22BFBA5AC();
      if (sub_22BE48DF8() != 4)
      {
        goto LABEL_14;
      }

      sub_22BE3D6A0();
      sub_22BFB6E00();
      static ContextProtoStructedContextAppContext.== infix(_:_:)(v34);
      sub_22BFB6DAC();
      goto LABEL_16;
    case 5u:
      sub_22BE18E40();
      sub_22BFBA5AC();
      if (sub_22BE48DF8() != 5)
      {
        goto LABEL_14;
      }

      sub_22BE3D6A0();
      sub_22BFB6E00();
      static ContextProtoStructedContextNowPlayingMediaItem.== infix(_:_:)(v31);
      sub_22BFB6DAC();
      goto LABEL_16;
    default:
      sub_22BE18E40();
      sub_22BFBA5AC();
      if (sub_22BE48DF8())
      {
LABEL_14:
        sub_22BFB6DAC();
        sub_22BE33928(v0, &qword_27D90C820, &qword_22C294AE0);
      }

      else
      {
        sub_22BE3D6A0();
        sub_22BFB6E00();
        static ContextProtoStructuredContextSiriRequestContext.== infix(_:_:)();
        sub_22BFB6DAC();
LABEL_16:
        sub_22BFB6DAC();
        sub_22BFB6DAC();
      }

      sub_22BE1AABC();
      return;
  }
}

uint64_t sub_22BFB6DAC()
{
  v1 = sub_22BE17BC4();
  v2(v1);
  sub_22BE18000();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22BFB6E00()
{
  sub_22BE18378();
  v1(0);
  sub_22BE1834C();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

void ContextProtoStructedContextNowPlayingMediaItem.appBundleID.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

void ContextProtoStructedContextNowPlayingMediaItem.contentIdentifier.setter()
{
  sub_22BE1A8A8();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

void ContextProtoStructedContextNowPlayingMediaItem.brandIdentifier.setter()
{
  sub_22BE1A8A8();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.iTunesStoreIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.iTunesStoreAlbumIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.iTunesStoreArtistIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

void ContextProtoStructedContextNowPlayingMediaItem.title.setter()
{
  sub_22BE1A8A8();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
}

void ContextProtoStructedContextNowPlayingMediaItem.albumName.setter()
{
  sub_22BE1A8A8();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
}

void ContextProtoStructedContextNowPlayingMediaItem.trackArtistName.setter()
{
  sub_22BE1A8A8();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
}

void ContextProtoStructedContextNowPlayingMediaItem.currentlyPlayingSongAdamID.setter()
{
  sub_22BE1A8A8();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
}

__n128 ContextProtoStructedContextNowPlayingMediaItem.init(appBundleID:contentIdentifier:brandIdentifier:iTunesStoreIdentifier:iTunesStoreAlbumIdentifier:iTunesStoreArtistIdentifier:playbackState:mediaType:mediaSubType:title:albumName:trackArtistName:currentlyPlayingSongAdamID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, char *a14, char *a15, char *a16, __int128 a17, __int128 a18, __n128 a19, uint64_t a20, uint64_t a21)
{
  v25 = *a14;
  v26 = *a15;
  v27 = *a16;
  *(a9 + 89) = 1031;
  *(a9 + 91) = 9;
  type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 89) = v25;
  *(a9 + 90) = v26;
  *(a9 + 91) = v27;
  *(a9 + 96) = a17;
  *(a9 + 112) = a18;
  result = a19;
  *(a9 + 128) = a19;
  *(a9 + 144) = a20;
  *(a9 + 152) = a21;
  return result;
}

void ContextProtoStructuredContextSiriRequestContext.inputOrigin.setter()
{
  sub_22BE1A8A8();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

void ContextProtoStructuredContextSiriRequestContext.responseMode.setter()
{
  sub_22BE1A8A8();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

uint64_t sub_22BFB76D8()
{
  v0 = sub_22BE1C364();
  v1(v0);
  return sub_22BE182B4();
}

uint64_t sub_22BFB7738()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.identifiedUser.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.encodedLocation.getter()
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v0 = sub_22BE19454();
  sub_22BF1C1E4(v0, v1);
  return sub_22BE19454();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.encodedLocation.setter()
{
  v3 = sub_22BE23708();
  v4 = v1 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v3) + 64);
  result = sub_22BF158B4(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v0;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.encodedLocation.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.countryCode.getter()
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.countryCode.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.countryCode.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.siriLocale.getter()
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.siriLocale.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.siriLocale.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.contentRestrictions.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BFBFCA8();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.contentRestrictions.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE390BC();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.contentRestrictions.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE18504();
}

void ContextProtoStructuredContextSiriRequestContext.uiScale.setter()
{
  v0 = sub_22BE2021C();
  v1 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  sub_22BE1AC84(*(v1 + 80));
}

uint64_t ContextProtoStructuredContextSiriRequestContext.uiScale.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.temperatureUnit.getter()
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.temperatureUnit.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.temperatureUnit.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.allowUserGeneratedContent.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v2);
  *(v1 + *(result + 88)) = v0;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.allowUserGeneratedContent.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.censorSpeech.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v2);
  *(v1 + *(result + 92)) = v0;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.censorSpeech.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.meCard.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BFBFCA8();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.meCard.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE390BC();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.meCard.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.deviceIdiom.getter()
{
  v2 = sub_22BE1A5E4();
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v2);
  *v0 = *(v1 + *(result + 100));
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.deviceIdiom.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 100)) = v2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.deviceIdiom.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.didPscfire.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v2);
  *(v1 + *(result + 104)) = v0;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.didPscfire.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.init(sessionID:requestID:inputOrigin:responseMode:isEyesFree:isMultiUser:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:deviceRestrictions:bargeInModes:identifiedUser:encodedLocation:countryCode:siriLocale:contentRestrictions:uiScale:temperatureUnit:allowUserGeneratedContent:censorSpeech:meCard:deviceIdiom:didPscfire:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, char a26, uint64_t a27, char *a28, char a29)
{
  v58 = *a28;
  v30 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  sub_22BE1A140();
  sub_22BE19DC4(v31, v32, v33, v34);
  v35 = a9 + v30[16];
  *v35 = xmmword_22C28E6A0;
  v36 = (a9 + v30[17]);
  v37 = (a9 + v30[18]);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  sub_22BE1A140();
  sub_22BE19DC4(v38, v39, v40, v41);
  v42 = a9 + v30[20];
  v43 = (a9 + v30[21]);
  v48 = v30[23];
  v49 = v30[22];
  v44 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  sub_22BE1AF78(v44);
  v45 = v30[25];
  *(a9 + v45) = 12;
  v47 = v30[26];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 81) = *(&a10 + 1);
  *a9 = a11;
  *(a9 + 8) = a12;
  sub_22BE2343C();
  sub_22BF158B4(*v35, *(v35 + 8));
  *v35 = a14;
  *(v35 + 8) = a15;
  *v36 = a16;
  v36[1] = a17;
  *v37 = a18;
  v37[1] = a19;
  sub_22BE2343C();
  *v42 = a21;
  *(v42 + 8) = a22 & 1;
  *v43 = a23;
  v43[1] = a24;
  *(a9 + v49) = a25;
  *(a9 + v48) = a26;
  result = sub_22BE2343C();
  *(a9 + v45) = v58;
  *(a9 + v47) = a29;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.tvRestriction.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.init(appRestriction:countryCode:movieRestriction:tvRestriction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a6 = a1;
  *(a6 + 4) = BYTE4(a1) & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 28) = BYTE4(a4) & 1;
  *(a6 + 32) = a5;
  *(a6 + 36) = BYTE4(a5) & 1;
  return result;
}

void ContextProtoStructuredContextSiriRequestContextUser.userID.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.init(userID:isOnlyUserInHome:classification:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_22BFBFCC0();
  v8 = *v7;
  *(v5 + 17) = 5;
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v5 = v4;
  *(v5 + 8) = v3;
  *(v5 + 16) = a3;
  *(v5 + 17) = v8;
  return result;
}

void ContextProtoStructuredContextSiriRequestContextMeCard.nickName.setter()
{
  sub_22BE1A8A8();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
}

void ContextProtoStructuredContextSiriRequestContextMeCard.fullName.setter()
{
  sub_22BE1A8A8();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
}

void ContextProtoStructuredContextSiriRequestContextMeCard.init(givenName:middleName:familyName:nickName:fullName:addresses:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_22BE22B9C();
  v34 = v32;
  v35 = v33;
  sub_22BE2F1B4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v31[2] = v29;
  v31[3] = v28;
  v31[4] = v27;
  v31[5] = v26;
  v31[6] = v25;
  v31[7] = v34;
  v31[8] = v35;
  v31[9] = a23;
  v31[10] = a24;
  *v31 = a25;
  v31[1] = v30;
  sub_22BE234D8();
}

void ContextProtoStructuredContextSiriRequestContextAddress.countryCode.setter()
{
  sub_22BE1A8A8();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
}

__n128 ContextProtoStructuredContextSiriRequestContextAddress.init(label:street:city:state:postalCode:countryCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, __n128 a9, __n128 a10, unint64_t a11, unint64_t a12)
{
  sub_22BE2F1B4();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v18->n128_u64[0] = v17;
  v18->n128_u64[1] = v16;
  v18[1].n128_u64[0] = v15;
  v18[1].n128_u64[1] = v14;
  v18[2].n128_u64[0] = v13;
  v18[2].n128_u64[1] = v12;
  v18[3].n128_u64[0] = a7;
  v18[3].n128_u64[1] = a8;
  result = a10;
  v18[4] = a10;
  v18[5].n128_u64[0] = a11;
  v18[5].n128_u64[1] = a12;
  return result;
}

void ContextProtoStructuredContextIntelligenceCommandContext.init(identifier:title:standaloneTitle:embeddingDescription:isDisabled:menuHierarchyComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  sub_22BE22B9C();
  v34 = v31;
  v33 = v32;
  sub_22BE2F1B4();
  type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v30 = v29;
  *(v30 + 8) = v28;
  *(v30 + 40) = v26;
  *(v30 + 48) = v25;
  *(v30 + 56) = v24;
  *(v30 + 64) = v33;
  *(v30 + 72) = v34;
  *(v30 + 16) = a23;
  *(v30 + 24) = a24;
  *(v30 + 32) = v27;
  sub_22BE234D8();
}

uint64_t ContextProtoStructedContextAppInFocusContext.init(bundleID:appName:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_22BE3C3C8();
  type metadata accessor for ContextProtoStructedContextAppInFocusContext(v13);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v10 = v9;
  v10[1] = v8;
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = a5;
  v10[5] = a6;
  return result;
}

void ContextProtoStructedContextAppContext.category.setter()
{
  sub_22BE1A8A8();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
}

uint64_t ContextProtoStructedContextAppContext.init(bundleID:appName:category:isActive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_22BE2C6BC();
  type metadata accessor for ContextProtoStructedContextAppContext(0);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v11 = v10;
  *(v11 + 8) = v9;
  *(v11 + 24) = v8;
  *(v11 + 32) = v7;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 16) = a7;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUIText.boundingBox.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextOnScreenUIText(v0);
  return sub_22BE18504();
}

uint64_t sub_22BFB8AF8()
{
  v0 = sub_22BE1C364();
  v1(v0);
  return sub_22BE182B4();
}

uint64_t sub_22BFB8B58()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t ContextProtoStructuredContextOnScreenUIText.uiMetadata.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextOnScreenUIText(v0);
  return sub_22BE18504();
}

void ContextProtoStructuredContextOnScreenUIText.fractionVisible.setter()
{
  v0 = sub_22BE2021C();
  v1 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(v0);
  sub_22BE1AC84(*(v1 + 28));
}

uint64_t ContextProtoStructuredContextOnScreenUIText.fractionVisible.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextOnScreenUIText(v0);
  return sub_22BE18504();
}

void ContextProtoStructuredContextOnScreenUIText.init(text:boundingBox:uiMetadata:fractionVisible:)()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v7 = sub_22BE3C3C8();
  v8 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(v7);
  type metadata accessor for ContextProtoCGRect(0);
  sub_22BE1A140();
  sub_22BE19DC4(v9, v10, v11, v12);
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  sub_22BE1A140();
  sub_22BE19DC4(v13, v14, v15, v16);
  v17 = v2 + *(v8 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  sub_22BE2343C();
  sub_22BE2343C();
  *v17 = v6;
  v17[8] = v4 & 1;
  sub_22BE1AABC();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.boundingBox.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(v0);
  return sub_22BE18504();
}

void ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.fractionVisible.setter()
{
  v0 = sub_22BE2021C();
  v1 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(v0);
  sub_22BE1AC84(*(v1 + 24));
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.fractionVisible.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.appBundleID.getter()
{
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.appBundleID.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.appBundleID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(v0);
  return sub_22BE18504();
}

void ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init(isActive:boundingBox:fractionVisible:appBundleID:)()
{
  sub_22BE22B9C();
  v18 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  type metadata accessor for ContextProtoCGRect(0);
  sub_22BE1A140();
  sub_22BE19DC4(v12, v13, v14, v15);
  v16 = &v10[*(v11 + 24)];
  v17 = &v10[*(v11 + 28)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v10 = v8;
  sub_22BE2343C();
  *v16 = v6;
  v16[8] = v4 & 1;
  *v17 = v2;
  v17[1] = v18;
  sub_22BE234D8();
}

uint64_t ContextProtoCGRect.size.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoCGRect(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoCGRect.init(origin:size:)()
{
  v0 = sub_22BE28634();
  type metadata accessor for ContextProtoCGPoint(v0);
  sub_22BE1A140();
  sub_22BE19DC4(v1, v2, v3, v4);
  type metadata accessor for ContextProtoCGRect(0);
  v5 = sub_22BFBFCD0();
  type metadata accessor for ContextProtoCGSize(v5);
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v9);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  return sub_22BE2343C();
}

uint64_t sub_22BFB9320(double a1, double a2)
{
  v5 = sub_22BE1A5E4();
  v7 = v6(v5);
  result = sub_22BE37CF8(v7);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.toolRetrievalResponse.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoVersionedQueryDecorationOutput(v0);
  return sub_22BFBFCA8();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.toolRetrievalResponse.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoVersionedQueryDecorationOutput(v0);
  return sub_22BE390BC();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.toolRetrievalResponse.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoVersionedQueryDecorationOutput(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.deviceIdsID.getter()
{
  type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.deviceIdsID.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for ContextProtoVersionedQueryDecorationOutput(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.deviceIdsID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoVersionedQueryDecorationOutput(v0);
  return sub_22BE18504();
}

uint64_t sub_22BFB95A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFB16A8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void ContextProtoVersionedQueryDecorationOutput.init(version:spans:spansIsPresent:toolRetrievalResponse:dynamicEnumerationEntities:dynamicEnumerationEntitiesIsPresent:context:contextIsPresent:deviceIdsID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE22B9C();
  v43 = v24;
  v42 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_22BE1A140();
  sub_22BE19DC4(v37, v38, v39, v40);
  v41 = (v35 + *(DecorationOutput + 48));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v35 = v33;
  *(v35 + 8) = v31;
  sub_22BE2343C();
  *(v35 + 16) = v29;
  *(v35 + 24) = v27;
  *(v35 + 32) = v42;
  *(v35 + 40) = v43;
  *v41 = a23;
  v41[1] = a24;
  sub_22BE234D8();
}

uint64_t ContextProtoQueryDecorationOutput.toolRetrievalResponse.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoQueryDecorationOutput(v0);
  return sub_22BFBFCA8();
}

uint64_t ContextProtoQueryDecorationOutput.toolRetrievalResponse.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoQueryDecorationOutput(v0);
  return sub_22BE390BC();
}

uint64_t ContextProtoQueryDecorationOutput.toolRetrievalResponse.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoQueryDecorationOutput(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoQueryDecorationOutput.deviceIdsID.getter()
{
  type metadata accessor for ContextProtoQueryDecorationOutput(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t ContextProtoQueryDecorationOutput.deviceIdsID.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for ContextProtoQueryDecorationOutput(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.deviceIdsID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoQueryDecorationOutput(v0);
  return sub_22BE18504();
}

void ContextProtoQueryDecorationOutput.init(spans:spansIsPresent:toolRetrievalResponse:dynamicEnumerationEntities:dynamicEnumerationEntitiesIsPresent:context:contextIsPresent:deviceIdsID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE22B9C();
  v44 = v23;
  v43 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_22BE1A140();
  sub_22BE19DC4(v38, v39, v40, v41);
  v42 = (v36 + *(DecorationOutput + 44));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v36 = v34;
  *(v36 + 8) = v32;
  sub_22BE2343C();
  *(v36 + 16) = v30;
  *(v36 + 24) = v28;
  *(v36 + 32) = v26;
  *(v36 + 40) = v43;
  *v42 = v44;
  v42[1] = a23;
  sub_22BE234D8();
}

uint64_t ContextProtoQueryDecorationInput.init(query:requestID:caller:contextID:loggingSalt:servicesExecuted:deviceIdsID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE2C6BC();
  v19 = *v18;
  type metadata accessor for ContextProtoQueryDecorationInput(0);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v16 = v15;
  *(v16 + 8) = v14;
  *(v16 + 16) = v19;
  *(v16 + 40) = v12;
  *(v16 + 48) = a6;
  *(v16 + 56) = a7;
  *(v16 + 64) = a8;
  *(v16 + 24) = a10;
  *(v16 + 32) = v13;
  *(v16 + 72) = a9;
  *(v16 + 80) = a11;
  *(v16 + 88) = a12;
  return result;
}

uint64_t ContextProtoDynamicEnumerationEntity.parameterTypeInstance.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoDynamicEnumerationEntity(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoDynamicEnumerationEntity.typedValue.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoDynamicEnumerationEntity(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoDynamicEnumerationEntity.init(identifier:parameterTypeInstance:typedValue:)()
{
  v3 = sub_22BE2597C();
  type metadata accessor for ContextProtoDynamicEnumerationEntity(v3);
  sub_22C2725A4();
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  sub_22C272594();
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v11);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  sub_22BE2343C();
  return sub_22BE2343C();
}

uint64_t ContextProtoRetrievedTool.definition.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoRetrievedTool(v0);
  return sub_22BE18504();
}

uint64_t sub_22BFB9E7C@<X0>(uint64_t *a1@<X8>)
{
  result = ContextProtoRetrievedTool.AppSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BFB9EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFAE09C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22BFB9F24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFAE048();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void static ContextProtoRetrievedTool.ContextProtoDefinitionEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v61 = v4;
  v62 = v5;
  v6 = type metadata accessor for ContextProtoUIControlTool(0);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v56 = v8;
  sub_22BE183BC();
  sub_22C272634();
  sub_22BE179D8();
  v57 = v10;
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v55 = v11;
  sub_22BE183BC();
  sub_22C272674();
  sub_22BE179D8();
  v59 = v13;
  v60 = v12;
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  v54 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v53 = &v53 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v21);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  MEMORY[0x28223BE20](v26);
  sub_22BE1B618();
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  v30 = sub_22BE5CE4C(&qword_27D90C828, &unk_22C294B40);
  v31 = sub_22BE19448(v30);
  MEMORY[0x28223BE20](v31);
  sub_22BFBFCF8();
  sub_22BFBA5AC();
  sub_22BFBA5AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1BFB4();
      sub_22BFBA5AC();
      if (sub_22BE36558() == 1)
      {
        v45 = v57;
        v44 = v58;
        v46 = v55;
        (*(v57 + 32))(v55, v0 + v3, v58);
        sub_22C272624();
        v47 = *(v45 + 8);
        v47(v46, v44);
        v47(v2, v44);
        goto LABEL_21;
      }

      v48 = v58;
      v32 = *(v57 + 8);
      v33 = v2;
      goto LABEL_17;
    case 2u:
      sub_22BE1BFB4();
      sub_22BFBA5AC();
      if (sub_22BE36558() == 2)
      {
        v35 = v59;
        v34 = v60;
        sub_22BE2BBEC();
        v36 = v53;
        v37(v53);
        sub_22C272654();
        v38 = *(v35 + 8);
        v38(v36, v34);
        v38(v25, v34);
        goto LABEL_21;
      }

      v32 = *(v59 + 8);
      v33 = v25;
      goto LABEL_15;
    case 3u:
      sub_22BE1BFB4();
      sub_22BFBA5AC();
      if (sub_22BE36558() == 3)
      {
        v40 = v59;
        v39 = v60;
        sub_22BE2BBEC();
        v41 = v54;
        v42(v54);
        sub_22C272654();
        v43 = *(v40 + 8);
        v43(v41, v39);
        v43(v1, v39);
        goto LABEL_21;
      }

      v32 = *(v59 + 8);
      v33 = v1;
      goto LABEL_15;
    case 4u:
      sub_22BE1BFB4();
      sub_22BFBA5AC();
      if (sub_22BE36558() == 4)
      {
        sub_22BE3D6A0();
        sub_22BFB6E00();
        static ContextProtoUIControlTool.== infix(_:_:)();
        sub_22BFB6DAC();
        sub_22BFB6DAC();
        goto LABEL_21;
      }

      sub_22BFB6DAC();
      goto LABEL_18;
    default:
      sub_22BE1BFB4();
      sub_22BFBA5AC();
      if (sub_22BE36558())
      {
        v32 = *(v59 + 8);
        v33 = v29;
LABEL_15:
        v48 = v60;
LABEL_17:
        v32(v33, v48);
LABEL_18:
        sub_22BE33928(v0, &qword_27D90C828, &unk_22C294B40);
      }

      else
      {
        v50 = v59;
        v49 = v60;
        sub_22BE2BBEC();
        v51(v20);
        sub_22C272654();
        v52 = *(v50 + 8);
        v52(v20, v49);
        v52(v29, v49);
LABEL_21:
        sub_22BFB6DAC();
      }

      sub_22BE1AABC();
      return;
  }
}

uint64_t sub_22BFBA5AC()
{
  sub_22BE18378();
  v1(0);
  sub_22BE1834C();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

uint64_t ContextProtoRetrievedTool.init(definition:similarityScore:sampleInvocations:stage:source:)@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, float a5@<S0>)
{
  v9 = *a2;
  type metadata accessor for ContextProtoRetrievedTool(0);
  type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v13);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  result = sub_22BE2343C();
  *a4 = a5;
  *(a4 + 8) = a1;
  *(a4 + 16) = v9;
  *(a4 + 24) = a3;
  return result;
}

uint64_t ContextProtoUIControlTool.toolDef.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoUIControlTool(v0);
  return sub_22BE18504();
}

void ContextProtoUIControlTool.init(appBundleID:command:commandID:toolDef:)()
{
  sub_22BE19460();
  v6 = v5;
  v8 = v7;
  sub_22BE2C6BC();
  type metadata accessor for ContextProtoUIControlTool(0);
  sub_22C272674();
  sub_22BE1A140();
  sub_22BE19DC4(v9, v10, v11, v12);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  v4[4] = v8;
  v4[5] = v6;
  sub_22BE2343C();
  sub_22BE1AABC();
}

uint64_t ContextProtoSampleInvocation.init(invocationString:score:)(float a1)
{
  v5 = sub_22BE28634();
  type metadata accessor for ContextProtoSampleInvocation(v5);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v2;
  *(v3 + 8) = v1;
  *(v3 + 16) = a1;
  return result;
}

uint64_t ContextProtoToolRetrievalType.definition.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoToolRetrievalType(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoToolRetrievalType.init(identifier:definition:)()
{
  sub_22BE28634();
  sub_22C2725C4();
  sub_22BE1A140();
  sub_22BE19DC4(v0, v1, v2, v3);
  type metadata accessor for ContextProtoToolRetrievalType(0);
  sub_22BFBFCD0();
  sub_22C2725B4();
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  return sub_22BE2343C();
}

uint64_t ContextProtoToolQuery.init(query:appBundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BFBFCC0();
  type metadata accessor for ContextProtoToolQuery(0);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v5 = v4;
  v5[1] = v3;
  v5[2] = a3;
  return result;
}

uint64_t sub_22BFBABDC(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  a3(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  return sub_22BE2343C();
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_22BE3C3C8();
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(v15);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v11 = v10;
  *(v11 + 8) = v9;
  *(v11 + 16) = v8;
  *(v11 + 24) = v7;
  *(v11 + 32) = a1;
  *(v11 + 40) = a6;
  *(v11 + 48) = a7;
  return result;
}

uint64_t ContextProtoSpanMatchedEntity.typedValue.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoSpanMatchedEntity(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoSpanMatchedEntity.init(typedValue:matchMetadata:)()
{
  v2 = sub_22BE28634();
  type metadata accessor for ContextProtoSpanMatchedEntity(v2);
  sub_22BFBFCD0();
  sub_22C272594();
  sub_22BE1A140();
  sub_22BE19DC4(v3, v4, v5, v6);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  result = sub_22BE2343C();
  *v1 = v0;
  return result;
}

void ContextProtoEntityMatch.entityName.setter()
{
  sub_22BE1A8A8();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

void ContextProtoEntityMatch.originAppBundleID.setter()
{
  sub_22BE1A8A8();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
}

void ContextProtoEntityMatch.userUtterance.setter()
{
  sub_22BE1A8A8();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
}

uint64_t ContextProtoEntityMatch.matchProperties.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ContextProtoEntityMatch(v0);
  return sub_22BFBFCA8();
}

uint64_t ContextProtoEntityMatch.matchProperties.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoEntityMatch(v0);
  return sub_22BE390BC();
}

uint64_t ContextProtoEntityMatch.matchProperties.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoEntityMatch(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoEntityMatch.identifier.getter()
{
  type metadata accessor for ContextProtoEntityMatch(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t ContextProtoEntityMatch.identifier.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for ContextProtoEntityMatch(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContextProtoEntityMatch.identifier.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoEntityMatch(v0);
  return sub_22BE18504();
}

__n128 ContextProtoEntityMatch.init(sourceItemIdentifier:entityName:startIndex:endIndex:matchScore:matchProperties:matcherType:originAppBundleID:userUtterance:identifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X7>, uint64_t a8@<X8>, float a9@<S0>, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = *a7;
  v22 = type metadata accessor for ContextProtoEntityMatch(0);
  type metadata accessor for ContextProtoMatchProperties(0);
  sub_22BE1A140();
  sub_22BE19DC4(v23, v24, v25, v26);
  v27 = (a8 + *(v22 + 52));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a9;
  sub_22BE2343C();
  *(a8 + 52) = v21;
  result = a10;
  *(a8 + 56) = a10;
  *(a8 + 72) = a11;
  *(a8 + 80) = a12;
  *v27 = a13;
  v27[1] = a14;
  return result;
}

uint64_t ContextProtoMatchProperties.maxTokenCount.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoMatchProperties.matchedTokenCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ContextProtoMatchProperties.matchedAliasTypes.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ContextProtoMatchProperties(v0);
  return sub_22BE18504();
}

uint64_t ContextProtoMatchProperties.init(maxTokenCount:matchedTokenCount:matchedAliasTypes:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for ContextProtoMatchProperties(0);
  type metadata accessor for ContextProtoAliasTypes(0);
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v13);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return sub_22BE2343C();
}

uint64_t ContextProtoAliasTypes.init(options:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for ContextProtoAliasTypes(0);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a2 = a1;
  return result;
}

unint64_t sub_22BFBB5B4()
{
  result = qword_27D90C830;
  if (!qword_27D90C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C830);
  }

  return result;
}

unint64_t sub_22BFBB63C()
{
  result = qword_27D90C848;
  if (!qword_27D90C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C848);
  }

  return result;
}

unint64_t sub_22BFBB6C4()
{
  result = qword_27D90C860;
  if (!qword_27D90C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C860);
  }

  return result;
}

unint64_t sub_22BFBB74C()
{
  result = qword_27D90C878;
  if (!qword_27D90C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C878);
  }

  return result;
}

unint64_t sub_22BFBB7D4()
{
  result = qword_27D90C890;
  if (!qword_27D90C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C890);
  }

  return result;
}

unint64_t sub_22BFBB85C()
{
  result = qword_27D90C8A8;
  if (!qword_27D90C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C8A8);
  }

  return result;
}

unint64_t sub_22BFBB8E4()
{
  result = qword_27D90C8C0;
  if (!qword_27D90C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C8C0);
  }

  return result;
}

unint64_t sub_22BFBB96C()
{
  result = qword_27D90C8D8;
  if (!qword_27D90C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C8D8);
  }

  return result;
}

unint64_t sub_22BFBB9F4()
{
  result = qword_27D90C8F0;
  if (!qword_27D90C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C8F0);
  }

  return result;
}

unint64_t sub_22BFBBA7C()
{
  result = qword_27D90C908;
  if (!qword_27D90C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C908);
  }

  return result;
}

unint64_t sub_22BFBBB04()
{
  result = qword_27D90C920;
  if (!qword_27D90C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C920);
  }

  return result;
}

unint64_t sub_22BFBBB8C()
{
  result = qword_27D90C938;
  if (!qword_27D90C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C938);
  }

  return result;
}

unint64_t sub_22BFBBC14()
{
  result = qword_27D90C950;
  if (!qword_27D90C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C950);
  }

  return result;
}

unint64_t sub_22BFBBC9C()
{
  result = qword_27D90C968;
  if (!qword_27D90C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C968);
  }

  return result;
}

unint64_t sub_22BFBBD24()
{
  result = qword_27D90C980;
  if (!qword_27D90C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90C980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextProtoContextType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContextProtoContextType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaSubType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextProtoStructuredContextSiriRequestContextUserClassification(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ContextProtoStructuredContextSiriRequestContextDeviceIdiom(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BFBC1E0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
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
      return sub_22BE39E30((*a1 | (v4 << 8)) - 6);
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

      return sub_22BE39E30((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BE39E30((*a1 | (v4 << 8)) - 6);
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

  return sub_22BE39E30(v8);
}

_BYTE *sub_22BFBC264(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BFBC340(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BFBC40C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_22BE39E30((*a1 | (v4 << 8)) - 7);
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

      return sub_22BE39E30((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BE39E30((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BE39E30(v8);
}

_BYTE *sub_22BFBC490(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BFBC584(uint64_t a1)
{
  sub_22BFBC77C(319, &qword_28106DF48, MEMORY[0x277D727E0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22BFBC77C(319, qword_281079E90, type metadata accessor for ContextProtoConfidence, MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_22BFBC77C(319, qword_28107F0F0, type metadata accessor for ContextProtoContextMetadata, MEMORY[0x277D83D88]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_22BFBC77C(319, qword_28107EB20, type metadata accessor for ContextProtoStructuredContext, MEMORY[0x277D83D88]);
      v2 = v7;
      if (v8 <= 0x3F)
      {
        sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          v2 = sub_22C2704B4();
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_22BFBC77C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22BFBC808(uint64_t a1)
{
  sub_22BFBC77C(319, &qword_28106DD18, type metadata accessor for ContextProtoSurroundingText, MEMORY[0x277D83940]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_22BFBC77C(319, qword_281079E90, type metadata accessor for ContextProtoConfidence, MEMORY[0x277D83D88]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_22BFBC77C(319, qword_281079698, type metadata accessor for ContextProtoBoundingBox, MEMORY[0x277D83D88]);
      if (v9 > 0x3F)
      {
        return v8;
      }

      sub_22BFBF9AC(319, &qword_28106DBC8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v11 > 0x3F)
      {
        return v10;
      }

      sub_22BFBF9AC(319, &qword_28106DBD0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v12 > 0x3F)
      {
        return v6;
      }

      sub_22BFBF9AC(319, &qword_28107F170, &type metadata for ContextProtoContextDataSource, MEMORY[0x277D83D88]);
      if (v13 > 0x3F)
      {
        return v6;
      }

      sub_22BFBC77C(319, qword_28106FCD0, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, MEMORY[0x277D83D88]);
      if (v14 > 0x3F)
      {
        return v6;
      }

      sub_22BFBC77C(319, qword_28107B438, type metadata accessor for ContextProtoCGRect, MEMORY[0x277D83D88]);
      if (v15 > 0x3F)
      {
        return v6;
      }

      else
      {
        v2 = sub_22C2704B4();
        if (v16 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_22BFBCB4C(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C2704B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BFBCC1C(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DB90, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C2704B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BFBCCF0(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22BFBC77C(319, qword_281079698, type metadata accessor for ContextProtoBoundingBox, MEMORY[0x277D83D88]);
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

uint64_t sub_22BFBCE8C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ContextProtoStructedContextAppInFocusContext(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ContextProtoStructedContextAppContext(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22BFBCF78(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22BFBF9AC(319, &qword_28106DAD8, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_22BFBF9AC(319, qword_28107ED58, &type metadata for ContextProtoStructedContextNowPlayingMediaRemotePlaybackState, MEMORY[0x277D83D88]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_22BFBF9AC(319, qword_28107ECB8, &type metadata for ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaType, MEMORY[0x277D83D88]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_22BFBF9AC(319, &qword_28107ECB0, &type metadata for ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaSubType, MEMORY[0x277D83D88]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = sub_22C2704B4();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_22BFBD16C(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DBF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_22BFBF9AC(319, &qword_28106DBD0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_22BFBC77C(319, qword_28107E648, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser, MEMORY[0x277D83D88]);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_22BFBF9AC(319, &qword_28107F340, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v10 > 0x3F)
        {
          return v8;
        }

        sub_22BFBC77C(319, qword_28107E6F0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction, MEMORY[0x277D83D88]);
        if (v11 > 0x3F)
        {
          return v8;
        }

        sub_22BFBF9AC(319, &qword_28106DBC8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v12 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_22BFBC77C(319, qword_28107E598, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard, MEMORY[0x277D83D88]);
          v2 = v13;
          if (v14 <= 0x3F)
          {
            sub_22BFBF9AC(319, qword_28107E740, &type metadata for ContextProtoStructuredContextSiriRequestContextDeviceIdiom, MEMORY[0x277D83D88]);
            v2 = v15;
            if (v16 <= 0x3F)
            {
              v2 = sub_22C2704B4();
              if (v17 <= 0x3F)
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

uint64_t sub_22BFBD498(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DAE0, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_22BFBD5C4(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22BFBF9AC(319, &qword_28106DBD0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22BFBF9AC(319, qword_28107E690, &type metadata for ContextProtoStructuredContextSiriRequestContextUserClassification, MEMORY[0x277D83D88]);
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

void sub_22BFBD70C(uint64_t a1)
{
  sub_22BFBC77C(319, &qword_28106DD98, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress, MEMORY[0x277D83940]);
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

void sub_22BFBD830(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C2704B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BFBD90C(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DBF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
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

void sub_22BFBDA30(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C2704B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BFBDB08(uint64_t a1)
{
  sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C2704B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BFBDBE8(uint64_t a1)
{
  sub_22BFBC77C(319, qword_28107B438, type metadata accessor for ContextProtoCGRect, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22BFBC77C(319, qword_28107E9E8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22BFBF9AC(319, &qword_28106DBC8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
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

void sub_22BFBDDC8(uint64_t a1)
{
  sub_22BFBC77C(319, qword_28107B438, type metadata accessor for ContextProtoCGRect, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22BFBF9AC(319, &qword_28106DBC8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22BFBF9AC(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_22BFBDF2C(uint64_t a1)
{
  sub_22BFBC77C(319, qword_28107B088, type metadata accessor for ContextProtoCGPoint, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22BFBC77C(319, qword_28107B398, type metadata accessor for ContextProtoCGSize, MEMORY[0x277D83D88]);
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

uint64_t sub_22BFBE064()
{
  sub_22BE18378();
  v3 = *(v2 + 24);
  v4 = sub_22C2704B4();

  return sub_22BE1AEA8(v1 + v3, v0, v4);
}

uint64_t sub_22BFBE0C8()
{
  sub_22BE18378();
  sub_22C2704B4();
  sub_22BE38A34();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

void sub_22BFBE140(uint64_t a1)
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

_BYTE *storeEnumTagSinglePayload for ContextProtoVersionedQueryDecorationOutput.Version(_BYTE *result, int a2, int a3)
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