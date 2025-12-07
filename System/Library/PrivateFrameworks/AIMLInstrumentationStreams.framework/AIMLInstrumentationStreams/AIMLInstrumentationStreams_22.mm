uint64_t sub_23C7D1908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAB88, &unk_23C8A1350);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB88, &unk_23C8A1350);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_23C7D1BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203230, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprInfixVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7D1C74(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202B50, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprInfixVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7D1CE0(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202B50, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprInfixVariant);

  return sub_23C871204();
}

uint64_t sub_23C7D1D7C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200F40);
  __swift_project_value_buffer(v0, qword_27E200F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_23C88DBB0;
  v4 = v55 + v3;
  v5 = v55 + v3 + v1[14];
  *(v55 + v3) = 1;
  *v5 = "value";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
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
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "pick";
  *(v22 + 8) = 4;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "confirm";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "search";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 25;
  *v28 = "structuredSearch";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "pickOne";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "resolveTool";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "undo";
  *(v34 + 1) = 4;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "reject";
  *(v36 + 1) = 6;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v37 = "cancel";
  *(v37 + 8) = 6;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "noMatchingTool";
  *(v39 + 1) = 14;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "continuePlanning";
  *(v41 + 1) = 16;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "endOfPlan";
  *(v43 + 1) = 9;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 22;
  *v45 = "getMentionedApps";
  *(v45 + 1) = 16;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 23;
  *v47 = "open";
  *(v47 + 1) = 4;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 24;
  *v49 = "explicitResolutionRequest";
  *(v49 + 1) = 25;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 26;
  *v51 = "payload";
  *(v51 + 1) = 7;
  v51[16] = 2;
  v8();
  v52 = (v4 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 27;
  *v53 = "format";
  *(v53 + 1) = 6;
  v53[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoExpression.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_23C7D2830(v5, a1, a2, a3);
        break;
      case 2:
        sub_23C7D2DE0(v5, a1, a2, a3);
        break;
      case 3:
        sub_23C7D339C(v5, a1, a2, a3);
        break;
      case 4:
        sub_23C7D3958(v5, a1, a2, a3);
        break;
      case 6:
        sub_23C7D3F14(v5, a1, a2, a3);
        break;
      case 7:
        sub_23C7D44D0(v5, a1, a2, a3);
        break;
      case 8:
        sub_23C7D4A8C(v5, a1, a2, a3);
        break;
      case 9:
        sub_23C7D5048(v5, a1, a2, a3);
        break;
      case 10:
        sub_23C7D5604(v5, a1, a2, a3);
        break;
      case 12:
        sub_23C7D5BC0(v5, a1, a2, a3);
        break;
      case 13:
        sub_23C7D617C(v5, a1, a2, a3);
        break;
      case 14:
        sub_23C7D6738(v5, a1, a2, a3);
        break;
      case 15:
        sub_23C7D6CF4(v5, a1, a2, a3);
        break;
      case 16:
        sub_23C7D72B0(v5, a1, a2, a3);
        break;
      case 17:
        sub_23C7D786C(v5, a1, a2, a3);
        break;
      case 18:
        sub_23C7D7E28(v5, a1, a2, a3);
        break;
      case 19:
        sub_23C7D83E4(v5, a1, a2, a3);
        break;
      case 20:
        sub_23C7D89A0(v5, a1, a2, a3);
        break;
      case 21:
        sub_23C7D8F5C(v5, a1, a2, a3);
        break;
      case 22:
        sub_23C7D9518(v5, a1, a2, a3);
        break;
      case 23:
        sub_23C7D9AD4(v5, a1, a2, a3);
        break;
      case 24:
        sub_23C7DA090(v5, a1, a2, a3);
        break;
      case 25:
        sub_23C7DA64C(v5, a1, a2, a3);
        break;
      case 26:
        sub_23C7DAC08(v5, a1, a2, a3);
        break;
      case 27:
        sub_23C7DB1C4(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_23C7D2830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoValueExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037C8, &qword_23C8A0A28);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E2037C8, &qword_23C8A0A28);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for TranscriptProtoValueExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoValueExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202B80, type metadata accessor for TranscriptProtoValueExpression, &protocol conformance descriptor for TranscriptProtoValueExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E2037C8, &qword_23C8A0A28);
  }

  sub_23C5855B0(v24, v32, &qword_27E2037C8, &qword_23C8A0A28);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E2037C8, &qword_23C8A0A28);
    return sub_23C585C34(v32, &qword_27E2037C8, &qword_23C8A0A28);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for TranscriptProtoValueExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E2037C8, &qword_23C8A0A28);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoValueExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D2DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FAAF8, &unk_23C8A1180);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoStatementID);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoStatementID);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAAF8, &unk_23C8A1180);
    return sub_23C585C34(v32, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoStatementID);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAAF8, &unk_23C8A1180);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoStatementID);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D339C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037D0, &qword_23C8A0A30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E2037D0, &qword_23C8A0A30);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoPrefixExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoPrefixExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202BB0, type metadata accessor for TranscriptProtoPrefixExpression, &protocol conformance descriptor for TranscriptProtoPrefixExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E2037D0, &qword_23C8A0A30);
  }

  sub_23C5855B0(v24, v32, &qword_27E2037D0, &qword_23C8A0A30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E2037D0, &qword_23C8A0A30);
    return sub_23C585C34(v32, &qword_27E2037D0, &qword_23C8A0A30);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoPrefixExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E2037D0, &qword_23C8A0A30);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoPrefixExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D3958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037D8, &qword_23C8A0A38);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E2037D8, &qword_23C8A0A38);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoInfixExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoInfixExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202BC8, type metadata accessor for TranscriptProtoInfixExpression, &protocol conformance descriptor for TranscriptProtoInfixExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E2037D8, &qword_23C8A0A38);
  }

  sub_23C5855B0(v24, v32, &qword_27E2037D8, &qword_23C8A0A38);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E2037D8, &qword_23C8A0A38);
    return sub_23C585C34(v32, &qword_27E2037D8, &qword_23C8A0A38);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoInfixExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E2037D8, &qword_23C8A0A38);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoInfixExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D3F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoIndexExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037E0, &qword_23C8A0A40);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v24, &qword_27E2037E0, &qword_23C8A0A40);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoIndexExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoIndexExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202BF8, type metadata accessor for TranscriptProtoIndexExpression, &protocol conformance descriptor for TranscriptProtoIndexExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E2037E0, &qword_23C8A0A40);
  }

  sub_23C5855B0(v24, v32, &qword_27E2037E0, &qword_23C8A0A40);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E2037E0, &qword_23C8A0A40);
    return sub_23C585C34(v32, &qword_27E2037E0, &qword_23C8A0A40);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoIndexExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E2037E0, &qword_23C8A0A40);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoIndexExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D44D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  v6 = *(updated - 8);
  v7 = MEMORY[0x28223BE20](updated);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037E8, &qword_23C8A0A48);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = updated;
  v26 = updated;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v24, &qword_27E2037E8, &qword_23C8A0A48);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoUpdateParametersExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoUpdateParametersExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202C10, type metadata accessor for TranscriptProtoUpdateParametersExpression, &protocol conformance descriptor for TranscriptProtoUpdateParametersExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E2037E8, &qword_23C8A0A48);
  }

  sub_23C5855B0(v24, v32, &qword_27E2037E8, &qword_23C8A0A48);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E2037E8, &qword_23C8A0A48);
    return sub_23C585C34(v32, &qword_27E2037E8, &qword_23C8A0A48);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoUpdateParametersExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E2037E8, &qword_23C8A0A48);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoUpdateParametersExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D4A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoCallExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037F0, &qword_23C8A0A50);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v24, &qword_27E2037F0, &qword_23C8A0A50);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoCallExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoCallExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202C48, type metadata accessor for TranscriptProtoCallExpression, &protocol conformance descriptor for TranscriptProtoCallExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E2037F0, &qword_23C8A0A50);
  }

  sub_23C5855B0(v24, v32, &qword_27E2037F0, &qword_23C8A0A50);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E2037F0, &qword_23C8A0A50);
    return sub_23C585C34(v32, &qword_27E2037F0, &qword_23C8A0A50);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoCallExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E2037F0, &qword_23C8A0A50);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoCallExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D5048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSayExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037F8, &qword_23C8A0A58);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v24, &qword_27E2037F8, &qword_23C8A0A58);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSayExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSayExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202C60, type metadata accessor for TranscriptProtoSayExpression, &protocol conformance descriptor for TranscriptProtoSayExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E2037F8, &qword_23C8A0A58);
  }

  sub_23C5855B0(v24, v32, &qword_27E2037F8, &qword_23C8A0A58);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E2037F8, &qword_23C8A0A58);
    return sub_23C585C34(v32, &qword_27E2037F8, &qword_23C8A0A58);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSayExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E2037F8, &qword_23C8A0A58);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSayExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D5604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPickExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203800, &qword_23C8A0A60);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v24, &qword_27E203800, &qword_23C8A0A60);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoPickExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoPickExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202C78, type metadata accessor for TranscriptProtoPickExpression, &protocol conformance descriptor for TranscriptProtoPickExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203800, &qword_23C8A0A60);
  }

  sub_23C5855B0(v24, v32, &qword_27E203800, &qword_23C8A0A60);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203800, &qword_23C8A0A60);
    return sub_23C585C34(v32, &qword_27E203800, &qword_23C8A0A60);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoPickExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203800, &qword_23C8A0A60);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoPickExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D5BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203808, &qword_23C8A0A68);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_23C585C34(v24, &qword_27E203808, &qword_23C8A0A68);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoConfirmExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoConfirmExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202C90, type metadata accessor for TranscriptProtoConfirmExpression, &protocol conformance descriptor for TranscriptProtoConfirmExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203808, &qword_23C8A0A68);
  }

  sub_23C5855B0(v24, v32, &qword_27E203808, &qword_23C8A0A68);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203808, &qword_23C8A0A68);
    return sub_23C585C34(v32, &qword_27E203808, &qword_23C8A0A68);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoConfirmExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203808, &qword_23C8A0A68);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoConfirmExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D617C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSearchExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203810, &qword_23C8A0A70);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_23C585C34(v24, &qword_27E203810, &qword_23C8A0A70);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSearchExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSearchExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202CA8, type metadata accessor for TranscriptProtoSearchExpression, &protocol conformance descriptor for TranscriptProtoSearchExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203810, &qword_23C8A0A70);
  }

  sub_23C5855B0(v24, v32, &qword_27E203810, &qword_23C8A0A70);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203810, &qword_23C8A0A70);
    return sub_23C585C34(v32, &qword_27E203810, &qword_23C8A0A70);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSearchExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203810, &qword_23C8A0A70);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSearchExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D6738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203818, &qword_23C8A0A78);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_23C585C34(v24, &qword_27E203818, &qword_23C8A0A78);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoPickOneExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoPickOneExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202CE8, type metadata accessor for TranscriptProtoPickOneExpression, &protocol conformance descriptor for TranscriptProtoPickOneExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203818, &qword_23C8A0A78);
  }

  sub_23C5855B0(v24, v32, &qword_27E203818, &qword_23C8A0A78);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203818, &qword_23C8A0A78);
    return sub_23C585C34(v32, &qword_27E203818, &qword_23C8A0A78);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoPickOneExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203818, &qword_23C8A0A78);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoPickOneExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D6CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203820, &qword_23C8A0A80);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_23C585C34(v24, &qword_27E203820, &qword_23C8A0A80);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoResolveToolExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoResolveToolExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202D00, type metadata accessor for TranscriptProtoResolveToolExpression, &protocol conformance descriptor for TranscriptProtoResolveToolExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203820, &qword_23C8A0A80);
  }

  sub_23C5855B0(v24, v32, &qword_27E203820, &qword_23C8A0A80);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203820, &qword_23C8A0A80);
    return sub_23C585C34(v32, &qword_27E203820, &qword_23C8A0A80);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoResolveToolExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203820, &qword_23C8A0A80);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoResolveToolExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D72B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoUndoExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203828, &qword_23C8A0A88);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_23C585C34(v24, &qword_27E203828, &qword_23C8A0A88);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoUndoExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoUndoExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202D18, type metadata accessor for TranscriptProtoUndoExpression, &protocol conformance descriptor for TranscriptProtoUndoExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203828, &qword_23C8A0A88);
  }

  sub_23C5855B0(v24, v32, &qword_27E203828, &qword_23C8A0A88);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203828, &qword_23C8A0A88);
    return sub_23C585C34(v32, &qword_27E203828, &qword_23C8A0A88);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoUndoExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203828, &qword_23C8A0A88);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoUndoExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRejectExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203830, &qword_23C8A0A90);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_23C585C34(v24, &qword_27E203830, &qword_23C8A0A90);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoRejectExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRejectExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202D30, type metadata accessor for TranscriptProtoRejectExpression, &protocol conformance descriptor for TranscriptProtoRejectExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203830, &qword_23C8A0A90);
  }

  sub_23C5855B0(v24, v32, &qword_27E203830, &qword_23C8A0A90);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203830, &qword_23C8A0A90);
    return sub_23C585C34(v32, &qword_27E203830, &qword_23C8A0A90);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoRejectExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203830, &qword_23C8A0A90);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRejectExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D7E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoCancelExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203838, &qword_23C8A0A98);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_23C585C34(v24, &qword_27E203838, &qword_23C8A0A98);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoCancelExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoCancelExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202D48, type metadata accessor for TranscriptProtoCancelExpression, &protocol conformance descriptor for TranscriptProtoCancelExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203838, &qword_23C8A0A98);
  }

  sub_23C5855B0(v24, v32, &qword_27E203838, &qword_23C8A0A98);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203838, &qword_23C8A0A98);
    return sub_23C585C34(v32, &qword_27E203838, &qword_23C8A0A98);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoCancelExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203838, &qword_23C8A0A98);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoCancelExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D83E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203840, &qword_23C8A0AA0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_23C585C34(v24, &qword_27E203840, &qword_23C8A0AA0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202D60, type metadata accessor for TranscriptProtoNoMatchingToolExpression, &protocol conformance descriptor for TranscriptProtoNoMatchingToolExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203840, &qword_23C8A0AA0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203840, &qword_23C8A0AA0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203840, &qword_23C8A0AA0);
    return sub_23C585C34(v32, &qword_27E203840, &qword_23C8A0AA0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203840, &qword_23C8A0AA0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D89A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203848, &qword_23C8A0AA8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_23C585C34(v24, &qword_27E203848, &qword_23C8A0AA8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoContinuePlanningExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoContinuePlanningExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202D78, type metadata accessor for TranscriptProtoContinuePlanningExpression, &protocol conformance descriptor for TranscriptProtoContinuePlanningExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203848, &qword_23C8A0AA8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203848, &qword_23C8A0AA8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203848, &qword_23C8A0AA8);
    return sub_23C585C34(v32, &qword_27E203848, &qword_23C8A0AA8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoContinuePlanningExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203848, &qword_23C8A0AA8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoContinuePlanningExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D8F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203850, &qword_23C8A0AB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_23C585C34(v24, &qword_27E203850, &qword_23C8A0AB0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoEndOfPlanExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoEndOfPlanExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202D90, type metadata accessor for TranscriptProtoEndOfPlanExpression, &protocol conformance descriptor for TranscriptProtoEndOfPlanExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203850, &qword_23C8A0AB0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203850, &qword_23C8A0AB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203850, &qword_23C8A0AB0);
    return sub_23C585C34(v32, &qword_27E203850, &qword_23C8A0AB0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoEndOfPlanExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203850, &qword_23C8A0AB0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoEndOfPlanExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D9518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  v6 = *(MentionedAppsExpression - 8);
  v7 = MEMORY[0x28223BE20](MentionedAppsExpression);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203858, &qword_23C8A0AB8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = MentionedAppsExpression;
  v26 = MentionedAppsExpression;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_23C585C34(v24, &qword_27E203858, &qword_23C8A0AB8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202DA8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression, &protocol conformance descriptor for TranscriptProtoGetMentionedAppsExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203858, &qword_23C8A0AB8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203858, &qword_23C8A0AB8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203858, &qword_23C8A0AB8);
    return sub_23C585C34(v32, &qword_27E203858, &qword_23C8A0AB8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203858, &qword_23C8A0AB8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7D9AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoOpenExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203860, &qword_23C8A0AC0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_23C585C34(v24, &qword_27E203860, &qword_23C8A0AC0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoOpenExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoOpenExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202DC0, type metadata accessor for TranscriptProtoOpenExpression, &protocol conformance descriptor for TranscriptProtoOpenExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203860, &qword_23C8A0AC0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203860, &qword_23C8A0AC0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203860, &qword_23C8A0AC0);
    return sub_23C585C34(v32, &qword_27E203860, &qword_23C8A0AC0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoOpenExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203860, &qword_23C8A0AC0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoOpenExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7DA090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203868, &qword_23C8A0AC8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_23C585C34(v24, &qword_27E203868, &qword_23C8A0AC8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202DD8, type metadata accessor for TranscriptProtoExplicitResolutionRequest, &protocol conformance descriptor for TranscriptProtoExplicitResolutionRequest);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203868, &qword_23C8A0AC8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203868, &qword_23C8A0AC8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203868, &qword_23C8A0AC8);
    return sub_23C585C34(v32, &qword_27E203868, &qword_23C8A0AC8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203868, &qword_23C8A0AC8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7DA64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203870, &qword_23C8A0AD0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_23C585C34(v24, &qword_27E203870, &qword_23C8A0AD0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoStructuredSearchExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoStructuredSearchExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202CC0, type metadata accessor for TranscriptProtoStructuredSearchExpression, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203870, &qword_23C8A0AD0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203870, &qword_23C8A0AD0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203870, &qword_23C8A0AD0);
    return sub_23C585C34(v32, &qword_27E203870, &qword_23C8A0AD0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203870, &qword_23C8A0AD0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7DAC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203878, &qword_23C8A0AD8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_23C585C34(v24, &qword_27E203878, &qword_23C8A0AD8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoPayloadExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoPayloadExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202DF0, type metadata accessor for TranscriptProtoPayloadExpression, &protocol conformance descriptor for TranscriptProtoPayloadExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203878, &qword_23C8A0AD8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203878, &qword_23C8A0AD8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203878, &qword_23C8A0AD8);
    return sub_23C585C34(v32, &qword_27E203878, &qword_23C8A0AD8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoPayloadExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203878, &qword_23C8A0AD8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoPayloadExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7DB1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoFormatExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203880, &qword_23C8A0AE0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AB8, &qword_23C88DBF8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AB8, &qword_23C88DBF8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_23C585C34(v24, &qword_27E203880, &qword_23C8A0AE0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoFormatExpression);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoFormatExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202E08, type metadata accessor for TranscriptProtoFormatExpression, &protocol conformance descriptor for TranscriptProtoFormatExpression);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203880, &qword_23C8A0AE0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203880, &qword_23C8A0AE0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203880, &qword_23C8A0AE0);
    return sub_23C585C34(v32, &qword_27E203880, &qword_23C8A0AE0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoFormatExpression);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203880, &qword_23C8A0AE0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoFormatExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23C5855B0(v3, &v13 - v9, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_23C7DBE6C(v3, a1, a2, a3);
        goto LABEL_33;
      case 2u:
        sub_23C7DC0A4(v3, a1, a2, a3);
        goto LABEL_33;
      case 3u:
        sub_23C7DC2DC(v3, a1, a2, a3);
        goto LABEL_33;
      case 4u:
        sub_23C7DC514(v3, a1, a2, a3);
        goto LABEL_33;
      case 5u:
        sub_23C7DC74C(v3, a1, a2, a3);
        goto LABEL_33;
      case 6u:
        sub_23C7DC984(v3, a1, a2, a3);
        goto LABEL_33;
      case 7u:
        sub_23C7DCBBC(v3, a1, a2, a3);
        goto LABEL_33;
      case 8u:
        sub_23C7DCDF4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 9u:
        sub_23C7DD02C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xAu:
        sub_23C7DD264(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xBu:
        sub_23C7DED04(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xCu:
        sub_23C7DD49C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xDu:
        sub_23C7DD6D4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xEu:
        sub_23C7DD90C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xFu:
        sub_23C7DDB44(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x10u:
        sub_23C7DDD7C(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
        }

        goto LABEL_7;
      case 0x11u:
        sub_23C7DDFB4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x12u:
        sub_23C7DE1EC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x13u:
        sub_23C7DE424(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x14u:
        sub_23C7DE65C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x15u:
        sub_23C7DE894(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x16u:
        sub_23C7DEACC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x17u:
        sub_23C7DEF3C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x18u:
        sub_23C7DF174(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
        }

LABEL_7:
        sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
        break;
      default:
        sub_23C7DBC38(v3, a1, a2, a3);
LABEL_33:
        result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExpressionEnum);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for TranscriptProtoExpression(0);
  return sub_23C870F14();
}

uint64_t sub_23C7DBC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoValueExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoValueExpression);
    sub_23C8314AC(&qword_27E202B80, type metadata accessor for TranscriptProtoValueExpression, &protocol conformance descriptor for TranscriptProtoValueExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoValueExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DBE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoStatementID);
    sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DC0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoPrefixExpression);
    sub_23C8314AC(&qword_27E202BB0, type metadata accessor for TranscriptProtoPrefixExpression, &protocol conformance descriptor for TranscriptProtoPrefixExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPrefixExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DC2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoInfixExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoInfixExpression);
    sub_23C8314AC(&qword_27E202BC8, type metadata accessor for TranscriptProtoInfixExpression, &protocol conformance descriptor for TranscriptProtoInfixExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoInfixExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DC514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoIndexExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoIndexExpression);
    sub_23C8314AC(&qword_27E202BF8, type metadata accessor for TranscriptProtoIndexExpression, &protocol conformance descriptor for TranscriptProtoIndexExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoIndexExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DC74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  MEMORY[0x28223BE20](updated);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoUpdateParametersExpression);
    sub_23C8314AC(&qword_27E202C10, type metadata accessor for TranscriptProtoUpdateParametersExpression, &protocol conformance descriptor for TranscriptProtoUpdateParametersExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoUpdateParametersExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DC984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoCallExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoCallExpression);
    sub_23C8314AC(&qword_27E202C48, type metadata accessor for TranscriptProtoCallExpression, &protocol conformance descriptor for TranscriptProtoCallExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoCallExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DCBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSayExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSayExpression);
    sub_23C8314AC(&qword_27E202C60, type metadata accessor for TranscriptProtoSayExpression, &protocol conformance descriptor for TranscriptProtoSayExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSayExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DCDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPickExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoPickExpression);
    sub_23C8314AC(&qword_27E202C78, type metadata accessor for TranscriptProtoPickExpression, &protocol conformance descriptor for TranscriptProtoPickExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPickExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DD02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoConfirmExpression);
    sub_23C8314AC(&qword_27E202C90, type metadata accessor for TranscriptProtoConfirmExpression, &protocol conformance descriptor for TranscriptProtoConfirmExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoConfirmExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DD264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSearchExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSearchExpression);
    sub_23C8314AC(&qword_27E202CA8, type metadata accessor for TranscriptProtoSearchExpression, &protocol conformance descriptor for TranscriptProtoSearchExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSearchExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DD49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoPickOneExpression);
    sub_23C8314AC(&qword_27E202CE8, type metadata accessor for TranscriptProtoPickOneExpression, &protocol conformance descriptor for TranscriptProtoPickOneExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPickOneExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DD6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoResolveToolExpression);
    sub_23C8314AC(&qword_27E202D00, type metadata accessor for TranscriptProtoResolveToolExpression, &protocol conformance descriptor for TranscriptProtoResolveToolExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoResolveToolExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DD90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoUndoExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoUndoExpression);
    sub_23C8314AC(&qword_27E202D18, type metadata accessor for TranscriptProtoUndoExpression, &protocol conformance descriptor for TranscriptProtoUndoExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoUndoExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DDB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRejectExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRejectExpression);
    sub_23C8314AC(&qword_27E202D30, type metadata accessor for TranscriptProtoRejectExpression, &protocol conformance descriptor for TranscriptProtoRejectExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRejectExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DDD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoCancelExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoCancelExpression);
    sub_23C8314AC(&qword_27E202D48, type metadata accessor for TranscriptProtoCancelExpression, &protocol conformance descriptor for TranscriptProtoCancelExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoCancelExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DDFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
    sub_23C8314AC(&qword_27E202D60, type metadata accessor for TranscriptProtoNoMatchingToolExpression, &protocol conformance descriptor for TranscriptProtoNoMatchingToolExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DE1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoContinuePlanningExpression);
    sub_23C8314AC(&qword_27E202D78, type metadata accessor for TranscriptProtoContinuePlanningExpression, &protocol conformance descriptor for TranscriptProtoContinuePlanningExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoContinuePlanningExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DE424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoEndOfPlanExpression);
    sub_23C8314AC(&qword_27E202D90, type metadata accessor for TranscriptProtoEndOfPlanExpression, &protocol conformance descriptor for TranscriptProtoEndOfPlanExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoEndOfPlanExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DE65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  MEMORY[0x28223BE20](MentionedAppsExpression);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
    sub_23C8314AC(&qword_27E202DA8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression, &protocol conformance descriptor for TranscriptProtoGetMentionedAppsExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DE894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoOpenExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 21)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoOpenExpression);
    sub_23C8314AC(&qword_27E202DC0, type metadata accessor for TranscriptProtoOpenExpression, &protocol conformance descriptor for TranscriptProtoOpenExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoOpenExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DEACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 22)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
    sub_23C8314AC(&qword_27E202DD8, type metadata accessor for TranscriptProtoExplicitResolutionRequest, &protocol conformance descriptor for TranscriptProtoExplicitResolutionRequest);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DED04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    sub_23C8314AC(&qword_27E202CC0, type metadata accessor for TranscriptProtoStructuredSearchExpression, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStructuredSearchExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DEF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 23)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoPayloadExpression);
    sub_23C8314AC(&qword_27E202DF0, type metadata accessor for TranscriptProtoPayloadExpression, &protocol conformance descriptor for TranscriptProtoPayloadExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DF174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoFormatExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AB8, &qword_23C88DBF8);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 24)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoFormatExpression);
    sub_23C8314AC(&qword_27E202E08, type metadata accessor for TranscriptProtoFormatExpression, &protocol conformance descriptor for TranscriptProtoFormatExpression);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoFormatExpression);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DF45C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203228, type metadata accessor for TranscriptProtoExpression, &protocol conformance descriptor for TranscriptProtoExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7DF4FC(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202B68, type metadata accessor for TranscriptProtoExpression, &protocol conformance descriptor for TranscriptProtoExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7DF568(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202B68, type metadata accessor for TranscriptProtoExpression, &protocol conformance descriptor for TranscriptProtoExpression);

  return sub_23C871204();
}

uint64_t sub_23C7DF604()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200F58);
  __swift_project_value_buffer(v0, qword_27E200F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C875590;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "null";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoValueExpression.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_23C745DD8(a1, v5, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, 6u);
            break;
          case 2:
            sub_23C7BA388(a1, v5, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, 0);
            break;
          case 3:
            sub_23C7CD6C0(a1, v5, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, 1u);
            break;
        }
      }

      else if (result > 5)
      {
        if (result != 6)
        {
          if (result != 7)
          {
            goto LABEL_5;
          }

          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
          goto LABEL_18;
        }

        sub_23C7DFD24(v5, a1, a2, a3);
      }

      else
      {
        if (result != 4)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
LABEL_18:
          sub_23C7CE414(v11, v12, v13, v14, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, v15);
          goto LABEL_5;
        }

        sub_23C7DFB54(a1, v5, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum);
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7DFB54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v22 = 0;
  v23 = 1;
  result = sub_23C871134();
  if (!v7 && (v23 & 1) == 0)
  {
    v21 = 0;
    v16 = v22;
    sub_23C5855B0(a2, v14, a5, a6);
    v17 = a7(0);
    v20 = *(v17 - 8);
    v18 = (*(v20 + 48))(v14, 1, v17);
    sub_23C585C34(v14, a5, a6);
    if (v18 != 1)
    {
      v19 = v21;
      result = sub_23C871054();
      if (v19)
      {
        return result;
      }

      v21 = 0;
    }

    sub_23C585C34(a2, a5, a6);
    *a2 = v16;
    swift_storeEnumTagMultiPayload();
    return (*(v20 + 56))(a2, 0, 1, v17);
  }

  return result;
}

uint64_t sub_23C7DFD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AC8, &unk_23C8A1370);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037B8, &qword_23C8A0A18);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201AC8, &unk_23C8A1370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201AC8, &unk_23C8A1370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoValueExpressionEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoValueExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v24, &qword_27E2037B8, &qword_23C8A0A18);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoValueExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202B98, type metadata accessor for TranscriptProtoValueExpressionArrayVariant, &protocol conformance descriptor for TranscriptProtoValueExpressionArrayVariant);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E2037B8, &qword_23C8A0A18);
  }

  sub_23C5855B0(v24, v32, &qword_27E2037B8, &qword_23C8A0A18);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E2037B8, &qword_23C8A0A18);
    return sub_23C585C34(v32, &qword_27E2037B8, &qword_23C8A0A18);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E2037B8, &qword_23C8A0A18);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201AC8, &unk_23C8A1370);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoValueExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AC8, &unk_23C8A1370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E201AC8, &unk_23C8A1370);
  v11 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          result = sub_23C7E09C8(v3, a1, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, type metadata accessor for TranscriptProtoValueExpressionEnum);
          if (v4)
          {
            return result;
          }
        }

        else
        {
          result = sub_23C7E0B24(v3, a1, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, type metadata accessor for TranscriptProtoValueExpressionEnum);
          if (v4)
          {
            return result;
          }
        }
      }

      else
      {
        result = sub_23C7E0870(v3, a1, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, type metadata accessor for TranscriptProtoValueExpressionEnum);
        if (v4)
        {
          return result;
        }
      }
    }

    else if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_23C8315C4(v10, type metadata accessor for TranscriptProtoValueExpressionEnum);
        result = sub_23C7E1024(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        result = sub_23C7E0624(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_23C8315C4(v10, type metadata accessor for TranscriptProtoValueExpressionEnum);
      result = sub_23C7E0C80(v3, a1, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_23C7E0DEC(v3, a1, a2, a3);
      result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (v4)
      {
        return result;
      }
    }
  }

  type metadata accessor for TranscriptProtoValueExpression(0);
  return sub_23C870F14();
}

