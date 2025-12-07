uint64_t sub_22C06909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911290, &qword_22C2ADFC0);
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
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_22BE33928(v18, &qword_27D911290, &qword_22C2ADFC0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910530, type metadata accessor for TranscriptProtoPayloadExpression, &protocol conformance descriptor for TranscriptProtoPayloadExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911290, &qword_22C2ADFC0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911290, &qword_22C2ADFC0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911290, &qword_22C2ADFC0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911290, &qword_22C2ADFC0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C069594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoFormatExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911298, &qword_22C2ADFC8);
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
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_22BE33928(v18, &qword_27D911298, &qword_22C2ADFC8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910548, type metadata accessor for TranscriptProtoFormatExpression, &protocol conformance descriptor for TranscriptProtoFormatExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911298, &qword_22C2ADFC8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911298, &qword_22C2ADFC8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911298, &qword_22C2ADFC8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911298, &qword_22C2ADFC8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C069A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(0);
  MEMORY[0x28223BE20](ContextExpression);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9112A0, &qword_22C2ADFD0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, ContextExpression);
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
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_22BE33928(v18, &qword_27D9112A0, &qword_22C2ADFD0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, ContextExpression);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910358, type metadata accessor for TranscriptProtoRetrieveContextExpression, &protocol conformance descriptor for TranscriptProtoRetrieveContextExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9112A0, &qword_22C2ADFD0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, ContextExpression) == 1)
  {
    sub_22BE33928(v18, &qword_27D9112A0, &qword_22C2ADFD0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9112A0, &qword_22C2ADFD0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9112A0, &qword_22C2ADFD0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C069F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
  MEMORY[0x28223BE20](SpansExpression);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9112A8, &qword_22C2ADFD8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, SpansExpression);
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
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_22BE33928(v18, &qword_27D9112A8, &qword_22C2ADFD8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, SpansExpression);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910370, type metadata accessor for TranscriptProtoRetrieveSpansExpression, &protocol conformance descriptor for TranscriptProtoRetrieveSpansExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9112A8, &qword_22C2ADFD8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, SpansExpression) == 1)
  {
    sub_22BE33928(v18, &qword_27D9112A8, &qword_22C2ADFD8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9112A8, &qword_22C2ADFD8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9112A8, &qword_22C2ADFD8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C06A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
  MEMORY[0x28223BE20](ToolsExpression);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9112B0, &qword_22C2ADFE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, ToolsExpression);
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
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_22BE33928(v18, &qword_27D9112B0, &qword_22C2ADFE0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, ToolsExpression);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910388, type metadata accessor for TranscriptProtoRetrieveToolsExpression, &protocol conformance descriptor for TranscriptProtoRetrieveToolsExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9112B0, &qword_22C2ADFE0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, ToolsExpression) == 1)
  {
    sub_22BE33928(v18, &qword_27D9112B0, &qword_22C2ADFE0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9112B0, &qword_22C2ADFE0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9112B0, &qword_22C2ADFE0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C06A974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9112B8, &qword_22C2ADFE8);
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
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_22BE33928(v18, &qword_27D9112B8, &qword_22C2ADFE8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910260, type metadata accessor for TranscriptProtoSiriXFallbackExpression, &protocol conformance descriptor for TranscriptProtoSiriXFallbackExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9112B8, &qword_22C2ADFE8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9112B8, &qword_22C2ADFE8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9112B8, &qword_22C2ADFE8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9112B8, &qword_22C2ADFE8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C06AE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9112C0, &qword_22C2ADFF0);
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
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_22BE33928(v18, &qword_27D9112C0, &qword_22C2ADFF0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910560, type metadata accessor for TranscriptProtoUserConfirmExpression, &protocol conformance descriptor for TranscriptProtoUserConfirmExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9112C0, &qword_22C2ADFF0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9112C0, &qword_22C2ADFF0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9112C0, &qword_22C2ADFF0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9112C0, &qword_22C2ADFF0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C06B364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9112C8, &qword_22C2ADFF8);
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
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_22BE33928(v18, &qword_27D9112C8, &qword_22C2ADFF8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910578, type metadata accessor for TranscriptProtoUserDisambiguateExpression, &protocol conformance descriptor for TranscriptProtoUserDisambiguateExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9112C8, &qword_22C2ADFF8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9112C8, &qword_22C2ADFF8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9112C8, &qword_22C2ADFF8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9112C8, &qword_22C2ADFF8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C06B85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9112D0, &qword_22C2AE000);
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
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_22BE33928(v18, &qword_27D9112D0, &qword_22C2AE000);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910590, type metadata accessor for TranscriptProtoAnswerSynthesisExpression, &protocol conformance descriptor for TranscriptProtoAnswerSynthesisExpression);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9112D0, &qword_22C2AE000);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9112D0, &qword_22C2AE000);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9112D0, &qword_22C2AE000);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9112D0, &qword_22C2AE000);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoExpression.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  sub_22BE2B890(v5);
  if (!v6)
  {
    sub_22BE1AEE4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v63 = sub_22BE17D78();
        sub_22C06C1CC(v63, v64, v65, v66);
        goto LABEL_25;
      case 2u:
        v47 = sub_22BE17D78();
        sub_22C06C3D4(v47, v48, v49, v50);
        goto LABEL_25;
      case 3u:
        v55 = sub_22BE17D78();
        sub_22C06C5DC(v55, v56, v57, v58);
        goto LABEL_25;
      case 4u:
        v27 = sub_22BE17D78();
        sub_22C06C7E4(v27, v28, v29, v30);
        goto LABEL_25;
      case 5u:
        v79 = sub_22BE17D78();
        sub_22C06C9EC(v79, v80, v81, v82);
        goto LABEL_25;
      case 6u:
        v91 = sub_22BE17D78();
        sub_22C06CBF4(v91, v92, v93, v94);
        goto LABEL_25;
      case 7u:
        v59 = sub_22BE17D78();
        sub_22C06CDFC(v59, v60, v61, v62);
        goto LABEL_25;
      case 8u:
        v103 = sub_22BE17D78();
        sub_22C06D004(v103, v104, v105, v106);
        goto LABEL_37;
      case 9u:
        v35 = sub_22BE17D78();
        sub_22C06D20C(v35, v36, v37, v38);
        goto LABEL_37;
      case 0xAu:
        v99 = sub_22BE17D78();
        sub_22C06D414(v99, v100, v101, v102);
        goto LABEL_37;
      case 0xBu:
        v23 = sub_22BE17D78();
        sub_22C06EC74(v23, v24, v25, v26);
        goto LABEL_37;
      case 0xCu:
        v31 = sub_22BE17D78();
        sub_22C06D61C(v31, v32, v33, v34);
        goto LABEL_37;
      case 0xDu:
        v87 = sub_22BE17D78();
        sub_22C06D824(v87, v88, v89, v90);
        goto LABEL_37;
      case 0xEu:
        v19 = sub_22BE17D78();
        sub_22C06DA2C(v19, v20, v21, v22);
        goto LABEL_37;
      case 0xFu:
        v51 = sub_22BE17D78();
        sub_22C06DC34(v51, v52, v53, v54);
        goto LABEL_37;
      case 0x10u:
        v15 = sub_22BE17D78();
        sub_22C06DE3C(v15, v16, v17, v18);
        goto LABEL_37;
      case 0x11u:
        v71 = sub_22BE17D78();
        sub_22C06E044(v71, v72, v73, v74);
        goto LABEL_37;
      case 0x12u:
        v95 = sub_22BE17D78();
        sub_22C06E24C(v95, v96, v97, v98);
        goto LABEL_37;
      case 0x13u:
        v115 = sub_22BE17D78();
        sub_22C06E454(v115, v116, v117, v118);
        goto LABEL_37;
      case 0x14u:
        v75 = sub_22BE17D78();
        sub_22C06E65C(v75, v76, v77, v78);
        goto LABEL_37;
      case 0x15u:
        v83 = sub_22BE17D78();
        sub_22C06E864(v83, v84, v85, v86);
        goto LABEL_37;
      case 0x16u:
        v111 = sub_22BE17D78();
        sub_22C06EA6C(v111, v112, v113, v114);
        goto LABEL_37;
      case 0x17u:
        v119 = sub_22BE17D78();
        sub_22C06EE7C(v119, v120, v121, v122);
        goto LABEL_37;
      case 0x18u:
        v43 = sub_22BE17D78();
        sub_22C06F084(v43, v44, v45, v46);
        goto LABEL_37;
      case 0x19u:
        v39 = sub_22BE17D78();
        sub_22C06F28C(v39, v40, v41, v42);
        goto LABEL_37;
      case 0x1Au:
        v131 = sub_22BE17D78();
        sub_22C06F494(v131, v132, v133, v134);
        goto LABEL_37;
      case 0x1Bu:
        v11 = sub_22BE17D78();
        sub_22C06F69C(v11, v12, v13, v14);
        goto LABEL_37;
      case 0x1Cu:
        v123 = sub_22BE17D78();
        sub_22C06F8A4(v123, v124, v125, v126);
        goto LABEL_37;
      case 0x1Du:
        v127 = sub_22BE17D78();
        sub_22C06FAAC(v127, v128, v129, v130);
        goto LABEL_37;
      case 0x1Eu:
        v107 = sub_22BE17D78();
        sub_22C06FCB4(v107, v108, v109, v110);
        goto LABEL_37;
      case 0x1Fu:
        v67 = sub_22BE17D78();
        sub_22C06FEBC(v67, v68, v69, v70);
LABEL_37:
        if (v0)
        {
          sub_22BE3CDFC();
          sub_22C0B08BC();
          goto LABEL_41;
        }

        sub_22BE3CDFC();
        sub_22C0B08BC();
        break;
      default:
        v7 = sub_22BE17D78();
        sub_22C06BFC8(v7, v8, v9, v10);
LABEL_25:
        sub_22BE3CDFC();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_41;
    }
  }

  type metadata accessor for TranscriptProtoExpression(0);
  sub_22BE235A8();
LABEL_41:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C06BFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoValueExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910278, type metadata accessor for TranscriptProtoValueExpression, &protocol conformance descriptor for TranscriptProtoValueExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06C1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
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

uint64_t sub_22C06C3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9102A8, type metadata accessor for TranscriptProtoPrefixExpression, &protocol conformance descriptor for TranscriptProtoPrefixExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06C5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoInfixExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9102C0, type metadata accessor for TranscriptProtoInfixExpression, &protocol conformance descriptor for TranscriptProtoInfixExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06C7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoIndexExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9102F0, type metadata accessor for TranscriptProtoIndexExpression, &protocol conformance descriptor for TranscriptProtoIndexExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06C9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  MEMORY[0x28223BE20](updated);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910308, type metadata accessor for TranscriptProtoUpdateParametersExpression, &protocol conformance descriptor for TranscriptProtoUpdateParametersExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06CBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoCallExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910340, type metadata accessor for TranscriptProtoCallExpression, &protocol conformance descriptor for TranscriptProtoCallExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06CDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSayExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9103A0, type metadata accessor for TranscriptProtoSayExpression, &protocol conformance descriptor for TranscriptProtoSayExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06D004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoPickExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9103B8, type metadata accessor for TranscriptProtoPickExpression, &protocol conformance descriptor for TranscriptProtoPickExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06D20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9103D0, type metadata accessor for TranscriptProtoConfirmExpression, &protocol conformance descriptor for TranscriptProtoConfirmExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06D414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSearchExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9103E8, type metadata accessor for TranscriptProtoSearchExpression, &protocol conformance descriptor for TranscriptProtoSearchExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06D61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910428, type metadata accessor for TranscriptProtoPickOneExpression, &protocol conformance descriptor for TranscriptProtoPickOneExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06D824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910440, type metadata accessor for TranscriptProtoResolveToolExpression, &protocol conformance descriptor for TranscriptProtoResolveToolExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06DA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoUndoExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910458, type metadata accessor for TranscriptProtoUndoExpression, &protocol conformance descriptor for TranscriptProtoUndoExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06DC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRejectExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910470, type metadata accessor for TranscriptProtoRejectExpression, &protocol conformance descriptor for TranscriptProtoRejectExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06DE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoCancelExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910488, type metadata accessor for TranscriptProtoCancelExpression, &protocol conformance descriptor for TranscriptProtoCancelExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06E044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9104A0, type metadata accessor for TranscriptProtoNoMatchingToolExpression, &protocol conformance descriptor for TranscriptProtoNoMatchingToolExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06E24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9104B8, type metadata accessor for TranscriptProtoContinuePlanningExpression, &protocol conformance descriptor for TranscriptProtoContinuePlanningExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06E454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9104D0, type metadata accessor for TranscriptProtoEndOfPlanExpression, &protocol conformance descriptor for TranscriptProtoEndOfPlanExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06E65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  MEMORY[0x28223BE20](MentionedAppsExpression);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9104E8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression, &protocol conformance descriptor for TranscriptProtoGetMentionedAppsExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06E864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoOpenExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910500, type metadata accessor for TranscriptProtoOpenExpression, &protocol conformance descriptor for TranscriptProtoOpenExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910518, type metadata accessor for TranscriptProtoExplicitResolutionRequest, &protocol conformance descriptor for TranscriptProtoExplicitResolutionRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06EC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910400, type metadata accessor for TranscriptProtoStructuredSearchExpression, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06EE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910530, type metadata accessor for TranscriptProtoPayloadExpression, &protocol conformance descriptor for TranscriptProtoPayloadExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06F084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoFormatExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910548, type metadata accessor for TranscriptProtoFormatExpression, &protocol conformance descriptor for TranscriptProtoFormatExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06F28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(0);
  MEMORY[0x28223BE20](ContextExpression);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910358, type metadata accessor for TranscriptProtoRetrieveContextExpression, &protocol conformance descriptor for TranscriptProtoRetrieveContextExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06F494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
  MEMORY[0x28223BE20](SpansExpression);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910370, type metadata accessor for TranscriptProtoRetrieveSpansExpression, &protocol conformance descriptor for TranscriptProtoRetrieveSpansExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06F69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
  MEMORY[0x28223BE20](ToolsExpression);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910388, type metadata accessor for TranscriptProtoRetrieveToolsExpression, &protocol conformance descriptor for TranscriptProtoRetrieveToolsExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06F8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910260, type metadata accessor for TranscriptProtoSiriXFallbackExpression, &protocol conformance descriptor for TranscriptProtoSiriXFallbackExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910560, type metadata accessor for TranscriptProtoUserConfirmExpression, &protocol conformance descriptor for TranscriptProtoUserConfirmExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910578, type metadata accessor for TranscriptProtoUserDisambiguateExpression, &protocol conformance descriptor for TranscriptProtoUserDisambiguateExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06FEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910590, type metadata accessor for TranscriptProtoAnswerSynthesisExpression, &protocol conformance descriptor for TranscriptProtoAnswerSynthesisExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C07034C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C00, type metadata accessor for TranscriptProtoExpression, &protocol conformance descriptor for TranscriptProtoExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0703CC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910248, type metadata accessor for TranscriptProtoExpression, &protocol conformance descriptor for TranscriptProtoExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07043C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910248, type metadata accessor for TranscriptProtoExpression, &protocol conformance descriptor for TranscriptProtoExpression);

  return sub_22C270774();
}

uint64_t sub_22C0707A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BF8, type metadata accessor for TranscriptProtoSiriXFallbackExpression, &protocol conformance descriptor for TranscriptProtoSiriXFallbackExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C070828(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910260, type metadata accessor for TranscriptProtoSiriXFallbackExpression, &protocol conformance descriptor for TranscriptProtoSiriXFallbackExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C070898(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910260, type metadata accessor for TranscriptProtoSiriXFallbackExpression, &protocol conformance descriptor for TranscriptProtoSiriXFallbackExpression);

  return sub_22C270774();
}

uint64_t sub_22C070924()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DCB0);
  sub_22BE199F4(v0, qword_27D90DCB0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22C290D40;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "null";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "BOOL";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "int";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "double";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "string";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "array";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "symbol";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  return sub_22C2708A4();
}

void TranscriptProtoValueExpression.decodeMessage<A>(decoder:)()
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
        v3 = sub_22BE231C0();
        sub_22C070D7C(v3, v4, v5, v6, v7, v8, v9);
        break;
      case 5:
      case 7:
        sub_22BE231C0();
        sub_22C05D830();
        break;
      case 6:
        v10 = sub_22BE236F4();
        sub_22C070ED0(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C070D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  sub_22BE18378();
  v12 = sub_22BE5CE4C(v10, v11);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE2C64C();
  sub_22BE37DE0();
  result = sub_22C270674();
  if (!v8 && (v27 & 1) == 0)
  {
    sub_22C0B164C();
    sub_22BE22868();
    a7(0);
    v15 = sub_22BE3C688();
    v25 = v16;
    v18 = sub_22BE1AEA8(v15, v17, v16);
    sub_22BE2037C();
    sub_22BE33928(v19, v20, v21);
    if (v18 != 1)
    {
      sub_22BE196A8();
      sub_22C270594();
    }

    v22 = sub_22BE239F4();
    sub_22BE33928(v22, v23, v24);
    *v7 = v26;
    swift_storeEnumTagMultiPayload();
    return sub_22BE19DC4(v7, 0, 1, v25);
  }

  return result;
}

uint64_t sub_22C070ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90EEC0, &qword_22C2970F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9111D8, &qword_22C2ADF08);
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
    sub_22BE33928(v10, &qword_27D90EEC0, &qword_22C2970F0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v18, &qword_27D9111D8, &qword_22C2ADF08);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910290, type metadata accessor for TranscriptProtoValueExpressionArrayVariant, &protocol conformance descriptor for TranscriptProtoValueExpressionArrayVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9111D8, &qword_22C2ADF08);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D9111D8, &qword_22C2ADF08);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9111D8, &qword_22C2ADF08);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9111D8, &qword_22C2ADF08);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90EEC0, &qword_22C2970F0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoValueExpression.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  sub_22BE2B890(v5);
  if (!v6)
  {
    sub_22BE1AEE4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BE238F4();
        sub_22BE17D78();
        sub_22C071898();
        goto LABEL_11;
      case 2u:
        sub_22BE238F4();
        sub_22BE17D78();
        sub_22C07195C();
        goto LABEL_11;
      case 3u:
        sub_22C0B08BC();
        sub_22BE238F4();
        sub_22BE17D78();
        sub_22C071A2C();
        goto LABEL_11;
      case 4u:
        v7 = sub_22BE17D78();
        sub_22C071B14(v7, v8, v9, v10);
        sub_22BE3BFAC();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_13;
      case 5u:
        sub_22BE3BFAC();
        sub_22C0B08BC();
        sub_22BE17D78();
        sub_22C071D1C();
        goto LABEL_11;
      case 6u:
        v11 = sub_22BE17D78();
        sub_22C0715B0(v11, v12, v13, v14);
        goto LABEL_11;
      default:
        sub_22BE238F4();
        sub_22BE17D78();
        sub_22C0717D8();
LABEL_11:
        if (!v0)
        {
          break;
        }

        goto LABEL_13;
    }
  }

  type metadata accessor for TranscriptProtoValueExpression(0);
  sub_22BE235A8();
LABEL_13:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C0715B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D90EEC0, &qword_22C2970F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  sub_22BE22868();
  v11 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if (sub_22BE1AEA8(v10, 1, v11) == 1)
  {
    result = sub_22BE33928(v10, &qword_27D90EEC0, &qword_22C2970F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 6)
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

void sub_22C0717D8()
{
  sub_22BE19130();
  sub_22C0B14BC(v2, v3, v4, v5, v6, v7, v8, v9);
  v16 = sub_22C0B176C(v10, v11, v12, v13, v14, v15);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE23E58();
  sub_22BE3E8FC();
  sub_22C0B1710();
  sub_22BE22868();
  v1(0);
  v18 = sub_22C0B14AC();
  sub_22BE1AB5C(v18, v19, v20);
  if (v21)
  {
    v22 = sub_22BE180C8();
    sub_22BE33928(v22, v23, v0);
  }

  else
  {
    sub_22BE3E79C();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B1E54();
      sub_22C2707C4();
      sub_22BE18478();
      return;
    }

    sub_22C0B1F78();
  }

  __break(1u);
}

void sub_22C071898()
{
  sub_22BE19130();
  sub_22C0B14BC(v2, v3, v4, v5, v6, v7, v8, v9);
  v16 = sub_22C0B176C(v10, v11, v12, v13, v14, v15);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE23E58();
  sub_22BE3E8FC();
  sub_22C0B1710();
  sub_22BE22868();
  v1(0);
  v18 = sub_22C0B14AC();
  sub_22BE1AB5C(v18, v19, v20);
  if (v21)
  {
    v22 = sub_22BE180C8();
    sub_22BE33928(v22, v23, v0);
  }

  else
  {
    sub_22BE3E79C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B1E54();
      sub_22C270814();
      sub_22BE18478();
      return;
    }

    sub_22C0B1F78();
  }

  __break(1u);
}

void sub_22C07195C()
{
  sub_22BE19130();
  sub_22C0B14BC(v2, v3, v4, v5, v6, v7, v8, v9);
  v16 = sub_22C0B176C(v10, v11, v12, v13, v14, v15);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE23E58();
  sub_22BE3E8FC();
  sub_22C0B1710();
  sub_22BE22868();
  v1(0);
  v18 = sub_22C0B14AC();
  sub_22BE1AB5C(v18, v19, v20);
  if (v21)
  {
    v22 = sub_22BE180C8();
    sub_22BE33928(v22, v23, v0);
  }

  else
  {
    sub_22BE3E79C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C270834();
      sub_22BE18478();
      return;
    }

    sub_22C0B1F78();
  }

  __break(1u);
}

void sub_22C071A2C()
{
  sub_22BE19130();
  sub_22C0B14BC(v2, v3, v4, v5, v6, v7, v8, v9);
  v12 = sub_22BE5CE4C(v10, v11);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE23E58();
  sub_22BE23108();
  sub_22C0B1710();
  sub_22BE22868();
  v1(0);
  v14 = sub_22C0B14AC();
  sub_22BE1AB5C(v14, v15, v16);
  if (v17)
  {
    v18 = sub_22BE180C8();
    sub_22BE33928(v18, v19, v0);
  }

  else
  {
    sub_22BE3E79C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C270844();

      sub_22BE22978();
      sub_22BE18478();
      return;
    }

    sub_22C0B1F78();
  }

  __break(1u);
}

uint64_t sub_22C071B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEC0, &qword_22C2970F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90EEC0, &qword_22C2970F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910290, type metadata accessor for TranscriptProtoValueExpressionArrayVariant, &protocol conformance descriptor for TranscriptProtoValueExpressionArrayVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void sub_22C071D1C()
{
  v0 = sub_22BE5CE4C(&qword_27D90EEC0, &qword_22C2970F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  sub_22BE22868();
  v3 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if (sub_22BE1AEA8(v2, 1, v3) == 1)
  {
    sub_22BE33928(v2, &qword_27D90EEC0, &qword_22C2970F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C270844();

      return;
    }

    sub_22C0B08BC();
  }

  __break(1u);
}

uint64_t sub_22C0720F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BF0, type metadata accessor for TranscriptProtoValueExpression, &protocol conformance descriptor for TranscriptProtoValueExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C072178(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910278, type metadata accessor for TranscriptProtoValueExpression, &protocol conformance descriptor for TranscriptProtoValueExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0721E8(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910278, type metadata accessor for TranscriptProtoValueExpression, &protocol conformance descriptor for TranscriptProtoValueExpression);

  return sub_22C270774();
}

void TranscriptProtoValueExpressionArrayVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoStatementID(0), sub_22BE1974C(), sub_22BE2C988(v2, v3, &protocol conformance descriptor for TranscriptProtoStatementID), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C0723FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BE8, type metadata accessor for TranscriptProtoValueExpressionArrayVariant, &protocol conformance descriptor for TranscriptProtoValueExpressionArrayVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07247C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910290, type metadata accessor for TranscriptProtoValueExpressionArrayVariant, &protocol conformance descriptor for TranscriptProtoValueExpressionArrayVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0724EC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910290, type metadata accessor for TranscriptProtoValueExpressionArrayVariant, &protocol conformance descriptor for TranscriptProtoValueExpressionArrayVariant);

  return sub_22C270774();
}

uint64_t sub_22C072578()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DCE0);
  sub_22BE199F4(v0, qword_27D90DCE0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prefixOp";
  *(v6 + 8) = 8;
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

uint64_t sub_22C07280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoPrefixExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C07291C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoPrefixExpression(0);
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

void static TranscriptProtoPrefixExpression.== infix(_:_:)()
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
  sub_22C0B16C4();
  if (!v7)
  {
    goto LABEL_12;
  }

  v6 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  sub_22BE3E440(v6);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v7)
  {
    sub_22BE19538();
    if (v7)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_15:
      sub_22C0B16F4();
      sub_22BE18E5C();
      v14 = sub_22BE2C988(v12, v13, MEMORY[0x277D216D0]);
      v8 = sub_22BE2B85C(v14);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v7)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_11:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_12;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v9 = sub_22BE38970();
  v11 = static TranscriptProtoStatementID.== infix(_:_:)(v9, v10);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_12:
  v8 = 0;
LABEL_13:
  sub_22BE1C1DC(v8);
  sub_22BE1AABC();
}

uint64_t sub_22C072D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BE0, type metadata accessor for TranscriptProtoPrefixExpression, &protocol conformance descriptor for TranscriptProtoPrefixExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C072E10(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9102A8, type metadata accessor for TranscriptProtoPrefixExpression, &protocol conformance descriptor for TranscriptProtoPrefixExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C072E80(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9102A8, type metadata accessor for TranscriptProtoPrefixExpression, &protocol conformance descriptor for TranscriptProtoPrefixExpression);

  return sub_22C270774();
}

uint64_t sub_22C072F0C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DCF8);
  sub_22BE199F4(v0, qword_27D90DCF8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "infixOp";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lhs";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rhs";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void sub_22C073184()
{
  sub_22BE1B214();
  sub_22C0B1664();
  while (1)
  {
    sub_22BE196A8();
    v4 = sub_22C270584();
    if (v1 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 3:
        v8 = sub_22BE1A8F8();
        v0(v8);
        break;
      case 2:
        v7 = sub_22BE1A8F8();
        v2(v7);
        break;
      case 1:
        v6 = sub_22BE1A8F8();
        v3(v6);
        break;
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07327C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoInfixExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C073330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoInfixExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C07347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoInfixExpression(0);
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

uint64_t sub_22C073650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoInfixExpression(0);
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

void static TranscriptProtoInfixExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoStatementID(v4);
  sub_22BE26880();
  MEMORY[0x28223BE20](v5);
  sub_22BE38390();
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v8);
  sub_22BE324EC();
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
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

  type metadata accessor for TranscriptProtoInfixExpression(0);
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
      sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_13;
    }

LABEL_11:
    v12 = v3;
LABEL_22:
    sub_22BE33928(v12, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_23;
  }

  sub_22BE3E79C();
  sub_22BE22868();
  sub_22BE1972C(v3 + v0);
  if (v11)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_11;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v13 = sub_22C0B1AF0();
  v15 = static TranscriptProtoStatementID.== infix(_:_:)(v13, v14);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE1B074();
  sub_22C0B08BC();
  sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
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
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
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
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_21:
    v12 = v1;
    goto LABEL_22;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v19 = sub_22BE36680();
  v21 = static TranscriptProtoStatementID.== infix(_:_:)(v19, v20);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
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

uint64_t sub_22C073C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BD8, type metadata accessor for TranscriptProtoInfixExpression, &protocol conformance descriptor for TranscriptProtoInfixExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C073C9C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9102C0, type metadata accessor for TranscriptProtoInfixExpression, &protocol conformance descriptor for TranscriptProtoInfixExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C073D0C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9102C0, type metadata accessor for TranscriptProtoInfixExpression, &protocol conformance descriptor for TranscriptProtoInfixExpression);

  return sub_22C270774();
}

uint64_t sub_22C073D98()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DD10);
  sub_22BE199F4(v0, qword_27D90DD10);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
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
  return sub_22C2708A4();
}

uint64_t sub_22C07402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

uint64_t sub_22C0741D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
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

void static TranscriptProtoASTFlatExprPrefixVariant.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoASTFlatValue(v1);
  sub_22BE26880();
  MEMORY[0x28223BE20](v2);
  sub_22BE38390();
  v3 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D90EE38, &qword_22C2970D0);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22C0B16C4();
  if (!v7)
  {
    goto LABEL_12;
  }

  v6 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  sub_22BE3E440(v6);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v7)
  {
    sub_22BE19538();
    if (v7)
    {
      sub_22BE33928(v0, &qword_27D90EE30, &unk_22C2AE760);
LABEL_15:
      sub_22C0B16F4();
      sub_22BE18E5C();
      v14 = sub_22BE2C988(v12, v13, MEMORY[0x277D216D0]);
      v8 = sub_22BE2B85C(v14);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v7)
  {
    sub_22BE25764();
    sub_22C0B08BC();
LABEL_11:
    sub_22BE33928(v0, &qword_27D90EE38, &qword_22C2970D0);
    goto LABEL_12;
  }

  sub_22C0B0868();
  v9 = sub_22BE38970();
  v11 = static TranscriptProtoASTFlatValue.== infix(_:_:)(v9, v10);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90EE30, &unk_22C2AE760);
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_12:
  v8 = 0;
LABEL_13:
  sub_22BE1C1DC(v8);
  sub_22BE1AABC();
}

uint64_t sub_22C074658(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BD0, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPrefixVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0746D8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9102D8, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPrefixVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C074748(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9102D8, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPrefixVariant);

  return sub_22C270774();
}

uint64_t sub_22C0747D4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DD28);
  sub_22BE199F4(v0, qword_27D90DD28);
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