uint64_t sub_23C7E0624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AC8, &unk_23C8A1370);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E201AC8, &unk_23C8A1370);
  v12 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E201AC8, &unk_23C8A1370);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoValueExpressionEnum);
    if (EnumCaseMultiPayload == 6)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7E0870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v18 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_23C5855B0(a1, &v17 - v13, a5, a6);
  v15 = a7(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_23C585C34(v14, a5, a6);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    return sub_23C871244();
  }

  result = sub_23C8315C4(v14, v18);
  __break(1u);
  return result;
}

uint64_t sub_23C7E09C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v18 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_23C5855B0(a1, &v17 - v13, a5, a6);
  v15 = a7(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_23C585C34(v14, a5, a6);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23C871294();
  }

  result = sub_23C8315C4(v14, v18);
  __break(1u);
  return result;
}

uint64_t sub_23C7E0B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v18 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_23C5855B0(a1, &v17 - v13, a5, a6);
  v15 = a7(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_23C585C34(v14, a5, a6);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    return sub_23C8712B4();
  }

  result = sub_23C8315C4(v14, v18);
  __break(1u);
  return result;
}

uint64_t sub_23C7E0C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v18 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_23C5855B0(a1, &v17 - v13, a5, a6);
  v15 = a7(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_23C585C34(v14, a5, a6);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C8712C4();
  }

  result = sub_23C8315C4(v14, v18);
  __break(1u);
  return result;
}