void TranscriptProtoIndexExpression.decodeMessage<A>(decoder:)()
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
      sub_22C074A60(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C074A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoIndexExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C074B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoIndexExpression(0);
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

void sub_22C074D54()
{
  sub_22BE19460();
  v29 = v3;
  v4 = sub_22BE2021C();
  type metadata accessor for TranscriptProtoStatementID(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE3668C(v6);
  v7 = sub_22BE39EAC();
  v9 = sub_22BE5CE4C(v7, v8);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  sub_22BE324EC();
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE28F58();
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v13);
  sub_22BE32374();
  v15 = *(v14 + 48);
  sub_22BE26234();
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE200F8(v2);
  if (v16)
  {
    sub_22BE200F8(v2 + v15);
    if (v16)
    {
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v17 = v2;
LABEL_20:
    sub_22BE33928(v17, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_21;
  }

  sub_22BE3E79C();
  sub_22BE22868();
  sub_22BE200F8(v2 + v15);
  if (v16)
  {
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B0868();
  v18 = sub_22C0B1AF0();
  v20 = static TranscriptProtoStatementID.== infix(_:_:)(v18, v19);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE1B074();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v29(0);
  v21 = *(v1 + 48);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE200F8(v0);
  if (v16)
  {
    sub_22BE200F8(v0 + v21);
    if (v16)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_24:
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v27, v28, MEMORY[0x277D216D0]);
      v23 = sub_22C0B1D30();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22BE22868();
  sub_22BE200F8(v0 + v21);
  if (v22)
  {
    sub_22C0B08BC();
LABEL_19:
    v17 = v0;
    goto LABEL_20;
  }

  sub_22C0B0868();
  v24 = sub_22BE2565C();
  v26 = static TranscriptProtoStatementID.== infix(_:_:)(v24, v25);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE33FCC();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v26)
  {
    goto LABEL_24;
  }

LABEL_21:
  v23 = 0;
LABEL_22:
  sub_22BE1C1DC(v23);
  sub_22BE1AABC();
}

uint64_t sub_22C0751C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BC8, type metadata accessor for TranscriptProtoIndexExpression, &protocol conformance descriptor for TranscriptProtoIndexExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C075248(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9102F0, type metadata accessor for TranscriptProtoIndexExpression, &protocol conformance descriptor for TranscriptProtoIndexExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0752B8(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9102F0, type metadata accessor for TranscriptProtoIndexExpression, &protocol conformance descriptor for TranscriptProtoIndexExpression);

  return sub_22C270774();
}

uint64_t sub_22C075344()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DD40);
  sub_22BE199F4(v0, qword_27D90DD40);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "callStatementId";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "updates";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoUpdateParametersExpression.decodeMessage<A>(decoder:)()
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
      sub_22BFE7680();
    }

    else if (v1 == 1)
    {
      v3 = sub_22BE18E2C();
      sub_22C0755E0(v3, v4, v5, v6);
    }
  }
}

uint64_t sub_22C0755E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoUpdateParametersExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v1 = sub_22BE3B0CC();
  sub_22C075748(v1, v2, v3, v4);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v5)
    {
      type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
      sub_22BE2C988(&qword_27D90EF18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, &protocol conformance descriptor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
    sub_22BE25FB0();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C075748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
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

uint64_t sub_22C0759EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BC0, type metadata accessor for TranscriptProtoUpdateParametersExpression, &protocol conformance descriptor for TranscriptProtoUpdateParametersExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C075A6C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910308, type metadata accessor for TranscriptProtoUpdateParametersExpression, &protocol conformance descriptor for TranscriptProtoUpdateParametersExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C075ADC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910308, type metadata accessor for TranscriptProtoUpdateParametersExpression, &protocol conformance descriptor for TranscriptProtoUpdateParametersExpression);

  return sub_22C270774();
}

uint64_t sub_22C075B74()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DD58);
  sub_22BE199F4(v0, qword_27D90DD58);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "kind";
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
  *v14 = "parameterIndex";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C075E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoUpdateParameterExpression_UpdateParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C0B1EE4();
  sub_22BE1A730();
  if (!v4 || (sub_22BE25098(), sub_22C270844(), !v3))
  {
    sub_22BE2BC90();
    if (!v5 || (sub_22C09DD94(), sub_22BE23CE4(), sub_22C2707D4(), !v3))
    {
      v6 = sub_22BE17D60();
      sub_22C07605C(v6, v7, v8, v9);
      if (!v3)
      {
        v10 = sub_22BE17D60();
        sub_22C076230(v10);
        type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
        sub_22BE1AC30();
      }
    }
  }

  sub_22C0B1ED0();
}

uint64_t sub_22C07605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
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

uint64_t sub_22C076230(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_22C270814();
  }

  return result;
}

void static TranscriptProtoUpdateParameterExpression_UpdateParameter.== infix(_:_:)()
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
    goto LABEL_17;
  }

  sub_22BE36248();
  if (!v8)
  {
    goto LABEL_17;
  }

  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  sub_22C0B1694(updated);
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
      sub_22BE1868C();
      sub_22C0B0868();
      v12 = sub_22BE38970();
      v14 = static TranscriptProtoStatementID.== infix(_:_:)(v12, v13);
      sub_22BE324FC();
      sub_22C0B08BC();
      sub_22BE1AB1C();
      sub_22C0B08BC();
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((v14 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_16:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_17;
  }

  sub_22BE19538();
  if (!v8)
  {
    goto LABEL_16;
  }

  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_20:
  sub_22BE3FE0C();
  if (v16)
  {
    if (v15)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_22BE35DEC();
    if ((v17 & 1) == 0)
    {
LABEL_24:
      sub_22C2704B4();
      sub_22BE18E5C();
      v20 = sub_22BE2C988(v18, v19, MEMORY[0x277D216D0]);
      v11 = sub_22BE2B85C(v20);
      goto LABEL_18;
    }
  }

LABEL_17:
  v11 = 0;
LABEL_18:
  sub_22BE1C1DC(v11);
  sub_22BE1AABC();
}

uint64_t sub_22C076584(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BB8, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, &protocol conformance descriptor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C076604(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EF18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, &protocol conformance descriptor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C076674(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90EF18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, &protocol conformance descriptor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return sub_22C270774();
}

uint64_t sub_22C076700()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DD70);
  sub_22BE199F4(v0, qword_27D90DD70);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceIdsId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "representsBuiltInTool";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoGlobalToolIdentifier.decodeMessage<A>(decoder:)()
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
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }

  return result;
}

void sub_22C0769EC()
{
  sub_22BE2BB34();
  sub_22BE44820();
  sub_22BE1A730();
  if (!v3 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    v4 = sub_22BE17D60();
    v2(v4);
    if (!v0)
    {
      sub_22BE2BC90();
      if (v5)
      {
        sub_22BE1BAB8();
        sub_22C2707C4();
      }

      v1(0);
      v6 = sub_22BE375E4();
      sub_22BE363D4(v6, v7);
    }
  }

  sub_22BEE93D4();
}

uint64_t static TranscriptProtoGlobalToolIdentifier.== infix(_:_:)(uint64_t a1)
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

  sub_22BE36248();
  if (!v3)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22C0B1BAC();
  sub_22BE18E5C();
  v12 = sub_22BE2C988(v10, v11, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v12) & 1;
}

uint64_t sub_22C076BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BB0, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C076C5C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C076CCC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);

  return sub_22C270774();
}

uint64_t sub_22C076D58()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DD88);
  sub_22BE199F4(v0, qword_27D90DD88);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "parameters";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "tool";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoCallExpression.decodeMessage<A>(decoder:)()
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
      sub_22C076FA8(v3, v4, v5, v6);
    }

    else if (v1 == 2)
    {
      sub_22BE18E2C();
      sub_22BE52128();
    }
  }
}

uint64_t sub_22C076FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoCallExpression(0);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  return sub_22C2706F4();
}

uint64_t sub_22C077124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoCallExpression(0);
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

void static TranscriptProtoCallExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(v1);
  sub_22BE26880();
  MEMORY[0x28223BE20](v2);
  sub_22BE38390();
  v3 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D90E678, &qword_22C296F38);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22BE1BC88();
  sub_22BEA3AF0();
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = type metadata accessor for TranscriptProtoCallExpression(0);
  sub_22BE3E440(v7);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v8)
  {
    sub_22BE19538();
    if (v8)
    {
      sub_22BE33928(v0, &qword_27D90E670, &unk_22C2CC890);
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
    sub_22BE30F90();
    sub_22C0B08BC();
LABEL_10:
    sub_22BE33928(v0, &qword_27D90E678, &qword_22C296F38);
    goto LABEL_11;
  }

  sub_22C0B0868();
  v10 = sub_22BE38970();
  v11 = static TranscriptProtoGlobalToolIdentifier.== infix(_:_:)(v10);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E670, &unk_22C2CC890);
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

uint64_t sub_22C0775AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BA8, type metadata accessor for TranscriptProtoCallExpression, &protocol conformance descriptor for TranscriptProtoCallExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07762C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910340, type metadata accessor for TranscriptProtoCallExpression, &protocol conformance descriptor for TranscriptProtoCallExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07769C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910340, type metadata accessor for TranscriptProtoCallExpression, &protocol conformance descriptor for TranscriptProtoCallExpression);

  return sub_22C270774();
}

uint64_t sub_22C0777CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BA0, type metadata accessor for TranscriptProtoRetrieveContextExpression, &protocol conformance descriptor for TranscriptProtoRetrieveContextExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07784C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910358, type metadata accessor for TranscriptProtoRetrieveContextExpression, &protocol conformance descriptor for TranscriptProtoRetrieveContextExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0778BC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910358, type metadata accessor for TranscriptProtoRetrieveContextExpression, &protocol conformance descriptor for TranscriptProtoRetrieveContextExpression);

  return sub_22C270774();
}

uint64_t sub_22C077C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B98, type metadata accessor for TranscriptProtoRetrieveSpansExpression, &protocol conformance descriptor for TranscriptProtoRetrieveSpansExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C077CA4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910370, type metadata accessor for TranscriptProtoRetrieveSpansExpression, &protocol conformance descriptor for TranscriptProtoRetrieveSpansExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C077D14(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910370, type metadata accessor for TranscriptProtoRetrieveSpansExpression, &protocol conformance descriptor for TranscriptProtoRetrieveSpansExpression);

  return sub_22C270774();
}

uint64_t sub_22C078080(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B90, type metadata accessor for TranscriptProtoRetrieveToolsExpression, &protocol conformance descriptor for TranscriptProtoRetrieveToolsExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C078100(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910388, type metadata accessor for TranscriptProtoRetrieveToolsExpression, &protocol conformance descriptor for TranscriptProtoRetrieveToolsExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C078170(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910388, type metadata accessor for TranscriptProtoRetrieveToolsExpression, &protocol conformance descriptor for TranscriptProtoRetrieveToolsExpression);

  return sub_22C270774();
}

void TranscriptProtoSayExpression.decodeMessage<A>(decoder:)()
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
      sub_22C0B1830();
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoSayExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoStatementID(0), sub_22BE1974C(), sub_22BE2C988(v2, v3, &protocol conformance descriptor for TranscriptProtoStatementID), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoSayExpression(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07840C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B88, type metadata accessor for TranscriptProtoSayExpression, &protocol conformance descriptor for TranscriptProtoSayExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07848C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9103A0, type metadata accessor for TranscriptProtoSayExpression, &protocol conformance descriptor for TranscriptProtoSayExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0784FC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9103A0, type metadata accessor for TranscriptProtoSayExpression, &protocol conformance descriptor for TranscriptProtoSayExpression);

  return sub_22C270774();
}

uint64_t sub_22C078588()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DE00);
  sub_22BE199F4(v0, qword_27D90DE00);
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
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C0787B4()
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

    if (result == 2)
    {
      sub_22BE27184();
      v0();
    }

    else if (result == 1)
    {
      v5 = sub_22C0B1638();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_22C07882C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoPickExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoPickExpression.traverse<A>(visitor:)()
{
  v2 = sub_22BE3B0CC();
  result = sub_22C07894C(v2, v3, v4, v5);
  if (!v0)
  {
    if (*v1)
    {
      sub_22BE1BAB8();
      sub_22C270814();
    }

    type metadata accessor for TranscriptProtoPickExpression(0);
    return sub_22BE25FB0();
  }

  return result;
}

uint64_t sub_22C07894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoPickExpression(0);
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

void static TranscriptProtoPickExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE48298();
  type metadata accessor for TranscriptProtoStatementID(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE38390();
  v7 = sub_22BE289D8();
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE252F0();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E64();
  type metadata accessor for TranscriptProtoPickExpression(0);
  sub_22C0B1DC0();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE19FE0(v0);
  if (v12)
  {
    sub_22BE19FE0(v0 + v2);
    if (v12)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  sub_22BE1BF88();
  sub_22BE22868();
  sub_22BE19FE0(v0 + v2);
  if (v12)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE4160C();
  sub_22C0B0868();
  v13 = sub_22BE200E0();
  static TranscriptProtoStatementID.== infix(_:_:)(v13, v14);
  sub_22BE377A4();
  sub_22C0B08BC();
  sub_22BE18240();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((&qword_27D9090F8 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (*v1 != *v4)
  {
    goto LABEL_13;
  }

  sub_22C2704B4();
  sub_22BE18E5C();
  v17 = sub_22BE2C988(v15, v16, MEMORY[0x277D216D0]);
  v18 = sub_22BE39E58(v17);
LABEL_14:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C078E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B80, type metadata accessor for TranscriptProtoPickExpression, &protocol conformance descriptor for TranscriptProtoPickExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C078E80(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9103B8, type metadata accessor for TranscriptProtoPickExpression, &protocol conformance descriptor for TranscriptProtoPickExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C078EF0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9103B8, type metadata accessor for TranscriptProtoPickExpression, &protocol conformance descriptor for TranscriptProtoPickExpression);

  return sub_22C270774();
}

uint64_t sub_22C07925C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B78, type metadata accessor for TranscriptProtoConfirmExpression, &protocol conformance descriptor for TranscriptProtoConfirmExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0792DC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9103D0, type metadata accessor for TranscriptProtoConfirmExpression, &protocol conformance descriptor for TranscriptProtoConfirmExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07934C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9103D0, type metadata accessor for TranscriptProtoConfirmExpression, &protocol conformance descriptor for TranscriptProtoConfirmExpression);

  return sub_22C270774();
}

uint64_t sub_22C0793D8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DE30);
  sub_22BE199F4(v0, qword_27D90DE30);
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
  *v10 = "isLowConfidenceKnowledge";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pickOne";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "shouldOpenResultIfApplicable";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoSearchExpression.decodeMessage<A>(decoder:)()
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
        sub_22C2705C4();
        break;
      default:
        continue;
    }
  }
}

uint64_t TranscriptProtoSearchExpression.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    sub_22BE2BC90();
    if (!v4 || (sub_22BE1BAB8(), result = sub_22C2707C4(), !v0))
    {
      if (*(v1 + 17) != 1 || (sub_22BE1BAB8(), result = sub_22C2707C4(), !v0))
      {
        if (*(v1 + 18) != 1 || (sub_22BE1BAB8(), result = sub_22C2707C4(), !v0))
        {
          type metadata accessor for TranscriptProtoSearchExpression(0);
          return sub_22BE1AC30();
        }
      }
    }
  }

  return result;
}

uint64_t static TranscriptProtoSearchExpression.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE36248();
  if (!v5 || *(v2 + 17) != *(v1 + 17) || *(v2 + 18) != *(v1 + 18))
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoSearchExpression(0);
  sub_22C2704B4();
  sub_22BE18E5C();
  v9 = sub_22BE2C988(v7, v8, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v9) & 1;
}

uint64_t sub_22C0798EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B70, type metadata accessor for TranscriptProtoSearchExpression, &protocol conformance descriptor for TranscriptProtoSearchExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07996C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9103E8, type metadata accessor for TranscriptProtoSearchExpression, &protocol conformance descriptor for TranscriptProtoSearchExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0799DC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9103E8, type metadata accessor for TranscriptProtoSearchExpression, &protocol conformance descriptor for TranscriptProtoSearchExpression);

  return sub_22C270774();
}

uint64_t sub_22C079A68()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DE48);
  sub_22BE199F4(v0, qword_27D90DE48);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameters";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "returnType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "properties";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoStructuredSearchExpression.decodeMessage<A>(decoder:)()
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
      case 5:
        sub_22BE1C37C();
        sub_22C0478F0();
        break;
      case 2:
        v3 = sub_22BE18E2C();
        sub_22C079D58(v3, v4, v5, v6);
        break;
      case 1:
        sub_22BE18E2C();
        sub_22BE52128();
        break;
    }
  }
}

uint64_t sub_22C079D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  sub_22C2725A4();
  sub_22BE2C988(&qword_27D90C7B0, MEMORY[0x277D72800], MEMORY[0x277D727F8]);
  return sub_22C2706F4();
}

void TranscriptProtoStructuredSearchExpression.traverse<A>(visitor:)()
{
  sub_22BE358D4();
  sub_22BE3CD04();
  if (!*(*v0 + 16) || (sub_22C270464(), v2 = sub_22BE39FFC(), type metadata accessor for TranscriptProtoStatementID(v2), sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID), sub_22BE41578(), sub_22BE2C988(v3, type metadata accessor for TranscriptProtoStatementID, v4), sub_22BE41E00(), sub_22C270794(), !v1))
  {
    sub_22BE2BBFC();
    sub_22C0B1E3C();
    sub_22C079FAC(v5, v6, v7, v8);
    if (!v1)
    {
      sub_22BE3A458();
      if (v9)
      {
        type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
        sub_22BE2C988(&qword_27D90EF88, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
        sub_22BE238E8();
        sub_22C0B1658();
        sub_22C270874();
      }

      type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
      sub_22BE375E4();
      sub_22C270494();
    }
  }

  sub_22C0B171C();
}

uint64_t sub_22C079FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C138, &qword_22C2CB830);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C988(&qword_27D90C7B0, MEMORY[0x277D72800], MEMORY[0x277D727F8]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

void static TranscriptProtoStructuredSearchExpression.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  sub_22C2725A4();
  sub_22BE35868();
  MEMORY[0x28223BE20](v2);
  sub_22BE17CBC();
  v3 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D90C140, &qword_22C290E40);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  sub_22BEA3AF0();
  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v7 = *(v1 + 48);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE181B0(v0);
  if (v8)
  {
    sub_22BE181B0(v0 + v7);
    if (v8)
    {
      sub_22BE33928(v0, &qword_27D90C138, &qword_22C2CB830);
      goto LABEL_12;
    }

LABEL_10:
    sub_22BE33928(v0, &qword_27D90C140, &qword_22C290E40);
LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  sub_22C0B1FC0();
  sub_22BE181B0(v0 + v7);
  if (v8)
  {
    sub_22C0B19BC();
    v9 = sub_22BE36680();
    v10(v9);
    goto LABEL_10;
  }

  v11 = sub_22C0B1B78();
  v12(v11);
  sub_22BE23328();
  sub_22BE2C988(v13, v14, MEMORY[0x277D72808]);
  v15 = sub_22C0B19D4();
  v16 = sub_22BE3C5E4();
  MEMORY[0](v16);
  v17 = sub_22BE36680();
  MEMORY[0](v17);
  sub_22BE33928(v0, &qword_27D90C138, &qword_22C2CB830);
  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  sub_22BE97E88();
  if ((v18 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_22C2704B4();
  sub_22BE18E5C();
  v21 = sub_22BE2C988(v19, v20, MEMORY[0x277D216D0]);
  v22 = sub_22BE35FB8(v21);
LABEL_15:
  sub_22BE1C1DC(v22);
  sub_22BE1AABC();
}

uint64_t sub_22C07A50C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B68, type metadata accessor for TranscriptProtoStructuredSearchExpression, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07A58C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910400, type metadata accessor for TranscriptProtoStructuredSearchExpression, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07A5FC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910400, type metadata accessor for TranscriptProtoStructuredSearchExpression, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression);

  return sub_22C270774();
}

uint64_t sub_22C07A67C()
{
  result = MEMORY[0x2318AB8D0](0xD000000000000019, 0x800000022C2D9470);
  qword_27D90DE60 = 0xD000000000000025;
  *algn_27D90DE68 = 0x800000022C2D8600;
  return result;
}

uint64_t sub_22C07A710()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DE70);
  sub_22BE199F4(v0, qword_27D90DE70);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "previousAnswerReference";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.decodeMessage<A>(decoder:)()
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
        sub_22C07A9B8(v3, v4, v5, v6);
        break;
      case 2:
        sub_22BE374D4();
        sub_22C270694();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }

  return result;
}

uint64_t sub_22C07A9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C07AAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
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

void static TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.== infix(_:_:)()
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
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE20394();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_24;
  }

  v11 = *(v0 + 24);
  if (*(v1 + 24))
  {
    if (!v11)
    {
      goto LABEL_24;
    }

    sub_22BFB1A50();
    v14 = v10 && v12 == v13;
    if (!v14 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v11)
  {
    goto LABEL_24;
  }

  v15 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  sub_22C0B1694(v15);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v10)
  {
    sub_22BE19538();
    if (v10)
    {
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_27:
      sub_22C0B1A60();
      sub_22BE18E5C();
      v23 = sub_22BE2C988(v21, v22, MEMORY[0x277D216D0]);
      v17 = sub_22BE2B85C(v23);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v16)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_23:
    sub_22BE33928(v2, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_24;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v18 = sub_22BE38970();
  v20 = static TranscriptProtoStatementID.== infix(_:_:)(v18, v19);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v20)
  {
    goto LABEL_27;
  }

LABEL_24:
  v17 = 0;
LABEL_25:
  sub_22BE1C1DC(v17);
  sub_22BE1AABC();
}

uint64_t sub_22C07AF54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B60, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07AFD4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EF88, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07B044(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90EF88, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return sub_22C270774();
}

uint64_t sub_22C07B3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B58, type metadata accessor for TranscriptProtoPickOneExpression, &protocol conformance descriptor for TranscriptProtoPickOneExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07B430(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910428, type metadata accessor for TranscriptProtoPickOneExpression, &protocol conformance descriptor for TranscriptProtoPickOneExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07B4A0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910428, type metadata accessor for TranscriptProtoPickOneExpression, &protocol conformance descriptor for TranscriptProtoPickOneExpression);

  return sub_22C270774();
}

void TranscriptProtoResolveToolExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoGlobalToolIdentifier(0), sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoResolveToolExpression(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07B73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B50, type metadata accessor for TranscriptProtoResolveToolExpression, &protocol conformance descriptor for TranscriptProtoResolveToolExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07B7BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910440, type metadata accessor for TranscriptProtoResolveToolExpression, &protocol conformance descriptor for TranscriptProtoResolveToolExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07B82C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910440, type metadata accessor for TranscriptProtoResolveToolExpression, &protocol conformance descriptor for TranscriptProtoResolveToolExpression);

  return sub_22C270774();
}

uint64_t sub_22C07BB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B48, type metadata accessor for TranscriptProtoUndoExpression, &protocol conformance descriptor for TranscriptProtoUndoExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07BC18(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910458, type metadata accessor for TranscriptProtoUndoExpression, &protocol conformance descriptor for TranscriptProtoUndoExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07BC88(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910458, type metadata accessor for TranscriptProtoUndoExpression, &protocol conformance descriptor for TranscriptProtoUndoExpression);

  return sub_22C270774();
}

uint64_t sub_22C07BFF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B40, type metadata accessor for TranscriptProtoRejectExpression, &protocol conformance descriptor for TranscriptProtoRejectExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07C074(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910470, type metadata accessor for TranscriptProtoRejectExpression, &protocol conformance descriptor for TranscriptProtoRejectExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07C0E4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910470, type metadata accessor for TranscriptProtoRejectExpression, &protocol conformance descriptor for TranscriptProtoRejectExpression);

  return sub_22C270774();
}

uint64_t sub_22C07C450(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B38, type metadata accessor for TranscriptProtoCancelExpression, &protocol conformance descriptor for TranscriptProtoCancelExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07C4D0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910488, type metadata accessor for TranscriptProtoCancelExpression, &protocol conformance descriptor for TranscriptProtoCancelExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07C540(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910488, type metadata accessor for TranscriptProtoCancelExpression, &protocol conformance descriptor for TranscriptProtoCancelExpression);

  return sub_22C270774();
}

uint64_t sub_22C07C670(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B30, type metadata accessor for TranscriptProtoNoMatchingToolExpression, &protocol conformance descriptor for TranscriptProtoNoMatchingToolExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07C6F0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9104A0, type metadata accessor for TranscriptProtoNoMatchingToolExpression, &protocol conformance descriptor for TranscriptProtoNoMatchingToolExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07C760(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9104A0, type metadata accessor for TranscriptProtoNoMatchingToolExpression, &protocol conformance descriptor for TranscriptProtoNoMatchingToolExpression);

  return sub_22C270774();
}

uint64_t sub_22C07C88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B28, type metadata accessor for TranscriptProtoContinuePlanningExpression, &protocol conformance descriptor for TranscriptProtoContinuePlanningExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07C90C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9104B8, type metadata accessor for TranscriptProtoContinuePlanningExpression, &protocol conformance descriptor for TranscriptProtoContinuePlanningExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07C97C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9104B8, type metadata accessor for TranscriptProtoContinuePlanningExpression, &protocol conformance descriptor for TranscriptProtoContinuePlanningExpression);

  return sub_22C270774();
}

uint64_t sub_22C07CAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B20, type metadata accessor for TranscriptProtoEndOfPlanExpression, &protocol conformance descriptor for TranscriptProtoEndOfPlanExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07CB28(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9104D0, type metadata accessor for TranscriptProtoEndOfPlanExpression, &protocol conformance descriptor for TranscriptProtoEndOfPlanExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07CB98(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9104D0, type metadata accessor for TranscriptProtoEndOfPlanExpression, &protocol conformance descriptor for TranscriptProtoEndOfPlanExpression);

  return sub_22C270774();
}

uint64_t sub_22C07CCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B18, type metadata accessor for TranscriptProtoGetMentionedAppsExpression, &protocol conformance descriptor for TranscriptProtoGetMentionedAppsExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07CD44(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9104E8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression, &protocol conformance descriptor for TranscriptProtoGetMentionedAppsExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07CDB4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9104E8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression, &protocol conformance descriptor for TranscriptProtoGetMentionedAppsExpression);

  return sub_22C270774();
}

uint64_t sub_22C07D11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B10, type metadata accessor for TranscriptProtoOpenExpression, &protocol conformance descriptor for TranscriptProtoOpenExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07D19C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910500, type metadata accessor for TranscriptProtoOpenExpression, &protocol conformance descriptor for TranscriptProtoOpenExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07D20C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910500, type metadata accessor for TranscriptProtoOpenExpression, &protocol conformance descriptor for TranscriptProtoOpenExpression);

  return sub_22C270774();
}

uint64_t sub_22C07D33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B08, type metadata accessor for TranscriptProtoExplicitResolutionRequest, &protocol conformance descriptor for TranscriptProtoExplicitResolutionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07D3BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910518, type metadata accessor for TranscriptProtoExplicitResolutionRequest, &protocol conformance descriptor for TranscriptProtoExplicitResolutionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07D42C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910518, type metadata accessor for TranscriptProtoExplicitResolutionRequest, &protocol conformance descriptor for TranscriptProtoExplicitResolutionRequest);

  return sub_22C270774();
}

void TranscriptProtoPayloadExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoStatementID(0), sub_22BE1974C(), sub_22BE2C988(v2, v3, &protocol conformance descriptor for TranscriptProtoStatementID), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoPayloadExpression(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07D63C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B00, type metadata accessor for TranscriptProtoPayloadExpression, &protocol conformance descriptor for TranscriptProtoPayloadExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07D6BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910530, type metadata accessor for TranscriptProtoPayloadExpression, &protocol conformance descriptor for TranscriptProtoPayloadExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07D72C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910530, type metadata accessor for TranscriptProtoPayloadExpression, &protocol conformance descriptor for TranscriptProtoPayloadExpression);

  return sub_22C270774();
}

void TranscriptProtoFormatExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoStatementID(0), sub_22BE1974C(), sub_22BE2C988(v2, v3, &protocol conformance descriptor for TranscriptProtoStatementID), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoFormatExpression(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07D940(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AF8, type metadata accessor for TranscriptProtoFormatExpression, &protocol conformance descriptor for TranscriptProtoFormatExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07D9C0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910548, type metadata accessor for TranscriptProtoFormatExpression, &protocol conformance descriptor for TranscriptProtoFormatExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07DA30(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910548, type metadata accessor for TranscriptProtoFormatExpression, &protocol conformance descriptor for TranscriptProtoFormatExpression);

  return sub_22C270774();
}

uint64_t sub_22C07DABC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DFC0);
  sub_22BE199F4(v0, qword_27D90DFC0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "promptForUser";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confirmOption";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dismissOption";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoUserConfirmExpression.decodeMessage<A>(decoder:)()
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
        sub_22C07DE50(v7, v8, v9, v10);
        break;
      case 2:
        v3 = sub_22BE18E2C();
        sub_22C07DD9C(v3, v4, v5, v6);
        break;
      case 1:
        sub_22BE1A338();
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
    }
  }
}

uint64_t sub_22C07DD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C07DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C07DF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoUserConfirmExpression(0);
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

uint64_t sub_22C07E140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoUserConfirmExpression(0);
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

void static TranscriptProtoUserConfirmExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = v2;
  v4 = sub_22BE39FFC();
  type metadata accessor for TranscriptProtoStatementID(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v45 = v6;
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  v41 = v9;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  v43 = &v41 - v11;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v12);
  sub_22BE324EC();
  v13 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  v42 = v15;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE486EC();
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v21 = *(v20 + 48);
  v44 = v0;
  sub_22BE33FCC();
  sub_22BE22868();
  v46 = v3;
  sub_22BE22868();
  sub_22BE200F8(v19);
  if (v22)
  {
    sub_22BE200F8(&v19[v21]);
    if (v22)
    {
      sub_22BE33928(v19, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v23 = v19;
LABEL_30:
    sub_22BE33928(v23, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_31;
  }

  sub_22BE22868();
  sub_22BE200F8(&v19[v21]);
  if (v22)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B13E4();
  sub_22C0B0868();
  v24 = sub_22C0B1E68();
  v26 = static TranscriptProtoStatementID.== infix(_:_:)(v24, v25);
  sub_22BE1804C();
  sub_22C0B08BC();
  sub_22C0B1AF0();
  sub_22C0B08BC();
  sub_22BE33928(v19, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v27 = *(v13 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE200F8(v1);
  if (v22)
  {
    sub_22BE200F8(v1 + v27);
    if (v22)
    {
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_22BE3CB6C();
  sub_22BE22868();
  sub_22BE200F8(v1 + v27);
  if (v28)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_19:
    v23 = v1;
    goto LABEL_30;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v29 = sub_22BE1AB1C();
  v31 = static TranscriptProtoStatementID.== infix(_:_:)(v29, v30);
  sub_22BE200D4();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v32 = *(v13 + 48);
  v33 = v42;
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE200F8(v33);
  if (v22)
  {
    sub_22BE200F8(v33 + v32);
    if (v22)
    {
      sub_22BE33928(v33, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_34:
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v39, v40, MEMORY[0x277D216D0]);
      v35 = sub_22C272FD4();
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_22BE22868();
  sub_22BE200F8(v33 + v32);
  if (v34)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_29:
    v23 = v33;
    goto LABEL_30;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v36 = sub_22BE25C08();
  v38 = static TranscriptProtoStatementID.== infix(_:_:)(v36, v37);
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v33, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v38)
  {
    goto LABEL_34;
  }

LABEL_31:
  v35 = 0;
LABEL_32:
  sub_22BE1C1DC(v35);
  sub_22BE1AABC();
}

uint64_t sub_22C07E8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AF0, type metadata accessor for TranscriptProtoUserConfirmExpression, &protocol conformance descriptor for TranscriptProtoUserConfirmExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07E92C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910560, type metadata accessor for TranscriptProtoUserConfirmExpression, &protocol conformance descriptor for TranscriptProtoUserConfirmExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07E99C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910560, type metadata accessor for TranscriptProtoUserConfirmExpression, &protocol conformance descriptor for TranscriptProtoUserConfirmExpression);

  return sub_22C270774();
}

uint64_t sub_22C07EA28()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DFD8);
  sub_22BE199F4(v0, qword_27D90DFD8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "promptForUser";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoUserDisambiguateExpression.decodeMessage<A>(decoder:)()
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
      sub_22C0B1830();
      sub_22BE1C37C();
      sub_22BFE7680();
    }

    else if (v1 == 1)
    {
      v3 = sub_22BE18E2C();
      sub_22C07ECB4(v3, v4, v5, v6);
    }
  }
}

uint64_t sub_22C07ECB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoUserDisambiguateExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v1 = sub_22BE3B0CC();
  sub_22C07EE0C(v1, v2, v3, v4);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v5)
    {
      type metadata accessor for TranscriptProtoStatementID(0);
      sub_22BE1974C();
      sub_22BE2C988(v6, v7, &protocol conformance descriptor for TranscriptProtoStatementID);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
    sub_22BE25FB0();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07EE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
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

void sub_22C07F00C()
{
  sub_22BE19460();
  v23 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_22BE48298();
  type metadata accessor for TranscriptProtoStatementID(v7);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v9 = sub_22BE3E79C();
  v11 = sub_22BE5CE4C(v9, v10);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A8B4();
  v13 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00) - 8;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B01C();
  v4(0);
  v15 = *(v13 + 56);
  sub_22C0B1CCC();
  sub_22C0B1CCC();
  sub_22BE3CAA4(v1);
  if (v16)
  {
    sub_22BE3CAA4(v1 + v15);
    if (v16)
    {
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    sub_22BE33928(v1, &qword_27D909100, &unk_22C27FD00);
LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  sub_22BE3EA80();
  sub_22BE22868();
  sub_22BE3CAA4(v1 + v15);
  if (v16)
  {
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B0868();
  v17 = sub_22BE33FCC();
  v19 = static TranscriptProtoStatementID.== infix(_:_:)(v17, v18);
  sub_22C0B08BC();
  sub_22BE2C254();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((v23(*v0, *v6) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_22C0B1AC8();
  sub_22BE18E5C();
  sub_22BE2C988(v20, v21, MEMORY[0x277D216D0]);
  v22 = sub_22C272FD4();
LABEL_14:
  sub_22BE1C1DC(v22);
  sub_22BE1AABC();
}

uint64_t sub_22C07F33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AE8, type metadata accessor for TranscriptProtoUserDisambiguateExpression, &protocol conformance descriptor for TranscriptProtoUserDisambiguateExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07F3BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910578, type metadata accessor for TranscriptProtoUserDisambiguateExpression, &protocol conformance descriptor for TranscriptProtoUserDisambiguateExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07F42C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910578, type metadata accessor for TranscriptProtoUserDisambiguateExpression, &protocol conformance descriptor for TranscriptProtoUserDisambiguateExpression);

  return sub_22C270774();
}

uint64_t sub_22C07F4B8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DFF0);
  sub_22BE199F4(v0, qword_27D90DFF0);
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
  *v10 = "extractionCandidates";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoAnswerSynthesisExpression.decodeMessage<A>(decoder:)()
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
      sub_22BFE7680();
    }

    else if (v1 == 1)
    {
      v3 = sub_22BE18E2C();
      sub_22C07F754(v3, v4, v5, v6);
    }
  }
}

uint64_t sub_22C07F754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoAnswerSynthesisExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v1 = sub_22BE3B0CC();
  sub_22C07F8BC(v1, v2, v3, v4);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v5)
    {
      type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate(0);
      sub_22BE2C988(&qword_27D90F020, type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate, &protocol conformance descriptor for TranscriptProtoAnswerSynthesisExtractionCandidate);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
    sub_22BE25FB0();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07F8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
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

uint64_t sub_22C07FB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AE0, type metadata accessor for TranscriptProtoAnswerSynthesisExpression, &protocol conformance descriptor for TranscriptProtoAnswerSynthesisExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07FBE0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910590, type metadata accessor for TranscriptProtoAnswerSynthesisExpression, &protocol conformance descriptor for TranscriptProtoAnswerSynthesisExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07FC50(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910590, type metadata accessor for TranscriptProtoAnswerSynthesisExpression, &protocol conformance descriptor for TranscriptProtoAnswerSynthesisExpression);

  return sub_22C270774();
}

uint64_t sub_22C07FCDC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E008);
  sub_22BE199F4(v0, qword_27D90E008);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "appEntity";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "onScreenText";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoAnswerSynthesisExtractionCandidate.decodeMessage<A>(decoder:)()
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
      sub_22BE231C0();
      sub_22C05D830();
    }

    else if (v1 == 1)
    {
      v3 = sub_22BE236F4();
      sub_22C07FF58(v3, v4, v5, v6);
    }
  }
}

uint64_t sub_22C07FF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D909158, &qword_22C27FD50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(0);
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
    sub_22BE33928(v10, &qword_27D909158, &qword_22C27FD50);
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
      sub_22BE33928(v18, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
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
  sub_22BE33928(v25, &qword_27D909158, &qword_22C27FD50);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoAnswerSynthesisExtractionCandidate.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(0);
  sub_22BE2B890(v5);
  if (!v6)
  {
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BE3AE04();
      sub_22C0B08BC();
      sub_22BE17D78();
      sub_22C08073C();
      if (v0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = sub_22BE17D78();
      sub_22C080534(v8, v9, v10, v11);
      sub_22BE3AE04();
      sub_22C0B08BC();
      if (v0)
      {
        goto LABEL_4;
      }
    }
  }

  type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate(0);
  sub_22BE235A8();
LABEL_4:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C080534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909158, &qword_22C27FD50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D909158, &qword_22C27FD50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
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

void sub_22C08073C()
{
  v0 = sub_22BE5CE4C(&qword_27D909158, &qword_22C27FD50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  sub_22BE22868();
  v3 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(0);
  if (sub_22BE1AEA8(v2, 1, v3) == 1)
  {
    sub_22BE33928(v2, &qword_27D909158, &qword_22C27FD50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C270844();

      return;
    }

    sub_22C0B08BC();
  }

  __break(1u);
}

uint64_t sub_22C080B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AD8, type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate, &protocol conformance descriptor for TranscriptProtoAnswerSynthesisExtractionCandidate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C080B98(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F020, type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate, &protocol conformance descriptor for TranscriptProtoAnswerSynthesisExtractionCandidate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C080C08(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F020, type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate, &protocol conformance descriptor for TranscriptProtoAnswerSynthesisExtractionCandidate);

  return sub_22C270774();
}

uint64_t TranscriptProtoToolParameterValue.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      v3 = sub_22BE236F4();
      sub_22C080D20(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_22C080D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v40 = a3;
  v39 = a2;
  v5 = sub_22C272594();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = sub_22BE5CE4C(&qword_27D90F038, &qword_22C297100);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  sub_22BE19DC4(&v32 - v21, 1, 1, v5);
  v34 = a1;
  sub_22BE22868();
  v33 = v13;
  v23 = sub_22BE1AEA8(v12, 1, v13);
  if (v23 == 1)
  {
    sub_22BE33928(v12, &qword_27D90F038, &qword_22C297100);
    v24 = v38;
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE33928(v22, &qword_27D909128, &qword_22C294AA0);
    v25 = v38;
    v26 = *(v38 + 32);
    v26(v9, v15, v5);
    v26(v22, v9, v5);
    sub_22BE19DC4(v22, 0, 1, v5);
    v24 = v25;
  }

  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  v27 = v36;
  sub_22C2706F4();
  if (v27)
  {
    v28 = v22;
    return sub_22BE33928(v28, &qword_27D909128, &qword_22C294AA0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v19, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D909128, &qword_22C294AA0);
    v28 = v19;
    return sub_22BE33928(v28, &qword_27D909128, &qword_22C294AA0);
  }

  v30 = *(v24 + 32);
  v30(v35, v19, v5);
  if (v23 != 1)
  {
    sub_22C270594();
  }

  sub_22BE33928(v22, &qword_27D909128, &qword_22C294AA0);
  v31 = v34;
  sub_22BE33928(v34, &qword_27D90F038, &qword_22C297100);
  v30(v31, v35, v5);
  return sub_22BE19DC4(v31, 0, 1, v33);
}

uint64_t sub_22C08122C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D90F038, &qword_22C297100);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_22C272594();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v11 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  if (sub_22BE1AEA8(v6, 1, v11) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90F038, &qword_22C297100);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22C0816C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AD0, type metadata accessor for TranscriptProtoToolParameterValue, &protocol conformance descriptor for TranscriptProtoToolParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C081744(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9105B8, type metadata accessor for TranscriptProtoToolParameterValue, &protocol conformance descriptor for TranscriptProtoToolParameterValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0817B4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9105B8, type metadata accessor for TranscriptProtoToolParameterValue, &protocol conformance descriptor for TranscriptProtoToolParameterValue);

  return sub_22C270774();
}

uint64_t sub_22C081840()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E038);
  sub_22BE199F4(v0, qword_27D90E038);
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
  *v10 = "entity";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoSpanMatchedEntityStatement.decodeMessage<A>(decoder:)()
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
      sub_22C081ACC(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C081ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  type metadata accessor for ContextProtoSpanMatchedEntity(0);
  sub_22BE2C988(&qword_27D90C0E8, type metadata accessor for ContextProtoSpanMatchedEntity, &protocol conformance descriptor for ContextProtoSpanMatchedEntity);
  return sub_22C2706F4();
}

void sub_22C081BD4()
{
  sub_22BE1B214();
  v2 = v1;
  v4 = v3;
  sub_22BE33A5C();
  v5 = sub_22BE192B4();
  v6(v5);
  if (!v0)
  {
    v7 = sub_22BE17D78();
    v4(v7);
    v2(0);
    sub_22BE19514();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C081C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909138, &qword_22C2B5A80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D909138, &qword_22C2B5A80);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90C0E8, type metadata accessor for ContextProtoSpanMatchedEntity, &protocol conformance descriptor for ContextProtoSpanMatchedEntity);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoSpanMatchedEntityStatement.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE3CD04();
  v2 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v3 = sub_22BE272C0(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22BE38A28(v4);
  v5 = sub_22BE5CE4C(&qword_27D909138, &qword_22C2B5A80);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE29250(v7, v30);
  v8 = sub_22BE5CE4C(&qword_27D909140, &unk_22C27FD40);
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
  type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
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
      sub_22BE33928(v0, &qword_27D909138, &qword_22C2B5A80);
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
    v18 = &qword_27D909140;
    v19 = &unk_22C27FD40;
    v20 = v0;
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static ContextProtoSpanMatchedEntity.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D909138, &qword_22C2B5A80);
  if (&qword_22C2B5A80)
  {
    goto LABEL_24;
  }

LABEL_21:
  v27 = 0;
LABEL_22:
  sub_22BE1C1DC(v27);
  sub_22BE1AABC();
}

uint64_t sub_22C082254(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AC8, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement, &protocol conformance descriptor for TranscriptProtoSpanMatchedEntityStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0822D4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F058, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement, &protocol conformance descriptor for TranscriptProtoSpanMatchedEntityStatement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C082344(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F058, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement, &protocol conformance descriptor for TranscriptProtoSpanMatchedEntityStatement);

  return sub_22C270774();
}

void sub_22C08246C()
{
  sub_22BE2BB34();
  sub_22BE26210();
  while (1)
  {
    sub_22BE180C8();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_22BE1B73C();
      sub_22BE35F2C();
      sub_22C0B1EF8();
    }
  }

  sub_22BEE93D4();
}

void TranscriptProtoEntitySpanMatchResult.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0), sub_22BE2C988(&qword_27D90F058, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement, &protocol conformance descriptor for TranscriptProtoSpanMatchedEntityStatement), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C082638(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AC0, type metadata accessor for TranscriptProtoEntitySpanMatchResult, &protocol conformance descriptor for TranscriptProtoEntitySpanMatchResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0826B8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9105E0, type metadata accessor for TranscriptProtoEntitySpanMatchResult, &protocol conformance descriptor for TranscriptProtoEntitySpanMatchResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C082728(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9105E0, type metadata accessor for TranscriptProtoEntitySpanMatchResult, &protocol conformance descriptor for TranscriptProtoEntitySpanMatchResult);

  return sub_22C270774();
}

uint64_t sub_22C0827B4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E068);
  sub_22BE199F4(v0, qword_27D90E068);
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

uint64_t TranscriptProtoToolRetrievalResponse.decodeMessage<A>(decoder:)()
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
        sub_22C082B04(v5, v6);
        break;
      case 5:
        v3 = sub_22BE18E2C();
        sub_22C082BA4(v3, v4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C082B04(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContextProtoRetrievedTool(0);
  sub_22BE2C988(&qword_27D90C1B8, type metadata accessor for ContextProtoRetrievedTool, &protocol conformance descriptor for ContextProtoRetrievedTool);
  return sub_22C2706E4();
}

uint64_t sub_22C082BA4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContextProtoToolRetrievalType(0);
  sub_22BE2C988(&qword_27D90C1C0, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType);
  return sub_22C2706E4();
}