uint64_t sub_23C7E0DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AC8, &unk_23C8A1370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201AC8, &unk_23C8A1370);
  v11 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AC8, &unk_23C8A1370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    sub_23C8314AC(&qword_27E202B98, type metadata accessor for TranscriptProtoValueExpressionArrayVariant, &protocol conformance descriptor for TranscriptProtoValueExpressionArrayVariant);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoValueExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7E1024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AC8, &unk_23C8A1370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_23C5855B0(a1, &v10 - v6, &qword_27E201AC8, &unk_23C8A1370);
  v8 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E201AC8, &unk_23C8A1370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C8712C4();
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoValueExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7E124C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203220, type metadata accessor for TranscriptProtoValueExpression, &protocol conformance descriptor for TranscriptProtoValueExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E12EC(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202B80, type metadata accessor for TranscriptProtoValueExpression, &protocol conformance descriptor for TranscriptProtoValueExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E1358(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202B80, type metadata accessor for TranscriptProtoValueExpression, &protocol conformance descriptor for TranscriptProtoValueExpression);

  return sub_23C871204();
}

uint64_t TranscriptProtoValueExpressionArrayVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoStatementID(0), sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7E15C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203218, type metadata accessor for TranscriptProtoValueExpressionArrayVariant, &protocol conformance descriptor for TranscriptProtoValueExpressionArrayVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E1660(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202B98, type metadata accessor for TranscriptProtoValueExpressionArrayVariant, &protocol conformance descriptor for TranscriptProtoValueExpressionArrayVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7E16CC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202B98, type metadata accessor for TranscriptProtoValueExpressionArrayVariant, &protocol conformance descriptor for TranscriptProtoValueExpressionArrayVariant);

  return sub_23C871204();
}