void TranscriptProtoToolRetrievalResponse.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE1A730();
  if (!v2 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    sub_22BE1B448();
    if (!v3 || (sub_22BE2910C(), sub_22C270844(), !v0))
    {
      if (*(v1 + 32) == 0.0 || (sub_22BE3C588(), sub_22C2707F4(), !v0))
      {
        if (!*(*(v1 + 40) + 16) || (type metadata accessor for ContextProtoRetrievedTool(0), sub_22C0B17D0(), sub_22BE2C988(v4, v5, &protocol conformance descriptor for ContextProtoRetrievedTool), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
        {
          if (!*(*(v1 + 48) + 16) || (type metadata accessor for ContextProtoToolRetrievalType(0), sub_22BE2C988(&qword_27D90C1C0, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
          {
            type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
            sub_22BE1AC30();
          }
        }
      }
    }
  }

  sub_22BE25C6C();
}

uint64_t static TranscriptProtoToolRetrievalResponse.== infix(_:_:)(uint64_t a1)
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

  if (*(v2 + 32) != *(v1 + 32))
  {
    return 0;
  }

  sub_22BE98FD4();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_22BE9983C();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  sub_22C2704B4();
  sub_22BE18E5C();
  v13 = sub_22BE2C988(v11, v12, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v13) & 1;
}

uint64_t sub_22C082F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AB8, type metadata accessor for TranscriptProtoToolRetrievalResponse, &protocol conformance descriptor for TranscriptProtoToolRetrievalResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C082F9C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9105F8, type metadata accessor for TranscriptProtoToolRetrievalResponse, &protocol conformance descriptor for TranscriptProtoToolRetrievalResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08300C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9105F8, type metadata accessor for TranscriptProtoToolRetrievalResponse, &protocol conformance descriptor for TranscriptProtoToolRetrievalResponse);

  return sub_22C270774();
}

uint64_t sub_22C083098()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E080);
  sub_22BE199F4(v0, qword_27D90E080);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 5;
  *v6 = "responseOutput";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 7;
  *v10 = "clientQueryId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 8;
  *v12 = "interpretedStatementResults";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoSystemResponse.decodeMessage<A>(decoder:)()
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
      case 8:
        sub_22BE1C37C();
        sub_22BFE7680();
        break;
      case 7:
        sub_22C0B17B8();
        sub_22BE18E2C();
        sub_22C097DC8();
        break;
      case 5:
        v3 = sub_22BE18E2C();
        sub_22C083394(v3, v4, v5, v6);
        break;
    }
  }
}

uint64_t sub_22C083394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSystemResponse(0);
  type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_22BE2C988(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);
  return sub_22C2706F4();
}

void TranscriptProtoSystemResponse.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v1 = sub_22BE3B0CC();
  sub_22C083518(v1, v2, v3, v4);
  if (!v0)
  {
    sub_22C0B17B8();
    sub_22BE17D60();
    sub_22C098190();
    sub_22BE41DF4();
    if (v5)
    {
      type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
      sub_22BE2C988(&qword_27D90F070, type metadata accessor for TranscriptProtoInterpretedStatementResult, &protocol conformance descriptor for TranscriptProtoInterpretedStatementResult);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    type metadata accessor for TranscriptProtoSystemResponse(0);
    v6 = sub_22BE375E4();
    sub_22BE363D4(v6, v7);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C083518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoResponseOutput(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoSystemResponse(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90F078, &unk_22C2AE7D0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoSystemResponse.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE2021C();
  type metadata accessor for TranscriptProtoResponseOutput(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17CBC();
  v7 = sub_22BE289D8();
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  sub_22BE5CE4C(&qword_27D90F080, &qword_22C297110);
  sub_22BE252F0();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  v25 = type metadata accessor for TranscriptProtoSystemResponse(0);
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
      sub_22BE1B5E0();
      static TranscriptProtoResponseOutput.== infix(_:_:)();
      v15 = v14;
      sub_22BE194F8();
      sub_22C0B08BC();
      sub_22BE18240();
      sub_22C0B08BC();
      sub_22BE33928(v1, &qword_27D90F078, &unk_22C2AE7D0);
      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_22BE291DC();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v1, &qword_27D90F080, &qword_22C297110);
    goto LABEL_10;
  }

  sub_22BE19FE0(v1 + v2);
  if (!v12)
  {
    goto LABEL_9;
  }

  sub_22BE33928(v1, &qword_27D90F078, &unk_22C2AE7D0);
LABEL_13:
  v16 = *(v25 + 24);
  v17 = *(v4 + v16 + 8);
  if (*(v0 + v16 + 8))
  {
    if (!v17)
    {
      goto LABEL_10;
    }

    sub_22BE3A508(v0 + v16);
    v20 = v12 && v18 == v19;
    if (!v20 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v17)
  {
    goto LABEL_10;
  }

  sub_22BE9D960();
  if (v21)
  {
    sub_22C2704B4();
    sub_22BE18E5C();
    v24 = sub_22BE2C988(v22, v23, MEMORY[0x277D216D0]);
    v13 = sub_22BE39E58(v24);
    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:
  sub_22BE1C1DC(v13);
  sub_22BE1AABC();
}

uint64_t sub_22C083A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AB0, type metadata accessor for TranscriptProtoSystemResponse, &protocol conformance descriptor for TranscriptProtoSystemResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C083A9C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910610, type metadata accessor for TranscriptProtoSystemResponse, &protocol conformance descriptor for TranscriptProtoSystemResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C083B0C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910610, type metadata accessor for TranscriptProtoSystemResponse, &protocol conformance descriptor for TranscriptProtoSystemResponse);

  return sub_22C270774();
}

uint64_t sub_22C083B98()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E098);
  sub_22BE199F4(v0, qword_27D90E098);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "outcome";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resultStatementId";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "originProgramStatementId";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "actionEventId";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "toolId";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "originTaskStatementId";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoInterpretedStatementResult.decodeMessage<A>(decoder:)()
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
        sub_22C0B1860();
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
      case 2:
        v7 = sub_22BE18E2C();
        sub_22C083FA0(v7, v8, v9, v10);
        break;
      case 3:
        v3 = sub_22BE18E2C();
        sub_22C084054(v3, v4, v5, v6);
        break;
      case 4:
        sub_22BE18E2C();
        sub_22C098EAC();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22C097EC0();
        break;
      case 6:
        v11 = sub_22BE18E2C();
        sub_22C084108(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C083FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C084054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C084108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoInterpretedStatementResult.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  sub_22BE192B4();
  sub_22BE51670();
  if (!v0)
  {
    v1 = sub_22BE17D78();
    sub_22C084294(v1, v2, v3, v4);
    v5 = sub_22BE17D78();
    sub_22C084468(v5, v6, v7, v8);
    sub_22BE17D78();
    sub_22C099168();
    sub_22BE17D78();
    sub_22C0983C4();
    v9 = sub_22BE17D78();
    sub_22C08463C(v9, v10, v11, v12);
    type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
    sub_22BE19514();
  }
}

uint64_t sub_22C084294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
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

uint64_t sub_22C084468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
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

uint64_t sub_22C08463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
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

void static TranscriptProtoInterpretedStatementResult.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22C0B1E74();
  v71 = type metadata accessor for TranscriptProtoStatementID(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE38A28(v6);
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  v66[1] = v9;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  v68 = v66 - v11;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E94();
  sub_22BE3668C(v13);
  v14 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  v15 = sub_22BE272C0(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  v67 = v16;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE389A0();
  MEMORY[0x28223BE20](v18);
  v19 = sub_22BE374E4();
  type metadata accessor for TranscriptProtoStatementOutcome(v19);
  sub_22BE18000();
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  v23 = v22 - v21;
  v24 = sub_22BE1B5E0();
  v26 = sub_22BE5CE4C(v24, v25);
  sub_22BE19448(v26);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE28738();
  v28 = sub_22BE5CE4C(&qword_27D90CA70, &qword_22C2968E8);
  sub_22BE19448(v28);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B72C();
  v31 = *(v30 + 56);
  v72 = v3;
  sub_22BE1B074();
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE181B0(v0);
  if (v32)
  {
    sub_22BE181B0(v0 + v31);
    if (v32)
    {
      sub_22BE33928(v0, &qword_27D90CA68, &unk_22C296C50);
      goto LABEL_11;
    }

LABEL_9:
    v33 = &qword_27D90CA70;
    v34 = &qword_22C2968E8;
    v35 = v0;
LABEL_26:
    sub_22BE33928(v35, v33, v34);
    goto LABEL_27;
  }

  sub_22BE22868();
  sub_22BE181B0(v0 + v31);
  if (v32)
  {
    sub_22BE38A40();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B1878();
  sub_22C0B0868();
  v36 = static TranscriptProtoStatementOutcome.== infix(_:_:)(v1, v23);
  sub_22BE36680();
  sub_22C0B08BC();
  sub_22BE1804C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90CA68, &unk_22C296C50);
  if ((v36 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v37 = v70;
  v38 = *(v70 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v39 = sub_22BE26188();
  if (sub_22BE1AEA8(v39, v40, v71) == 1)
  {
    sub_22BE3E950(v2 + v38);
    if (!v32)
    {
      goto LABEL_25;
    }

    sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
    goto LABEL_17;
  }

  sub_22BE22868();
  sub_22BE3E950(v2 + v38);
  if (v32)
  {
    goto LABEL_24;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v41 = sub_22BE1C2A0();
  static TranscriptProtoStatementID.== infix(_:_:)(v41, v42);
  sub_22BE39304();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&unk_22C2AE4A0)
  {
LABEL_17:
    v43 = *(v37 + 48);
    v2 = v69;
    sub_22BE27B84();
    sub_22BE22868();
    sub_22BE27B84();
    sub_22BE22868();
    sub_22BE3E950(v2);
    if (v32)
    {
      sub_22BE3E950(v2 + v43);
      if (!v32)
      {
        goto LABEL_25;
      }

      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
    }

    else
    {
      sub_22C0B1FA8();
      sub_22BE3E950(v2 + v43);
      if (v44)
      {
        goto LABEL_24;
      }

      sub_22BE18AA8();
      sub_22C0B0868();
      v46 = sub_22BE1C2A0();
      static TranscriptProtoStatementID.== infix(_:_:)(v46, v47);
      sub_22BE39304();
      sub_22BE1AB74();
      sub_22C0B08BC();
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((&unk_22C2AE4A0 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    sub_22C0B1E80();
    if (v50)
    {
      if (!v48)
      {
        goto LABEL_27;
      }

      sub_22BE3A508(v49);
      v53 = v32 && v51 == v52;
      if (!v53 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v48)
    {
      goto LABEL_27;
    }

    sub_22C0B1E80();
    if (v56)
    {
      if (!v54)
      {
        goto LABEL_27;
      }

      sub_22BE3A508(v55);
      v59 = v32 && v57 == v58;
      if (!v59 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v54)
    {
      goto LABEL_27;
    }

    v60 = *(v37 + 48);
    v2 = v67;
    sub_22BE27B84();
    sub_22BE22868();
    sub_22BE27B84();
    sub_22BE22868();
    sub_22BE3E950(v2);
    if (v32)
    {
      sub_22BE3E950(v2 + v60);
      if (!v32)
      {
        goto LABEL_25;
      }

      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_55:
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v64, v65, MEMORY[0x277D216D0]);
      sub_22C0B1968();
      v45 = sub_22C272FD4();
      goto LABEL_28;
    }

    sub_22BE22868();
    sub_22BE3E950(v2 + v60);
    if (!v61)
    {
      sub_22BE18AA8();
      sub_22C0B0868();
      v62 = sub_22BE1C2A0();
      static TranscriptProtoStatementID.== infix(_:_:)(v62, v63);
      sub_22BE39304();
      sub_22BE1AB74();
      sub_22C0B08BC();
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((&unk_22C2AE4A0 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_55;
    }

LABEL_24:
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_25:
    v33 = &qword_27D909100;
    v34 = &unk_22C27FD00;
    v35 = v2;
    goto LABEL_26;
  }

LABEL_27:
  v45 = 0;
LABEL_28:
  sub_22BE1C1DC(v45);
  sub_22BE1AABC();
}

uint64_t sub_22C084F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AA8, type metadata accessor for TranscriptProtoInterpretedStatementResult, &protocol conformance descriptor for TranscriptProtoInterpretedStatementResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C084FDC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F070, type metadata accessor for TranscriptProtoInterpretedStatementResult, &protocol conformance descriptor for TranscriptProtoInterpretedStatementResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08504C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90F070, type metadata accessor for TranscriptProtoInterpretedStatementResult, &protocol conformance descriptor for TranscriptProtoInterpretedStatementResult);

  return sub_22C270774();
}

uint64_t sub_22C0850D8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E0B0);
  sub_22BE199F4(v0, qword_27D90E0B0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "expression";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "isRoot";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "isExpanded";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "canonicalIndex";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "executionSupportType";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoProgramStatement.decodeMessage<A>(decoder:)()
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
        sub_22BE1A338();
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
      case 4:
        v11 = sub_22BE18E2C();
        sub_22C0854CC(v11, v12, v13, v14);
        break;
      case 5:
        v7 = sub_22BE18E2C();
        sub_22C085580(v7, v8, v9, v10);
        break;
      case 6:
        sub_22BE18E2C();
        sub_22C0855E4();
        break;
      case 7:
        v3 = sub_22BE18E2C();
        sub_22C085628(v3, v4, v5, v6);
        break;
      case 8:
        v15 = sub_22BE18E2C();
        sub_22C08568C(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C0854CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoProgramStatement(0);
  type metadata accessor for TranscriptProtoExpression(0);
  sub_22BE2C988(&qword_27D910248, type metadata accessor for TranscriptProtoExpression, &protocol conformance descriptor for TranscriptProtoExpression);
  return sub_22C2706F4();
}

uint64_t sub_22C0855E4()
{
  v0 = sub_22BE378F4();
  v2 = v1(v0);
  sub_22BE26130(*(v2 + 28));
  return sub_22C2705B4();
}

uint64_t sub_22C08568C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoProgramStatement(0);
  type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  sub_22BE2C988(&qword_27D910648, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType, &protocol conformance descriptor for TranscriptProtoProgramStatement.ExecutionSupportType);
  return sub_22C2706F4();
}

void TranscriptProtoProgramStatement.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  sub_22BE192B4();
  sub_22BE51D20();
  if (!v0)
  {
    v1 = sub_22BE17D78();
    sub_22C0857FC(v1, v2, v3, v4);
    v5 = sub_22BE17D78();
    sub_22C0859D0(v5, v6, v7, v8);
    sub_22BE17D78();
    sub_22C085A48();
    v9 = sub_22BE17D78();
    sub_22C085AAC(v9, v10, v11, v12);
    v13 = sub_22BE17D78();
    sub_22C085B24(v13, v14, v15, v16);
    type metadata accessor for TranscriptProtoProgramStatement(0);
    sub_22BE19514();
  }
}

uint64_t sub_22C0857FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F0A8, &qword_22C2B5B70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoExpression(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoProgramStatement(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90F0A8, &qword_22C2B5B70);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D910248, type metadata accessor for TranscriptProtoExpression, &protocol conformance descriptor for TranscriptProtoExpression);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C0859D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22C085A48()
{
  v1 = sub_22BE378F4();
  result = v2(v1);
  if (*(v0 + *(result + 28)) != 2)
  {
    sub_22C0B164C();
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22C085AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return sub_22C270854();
  }

  return result;
}

uint64_t sub_22C085B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F098, &unk_22C2AE7E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoProgramStatement(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90F098, &unk_22C2AE7E0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D910648, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType, &protocol conformance descriptor for TranscriptProtoProgramStatement.ExecutionSupportType);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoProgramStatement.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = v4;
  type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22C0B1ABC(v7);
  v8 = sub_22BE5CE4C(&qword_27D90F098, &unk_22C2AE7E0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D90F0A0, &qword_22C297118);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE181D0(v11, v56);
  v12 = type metadata accessor for TranscriptProtoExpression(0);
  v13 = sub_22BE272C0(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  sub_22BE38A28(v14);
  v15 = sub_22BE5CE4C(&qword_27D90F0A8, &qword_22C2B5B70);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE29250(v17, v57);
  v18 = sub_22BE5CE4C(&qword_27D90F0B0, &qword_22C297120);
  sub_22BE28784(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE23E58();
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v20);
  sub_22BE18DFC();
  v21 = sub_22BE1AEE4();
  v23 = sub_22BE5CE4C(v21, v22);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE19668();
  v25 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE19448(v25);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE19E64();
  sub_22BE25C08();
  sub_22C0B1A8C();
  sub_22C0B1C60();
  sub_22C0B1A8C();
  sub_22BE18190(v1);
  if (v27)
  {
    sub_22BE18A84();
    if (v27)
    {
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_12;
    }

LABEL_9:
    v28 = &qword_27D909100;
    v29 = &unk_22C27FD00;
LABEL_10:
    v30 = v1;
LABEL_21:
    sub_22BE33928(v30, v28, v29);
    goto LABEL_22;
  }

  sub_22BE3C5E4();
  sub_22BE22868();
  sub_22BE18A84();
  if (v27)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v31 = static TranscriptProtoStatementID.== infix(_:_:)(v0, v2);
  sub_22BE200D4();
  sub_22C0B08BC();
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v32 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v33 = *(v59 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v34 = sub_22BE3C598();
  sub_22BE36144(v34, v35);
  if (v27)
  {
    sub_22BE18190(v3 + v33);
    if (v27)
    {
      sub_22BE33928(v3, &qword_27D90F0A8, &qword_22C2B5B70);
      goto LABEL_25;
    }

LABEL_20:
    v28 = &qword_27D90F0B0;
    v29 = &qword_22C297120;
    v30 = v3;
    goto LABEL_21;
  }

  sub_22BE22868();
  sub_22BE18190(v3 + v33);
  if (v36)
  {
    sub_22BE291DC();
    sub_22C0B08BC();
    goto LABEL_20;
  }

  sub_22C0B0868();
  v38 = sub_22BE200E0();
  static TranscriptProtoExpression.== infix(_:_:)(v38);
  sub_22BE39304();
  sub_22BE39EAC();
  sub_22C0B08BC();
  sub_22BE33928(v3, &qword_27D90F0A8, &qword_22C2B5B70);
  if ((&qword_22C2B5B70 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  sub_22C0B1BDC();
  if (v27)
  {
    if (v39 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v39 == 2 || ((v40 ^ v39) & 1) != 0)
  {
    goto LABEL_22;
  }

  sub_22C0B1BDC();
  if (v27)
  {
    if (v41 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v41 == 2 || ((v42 ^ v41) & 1) != 0)
  {
    goto LABEL_22;
  }

  v43 = *(v32 + 32);
  v44 = (v5 + v43);
  v45 = *(v5 + v43 + 4);
  v46 = (v60 + v43);
  v47 = *(v60 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      goto LABEL_22;
    }
  }

  sub_22BE27B84();
  sub_22BE22868();
  v1 = v58;
  sub_22BE3CBC0();
  sub_22BE22868();
  v48 = sub_22BFB1A7C();
  sub_22BE36144(v48, v49);
  if (v27)
  {
    sub_22BE18A84();
    if (v27)
    {
      sub_22BE33928(v58, &qword_27D90F098, &unk_22C2AE7E0);
LABEL_53:
      sub_22C2704B4();
      sub_22BE18E5C();
      v55 = sub_22BE2C988(v53, v54, MEMORY[0x277D216D0]);
      v37 = sub_22BE406DC(v55);
      goto LABEL_23;
    }

    goto LABEL_51;
  }

  sub_22BE22868();
  sub_22BE18A84();
  if (v50)
  {
    sub_22BE291DC();
    sub_22C0B08BC();
LABEL_51:
    v28 = &qword_27D90F0A0;
    v29 = &qword_22C297118;
    goto LABEL_10;
  }

  sub_22C0B0868();
  v51 = sub_22BE200E0();
  static TranscriptProtoProgramStatement.ExecutionSupportType.== infix(_:_:)(v51, v52);
  sub_22BE39304();
  sub_22BE39EAC();
  sub_22C0B08BC();
  sub_22BE33928(v58, &qword_27D90F098, &unk_22C2AE7E0);
  if (&unk_22C2AE7E0)
  {
    goto LABEL_53;
  }

LABEL_22:
  v37 = 0;
LABEL_23:
  sub_22BE1C1DC(v37);
  sub_22BE1AABC();
}

uint64_t sub_22C0863F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AA0, type metadata accessor for TranscriptProtoProgramStatement, &protocol conformance descriptor for TranscriptProtoProgramStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C086470(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E9F8, type metadata accessor for TranscriptProtoProgramStatement, &protocol conformance descriptor for TranscriptProtoProgramStatement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0864E0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D90E9F8, type metadata accessor for TranscriptProtoProgramStatement, &protocol conformance descriptor for TranscriptProtoProgramStatement);

  return sub_22C270774();
}

uint64_t sub_22C086560()
{
  result = MEMORY[0x2318AB8D0](0xD000000000000015, 0x800000022C2D9320);
  qword_27D90E0C8 = 0xD00000000000001BLL;
  unk_27D90E0D0 = 0x800000022C2D89E0;
  return result;
}

uint64_t sub_22C0865F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_22BE18944();
}

uint64_t sub_22C086644()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E0D8);
  sub_22BE199F4(v0, qword_27D90E0D8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "supported";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "unsupportedListValue";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void sub_22C086830()
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
      v10 = 1;
LABEL_8:
      sub_22C00E1C8(v3, v4, v5, v6, v10, v7, v8, v9, v11, *v12, v12[4]);
    }

    else if (v1 == 1)
    {
      v3 = sub_22BE18E2C();
      v10 = 0;
      goto LABEL_8;
    }
  }
}

void sub_22C0868C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_22BE410C0();
  if (*v4 == 2)
  {
    goto LABEL_6;
  }

  sub_22BE17D78();
  if (v7)
  {
    sub_22C086A14();
  }

  else
  {
    sub_22C086934();
  }

  if (!v5)
  {
LABEL_6:
    a4(0);
    sub_22BE235A8();
  }
}

void sub_22C086934()
{
  sub_22BE2BB34();
  sub_22BE3ACB0();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE1955C();
  v2 = *v0;
  if (v2 == 2 || (v2 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C270414();
    sub_22BE1B470();
    sub_22BE2C988(v3, v4, MEMORY[0x277D21558]);
    v5 = sub_22C0B1684();
    sub_22C0B16A4(v5, v6, v7, v8);
    v9 = sub_22C0B14DC();
    v10(v9);
    sub_22BE36324();
    sub_22BEE93D4();
  }
}

void sub_22C086A14()
{
  sub_22BE2BB34();
  sub_22BE3ACB0();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE1955C();
  v2 = *v0;
  if (v2 == 2 || (v2 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C270414();
    sub_22BE1B470();
    sub_22BE2C988(v3, v4, MEMORY[0x277D21558]);
    v5 = sub_22BE19478();
    sub_22C0B16A4(v5, 2, v6, v7);
    v8 = sub_22C0B14DC();
    v9(v8);
    sub_22BE36324();
    sub_22BEE93D4();
  }
}

uint64_t sub_22C086B10()
{
  sub_22BE18378();
  sub_22C0B1DF0();
  if (v2 != 2)
  {
    if (v1 == 2 || ((v1 ^ v2) & 1) != 0)
    {
      return 0;
    }

LABEL_6:
    v0(0);
    sub_22BE3636C();
    sub_22BE18E5C();
    v5 = sub_22BE2C988(v3, v4, MEMORY[0x277D216D0]);
    return sub_22BE2B85C(v5) & 1;
  }

  if (v1 == 2)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_22C086C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A98, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType, &protocol conformance descriptor for TranscriptProtoProgramStatement.ExecutionSupportType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C086C98(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910648, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType, &protocol conformance descriptor for TranscriptProtoProgramStatement.ExecutionSupportType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C086D08(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910648, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType, &protocol conformance descriptor for TranscriptProtoProgramStatement.ExecutionSupportType);

  return sub_22C270774();
}

uint64_t sub_22C086D94()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_281075FF8);
  sub_22BE199F4(v0, qword_281075FF8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deviceLocale";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userLocale";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "responseLocale";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C086F9C()
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

    if (result == 3 || result == 2)
    {
      sub_22BE27184();
      v0();
    }

    else if (result == 1)
    {
      sub_22BE27184();
      v2();
    }
  }

  return result;
}

uint64_t sub_22C087040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_22BE19FC4(a1);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE3E81C();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v4 + 32) == *(v3 + 32) && *(v4 + 40) == *(v3 + 40);
  if (!v12 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_22C0B1BAC();
  sub_22BE18E5C();
  v15 = sub_22BE2C988(v13, v14, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v15) & 1;
}

uint64_t sub_22C087174(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A90, type metadata accessor for TranscriptProtoLocaleSettings, &protocol conformance descriptor for TranscriptProtoLocaleSettings);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0871F0(uint64_t a1)
{
  v2 = sub_22BE2C988(&unk_281075FE0, type metadata accessor for TranscriptProtoLocaleSettings, &protocol conformance descriptor for TranscriptProtoLocaleSettings);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C087260(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&unk_281075FE0, type metadata accessor for TranscriptProtoLocaleSettings, &protocol conformance descriptor for TranscriptProtoLocaleSettings);

  return sub_22C270774();
}

uint64_t sub_22C0872EC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E0F0);
  sub_22BE199F4(v0, qword_27D90E0F0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "voiceGender";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userGender";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t static TranscriptProtoGenderSettings.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_22BE18378();
  if (*(v2 + 1) != *(v3 + 1))
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoGenderSettings(0);
  sub_22BE23A04();
  sub_22BE18E5C();
  v6 = sub_22BE2C988(v4, v5, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v6) & 1;
}

uint64_t sub_22C0877C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A88, type metadata accessor for TranscriptProtoGenderSettings, &protocol conformance descriptor for TranscriptProtoGenderSettings);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C087840(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910668, type metadata accessor for TranscriptProtoGenderSettings, &protocol conformance descriptor for TranscriptProtoGenderSettings);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0878B0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910668, type metadata accessor for TranscriptProtoGenderSettings, &protocol conformance descriptor for TranscriptProtoGenderSettings);

  return sub_22C270774();
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.decodeMessage<A>(decoder:)()
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
      sub_22C270634();
    }
  }

  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (!*v0 || (sub_22BE1BAB8(), result = sub_22C270804(), !v1))
  {
    type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
    return sub_22BE294F8();
  }

  return result;
}