uint64_t sub_23C7E1764()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200F88);
  __swift_project_value_buffer(v0, qword_27E200F88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prefixOp";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7E1998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoPrefixExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7E1AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7E1D74(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203210, type metadata accessor for TranscriptProtoPrefixExpression, &protocol conformance descriptor for TranscriptProtoPrefixExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E1E14(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202BB0, type metadata accessor for TranscriptProtoPrefixExpression, &protocol conformance descriptor for TranscriptProtoPrefixExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E1E80(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202BB0, type metadata accessor for TranscriptProtoPrefixExpression, &protocol conformance descriptor for TranscriptProtoPrefixExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E1F1C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200FA0);
  __swift_project_value_buffer(v0, qword_27E200FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "infixOp";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lhs";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "rhs";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7E21A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = v7;
  while (1)
  {
    result = sub_23C871044();
    if (v8 || (v17 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a7(a1, v12, a2, a3);
        break;
      case 2:
        a6(a1, v12, a2, a3);
        break;
      case 1:
        a4();
        sub_23C8710A4();
        break;
    }
  }

  return result;
}

uint64_t sub_23C7E22A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoInfixExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7E2358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoInfixExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoInfixExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_23C821CD4(), result = sub_23C871254(), !v4))
  {
    result = sub_23C7E24E8(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C7E2704(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoInfixExpression(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7E24E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoInfixExpression(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7E2704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoInfixExpression(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7E2984@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 20);
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a3[v5], 1, 1, v6);
  v7(&a3[*(a1 + 24)], 1, 1, v6);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t sub_23C7E2A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203208, type metadata accessor for TranscriptProtoInfixExpression, &protocol conformance descriptor for TranscriptProtoInfixExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E2B20(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202BC8, type metadata accessor for TranscriptProtoInfixExpression, &protocol conformance descriptor for TranscriptProtoInfixExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E2B8C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202BC8, type metadata accessor for TranscriptProtoInfixExpression, &protocol conformance descriptor for TranscriptProtoInfixExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E2C28()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200FB8);
  __swift_project_value_buffer(v0, qword_27E200FB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7E2E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v6;
  while (1)
  {
    result = sub_23C871044();
    if (v7 || (v15 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      sub_23C8710A4();
    }

    else if (result == 2)
    {
      a6(a1, v10, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C7E2F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_23C8711A4();
}

uint64_t sub_23C7E3034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(char *, uint64_t, uint64_t, uint64_t), void (*a7)(void))
{
  if (!*v7 || (a4(), result = sub_23C871254(), !v8))
  {
    result = (a6)(v7, a1, a2, a3, a5);
    if (!v8)
    {
      a7(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7E3114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAB88, &unk_23C8A1350);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB88, &unk_23C8A1350);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_23C7E3394@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + 20);
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(&a3[v4], 1, 1, v5);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t sub_23C7E3464(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203200, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPrefixVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E3504(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202BE0, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPrefixVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7E3570(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202BE0, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPrefixVariant);

  return sub_23C871204();
}

uint64_t sub_23C7E360C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200FD0);
  __swift_project_value_buffer(v0, qword_27E200FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoIndexExpression.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C7E38F8(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7E38F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoIndexExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7E3A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoIndexExpression(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7E3C94@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a3, 1, 1, v5);
  v6(a3 + *(a1 + 20), 1, 1, v5);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7E3D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031F8, type metadata accessor for TranscriptProtoIndexExpression, &protocol conformance descriptor for TranscriptProtoIndexExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E3E28(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202BF8, type metadata accessor for TranscriptProtoIndexExpression, &protocol conformance descriptor for TranscriptProtoIndexExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E3E94(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202BF8, type metadata accessor for TranscriptProtoIndexExpression, &protocol conformance descriptor for TranscriptProtoIndexExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E3F5C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200FE8);
  __swift_project_value_buffer(v0, qword_27E200FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "callStatementId";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "updates";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoUpdateParametersExpression.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C7E4248(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
        sub_23C8314AC(&qword_27E201B18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, &protocol conformance descriptor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7E4248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoUpdateParametersExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C7E43F8(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
      sub_23C8314AC(&qword_27E201B18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, &protocol conformance descriptor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      sub_23C8712F4();
    }

    type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7E43F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  sub_23C5855B0(a1 + *(updated + 20), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7E46AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031F0, type metadata accessor for TranscriptProtoUpdateParametersExpression, &protocol conformance descriptor for TranscriptProtoUpdateParametersExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E474C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202C10, type metadata accessor for TranscriptProtoUpdateParametersExpression, &protocol conformance descriptor for TranscriptProtoUpdateParametersExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E47B8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202C10, type metadata accessor for TranscriptProtoUpdateParametersExpression, &protocol conformance descriptor for TranscriptProtoUpdateParametersExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E4854()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201000);
  __swift_project_value_buffer(v0, qword_27E201000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_23C7E4BDC(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
          sub_23C871104();
        }
      }

      else if (result == 1)
      {
        sub_23C871164();
      }

      else if (result == 2)
      {
        sub_23C821D7C();
        sub_23C8710A4();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7E4BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    if (*(v3 + 16) != 1 || (sub_23C821D7C(), result = sub_23C871254(), !v4))
    {
      result = sub_23C7E4DA0(v3, a1, a2, a3);
      if (!v4)
      {
        sub_23C7E4FBC(v3, a1, a2, a3);
        type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C7E4DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  sub_23C5855B0(a1 + *(updated + 24), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7E4FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C7E5080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  *v6 = 0;
  *(v6 + 8) = 1;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C7E5164(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031E8, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, &protocol conformance descriptor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E5204(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201B18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, &protocol conformance descriptor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return sub_23C8711F4();
}

uint64_t sub_23C7E5270(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201B18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, &protocol conformance descriptor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return sub_23C871204();
}

uint64_t sub_23C7E530C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201018);
  __swift_project_value_buffer(v0, qword_27E201018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceIdsId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7E5610(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031E0, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E56B0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);

  return sub_23C8711F4();
}

uint64_t sub_23C7E571C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);

  return sub_23C871204();
}

uint64_t sub_23C7E57B8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201030);
  __swift_project_value_buffer(v0, qword_27E201030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "parameters";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "tool";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoCallExpression.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_23C57A5BC(a1, v5, a2, a3);
    }

    else if (result == 3)
    {
      sub_23C7E5A38(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C7E5A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoCallExpression(0);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoCallExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_23C870EE4(), type metadata accessor for TranscriptProtoStatementID(0), sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID), sub_23C8314AC(&qword_27E201B40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID), v4 = v9, result = sub_23C871214(), !v9))
  {
    result = sub_23C7E5C40(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for TranscriptProtoCallExpression(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7E5C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoCallExpression(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E2037A0, &qword_23C8A0A00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E2037A0, &qword_23C8A0A00);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
}

uint64_t sub_23C7E5ED4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, char *a4@<X8>)
{
  v6 = *(a1 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a4[v6], 1, 1, v7);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = a3(MEMORY[0x277D84F90]);
  *a4 = result;
  return result;
}

uint64_t sub_23C7E5FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031D8, type metadata accessor for TranscriptProtoCallExpression, &protocol conformance descriptor for TranscriptProtoCallExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E6058(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202C48, type metadata accessor for TranscriptProtoCallExpression, &protocol conformance descriptor for TranscriptProtoCallExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E60C4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202C48, type metadata accessor for TranscriptProtoCallExpression, &protocol conformance descriptor for TranscriptProtoCallExpression);

  return sub_23C871204();
}

uint64_t TranscriptProtoSayExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoStatementID(0), sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoSayExpression(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7E6388(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031D0, type metadata accessor for TranscriptProtoSayExpression, &protocol conformance descriptor for TranscriptProtoSayExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E6428(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202C60, type metadata accessor for TranscriptProtoSayExpression, &protocol conformance descriptor for TranscriptProtoSayExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E6494(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202C60, type metadata accessor for TranscriptProtoSayExpression, &protocol conformance descriptor for TranscriptProtoSayExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E652C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201060);
  __swift_project_value_buffer(v0, qword_27E201060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7E6758(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C7E6800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoPickExpression(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoPickExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C7E6950(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_23C871294();
    }

    type metadata accessor for TranscriptProtoPickExpression(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7E6950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoPickExpression(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7E6BD4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v6 = *(a1 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a4[v6], 1, 1, v7);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a3;
  return result;
}

uint64_t sub_23C7E6CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031C8, type metadata accessor for TranscriptProtoPickExpression, &protocol conformance descriptor for TranscriptProtoPickExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E6D48(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202C78, type metadata accessor for TranscriptProtoPickExpression, &protocol conformance descriptor for TranscriptProtoPickExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E6DB4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202C78, type metadata accessor for TranscriptProtoPickExpression, &protocol conformance descriptor for TranscriptProtoPickExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E6F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031C0, type metadata accessor for TranscriptProtoConfirmExpression, &protocol conformance descriptor for TranscriptProtoConfirmExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E6FF0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202C90, type metadata accessor for TranscriptProtoConfirmExpression, &protocol conformance descriptor for TranscriptProtoConfirmExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E705C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202C90, type metadata accessor for TranscriptProtoConfirmExpression, &protocol conformance descriptor for TranscriptProtoConfirmExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E70F8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201090);
  __swift_project_value_buffer(v0, qword_27E201090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoSearchExpression.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_23C871084();
      }
    }

    else if (result == 1)
    {
      sub_23C871164();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t TranscriptProtoSearchExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    if (*(v3 + 16) != 1 || (result = sub_23C871244(), !v4))
    {
      if (*(v3 + 17) != 1 || (result = sub_23C871244(), !v4))
      {
        if (*(v3 + 18) != 1 || (result = sub_23C871244(), !v4))
        {
          type metadata accessor for TranscriptProtoSearchExpression(0);
          return sub_23C870F14();
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C7E7570@<X0>(uint64_t a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 18) = 0;
  return result;
}

uint64_t sub_23C7E75F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031B8, type metadata accessor for TranscriptProtoSearchExpression, &protocol conformance descriptor for TranscriptProtoSearchExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E7698(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202CA8, type metadata accessor for TranscriptProtoSearchExpression, &protocol conformance descriptor for TranscriptProtoSearchExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E7704(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202CA8, type metadata accessor for TranscriptProtoSearchExpression, &protocol conformance descriptor for TranscriptProtoSearchExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E77A0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2010A8);
  __swift_project_value_buffer(v0, qword_27E2010A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameters";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "returnType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 5;
  *v11 = "properties";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoStructuredSearchExpression.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 5:
          type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
          sub_23C8314AC(&qword_27E201B70, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
          sub_23C871194();
          break;
        case 2:
          sub_23C7E7AF8(a1, v5, a2, a3);
          break;
        case 1:
          sub_23C57A5BC(a1, v5, a2, a3);
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7E7AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C8314AC(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoStructuredSearchExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (*(*v3 + 16))
  {
    sub_23C870EE4();
    type metadata accessor for TranscriptProtoStatementID(0);
    sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
    sub_23C8314AC(&qword_27E201B40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
    result = sub_23C871214();
    if (v4)
    {
      return result;
    }

    v5 = v3;
  }

  result = sub_23C7E7D98(v5, a1, a2, a3);
  if (!v4)
  {
    if (*(*(v5 + 8) + 16))
    {
      type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
      sub_23C8314AC(&qword_27E201B70, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
      sub_23C8712F4();
    }

    type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7E7D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C8314AC(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

unint64_t sub_23C7E8000@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v5 = MEMORY[0x277D84F90];
  result = sub_23C59A2C8(MEMORY[0x277D84F90]);
  *a2 = result;
  *(a2 + 1) = v5;
  return result;
}

uint64_t sub_23C7E80DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031B0, type metadata accessor for TranscriptProtoStructuredSearchExpression, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E817C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202CC0, type metadata accessor for TranscriptProtoStructuredSearchExpression, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E81E8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202CC0, type metadata accessor for TranscriptProtoStructuredSearchExpression, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E8268()
{
  result = MEMORY[0x23EED7100](0xD000000000000019, 0x800000023C8B1A10);
  qword_27E2010C0 = 0xD000000000000025;
  *algn_27E2010C8 = 0x800000023C8B10A0;
  return result;
}

uint64_t sub_23C7E8304()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2010D0);
  __swift_project_value_buffer(v0, qword_27E2010D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7E84F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v5, a2, a3);
    }

    else if (result == 2)
    {
      a5(v5 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C7E85C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v5))
  {
    if (v4[3])
    {
      result = sub_23C8712C4();
    }

    if (!v5)
    {
      a4(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7E8740(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031A8, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E87E0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201B70, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return sub_23C8711F4();
}

uint64_t sub_23C7E884C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201B70, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return sub_23C871204();
}

uint64_t sub_23C7E8A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031A0, type metadata accessor for TranscriptProtoPickOneExpression, &protocol conformance descriptor for TranscriptProtoPickOneExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E8AB4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202CE8, type metadata accessor for TranscriptProtoPickOneExpression, &protocol conformance descriptor for TranscriptProtoPickOneExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E8B20(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202CE8, type metadata accessor for TranscriptProtoPickOneExpression, &protocol conformance descriptor for TranscriptProtoPickOneExpression);

  return sub_23C871204();
}

uint64_t TranscriptProtoResolveToolExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoGlobalToolIdentifier(0), sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoResolveToolExpression(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7E8DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203198, type metadata accessor for TranscriptProtoResolveToolExpression, &protocol conformance descriptor for TranscriptProtoResolveToolExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E8E9C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202D00, type metadata accessor for TranscriptProtoResolveToolExpression, &protocol conformance descriptor for TranscriptProtoResolveToolExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E8F08(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202D00, type metadata accessor for TranscriptProtoResolveToolExpression, &protocol conformance descriptor for TranscriptProtoResolveToolExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E90B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203190, type metadata accessor for TranscriptProtoUndoExpression, &protocol conformance descriptor for TranscriptProtoUndoExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E9158(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202D18, type metadata accessor for TranscriptProtoUndoExpression, &protocol conformance descriptor for TranscriptProtoUndoExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E91C4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202D18, type metadata accessor for TranscriptProtoUndoExpression, &protocol conformance descriptor for TranscriptProtoUndoExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E9360(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203188, type metadata accessor for TranscriptProtoRejectExpression, &protocol conformance descriptor for TranscriptProtoRejectExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E9400(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202D30, type metadata accessor for TranscriptProtoRejectExpression, &protocol conformance descriptor for TranscriptProtoRejectExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E946C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202D30, type metadata accessor for TranscriptProtoRejectExpression, &protocol conformance descriptor for TranscriptProtoRejectExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E9608(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203180, type metadata accessor for TranscriptProtoCancelExpression, &protocol conformance descriptor for TranscriptProtoCancelExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E96A8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202D48, type metadata accessor for TranscriptProtoCancelExpression, &protocol conformance descriptor for TranscriptProtoCancelExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E9714(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202D48, type metadata accessor for TranscriptProtoCancelExpression, &protocol conformance descriptor for TranscriptProtoCancelExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E9844(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203178, type metadata accessor for TranscriptProtoNoMatchingToolExpression, &protocol conformance descriptor for TranscriptProtoNoMatchingToolExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E98E4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202D60, type metadata accessor for TranscriptProtoNoMatchingToolExpression, &protocol conformance descriptor for TranscriptProtoNoMatchingToolExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E9950(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202D60, type metadata accessor for TranscriptProtoNoMatchingToolExpression, &protocol conformance descriptor for TranscriptProtoNoMatchingToolExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E9A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203170, type metadata accessor for TranscriptProtoContinuePlanningExpression, &protocol conformance descriptor for TranscriptProtoContinuePlanningExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E9B1C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202D78, type metadata accessor for TranscriptProtoContinuePlanningExpression, &protocol conformance descriptor for TranscriptProtoContinuePlanningExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E9B88(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202D78, type metadata accessor for TranscriptProtoContinuePlanningExpression, &protocol conformance descriptor for TranscriptProtoContinuePlanningExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E9CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203168, type metadata accessor for TranscriptProtoEndOfPlanExpression, &protocol conformance descriptor for TranscriptProtoEndOfPlanExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E9D54(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202D90, type metadata accessor for TranscriptProtoEndOfPlanExpression, &protocol conformance descriptor for TranscriptProtoEndOfPlanExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E9DC0(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202D90, type metadata accessor for TranscriptProtoEndOfPlanExpression, &protocol conformance descriptor for TranscriptProtoEndOfPlanExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E9EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203160, type metadata accessor for TranscriptProtoGetMentionedAppsExpression, &protocol conformance descriptor for TranscriptProtoGetMentionedAppsExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E9F8C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202DA8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression, &protocol conformance descriptor for TranscriptProtoGetMentionedAppsExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E9FF8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202DA8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression, &protocol conformance descriptor for TranscriptProtoGetMentionedAppsExpression);

  return sub_23C871204();
}

uint64_t sub_23C7EA190(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203158, type metadata accessor for TranscriptProtoOpenExpression, &protocol conformance descriptor for TranscriptProtoOpenExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EA230(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202DC0, type metadata accessor for TranscriptProtoOpenExpression, &protocol conformance descriptor for TranscriptProtoOpenExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7EA29C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202DC0, type metadata accessor for TranscriptProtoOpenExpression, &protocol conformance descriptor for TranscriptProtoOpenExpression);

  return sub_23C871204();
}

uint64_t sub_23C7EA3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203150, type metadata accessor for TranscriptProtoExplicitResolutionRequest, &protocol conformance descriptor for TranscriptProtoExplicitResolutionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EA46C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202DD8, type metadata accessor for TranscriptProtoExplicitResolutionRequest, &protocol conformance descriptor for TranscriptProtoExplicitResolutionRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C7EA4D8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202DD8, type metadata accessor for TranscriptProtoExplicitResolutionRequest, &protocol conformance descriptor for TranscriptProtoExplicitResolutionRequest);

  return sub_23C871204();
}

uint64_t TranscriptProtoPayloadExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoStatementID(0), sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoPayloadExpression(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7EA73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203148, type metadata accessor for TranscriptProtoPayloadExpression, &protocol conformance descriptor for TranscriptProtoPayloadExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EA7DC(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202DF0, type metadata accessor for TranscriptProtoPayloadExpression, &protocol conformance descriptor for TranscriptProtoPayloadExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7EA848(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202DF0, type metadata accessor for TranscriptProtoPayloadExpression, &protocol conformance descriptor for TranscriptProtoPayloadExpression);

  return sub_23C871204();
}

uint64_t TranscriptProtoFormatExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoStatementID(0), sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoFormatExpression(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7EAAAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203140, type metadata accessor for TranscriptProtoFormatExpression, &protocol conformance descriptor for TranscriptProtoFormatExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EAB4C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202E08, type metadata accessor for TranscriptProtoFormatExpression, &protocol conformance descriptor for TranscriptProtoFormatExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7EABB8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202E08, type metadata accessor for TranscriptProtoFormatExpression, &protocol conformance descriptor for TranscriptProtoFormatExpression);

  return sub_23C871204();
}

uint64_t TranscriptProtoToolParameterValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_23C7EAD04(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C7EAD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203780, &unk_23C8A1380);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_23C5855B0(v45, v11, &qword_27E203780, &unk_23C8A1380);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_23C585C34(v11, &qword_27E203780, &unk_23C8A1380);
    v26 = v40;
  }

  else
  {
    sub_23C83155C(v11, v18, type metadata accessor for TranscriptProtoToolParameterValueEnum);
    sub_23C83155C(v18, v16, type metadata accessor for TranscriptProtoToolParameterValueEnum);
    sub_23C585C34(v23, &qword_27E1FAB68, &unk_23C879140);
    v27 = v38;
    sub_23C83155C(v16, v38, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C83155C(v27, v23, type metadata accessor for ToolKitProtoTypedValue);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v28 = v41;
  sub_23C8711A4();
  v29 = v39;
  if (v28)
  {
    return sub_23C585C34(v23, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v23, v39, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_23C585C34(v23, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v29, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v31 = v36;
    sub_23C83155C(v29, v36, type metadata accessor for ToolKitProtoTypedValue);
    if (v25 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v23, &qword_27E1FAB68, &unk_23C879140);
    v32 = v45;
    sub_23C585C34(v45, &qword_27E203780, &unk_23C8A1380);
    sub_23C83155C(v31, v32, type metadata accessor for ToolKitProtoTypedValue);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_23C7EB290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203780, &unk_23C8A1380);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E203780, &unk_23C8A1380);
  v11 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203780, &unk_23C8A1380);
  }

  sub_23C83155C(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C7EB540(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203138, type metadata accessor for TranscriptProtoToolParameterValue, &protocol conformance descriptor for TranscriptProtoToolParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EB5E0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202E20, type metadata accessor for TranscriptProtoToolParameterValue, &protocol conformance descriptor for TranscriptProtoToolParameterValue);

  return sub_23C8711F4();
}

uint64_t sub_23C7EB64C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202E20, type metadata accessor for TranscriptProtoToolParameterValue, &protocol conformance descriptor for TranscriptProtoToolParameterValue);

  return sub_23C871204();
}

uint64_t TranscriptProtoEntitySpanMatchResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_23C8314AC(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity, &protocol conformance descriptor for ContextProtoSpanMatchedEntity), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7EB910(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203130, type metadata accessor for TranscriptProtoEntitySpanMatchResult, &protocol conformance descriptor for TranscriptProtoEntitySpanMatchResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EB9B0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202E38, type metadata accessor for TranscriptProtoEntitySpanMatchResult, &protocol conformance descriptor for TranscriptProtoEntitySpanMatchResult);

  return sub_23C8711F4();
}

uint64_t sub_23C7EBA1C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202E38, type metadata accessor for TranscriptProtoEntitySpanMatchResult, &protocol conformance descriptor for TranscriptProtoEntitySpanMatchResult);

  return sub_23C871204();
}

uint64_t sub_23C7EBAB4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201250);
  __swift_project_value_buffer(v0, qword_27E201250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "originalSubQuery";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "types";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoToolRetrievalResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          sub_23C871164();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_23C8710D4();
            goto LABEL_5;
          case 4:
            v6 = v3;
            type metadata accessor for ContextProtoRetrievedTool(0);
            sub_23C8314AC(&qword_27E1FA578, type metadata accessor for ContextProtoRetrievedTool, &protocol conformance descriptor for ContextProtoRetrievedTool);
            break;
          case 5:
            v6 = v3;
            type metadata accessor for ContextProtoToolRetrievalType(0);
            sub_23C8314AC(&qword_27E1FA580, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType);
            break;
          default:
            goto LABEL_5;
        }

        v3 = v6;
        sub_23C871194();
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t TranscriptProtoToolRetrievalResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_23C8712C4(), !v4))
    {
      if (*(v3 + 32) == 0.0 || (result = sub_23C871274(), !v4))
      {
        if (!*(*(v3 + 40) + 16) || (type metadata accessor for ContextProtoRetrievedTool(0), sub_23C8314AC(&qword_27E1FA578, type metadata accessor for ContextProtoRetrievedTool, &protocol conformance descriptor for ContextProtoRetrievedTool), result = sub_23C8712F4(), !v4))
        {
          if (!*(*(v3 + 48) + 16) || (type metadata accessor for ContextProtoToolRetrievalType(0), sub_23C8314AC(&qword_27E1FA580, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType), result = sub_23C8712F4(), !v4))
          {
            type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
            return sub_23C870F14();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C7EC17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203128, type metadata accessor for TranscriptProtoToolRetrievalResponse, &protocol conformance descriptor for TranscriptProtoToolRetrievalResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EC21C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202E50, type metadata accessor for TranscriptProtoToolRetrievalResponse, &protocol conformance descriptor for TranscriptProtoToolRetrievalResponse);

  return sub_23C8711F4();
}

uint64_t sub_23C7EC288(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202E50, type metadata accessor for TranscriptProtoToolRetrievalResponse, &protocol conformance descriptor for TranscriptProtoToolRetrievalResponse);

  return sub_23C871204();
}

uint64_t sub_23C7EC324()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201268);
  __swift_project_value_buffer(v0, qword_27E201268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 5;
  *v6 = "responseOutput";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 7;
  *v10 = "clientQueryId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 8;
  *v11 = "interpretedStatementResults";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSystemResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 8:
          type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
          sub_23C8314AC(&qword_27E201C10, type metadata accessor for TranscriptProtoInterpretedStatementResult, &protocol conformance descriptor for TranscriptProtoInterpretedStatementResult);
          sub_23C871194();
          break;
        case 7:
          type metadata accessor for TranscriptProtoSystemResponse(0);
          sub_23C871154();
          break;
        case 5:
          sub_23C7EC698(a1, v5, a2, a3);
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7EC698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSystemResponse(0);
  type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_23C8314AC(&qword_27E2025E0, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoSystemResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C7EC860(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C7ECA7C(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
      sub_23C8314AC(&qword_27E201C10, type metadata accessor for TranscriptProtoInterpretedStatementResult, &protocol conformance descriptor for TranscriptProtoInterpretedStatementResult);
      sub_23C8712F4();
    }

    type metadata accessor for TranscriptProtoSystemResponse(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7EC860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203768, &unk_23C8A1390);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoSystemResponse(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E203768, &unk_23C8A1390);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203768, &unk_23C8A1390);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoResponseOutput);
  sub_23C8314AC(&qword_27E2025E0, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoResponseOutput);
}

uint64_t sub_23C7ECA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoSystemResponse(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C7ECB40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for TranscriptProtoResponseOutput(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  *v6 = 0;
  *(v6 + 1) = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C7ECC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203120, type metadata accessor for TranscriptProtoSystemResponse, &protocol conformance descriptor for TranscriptProtoSystemResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7ECCBC(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202E68, type metadata accessor for TranscriptProtoSystemResponse, &protocol conformance descriptor for TranscriptProtoSystemResponse);

  return sub_23C8711F4();
}

uint64_t sub_23C7ECD28(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202E68, type metadata accessor for TranscriptProtoSystemResponse, &protocol conformance descriptor for TranscriptProtoSystemResponse);

  return sub_23C871204();
}

uint64_t sub_23C7ECDC4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201280);
  __swift_project_value_buffer(v0, qword_27E201280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23C875550;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "outcome";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "resultStatementId";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "originProgramStatementId";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "actionEventId";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "toolId";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "originTaskStatementId";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoInterpretedStatementResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
          type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
          sub_23C871154();
        }

        else if (result == 6)
        {
          sub_23C7ED3B4(a1, v5, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for TranscriptProtoStatementOutcome(0);
            sub_23C8314AC(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
            sub_23C8711A4();
            break;
          case 2:
            sub_23C7ED24C(a1, v5, a2, a3);
            break;
          case 3:
            sub_23C7ED300(a1, v5, a2, a3);
            break;
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7ED24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7ED300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7ED3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoInterpretedStatementResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C579BC0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C7ED588(v3, a1, a2, a3);
    sub_23C7ED7A4(v3, a1, a2, a3);
    sub_23C7ED9C0(v3, a1, a2, a3, type metadata accessor for TranscriptProtoInterpretedStatementResult, 4);
    sub_23C7EDA44(v3, a1, a2, a3, type metadata accessor for TranscriptProtoInterpretedStatementResult, 5);
    sub_23C7EDAC8(v3, a1, a2, a3);
    type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7ED588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7ED7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7ED9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C7EDA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C7EDAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  sub_23C5855B0(a1 + *(v12 + 36), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7EDD30@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  v7(a2 + a1[6], 1, 1, v6);
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v7(a2 + a1[9], 1, 1, v6);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7EDE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203118, type metadata accessor for TranscriptProtoInterpretedStatementResult, &protocol conformance descriptor for TranscriptProtoInterpretedStatementResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EDF38(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201C10, type metadata accessor for TranscriptProtoInterpretedStatementResult, &protocol conformance descriptor for TranscriptProtoInterpretedStatementResult);

  return sub_23C8711F4();
}

uint64_t sub_23C7EDFA4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201C10, type metadata accessor for TranscriptProtoInterpretedStatementResult, &protocol conformance descriptor for TranscriptProtoInterpretedStatementResult);

  return sub_23C871204();
}

uint64_t sub_23C7EE040()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201298);
  __swift_project_value_buffer(v0, qword_27E201298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoProgramStatement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 4)
      {
        if (result == 5 || result == 6)
        {
          type metadata accessor for TranscriptProtoProgramStatement(0);
          sub_23C871074();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
        sub_23C8711A4();
      }

      else if (result == 4)
      {
        sub_23C7EE40C(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7EE40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoProgramStatement(0);
  type metadata accessor for TranscriptProtoExpression(0);
  sub_23C8314AC(&qword_27E202B68, type metadata accessor for TranscriptProtoExpression, &protocol conformance descriptor for TranscriptProtoExpression);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoProgramStatement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C57A160(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C7EE580(v3, a1, a2, a3);
    sub_23C7EE79C(v3, a1, a2, a3);
    sub_23C7EE814(v3, a1, a2, a3);
    type metadata accessor for TranscriptProtoProgramStatement(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7EE580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203758, &qword_23C8A09C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoExpression(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoProgramStatement(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E203758, &qword_23C8A09C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203758, &qword_23C8A09C8);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoExpression);
  sub_23C8314AC(&qword_27E202B68, type metadata accessor for TranscriptProtoExpression, &protocol conformance descriptor for TranscriptProtoExpression);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpression);
}

uint64_t sub_23C7EE79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_23C871244();
  }

  return result;
}

uint64_t sub_23C7EE814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_23C871244();
  }

  return result;
}

uint64_t sub_23C7EE8D8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for TranscriptProtoExpression(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[7];
  *(a2 + a1[6]) = 2;
  *(a2 + v7) = 2;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7EE9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203110, type metadata accessor for TranscriptProtoProgramStatement, &protocol conformance descriptor for TranscriptProtoProgramStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EEA90(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2017B0, type metadata accessor for TranscriptProtoProgramStatement, &protocol conformance descriptor for TranscriptProtoProgramStatement);

  return sub_23C8711F4();
}

uint64_t sub_23C7EEAFC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2017B0, type metadata accessor for TranscriptProtoProgramStatement, &protocol conformance descriptor for TranscriptProtoProgramStatement);

  return sub_23C871204();
}

uint64_t sub_23C7EEB98()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2012B0);
  __swift_project_value_buffer(v0, qword_27E2012B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deviceLocale";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userLocale";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "responseLocale";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7EEDD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v13 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v11 = v5 + 32;
LABEL_3:
        a5(v11, a2, a3);
        break;
      case 2:
        v11 = v5 + 16;
        goto LABEL_3;
      case 1:
        a4(v5, a2, a3);
        break;
    }
  }
}

uint64_t sub_23C7EEEB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = sub_23C8712C4(), !v5))
  {
    v10 = v4[3];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = sub_23C8712C4(), !v5))
    {
      v12 = v4[5];
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v4[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v13 || (result = sub_23C8712C4(), !v5))
      {
        a4(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C7EF064(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203108, type metadata accessor for TranscriptProtoLocaleSettings, &protocol conformance descriptor for TranscriptProtoLocaleSettings);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EF104(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202EA0, type metadata accessor for TranscriptProtoLocaleSettings, &protocol conformance descriptor for TranscriptProtoLocaleSettings);

  return sub_23C8711F4();
}

uint64_t sub_23C7EF170(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202EA0, type metadata accessor for TranscriptProtoLocaleSettings, &protocol conformance descriptor for TranscriptProtoLocaleSettings);

  return sub_23C871204();
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C8710F4();
    }
  }

  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_23C871284(), !v4))
  {
    type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t static TranscriptProtoDeviceDetailsDeviceType.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7EF434@<X0>(_DWORD *a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C7EF4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203100, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType, &protocol conformance descriptor for TranscriptProtoDeviceDetailsDeviceType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EF550(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202EB8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType, &protocol conformance descriptor for TranscriptProtoDeviceDetailsDeviceType);

  return sub_23C8711F4();
}

uint64_t sub_23C7EF5BC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202EB8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType, &protocol conformance descriptor for TranscriptProtoDeviceDetailsDeviceType);

  return sub_23C871204();
}

uint64_t sub_23C7EF638(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7EF6F8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2012E0);
  __swift_project_value_buffer(v0, qword_27E2012E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deviceIdsId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7EF910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoDeviceDetails(0);
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  sub_23C8314AC(&qword_27E202EB8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType, &protocol conformance descriptor for TranscriptProtoDeviceDetailsDeviceType);
  return sub_23C8711A4();
}

uint64_t sub_23C7EFA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203748, &unk_23C8A13A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E203748, &unk_23C8A13A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203748, &unk_23C8A13A0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  sub_23C8314AC(&qword_27E202EB8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType, &protocol conformance descriptor for TranscriptProtoDeviceDetailsDeviceType);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
}

uint64_t sub_23C7EFC84@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v4 = *(a1 + 20);
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(&a3[v4], 1, 1, v5);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C7EFD58(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030F8, type metadata accessor for TranscriptProtoDeviceDetails, &protocol conformance descriptor for TranscriptProtoDeviceDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EFDF8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202ED0, type metadata accessor for TranscriptProtoDeviceDetails, &protocol conformance descriptor for TranscriptProtoDeviceDetails);

  return sub_23C8711F4();
}

uint64_t sub_23C7EFE64(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202ED0, type metadata accessor for TranscriptProtoDeviceDetails, &protocol conformance descriptor for TranscriptProtoDeviceDetails);

  return sub_23C871204();
}

uint64_t sub_23C7EFF00()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2012F8);
  __swift_project_value_buffer(v0, qword_27E2012F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "index";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoStatementID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C871174();
    }

    else if (result == 2)
    {
      sub_23C871154();
    }
  }

  return result;
}

uint64_t TranscriptProtoStatementID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  if (!result || (result = sub_23C8712D4(), !v4))
  {
    if (*(v3 + 2))
    {
      result = sub_23C8712C4();
    }

    if (!v4)
    {
      type metadata accessor for TranscriptProtoStatementID(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7F026C@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C7F02EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030F0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F038C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);

  return sub_23C8711F4();
}

uint64_t sub_23C7F03F8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);

  return sub_23C871204();
}

uint64_t sub_23C7F0494()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201310);
  __swift_project_value_buffer(v0, qword_27E201310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tool";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "originProgramStatementId";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoToolResolution.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C7F08A4(a1, v5, a2, a3);
          break;
        case 2:
          sub_23C7F07F0(a1, v5, a2, a3);
          break;
        case 1:
          type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
          sub_23C8314AC(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
          sub_23C8711A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7F07F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoToolResolution(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F08A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoToolResolution(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F09C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FACA8, &unk_23C87B940);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FACA8, &unk_23C87B940);
  }

  sub_23C83155C(v7, v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C8314AC(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

uint64_t sub_23C7F0BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoToolResolution(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7F0DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoToolResolution(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7F10B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030E8, type metadata accessor for TranscriptProtoToolResolution, &protocol conformance descriptor for TranscriptProtoToolResolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F1158(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202EF8, type metadata accessor for TranscriptProtoToolResolution, &protocol conformance descriptor for TranscriptProtoToolResolution);

  return sub_23C8711F4();
}

uint64_t sub_23C7F11C4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202EF8, type metadata accessor for TranscriptProtoToolResolution, &protocol conformance descriptor for TranscriptProtoToolResolution);

  return sub_23C871204();
}

uint64_t sub_23C7F1260()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201328);
  __swift_project_value_buffer(v0, qword_27E201328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "statementIdToUndo";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoUndoRedoRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_23C871164();
        }

        else if (result == 2)
        {
          sub_23C871154();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_23C62DA20();
            sub_23C8710A4();
            break;
          case 4:
            sub_23C7F1644(a1, v5, a2, a3);
            break;
          case 5:
            sub_23C7F16F8(a1, v5, a2, a3);
            break;
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7F1644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F16F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoUndoRedoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_23C8712C4(), !v4))
  {
    if (*(v3 + 32))
    {
      result = sub_23C8712C4();
    }

    if (!v4)
    {
      if (*(v3 + 16) == 1)
      {
        sub_23C62DA20();
        sub_23C871254();
      }

      sub_23C7F18E0(v3, a1, a2, a3);
      sub_23C7F1AFC(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoUndoRedoRequest(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7F18E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  sub_23C5855B0(a1 + *(v12 + 28), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7F1AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  sub_23C5855B0(a1 + *(v12 + 32), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7F1D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(a1 + 28);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + *(a1 + 32), 1, 1, v5);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C7F1E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030E0, type metadata accessor for TranscriptProtoUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoUndoRedoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F1F08(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202F10, type metadata accessor for TranscriptProtoUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoUndoRedoRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C7F1F74(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202F10, type metadata accessor for TranscriptProtoUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoUndoRedoRequest);

  return sub_23C871204();
}

uint64_t sub_23C7F2010()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201340);
  __swift_project_value_buffer(v0, qword_27E201340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoClientUndoRedoRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_23C7F2388(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          sub_23C7F243C(a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_23C871164();
      }

      else if (result == 2)
      {
        sub_23C62DA20();
        sub_23C8710A4();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7F2388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoClientUndoRedoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    if (*(v3 + 16) != 1 || (sub_23C62DA20(), result = sub_23C871254(), !v4))
    {
      result = sub_23C7F2600(v3, a1, a2, a3);
      if (!v4)
      {
        sub_23C7F281C(v3, a1, a2, a3);
        type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C7F2600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7F281C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  sub_23C5855B0(a1 + *(v12 + 28), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7F2A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + *(a1 + 28), 1, 1, v5);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C7F2B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030D8, type metadata accessor for TranscriptProtoClientUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoClientUndoRedoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F2C24(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202F28, type metadata accessor for TranscriptProtoClientUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoClientUndoRedoRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C7F2C90(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202F28, type metadata accessor for TranscriptProtoClientUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoClientUndoRedoRequest);

  return sub_23C871204();
}

uint64_t sub_23C7F2D2C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201358);
  __swift_project_value_buffer(v0, qword_27E201358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "statementId";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7F2FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C8314AC(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t sub_23C7F3058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F3174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C8314AC(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C7F3390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7F3638@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a5, 1, 1, v9);
  v10 = *(a1 + 20);
  v11 = a3(0);
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  v12 = *(a1 + 24);
  v13 = a4(0);
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7F37A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030D0, type metadata accessor for TranscriptProtoTypeConversionRequest, &protocol conformance descriptor for TranscriptProtoTypeConversionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F3840(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202F40, type metadata accessor for TranscriptProtoTypeConversionRequest, &protocol conformance descriptor for TranscriptProtoTypeConversionRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C7F38AC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202F40, type metadata accessor for TranscriptProtoTypeConversionRequest, &protocol conformance descriptor for TranscriptProtoTypeConversionRequest);

  return sub_23C871204();
}

uint64_t sub_23C7F3948()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201370);
  __swift_project_value_buffer(v0, qword_27E201370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "originStatementId";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7F3BC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  result = sub_23C871044();
  if (!v6)
  {
    while ((v14 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          a5(a1, v9, a2, a3);
          break;
        case 2:
          a4(a1, v9, a2, a3);
          break;
        case 1:
          type metadata accessor for ToolKitProtoTypedValue(0);
          sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
          sub_23C8711A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7F3CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoTypeConversionResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F3DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoTypeConversionResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F3ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7F40E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7F4368@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = *(a1 + 20);
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  v8 = *(*(v7 - 8) + 56);
  v8(a3 + v6, 1, 1, v7);
  v8(a3 + *(a1 + 24), 1, 1, v7);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7F44A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030C8, type metadata accessor for TranscriptProtoTypeConversionResult, &protocol conformance descriptor for TranscriptProtoTypeConversionResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F4540(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202F58, type metadata accessor for TranscriptProtoTypeConversionResult, &protocol conformance descriptor for TranscriptProtoTypeConversionResult);

  return sub_23C8711F4();
}

uint64_t sub_23C7F45AC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202F58, type metadata accessor for TranscriptProtoTypeConversionResult, &protocol conformance descriptor for TranscriptProtoTypeConversionResult);

  return sub_23C871204();
}

uint64_t sub_23C7F4648()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201388);
  __swift_project_value_buffer(v0, qword_27E201388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "spans";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "requiredContext";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "utteranceContext";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "toolRetrievalResponse";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "dynamicEnumerationEntities";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "context";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoQueryDecorationResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_23C7F4BA8(a1, v5, a2, a3);
            break;
          case 5:
            v11 = v4;
            type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
            sub_23C8314AC(&qword_27E201C70, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, &protocol conformance descriptor for TranscriptProtoDynamicEnumerationEntityStatement);
            goto LABEL_5;
          case 6:
            goto LABEL_12;
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = v4;
          type metadata accessor for ContextProtoSpanMatchedEntity(0);
          sub_23C8314AC(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity, &protocol conformance descriptor for ContextProtoSpanMatchedEntity);
LABEL_5:
          v4 = v11;
          sub_23C871194();
          goto LABEL_6;
        }

        if (result == 2 || result == 3)
        {
LABEL_12:
          v11 = v4;
          type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
          sub_23C8314AC(&qword_27E201958, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7F4BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_23C8314AC(&qword_27E1FA948, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoQueryDecorationResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for ContextProtoSpanMatchedEntity(0);
    sub_23C8314AC(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity, &protocol conformance descriptor for ContextProtoSpanMatchedEntity);
    result = sub_23C8712F4();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[1] + 16))
  {
    type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
    sub_23C8314AC(&qword_27E201958, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement);
    v10 = v5;
    result = sub_23C8712F4();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v10 = v5;
  }

  if (!*(v3[2] + 16) || (type metadata accessor for TranscriptProtoRetrievedContextStatement(0), sub_23C8314AC(&qword_27E201958, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement), result = sub_23C8712F4(), !v10))
  {
    result = sub_23C7F4F44(v3, a1, a2, a3);
    if (!v10)
    {
      if (*(v3[3] + 16))
      {
        type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
        sub_23C8314AC(&qword_27E201C70, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, &protocol conformance descriptor for TranscriptProtoDynamicEnumerationEntityStatement);
        sub_23C8712F4();
      }

      if (*(v3[4] + 16))
      {
        type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
        sub_23C8314AC(&qword_27E201958, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement);
        sub_23C8712F4();
      }

      type metadata accessor for TranscriptProtoQueryDecorationResult(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7F4F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE0, &unk_23C8A13B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v9 = *(DecorationToolRetrievalResponse - 8);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  sub_23C5855B0(a1 + *(DecorationResult + 36), v7, &qword_27E1FACE0, &unk_23C8A13B0);
  if ((*(v9 + 48))(v7, 1, DecorationToolRetrievalResponse) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FACE0, &unk_23C8A13B0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_23C8314AC(&qword_27E1FA948, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
}

uint64_t sub_23C7F51AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 36);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(&a2[v3], 1, 1, DecorationToolRetrievalResponse);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v6 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v6;
  *(a2 + 2) = v6;
  *(a2 + 3) = v6;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_23C7F5288(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030C0, type metadata accessor for TranscriptProtoQueryDecorationResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F5328(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202F70, type metadata accessor for TranscriptProtoQueryDecorationResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationResult);

  return sub_23C8711F4();
}

uint64_t sub_23C7F5394(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202F70, type metadata accessor for TranscriptProtoQueryDecorationResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationResult);

  return sub_23C871204();
}

uint64_t sub_23C7F5430()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2013A0);
  __swift_project_value_buffer(v0, qword_27E2013A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dataSource";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "payload";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_23C7F57D0(a1, v5, a2, a3);
        break;
      case 2:
        sub_23C871164();
        break;
      case 1:
        sub_23C7F571C(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_23C7F571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F57D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  sub_23C8314AC(&qword_27E203030, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C7F594C(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = v3[1];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_23C8712C4();
    }

    sub_23C7F5B68(v3, a1, a2, a3);
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  sub_23C5855B0(a1 + *(DecorationPrePlannerResult + 20), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7F5B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203738, &qword_23C8A09B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  v9 = *(DecorationPrePlannerResultPayload - 8);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayload);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  sub_23C5855B0(a1 + *(DecorationPrePlannerResult + 24), v7, &qword_27E203738, &qword_23C8A09B0);
  if ((*(v9 + 48))(v7, 1, DecorationPrePlannerResultPayload) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203738, &qword_23C8A09B0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_23C8314AC(&qword_27E203030, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
}

uint64_t sub_23C7F5DFC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, char *a4@<X8>)
{
  v7 = *(a1 + 20);
  v8 = a2(0);
  (*(*(v8 - 8) + 56))(&a4[v7], 1, 1, v8);
  v9 = *(a1 + 24);
  v10 = a3(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = 0;
  *(a4 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C7F5F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030B8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F5FBC(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202F88, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResult);

  return sub_23C8711F4();
}

uint64_t sub_23C7F6028(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202F88, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResult);

  return sub_23C871204();
}

uint64_t sub_23C7F6104(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_23C871044();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C7F61B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(*v4 + 16) || (result = sub_23C8712A4(), !v5))
  {
    (a4)(0, a2, a3);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F62F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030B0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F6390(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202FA0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7F63FC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202FA0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return sub_23C871204();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F6660(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030A8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F6700(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202FB8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7F676C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202FB8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return sub_23C871204();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ContextProtoRetrievedContext(0), sub_23C8314AC(&qword_27E1FA4F0, type metadata accessor for ContextProtoRetrievedContext, &protocol conformance descriptor for ContextProtoRetrievedContext), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F6A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030A0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F6AE4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202FD0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7F6B50(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202FD0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return sub_23C871204();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_23C8314AC(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity, &protocol conformance descriptor for ContextProtoSpanMatchedEntity), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F6DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203098, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F6E6C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202FE8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7F6ED8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202FE8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return sub_23C871204();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ContextProtoRetrievedTool(0), sub_23C8314AC(&qword_27E1FA578, type metadata accessor for ContextProtoRetrievedTool, &protocol conformance descriptor for ContextProtoRetrievedTool), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F71B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203090, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F7250(uint64_t a1)
{
  sub_23C8314AC(&qword_27E203000, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7F72BC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E203000, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return sub_23C871204();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ContextProtoToolQueryOutput(0), sub_23C8314AC(&qword_27E1FA930, type metadata accessor for ContextProtoToolQueryOutput, &protocol conformance descriptor for ContextProtoToolQueryOutput), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F75AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203088, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F764C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E203018, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7F76B8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E203018, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return sub_23C871204();
}

uint64_t sub_23C7F7768()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201448);
  __swift_project_value_buffer(v0, qword_27E201448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "strings";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typedValues";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "retrievedContexts";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "entitySpanMatchResults";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "retrievedTools";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "toolQueryOutputs";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_23C7F8CAC(v5, a1, a2, a3);
          break;
        case 5:
          sub_23C7F9268(v5, a1, a2, a3);
          break;
        case 6:
          sub_23C7F9824(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_23C7F7B84(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C7F8134(v5, a1, a2, a3);
          break;
        case 3:
          sub_23C7F86F0(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C7F7B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedStringVariant - 8);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v14 = *(DecorationPrePlannerPayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203708, &qword_23C8A0980);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = DecorationPrePlannerResultPayloadRepeatedStringVariant;
  v26 = DecorationPrePlannerResultPayloadRepeatedStringVariant;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201CB8, &qword_23C8A13C0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, DecorationPrePlannerPayloadEnum);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201CB8, &qword_23C8A13C0);
    v29 = v44;
    v30 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v30 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203708, &qword_23C8A0980);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202FA0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203708, &qword_23C8A0980);
  }

  sub_23C5855B0(v24, v32, &qword_27E203708, &qword_23C8A0980);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203708, &qword_23C8A0980);
    return sub_23C585C34(v32, &qword_27E203708, &qword_23C8A0980);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203708, &qword_23C8A0980);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201CB8, &qword_23C8A13C0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7F8134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant - 8);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v14 = *(DecorationPrePlannerPayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203710, &qword_23C8A0988);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = DecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
  v26 = DecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201CB8, &qword_23C8A13C0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, DecorationPrePlannerPayloadEnum);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201CB8, &qword_23C8A13C0);
    v29 = v44;
    v30 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v30 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E203710, &qword_23C8A0988);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202FB8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203710, &qword_23C8A0988);
  }

  sub_23C5855B0(v24, v32, &qword_27E203710, &qword_23C8A0988);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203710, &qword_23C8A0988);
    return sub_23C585C34(v32, &qword_27E203710, &qword_23C8A0988);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203710, &qword_23C8A0988);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201CB8, &qword_23C8A13C0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7F86F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant - 8);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v14 = *(DecorationPrePlannerPayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203718, &qword_23C8A0990);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
  v26 = DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201CB8, &qword_23C8A13C0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, DecorationPrePlannerPayloadEnum);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201CB8, &qword_23C8A13C0);
    v29 = v44;
    v30 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v30 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E203718, &qword_23C8A0990);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202FD0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203718, &qword_23C8A0990);
  }

  sub_23C5855B0(v24, v32, &qword_27E203718, &qword_23C8A0990);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203718, &qword_23C8A0990);
    return sub_23C585C34(v32, &qword_27E203718, &qword_23C8A0990);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203718, &qword_23C8A0990);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201CB8, &qword_23C8A13C0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7F8CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant - 8);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v14 = *(DecorationPrePlannerPayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203720, &qword_23C8A0998);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
  v26 = DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201CB8, &qword_23C8A13C0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, DecorationPrePlannerPayloadEnum);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201CB8, &qword_23C8A13C0);
    v29 = v44;
    v30 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v30 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E203720, &qword_23C8A0998);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202FE8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203720, &qword_23C8A0998);
  }

  sub_23C5855B0(v24, v32, &qword_27E203720, &qword_23C8A0998);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203720, &qword_23C8A0998);
    return sub_23C585C34(v32, &qword_27E203720, &qword_23C8A0998);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203720, &qword_23C8A0998);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201CB8, &qword_23C8A13C0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7F9268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant - 8);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v14 = *(DecorationPrePlannerPayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203728, &qword_23C8A09A0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
  v26 = DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201CB8, &qword_23C8A13C0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, DecorationPrePlannerPayloadEnum);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201CB8, &qword_23C8A13C0);
    v29 = v44;
    v30 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v30 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v24, &qword_27E203728, &qword_23C8A09A0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E203000, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203728, &qword_23C8A09A0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203728, &qword_23C8A09A0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203728, &qword_23C8A09A0);
    return sub_23C585C34(v32, &qword_27E203728, &qword_23C8A09A0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203728, &qword_23C8A09A0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201CB8, &qword_23C8A13C0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7F9824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant - 8);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v14 = *(DecorationPrePlannerPayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203730, &qword_23C8A09A8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
  v26 = DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E201CB8, &qword_23C8A13C0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, DecorationPrePlannerPayloadEnum);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201CB8, &qword_23C8A13C0);
    v29 = v44;
    v30 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v30 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v24, &qword_27E203730, &qword_23C8A09A8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E203018, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203730, &qword_23C8A09A8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203730, &qword_23C8A09A8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203730, &qword_23C8A09A8);
    return sub_23C585C34(v32, &qword_27E203730, &qword_23C8A09A8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203730, &qword_23C8A09A8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201CB8, &qword_23C8A13C0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}