uint64_t static TranscriptProtoDeviceDetailsDeviceType.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(v2);
  sub_22BE3636C();
  sub_22BE18E5C();
  v5 = sub_22BE2C988(v3, v4, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v5) & 1;
}

uint64_t sub_22C087B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A80, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType, &protocol conformance descriptor for TranscriptProtoDeviceDetailsDeviceType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C087BC4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910680, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType, &protocol conformance descriptor for TranscriptProtoDeviceDetailsDeviceType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C087C34(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910680, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType, &protocol conformance descriptor for TranscriptProtoDeviceDetailsDeviceType);

  return sub_22C270774();
}

uint64_t sub_22C087CC0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E120);
  sub_22BE199F4(v0, qword_27D90E120);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deviceIdsId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C087ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoDeviceDetails(0);
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  sub_22BE2C988(&qword_27D910680, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType, &protocol conformance descriptor for TranscriptProtoDeviceDetailsDeviceType);
  return sub_22C2706F4();
}

uint64_t sub_22C087FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F0E8, &qword_22C2B5C90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90F0E8, &qword_22C2B5C90);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D910680, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType, &protocol conformance descriptor for TranscriptProtoDeviceDetailsDeviceType);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoDeviceDetails.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE23708();
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE18DFC();
  v6 = sub_22BE5CE4C(&qword_27D90F0E8, &qword_22C2B5C90);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D90F0F0, &qword_22C297128);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E64();
  sub_22BE33C20();
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_17;
  }

  v12 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_22BE3E440(v12);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22C0B1568();
  sub_22BE181B0(v0);
  if (v11)
  {
    sub_22BE181B0(v0 + v3);
    if (v11)
    {
      sub_22BE33928(v0, &qword_27D90F0E8, &qword_22C2B5C90);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE181B0(v0 + v3);
  if (v17)
  {
    sub_22C0B1AA4();
LABEL_15:
    v18 = &qword_27D90F0F0;
    v19 = &qword_22C297128;
LABEL_16:
    sub_22BE33928(v0, v18, v19);
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  sub_22C0B1D54();
  if (*v2 != *v1)
  {
    sub_22C0B08BC();
    sub_22BE291B0();
    sub_22C0B08BC();
    v18 = &qword_27D90F0E8;
    v19 = &qword_22C2B5C90;
    goto LABEL_16;
  }

  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v20, v21, MEMORY[0x277D216D0]);
  v22 = sub_22C0B1B14();
  sub_22C0B08BC();
  sub_22BE3EA80();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90F0E8, &qword_22C2B5C90);
  if ((v22 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  sub_22C0B16F4();
  sub_22BE18E5C();
  v15 = sub_22BE2C988(v13, v14, MEMORY[0x277D216D0]);
  v16 = sub_22BE35FB8(v15);
LABEL_18:
  sub_22BE1C1DC(v16);
  sub_22BE1AABC();
}

uint64_t sub_22C08850C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A78, type metadata accessor for TranscriptProtoDeviceDetails, &protocol conformance descriptor for TranscriptProtoDeviceDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08858C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910698, type metadata accessor for TranscriptProtoDeviceDetails, &protocol conformance descriptor for TranscriptProtoDeviceDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0885FC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910698, type metadata accessor for TranscriptProtoDeviceDetails, &protocol conformance descriptor for TranscriptProtoDeviceDetails);

  return sub_22C270774();
}

uint64_t sub_22C088688()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_281077F58);
  sub_22BE199F4(v0, qword_281077F58);
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
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoStatementID.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      sub_22BE2037C();
      sub_22C270694();
    }

    else if (result == 1)
    {
      sub_22BE239F4();
      sub_22C2706C4();
    }
  }

  return result;
}

uint64_t static TranscriptProtoStatementID.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2)
  {
    sub_22BE18378();
    v4 = *(v2 + 16);
    if (*(v3 + 16))
    {
      if (v4)
      {
        sub_22C0B1A50();
        v7 = v7 && v5 == v6;
        if (v7 || (sub_22C274014() & 1) != 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v4)
    {
LABEL_9:
      type metadata accessor for TranscriptProtoStatementID(0);
      sub_22BE23A04();
      sub_22BE18E5C();
      v10 = sub_22BE2C988(v8, v9, MEMORY[0x277D216D0]);
      return sub_22BE2B85C(v10) & 1;
    }
  }

  return 0;
}

uint64_t sub_22C0889EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A70, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C088A68(uint64_t a1)
{
  v2 = sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C088AD8(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);

  return sub_22C270774();
}

uint64_t sub_22C088B64()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E138);
  sub_22BE199F4(v0, qword_27D90E138);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tool";
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
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "originProgramStatementId";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoToolResolution.decodeMessage<A>(decoder:)()
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
        sub_22C088F0C(v7, v8, v9, v10);
        break;
      case 2:
        v3 = sub_22BE18E2C();
        sub_22C088E58(v3, v4, v5, v6);
        break;
      case 1:
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
    }
  }
}

uint64_t sub_22C088E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoToolResolution(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C088F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoToolResolution(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void sub_22C089028()
{
  sub_22BE2BB34();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_22BE33A5C();
  v7 = sub_22BE192B4();
  v8(v7);
  if (!v0)
  {
    v9 = sub_22BE17D78();
    v6(v9);
    v10 = sub_22BE17D78();
    v4(v10);
    v2(0);
    sub_22BE19514();
  }

  sub_22BEE93D4();
}

uint64_t sub_22C0890C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C180, &unk_22C296C40);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C988(&qword_27D90C790, MEMORY[0x277D72898], MEMORY[0x277D72890]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22C0892C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoToolResolution(0);
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

uint64_t sub_22C089494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoToolResolution(0);
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

void static TranscriptProtoToolResolution.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = v1;
  v3 = sub_22BE37EB4();
  v4 = type metadata accessor for TranscriptProtoStatementID(v3);
  v5 = sub_22BE272C0(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE3FF7C(v6);
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E94();
  sub_22BE38A28(v10);
  v11 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  v12 = sub_22BE28784(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  v53 = v13;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E94();
  sub_22BE183BC();
  sub_22C272674();
  sub_22BE35868();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BE179EC();
  sub_22BE336DC();
  v18 = &qword_27D90C180;
  v19 = sub_22BE2590C();
  v21 = sub_22BE5CE4C(v19, v20);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE234F4();
  v23 = sub_22BE5CE4C(&qword_27D90C188, &qword_22C290E48);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE28738();
  v26 = *(v25 + 56);
  sub_22C0B1B94();
  sub_22BEC067C();
  sub_22C0B1C60();
  sub_22BEC067C();
  sub_22BE181B0(v0);
  if (v27)
  {
    sub_22BE181B0(v0 + v26);
    if (v27)
    {
      sub_22BE33928(v0, &qword_27D90C180, &unk_22C296C40);
      goto LABEL_11;
    }
  }

  else
  {
    sub_22BE22868();
    sub_22BE181B0(v0 + v26);
    if (!v27)
    {
      v33 = sub_22C0B1C84();
      v34(v33);
      sub_22BE39220();
      sub_22BE2C988(v35, v36, MEMORY[0x277D728A0]);
      sub_22BE39EAC();
      v18 = sub_22C272FD4();
      v37 = *(v16 + 8);
      v38 = sub_22BE19454();
      v37(v38);
      v39 = sub_22BE35838();
      v37(v39);
      sub_22BE33928(v0, &qword_27D90C180, &unk_22C296C40);
      if ((v18 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_11:
      type metadata accessor for TranscriptProtoToolResolution(0);
      sub_22C0B1EBC();
      sub_22C0B1754();
      sub_22BE22868();
      sub_22C0B1754();
      sub_22BE22868();
      v40 = sub_22BE3C688();
      if (sub_22BE1AEA8(v40, v41, v54) == 1)
      {
        sub_22C0B1518(v2 + v18);
        if (!v27)
        {
          goto LABEL_18;
        }

        sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      }

      else
      {
        sub_22BE35EF8();
        sub_22C0B1518(v2 + v18);
        if (v27)
        {
          sub_22BE17DB0();
          sub_22C0B08BC();
LABEL_18:
          v30 = &qword_27D909100;
          v31 = &unk_22C27FD00;
          v32 = v2;
          goto LABEL_29;
        }

        sub_22BE18AA8();
        sub_22C0B0868();
        v42 = sub_22BE1B328();
        v44 = static TranscriptProtoStatementID.== infix(_:_:)(v42, v43);
        sub_22BE1AB74();
        sub_22C0B08BC();
        sub_22BE200D4();
        sub_22C0B08BC();
        sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
        if ((v44 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v45 = *(v26 + 48);
      sub_22C0B1754();
      sub_22BE22868();
      sub_22C0B1754();
      sub_22BE22868();
      sub_22C0B1518(v53);
      if (v27)
      {
        sub_22C0B1518(v53 + v45);
        if (v27)
        {
          sub_22BE33928(v53, &qword_27D9090F8, &unk_22C2AE4A0);
          goto LABEL_33;
        }
      }

      else
      {
        sub_22BE22868();
        sub_22C0B1518(v53 + v45);
        if (!v46)
        {
          sub_22BE18AA8();
          sub_22C0B0868();
          v48 = sub_22BE392D4();
          v50 = static TranscriptProtoStatementID.== infix(_:_:)(v48, v49);
          sub_22BE1AB74();
          sub_22C0B08BC();
          sub_22BE33FCC();
          sub_22C0B08BC();
          sub_22BE33928(v53, &qword_27D9090F8, &unk_22C2AE4A0);
          if ((v50 & 1) == 0)
          {
            goto LABEL_30;
          }

LABEL_33:
          sub_22C2704B4();
          sub_22BE18E5C();
          sub_22BE2C988(v51, v52, MEMORY[0x277D216D0]);
          sub_22C0B1968();
          sub_22BE39F74();
          v47 = sub_22C272FD4();
          goto LABEL_31;
        }

        sub_22BE17DB0();
        sub_22C0B08BC();
      }

      v30 = &qword_27D909100;
      v31 = &unk_22C27FD00;
      v32 = v53;
      goto LABEL_29;
    }

    v28 = sub_22BE35838();
    v29(v28);
  }

  v30 = &qword_27D90C188;
  v31 = &qword_22C290E48;
  v32 = v0;
LABEL_29:
  sub_22BE33928(v32, v30, v31);
LABEL_30:
  v47 = 0;
LABEL_31:
  sub_22BE1C1DC(v47);
  sub_22BE1AABC();
}

uint64_t sub_22C089CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A68, type metadata accessor for TranscriptProtoToolResolution, &protocol conformance descriptor for TranscriptProtoToolResolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C089D30(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9106B8, type metadata accessor for TranscriptProtoToolResolution, &protocol conformance descriptor for TranscriptProtoToolResolution);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C089DA0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9106B8, type metadata accessor for TranscriptProtoToolResolution, &protocol conformance descriptor for TranscriptProtoToolResolution);

  return sub_22C270774();
}

uint64_t sub_22C089E2C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E150);
  sub_22BE199F4(v0, qword_27D90E150);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "operation";
  *(v12 + 1) = 9;
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
  *v15 = 5;
  *v16 = "statementIdToUndo";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoUndoRedoRequest.decodeMessage<A>(decoder:)()
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
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BE52254();
        break;
      case 4:
        v7 = sub_22BE18E2C();
        sub_22C08A184(v7, v8, v9, v10);
        break;
      case 5:
        v3 = sub_22BE18E2C();
        sub_22C08A238(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C08A184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C08A238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoUndoRedoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C0B1EE4();
  sub_22BE1A730();
  if (!v4 || (sub_22BE25098(), sub_22C270844(), !v3))
  {
    v5 = sub_22BE17D60();
    sub_22BE4E1C8(v5);
    if (!v3)
    {
      sub_22BE2BC90();
      if (v6)
      {
        sub_22BFC2DD4();
        sub_22BE23CE4();
        sub_22C2707D4();
      }

      v7 = sub_22BE17D60();
      sub_22C08A3AC(v7, v8, v9, v10);
      v11 = sub_22BE17D60();
      sub_22C08A580(v11, v12, v13, v14);
      type metadata accessor for TranscriptProtoUndoRedoRequest(0);
      sub_22BE1AC30();
    }
  }

  sub_22C0B1ED0();
}

uint64_t sub_22C08A3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoUndoRedoRequest(0);
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

uint64_t sub_22C08A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoUndoRedoRequest(0);
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

void static TranscriptProtoUndoRedoRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoStatementID(v3);
  sub_22BE26880();
  MEMORY[0x28223BE20](v4);
  sub_22BE38390();
  v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v7);
  sub_22BE324EC();
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE28F58();
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v9);
  sub_22BE32374();
  sub_22BE33C20();
  v12 = v12 && v10 == v11;
  if (!v12 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22C0B1C78();
  if (v14)
  {
    if (!v13)
    {
      goto LABEL_37;
    }

    sub_22BE3C714();
    v17 = v12 && v15 == v16;
    if (!v17 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_15:
    sub_22BE36248();
    if (!v12)
    {
      goto LABEL_37;
    }

    type metadata accessor for TranscriptProtoUndoRedoRequest(0);
    v18 = *(v1 + 48);
    sub_22BE26234();
    sub_22BE22868();
    sub_22BE22868();
    sub_22BE1972C(v2);
    if (v12)
    {
      sub_22BE1972C(v2 + v18);
      if (v12)
      {
        sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_27:
        v24 = *(v1 + 48);
        sub_22BE4885C();
        sub_22BE4885C();
        sub_22BE26A1C();
        if (v12)
        {
          sub_22BE1972C(v0 + v24);
          if (v12)
          {
            sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
            goto LABEL_40;
          }
        }

        else
        {
          sub_22BE22868();
          sub_22BE1972C(v0 + v24);
          if (!v25)
          {
            sub_22BE1868C();
            sub_22C0B0868();
            v27 = sub_22BE200E0();
            v29 = static TranscriptProtoStatementID.== infix(_:_:)(v27, v28);
            sub_22BE324FC();
            sub_22C0B08BC();
            sub_22BE33560();
            sub_22C0B08BC();
            sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
            if ((v29 & 1) == 0)
            {
              goto LABEL_37;
            }

LABEL_40:
            sub_22C2704B4();
            sub_22BE18E5C();
            v32 = sub_22BE2C988(v30, v31, MEMORY[0x277D216D0]);
            v26 = sub_22BE2B85C(v32);
            goto LABEL_38;
          }

          sub_22BE17DB0();
          sub_22C0B08BC();
        }

        v20 = v0;
        goto LABEL_36;
      }
    }

    else
    {
      sub_22BE3E79C();
      sub_22BE22868();
      sub_22BE1972C(v2 + v18);
      if (!v19)
      {
        sub_22BE4160C();
        sub_22C0B0868();
        v21 = sub_22C0B1E68();
        v23 = static TranscriptProtoStatementID.== infix(_:_:)(v21, v22);
        sub_22C0B08BC();
        sub_22BE25C94();
        sub_22C0B08BC();
        sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
        if ((v23 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_27;
      }

      sub_22BE17DB0();
      sub_22C0B08BC();
    }

    v20 = v2;
LABEL_36:
    sub_22BE33928(v20, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_37;
  }

  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_37:
  v26 = 0;
LABEL_38:
  sub_22BE1C1DC(v26);
  sub_22BE1AABC();
}

uint64_t sub_22C08ABB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A60, type metadata accessor for TranscriptProtoUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoUndoRedoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08AC34(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9106D0, type metadata accessor for TranscriptProtoUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoUndoRedoRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08ACA4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9106D0, type metadata accessor for TranscriptProtoUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoUndoRedoRequest);

  return sub_22C270774();
}

uint64_t sub_22C08AD30()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E168);
  sub_22BE199F4(v0, qword_27D90E168);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "operation";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "statementId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statementIdToUndo";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void sub_22C08AFEC()
{
  sub_22BE1B214();
  sub_22C0B1664();
  while (1)
  {
    sub_22BE196A8();
    v4 = sub_22C270584();
    if (v1 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        sub_22BE3EA80();
        sub_22C2706A4();
        break;
      case 2:
        v8 = sub_22BE1A8F8();
        v3(v8);
        break;
      case 3:
        v6 = sub_22BE1A8F8();
        v2(v6);
        break;
      case 4:
        v7 = sub_22BE1A8F8();
        v0(v7);
        break;
      default:
        continue;
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C08B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C08B158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoClientUndoRedoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C0B1EE4();
  sub_22BE1A730();
  if (!v4 || (sub_22BE25098(), sub_22C270844(), !v3))
  {
    sub_22BE2BC90();
    if (!v5 || (sub_22BFC2DD4(), sub_22BE23CE4(), sub_22C2707D4(), !v3))
    {
      v6 = sub_22BE17D60();
      sub_22C08B2BC(v6, v7, v8, v9);
      if (!v3)
      {
        v10 = sub_22BE17D60();
        sub_22C08B490(v10, v11, v12, v13);
        type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
        sub_22BE1AC30();
      }
    }
  }

  sub_22C0B1ED0();
}

uint64_t sub_22C08B2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
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

uint64_t sub_22C08B490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
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

void static TranscriptProtoClientUndoRedoRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoStatementID(v3);
  sub_22BE26880();
  MEMORY[0x28223BE20](v4);
  sub_22BE38390();
  v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v7);
  sub_22BE324EC();
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE28F58();
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v9);
  sub_22BE32374();
  sub_22BE33C20();
  v12 = v12 && v10 == v11;
  if (!v12 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_22BE36248();
  if (!v12)
  {
    goto LABEL_28;
  }

  type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v13 = *(v1 + 48);
  sub_22C0B1760();
  sub_22BE22868();
  sub_22C0B1760();
  sub_22BE22868();
  sub_22BE1972C(v2);
  if (v12)
  {
    sub_22BE1972C(v2 + v13);
    if (v12)
    {
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_18;
    }

LABEL_16:
    v15 = v2;
LABEL_27:
    sub_22BE33928(v15, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_28;
  }

  sub_22BE3E79C();
  sub_22BE22868();
  sub_22BE1972C(v2 + v13);
  if (v14)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_16;
  }

  sub_22BE4160C();
  sub_22C0B0868();
  v16 = sub_22C0B1E68();
  v18 = static TranscriptProtoStatementID.== infix(_:_:)(v16, v17);
  sub_22C0B08BC();
  sub_22BE25C94();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_18:
  v19 = *(v1 + 48);
  sub_22BE4885C();
  sub_22BE4885C();
  sub_22BE1972C(v0);
  if (v12)
  {
    sub_22BE1972C(v0 + v19);
    if (v12)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_31:
      sub_22C2704B4();
      sub_22BE18E5C();
      v27 = sub_22BE2C988(v25, v26, MEMORY[0x277D216D0]);
      v21 = sub_22BE2B85C(v27);
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  sub_22C0B1DB4();
  sub_22BE22868();
  sub_22BE1972C(v0 + v19);
  if (v20)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_26:
    v15 = v0;
    goto LABEL_27;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v22 = sub_22BE200E0();
  v24 = static TranscriptProtoStatementID.== infix(_:_:)(v22, v23);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE33560();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v24)
  {
    goto LABEL_31;
  }

LABEL_28:
  v21 = 0;
LABEL_29:
  sub_22BE1C1DC(v21);
  sub_22BE1AABC();
}