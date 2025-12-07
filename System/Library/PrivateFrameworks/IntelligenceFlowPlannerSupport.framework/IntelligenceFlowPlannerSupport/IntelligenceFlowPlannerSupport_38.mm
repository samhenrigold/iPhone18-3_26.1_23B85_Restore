uint64_t sub_22C1D9458@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v6 = sub_22C2725C4();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v30 - v9;
  v10 = sub_22C272984();
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C270524();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FB88, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v31 = v12;
  v32 = a2;
  v21 = v35;
  v22 = v36;
  v30 = v10;
  v23 = v37;
  sub_22C1EE064();
  sub_22C1022DC();
  v24 = v23;
  (*(v22 + 16))(v21, v41, v23);
  v25 = v31;
  sub_22C272974();
  (*(v22 + 8))(v41, v24);
  sub_22BE29DD4(a1, v32);
  sub_22C1EE0BC(v19, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
  v27 = *v16;
  v26 = v16[1];

  sub_22C1EE0BC(v16, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
  v28 = v34;
  (*(v33 + 32))(v34, v25, v30);
  result = type metadata accessor for QueryPayload.StringQuery(0);
  v29 = (v28 + *(result + 20));
  *v29 = v27;
  v29[1] = v26;
  return result;
}

uint64_t sub_22C1D9878@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v6 = sub_22C2725C4();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v28 - v9;
  v10 = sub_22C272984();
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C270524();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FBA0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v29 = v12;
  v30 = a2;
  v21 = v33;
  v22 = v34;
  v28 = v10;
  v23 = v35;
  sub_22C1EE064();
  sub_22C1022DC();
  v24 = v23;
  (*(v22 + 16))(v21, v39, v23);
  v25 = v29;
  sub_22C272974();
  (*(v22 + 8))(v39, v24);
  sub_22BE29DD4(a1, v30);
  sub_22C1EE0BC(v19, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v26 = *v16;

  sub_22C1EE0BC(v16, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v27 = v32;
  (*(v31 + 32))(v32, v25, v28);
  result = type metadata accessor for QueryPayload.IdentifierQuery(0);
  *(v27 + *(result + 20)) = v26;
  return result;
}

uint64_t sub_22C1D9C94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a3;
  v80 = sub_22C272874();
  v83 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v81 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v79 = &v64 - v7;
  v93 = sub_22C272594();
  v82 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v16 = sub_22C270524();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - v21;
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FBB8, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
  v23 = v88;
  sub_22C270734();
  if (v23)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v88 = 0;
  v89 = v15;
  v77 = v12;
  v78 = v9;
  v64 = a1;
  v65 = a2;
  sub_22C1EE064();
  v67 = v19;
  v25 = *v19;
  sub_22BE5CE4C(&qword_27D9155C8, &unk_22C2CC7D0);
  result = sub_22C273D04();
  v26 = 0;
  v27 = *(v25 + 64);
  v66 = v25 + 64;
  v75 = v25;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v31 = (v28 + 63) >> 6;
  v32 = v82;
  v73 = v82 + 16;
  v74 = (v82 + 8);
  v71 = v83 + 32;
  v70 = result + 64;
  v72 = v22;
  v69 = v31;
  v76 = result;
  while (1)
  {
    v33 = v89;
    v34 = v78;
    if (!v30)
    {
      break;
    }

    v35 = v77;
    v36 = __clz(__rbit64(v30));
    v84 = (v30 - 1) & v30;
LABEL_13:
    v40 = v36 | (v26 << 6);
    v41 = *(v75 + 56);
    v42 = (*(v75 + 48) + 16 * v40);
    v43 = v42[1];
    v85 = *v42;
    v86 = v40;
    v44 = *(v32 + 16);
    v45 = v93;
    v44(v89, v41 + *(v32 + 72) * v40, v93);
    v44(v35, v33, v45);
    v44(v34, v35, v45);
    v87 = v43;

    v46 = v81;
    v47 = v88;
    sub_22C272864();
    if (v47)
    {
      v62 = *v74;
      v63 = v93;
      (*v74)(v35, v93);

      v62(v33, v63);
      sub_22BE29DD4(v64, v65);
      sub_22C1EE0BC(v72, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
      return sub_22C1EE0BC(v67, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
    }

    v88 = 0;
    v48 = *v74;
    v49 = v93;
    (*v74)(v35, v93);
    v50 = v83;
    v51 = *(v83 + 32);
    v52 = v79;
    v53 = v46;
    v54 = v80;
    v51(v79, v53, v80);
    v48(v89, v49);
    v55 = v86;
    *(v70 + ((v86 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v86;
    v56 = v76;
    v57 = (*(v76 + 48) + 16 * v55);
    v58 = v87;
    *v57 = v85;
    v57[1] = v58;
    result = (v51)(*(v56 + 56) + *(v50 + 72) * v55, v52, v54);
    v59 = *(v56 + 16);
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_20;
    }

    *(v56 + 16) = v61;
    v32 = v82;
    v22 = v72;
    v31 = v69;
    v30 = v84;
  }

  v37 = v26;
  v38 = v67;
  while (1)
  {
    v26 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v26 >= v31)
    {
      sub_22BE29DD4(v64, v65);
      sub_22C1EE0BC(v22, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
      result = sub_22C1EE0BC(v38, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
      *v68 = v76;
      return result;
    }

    v39 = *(v66 + 8 * v26);
    ++v37;
    if (v39)
    {
      v35 = v77;
      v36 = __clz(__rbit64(v39));
      v84 = (v39 - 1) & v39;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22C1DA36C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C26E684();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C270524();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for TranscriptProtoVariableStep(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910018, type metadata accessor for TranscriptProtoVariableStep, &protocol conformance descriptor for TranscriptProtoVariableStep);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v32 = v8;
  sub_22C1EE064();
  sub_22C1026C4();
  v19 = v38;

  sub_22C26E664();
  sub_22C1EE0BC(v19, type metadata accessor for TranscriptProtoStatementID);

  sub_22C0F50E4(v20, v21, v22, v23, v24, v25, v26, v27, v31, v32);
  v29 = v28;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoVariableStep);
  sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoVariableStep);
  v30 = v33;
  (*(v34 + 32))(v33, v10, v32);
  result = type metadata accessor for VariableStep(0);
  *(v30 + *(result + 20)) = v29;
  return result;
}

uint64_t sub_22C1DA738(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v13 = *v8;
  v14 = v8[1];
  v15 = v8[2];
  objc_allocWithZone(MEMORY[0x277CCA9B8]);

  sub_22C24F544(v13, v14, v15, 0);
  sub_22C26E5E4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoIntelligenceFlowError);
}

uint64_t sub_22C1DA970(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FEF0, type metadata accessor for TranscriptProtoSystemPromptResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolution);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RequestContent.SystemPromptResolution.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoSystemPromptResolution);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DAB54(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoStatementResult(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StatementResult.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoStatementResult);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DAD38(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  MEMORY[0x28223BE20](StepResults);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FBD0, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    QueryStepResults.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoQueryStepResults);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DAF1C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSystemResponse(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910610, type metadata accessor for TranscriptProtoSystemResponse, &protocol conformance descriptor for TranscriptProtoSystemResponse);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    SystemResponse.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoSystemResponse);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DB100(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F070, type metadata accessor for TranscriptProtoInterpretedStatementResult, &protocol conformance descriptor for TranscriptProtoInterpretedStatementResult);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    InterpretedStatementResult.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoInterpretedStatementResult);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DB2E4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FF20, type metadata accessor for TranscriptProtoActionResolverRequest, &protocol conformance descriptor for TranscriptProtoActionResolverRequest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionResolverRequest.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoActionResolverRequest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DB4C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F6D0, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C0F77A0();
  v16 = v15;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoResponseGenerationRequest);
  result = sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoResponseGenerationRequest);
  *a3 = v16;
  return result;
}

uint64_t sub_22C1DB6D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C270524();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  MEMORY[0x28223BE20](v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FF70, type metadata accessor for TranscriptProtoSafetyModeRelease, &protocol conformance descriptor for TranscriptProtoSafetyModeRelease);
  result = sub_22C270734();
  if (!v2)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoSafetyModeRelease);
  }

  return result;
}

uint64_t sub_22C1DB844@<X0>(void *a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FF88, type metadata accessor for TranscriptProtoSafetyModeException, &protocol conformance descriptor for TranscriptProtoSafetyModeException);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = v8[1];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoSafetyModeException);
    *a3 = v12;
    a3[1] = v11;
  }

  return result;
}

uint64_t sub_22C1DBA0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a3;
  v6 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v35 - v7;
  v48 = sub_22C272594();
  v43 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v35 - v10;
  v11 = sub_22C272874();
  v41 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C270524();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = type metadata accessor for TranscriptProtoVariableSetter(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90ED88, type metadata accessor for TranscriptProtoVariableSetter, &protocol conformance descriptor for TranscriptProtoVariableSetter);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v22 = v44;
  v37 = v11;
  v38 = v13;
  v23 = v48;
  sub_22C1EE064();

  Dictionary<>.init(transcript:)();
  v25 = v24;
  v36 = v20;
  v26 = v22;
  sub_22C101488();
  v27 = a2;
  v35 = v25;
  v28 = v43;
  v29 = v22;
  v30 = v23;
  (*(v43 + 16))(v42, v29, v23);
  v31 = v38;
  sub_22C272864();
  (*(v28 + 8))(v26, v30);
  sub_22BE29DD4(a1, v27);
  sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoVariableSetter);
  sub_22C1EE0BC(v36, type metadata accessor for TranscriptProtoVariableSetter);
  v32 = sub_22C26E614();
  sub_22BE19DC4(v39, 1, 1, v32);
  v33 = type metadata accessor for VariableSetter(0);
  v34 = v40;
  sub_22BE19DC4(v40 + *(v33 + 24), 1, 1, v32);
  *v34 = v35;
  (*(v41 + 32))(v34 + *(v33 + 20), v31, v37);
  return sub_22C193480();
}

uint64_t sub_22C1DBF44(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FFC0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RequestContent.SystemPromptResolution.UserAction.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DC128(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F6A8, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StatementResultPayload.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoStatementResultPayload);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DC30C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoResponseOutput(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseOutput.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoResponseOutput);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DC4F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  MEMORY[0x28223BE20](Results);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EAC0, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C0F4E60();
  v16 = v15;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoQueryResults);
  result = sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoQueryResults);
  *a3 = v16;
  return result;
}

uint64_t sub_22C1DC700(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F7B8, type metadata accessor for TranscriptProtoActionParameterContext, &protocol conformance descriptor for TranscriptProtoActionParameterContext);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionParameterContext.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoActionParameterContext);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DC8E4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F618, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionConfirmation.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, v24, v25, v26, v27, v28, v29);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoActionConfirmation);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DCAC8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F630, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionConfirmation.SystemStyle.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DCCAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C26FB14();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C270524();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F648, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v26 = v8;
  sub_22C1EE064();
  v19 = *(v14 + 1);

  sub_22C101A48();
  v25 = v19;
  v20 = *v32;
  if (v20 == 4)
  {
    *&v29 = &type metadata for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSourceEnum;
    sub_22BE5CE4C(&qword_27D9155C0, &unk_22C2CC7C0);
    v21 = sub_22C273074();
    v23 = v22;
    sub_22C108598();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    swift_willThrow();
    sub_22C1EE0BC(v32, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  }

  else
  {
    sub_22C1EE0BC(v32, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
    (*(v27 + 104))(v10, **(&unk_278725C38 + v20), v26);
    sub_22C26FAE4();
  }

  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  return sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
}

uint64_t sub_22C1DD08C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F660, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  sub_22C270734();
  if (!v3)
  {
    sub_22C1EE064();
    v14 = *v10;
    if (v14 == 4)
    {
      *&v21[0] = &type metadata for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSourceEnum;
      sub_22BE5CE4C(&qword_27D9155C0, &unk_22C2CC7C0);
      v15 = sub_22C273074();
      v17 = v16;
      sub_22C108598();
      swift_allocError();
      *v18 = v15;
      *(v18 + 8) = v17;
      *(v18 + 16) = 0;
      swift_willThrow();
      sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
    }

    else
    {
      sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      v19 = sub_22C26FB14();
      (*(*(v19 - 8) + 104))(a3, **(&unk_278725C38 + v14), v19);
    }

    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DD350(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoParameterValue(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E6B8, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ParameterValue.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoParameterValue);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DD534@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoPromptSelection(0);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);
  sub_22C270734();
  if (!v3)
  {
    sub_22C1EE064();
    if (v10[9])
    {
      *&v26[0] = &type metadata for TranscriptProtoPromptSelectionEnum;
      sub_22BE5CE4C(&qword_27D911FB8, &unk_22C2B5D60);
      v14 = sub_22C273074();
      v16 = v15;
      sub_22C108598();
      swift_allocError();
      *v17 = v14;
      *(v17 + 8) = v16;
      *(v17 + 16) = 0;
      swift_willThrow();
      sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoPromptSelection);
      v18 = v13;
    }

    else
    {
      v19 = *v10;
      v20 = v10[8];
      sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoPromptSelection);
      if (v20)
      {
        v21 = sub_22C26F7C4();
        if (v19)
        {
          v22 = MEMORY[0x277D1CAF8];
        }

        else
        {
          v22 = MEMORY[0x277D1CB00];
        }

        (*(*(v21 - 8) + 104))(a3, *v22, v21);
      }

      else
      {
        *a3 = v19;
        v23 = *MEMORY[0x277D1CAF0];
        v24 = sub_22C26F7C4();
        (*(*(v24 - 8) + 104))(a3, v23, v24);
      }

      v18 = v13;
    }

    sub_22C1EE0BC(v18, type metadata accessor for TranscriptProtoPromptSelection);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DD85C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FA38, type metadata accessor for TranscriptProtoParameterNeedsValue, &protocol conformance descriptor for TranscriptProtoParameterNeedsValue);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ParameterNeedsValue.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoParameterNeedsValue);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DDA40(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FA50, type metadata accessor for TranscriptProtoParameterNeedsValueContext, &protocol conformance descriptor for TranscriptProtoParameterNeedsValueContext);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ParameterNeedsValue.Context.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DDC24(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FA68, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch, &protocol conformance descriptor for TranscriptProtoParameterNeedsValuePhotosSearch);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C26ED04();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
}

uint64_t sub_22C1DDE30(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F9E8, type metadata accessor for TranscriptProtoParameterConfirmation, &protocol conformance descriptor for TranscriptProtoParameterConfirmation);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ParameterConfirmation.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoParameterConfirmation);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DE014@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FA00, type metadata accessor for TranscriptProtoParameterDisambiguation, &protocol conformance descriptor for TranscriptProtoParameterDisambiguation);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v25 = a3;
  sub_22C1EE064();

  sub_22C0F2F3C(v15, v16, v17, v18, v19, v20, v21, v22);
  sub_22C26FFB4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoParameterDisambiguation);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoParameterDisambiguation);
}

uint64_t sub_22C1DE268(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FA80, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ParameterNotAllowed.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoParameterNotAllowed);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DE44C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoCandidate(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EA50, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Candidate.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoCandidate);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DE630@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F6F8, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v11 = *v8;
    v12 = v8[8];
    v13 = v8[9];
    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoCandidatePromptStatus);
    if (v13)
    {
      v14 = 0;
      v15 = 1;
    }

    else
    {
      v14 = v11 != 0;
      if (v12)
      {
        v15 = 1;
      }

      else
      {
        v14 = v11;
        v15 = 0;
      }
    }

    *a3 = v14;
    *(a3 + 8) = v15;
  }

  return result;
}

uint64_t sub_22C1DE824@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoPlan(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  v18 = 0;
  memset(&v17[2], 0, 32);
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FAD0, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  Session.Plan.init(transcript:)(v10, v16);
  sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoPlan);
  result = sub_22BE29DD4(a1, a2);
  v15 = v16[1];
  *a3 = v16[0];
  a3[1] = v15;
  a3[2] = v17[0];
  *(a3 + 41) = *(v17 + 9);
  return result;
}

uint64_t sub_22C1DEA34(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRecoverableError(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FAE8, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Session.RecoverableError.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoRecoverableError);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DEC18(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FB00, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Session.PlanGenerationError.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoPlanGenerationError);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DEDFC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v36 = a3;
  v6 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22C26E5D4();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C270524();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FB18, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v34 = v8;
  sub_22C1EE064();
  v19 = *v14;
  v20 = v14[1];
  v21 = v14[3];
  v32 = v14[2];
  v33 = v19;

  sub_22C103214();
  v31 = v21;
  v22 = v40;
  v23 = *v40;
  v24 = v40[1];
  v29 = v40[2];
  v30 = v23;
  objc_allocWithZone(MEMORY[0x277CCA9B8]);

  sub_22C24F544(v30, v24, v29, 0);
  sub_22C26E5E4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v22, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  v25 = v36;
  v26 = v32;
  *v36 = v33;
  *(v25 + 1) = v20;
  v27 = v31;
  *(v25 + 2) = v26;
  *(v25 + 3) = v27;
  v28 = type metadata accessor for Session.PlanGenerationModelOutputError(0);
  return (*(v35 + 32))(&v25[*(v28 + 24)], v10, v34);
}

uint64_t sub_22C1DF1D8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoExpression(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910248, type metadata accessor for TranscriptProtoExpression, &protocol conformance descriptor for TranscriptProtoExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Expression.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, v24, v25, v26, v27, v28, v29);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DF3BC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910590, type metadata accessor for TranscriptProtoAnswerSynthesisExpression, &protocol conformance descriptor for TranscriptProtoAnswerSynthesisExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AnswerSynthesisExpression.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoAnswerSynthesisExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DF5A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoValueExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910278, type metadata accessor for TranscriptProtoValueExpression, &protocol conformance descriptor for TranscriptProtoValueExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  ValueExpression.init(transcript:)(v10, v15, v16, v17, v18, v19, v20, v21, v23, *(&v23 + 1));
  sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoValueExpression);
  result = sub_22BE29DD4(a1, a2);
  v22 = v24;
  *a3 = v23;
  *(a3 + 16) = v22;
  return result;
}

uint64_t sub_22C1DF7A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v27 = a3;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v31 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22C26E684();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22C270524();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v23[-v16];
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9102A8, type metadata accessor for TranscriptProtoPrefixExpression, &protocol conformance descriptor for TranscriptProtoPrefixExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v25 = v8;
  sub_22C1EE064();
  v19 = *v14;
  sub_22C1026C4();
  v20 = v31;
  v24 = v19;

  sub_22C26E664();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v20, type metadata accessor for TranscriptProtoStatementID);
  sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoPrefixExpression);
  sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoPrefixExpression);
  v21 = v27;
  *v27 = v24;
  v22 = type metadata accessor for PrefixExpression(0);
  return (*(v26 + 32))(&v21[*(v22 + 20)], v10, v25);
}

uint64_t sub_22C1DFB38(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoInfixExpression(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9102C0, type metadata accessor for TranscriptProtoInfixExpression, &protocol conformance descriptor for TranscriptProtoInfixExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    InfixExpression.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoInfixExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DFD1C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoIndexExpression(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9102F0, type metadata accessor for TranscriptProtoIndexExpression, &protocol conformance descriptor for TranscriptProtoIndexExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    IndexExpression.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoIndexExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DFF00(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  MEMORY[0x28223BE20](updated);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910308, type metadata accessor for TranscriptProtoUpdateParametersExpression, &protocol conformance descriptor for TranscriptProtoUpdateParametersExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    UpdateParametersExpression.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoUpdateParametersExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E00E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = a3;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22C26E684();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C270524();
  MEMORY[0x28223BE20](v11 - 8);
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  MEMORY[0x28223BE20](updated);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v24 - v16;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EF18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, &protocol conformance descriptor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v27 = v8;
  sub_22C1EE064();
  v19 = *(v14 + 1);
  v26 = *v14;
  v20 = v14[16];

  sub_22C1026C4();
  v25 = v20;
  v21 = v33;
  v24[2] = *v33;

  sub_22C26E664();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v21, type metadata accessor for TranscriptProtoStatementID);
  sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
  sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
  v22 = v29;
  *v29 = v26;
  v22[1] = v19;
  v22[2] = 0;
  *(v22 + 24) = 1;
  *(v22 + 25) = v25;
  v23 = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
  return (*(v28 + 32))(v22 + *(v23 + 28), v10, v27);
}

uint64_t sub_22C1E04A4@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v14 = *(v8 + 3);
    v13 = *(v8 + 4);
    v15 = v8[16];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
    *a3 = v12;
    *(a3 + 8) = v11;
    *(a3 + 16) = v14;
    *(a3 + 24) = v13;
    *(a3 + 32) = v15;
  }

  return result;
}

uint64_t sub_22C1E0684@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoCallExpression(0);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910340, type metadata accessor for TranscriptProtoCallExpression, &protocol conformance descriptor for TranscriptProtoCallExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  CallExpression.init(transcript:)();
  sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoCallExpression);
  result = sub_22BE29DD4(a1, a2);
  v13 = *(&v16 + 1);
  v14 = v18;
  v15 = v19;
  *a3 = v16;
  *(a3 + 8) = v13;
  *(a3 + 16) = v17;
  *(a3 + 32) = v14;
  *(a3 + 40) = v15;
  return result;
}

uint64_t sub_22C1E089C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C270524();
  MEMORY[0x28223BE20](v3 - 8);
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(0);
  MEMORY[0x28223BE20](ContextExpression);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910358, type metadata accessor for TranscriptProtoRetrieveContextExpression, &protocol conformance descriptor for TranscriptProtoRetrieveContextExpression);
  result = sub_22C270734();
  if (!v2)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoRetrieveContextExpression);
  }

  return result;
}

uint64_t sub_22C1E0A08(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
  MEMORY[0x28223BE20](SpansExpression);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910370, type metadata accessor for TranscriptProtoRetrieveSpansExpression, &protocol conformance descriptor for TranscriptProtoRetrieveSpansExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RetrieveSpansExpression.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E0BEC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
  MEMORY[0x28223BE20](ToolsExpression);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910388, type metadata accessor for TranscriptProtoRetrieveToolsExpression, &protocol conformance descriptor for TranscriptProtoRetrieveToolsExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RetrieveToolsExpression.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E0DD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoSayExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9103A0, type metadata accessor for TranscriptProtoSayExpression, &protocol conformance descriptor for TranscriptProtoSayExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  SayExpression.init(transcript:)(v10);
  sub_22BE29DD4(a1, a2);
  result = sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoSayExpression);
  *a3 = *&v15[0];
  return result;
}

uint64_t sub_22C1E0FC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v29 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C26E684();
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C270524();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for TranscriptProtoPickExpression(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9103B8, type metadata accessor for TranscriptProtoPickExpression, &protocol conformance descriptor for TranscriptProtoPickExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v23 = v8;
  sub_22C1EE064();
  sub_22C1026C4();
  v19 = v29;

  sub_22C26E664();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v19, type metadata accessor for TranscriptProtoStatementID);
  sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoPickExpression);
  v20 = *v14;
  sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoPickExpression);
  v21 = v25;
  (*(v24 + 32))(v25, v10, v23);
  result = type metadata accessor for PickExpression(0);
  *(v21 + *(result + 20)) = v20;
  return result;
}

uint64_t sub_22C1E134C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9103D0, type metadata accessor for TranscriptProtoConfirmExpression, &protocol conformance descriptor for TranscriptProtoConfirmExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ConfirmExpression.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoConfirmExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E1530@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSearchExpression(0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9103E8, type metadata accessor for TranscriptProtoSearchExpression, &protocol conformance descriptor for TranscriptProtoSearchExpression);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v13 = v8[16];
    v14 = v8[17];
    v15 = v8[18];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoSearchExpression);
    *a3 = v12;
    *(a3 + 8) = v11;
    *(a3 + 16) = v13;
    *(a3 + 17) = v14;
    *(a3 + 18) = v15;
  }

  return result;
}

uint64_t sub_22C1E1710@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v80 = a3;
  v5 = sub_22C26E684();
  v92 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v89 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  v91 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v88 = &v73 - v10;
  v11 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v73 - v12;
  v14 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v73 - v15;
  v17 = sub_22C270524();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910400, type metadata accessor for TranscriptProtoStructuredSearchExpression, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression);
  v24 = v98;
  sub_22C270734();
  if (v24)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v87 = v18;
  v74 = 0;
  v79 = v13;
  v76 = v16;
  v77 = a1;
  v78 = a2;
  sub_22C1EE064();
  v75 = v20;
  v26 = *v20;
  sub_22BE5CE4C(&qword_27D9155B8, &unk_22C2CC7B0);
  result = sub_22C273D04();
  v86 = result;
  v27 = 0;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v31 = (v28 + 63) >> 6;
  v83 = result + 64;
  v84 = v26;
  v81 = v23;
  v82 = v92 + 32;
  v32 = v23;
  v85 = v5;
  while (1)
  {
    v33 = v90;
    if (!v30)
    {
      break;
    }

    v34 = __clz(__rbit64(v30));
    v93 = (v30 - 1) & v30;
LABEL_13:
    v38 = v34 | (v27 << 6);
    v39 = (*(v84 + 48) + 16 * v38);
    v40 = v39[1];
    v98 = *v39;
    v94 = v40;
    v41 = v88;
    sub_22C1EE064();
    sub_22C1EE064();

    v42 = v89;
    sub_22C26E664();
    sub_22C1EE0BC(v33, type metadata accessor for TranscriptProtoStatementID);
    sub_22C1EE0BC(v41, type metadata accessor for TranscriptProtoStatementID);
    *(v83 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = v85;
    v44 = v86;
    v45 = (*(v86 + 48) + 16 * v38);
    v46 = v94;
    *v45 = v98;
    v45[1] = v46;
    result = (*(v92 + 32))(*(v44 + 56) + *(v92 + 72) * v38, v42, v43);
    v47 = *(v44 + 16);
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    *(v44 + 16) = v49;
    v32 = v81;
    v30 = v93;
  }

  v35 = v27;
  v36 = v79;
  while (1)
  {
    v27 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v27 >= v31)
    {
      break;
    }

    v37 = *(v26 + 64 + 8 * v27);
    ++v35;
    if (v37)
    {
      v34 = __clz(__rbit64(v37));
      v93 = (v37 - 1) & v37;
      goto LABEL_13;
    }
  }

  v50 = v75;
  sub_22BE22868();
  v51 = v74;
  sub_22C0FE908(v36, v52, v53, v54, v55, v56, v57, v58, v73, v74);
  if (v51)
  {

    sub_22BE29DD4(v77, v78);
    sub_22C1EE0BC(v32, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    return sub_22C1EE0BC(v50, type metadata accessor for TranscriptProtoStructuredSearchExpression);
  }

  else
  {

    sub_22C0F92F4(v59, v60, v61, v62, v63, v64, v65, v66, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
    v68 = v67;
    sub_22BE29DD4(v77, v78);
    sub_22C1EE0BC(v32, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    sub_22C1EE0BC(v50, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    v69 = type metadata accessor for StructuredSearchExpression(0);
    v70 = v69[5];
    v71 = sub_22C2728A4();
    v72 = v80;
    sub_22BE19DC4(v80 + v70, 1, 1, v71);
    *v72 = v86;
    result = sub_22C193480();
    *(v72 + v69[7]) = v68;
    *(v72 + v69[6]) = 0;
  }

  return result;
}

uint64_t sub_22C1E1E14@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22C270524();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EF88, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
  v15 = v28;
  sub_22C270734();
  if (v15)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v28 = *v11;
  v22 = a1;
  v23 = a2;
  v17 = v11[1];
  v24 = v11[2];
  v18 = v11[3];
  sub_22BE22868();

  sub_22C0FD140();
  sub_22BE29DD4(v22, v23);
  sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
  sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
  v19 = *(type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0) + 24);
  v20 = sub_22C26E684();
  sub_22BE19DC4(a3 + v19, 1, 1, v20);
  *a3 = v28;
  a3[1] = v17;
  a3[2] = v24;
  a3[3] = v18;
  return sub_22C193480();
}

uint64_t sub_22C1E2150(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910428, type metadata accessor for TranscriptProtoPickOneExpression, &protocol conformance descriptor for TranscriptProtoPickOneExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    PickOneExpression.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoPickOneExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E2334@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910440, type metadata accessor for TranscriptProtoResolveToolExpression, &protocol conformance descriptor for TranscriptProtoResolveToolExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C0F45F8(v15, v16, v17, v18, v19, v20, v21, v22, *&v25[0], *(&v25[0] + 1));
  v24 = v23;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoResolveToolExpression);
  result = sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoResolveToolExpression);
  *a3 = v24;
  return result;
}

uint64_t sub_22C1E2540(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoUndoExpression(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910458, type metadata accessor for TranscriptProtoUndoExpression, &protocol conformance descriptor for TranscriptProtoUndoExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    UndoExpression.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoUndoExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E2724(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRejectExpression(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910470, type metadata accessor for TranscriptProtoRejectExpression, &protocol conformance descriptor for TranscriptProtoRejectExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RejectExpression.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoRejectExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E2908(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoCancelExpression(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910488, type metadata accessor for TranscriptProtoCancelExpression, &protocol conformance descriptor for TranscriptProtoCancelExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    CancelExpression.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoCancelExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E2AEC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoOpenExpression(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910500, type metadata accessor for TranscriptProtoOpenExpression, &protocol conformance descriptor for TranscriptProtoOpenExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    OpenExpression.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoOpenExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E2CD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910530, type metadata accessor for TranscriptProtoPayloadExpression, &protocol conformance descriptor for TranscriptProtoPayloadExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  PayloadExpression.init(transcript:)(v10);
  sub_22BE29DD4(a1, a2);
  result = sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoPayloadExpression);
  *a3 = *&v15[0];
  return result;
}

uint64_t sub_22C1E2EC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoFormatExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910548, type metadata accessor for TranscriptProtoFormatExpression, &protocol conformance descriptor for TranscriptProtoFormatExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C0F4874(v15, v16, v17, v18, v19, v20, v21, v22, *&v25[0], *(&v25[0] + 1));
  v24 = v23;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoFormatExpression);
  result = sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoFormatExpression);
  *a3 = v24;
  return result;
}

uint64_t sub_22C1E30D0(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910260, type metadata accessor for TranscriptProtoSiriXFallbackExpression, &protocol conformance descriptor for TranscriptProtoSiriXFallbackExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    SiriXFallbackExpression.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E32B4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910560, type metadata accessor for TranscriptProtoUserConfirmExpression, &protocol conformance descriptor for TranscriptProtoUserConfirmExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    UserConfirmExpression.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoUserConfirmExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E3498(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910578, type metadata accessor for TranscriptProtoUserDisambiguateExpression, &protocol conformance descriptor for TranscriptProtoUserDisambiguateExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    UserDisambiguateExpression.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E367C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoProgramStatement(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E9F8, type metadata accessor for TranscriptProtoProgramStatement, &protocol conformance descriptor for TranscriptProtoProgramStatement);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ProgramStatement.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoProgramStatement);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E3860(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C26E664();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_22C1E3A74(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoActionRequirement(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F848, type metadata accessor for TranscriptProtoActionRequirement, &protocol conformance descriptor for TranscriptProtoActionRequirement);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionRequirement.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoActionRequirement);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E3C58(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_2810744D0, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StatementOutcome.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, v24, v25, v26, v27, v28, v29);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoStatementOutcome);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E3E3C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoActionSuccess(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&unk_281076F30, type metadata accessor for TranscriptProtoActionSuccess, &protocol conformance descriptor for TranscriptProtoActionSuccess);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionSuccess.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoActionSuccess);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E4020(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSnippetStream(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F970, type metadata accessor for TranscriptProtoSnippetStream, &protocol conformance descriptor for TranscriptProtoSnippetStream);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    SnippetStream.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoSnippetStream);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E4204(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoResponseManifest(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseManifest.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoResponseManifest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E43E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoResponseParameter(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EC00, type metadata accessor for TranscriptProtoResponseParameter, &protocol conformance descriptor for TranscriptProtoResponseParameter);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v17 = *(v10 + 2);
  v18 = *(v10 + 3);
  v16 = v18;
  v22 = *(v10 + 4);
  v23 = v15;
  v27 = *(v10 + 7);
  v20 = a3;
  v19 = v10[72];
  v21 = v10[48];

  sub_22BF1C1E4(v17, v16);

  sub_22C26F9A4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoResponseParameter);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoResponseParameter);
}

uint64_t sub_22C1E4670(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoResponseDialog(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FBE8, type metadata accessor for TranscriptProtoResponseDialog, &protocol conformance descriptor for TranscriptProtoResponseDialog);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v18 = *v8;
  v13 = v8[2];
  v14[2] = v8[4];
  v14[3] = v13;
  v14[1] = v8[6];

  sub_22C26F2D4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoResponseDialog);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoResponseDialog);
}

uint64_t sub_22C1E48D0(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoResponseVisual(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FE28, type metadata accessor for TranscriptProtoResponseVisual, &protocol conformance descriptor for TranscriptProtoResponseVisual);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseVisual.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoResponseVisual);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E4AB4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoUIType(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EC48, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseVisual.UIType.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoUIType);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E4C98(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoUILabel(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EC50, type metadata accessor for TranscriptProtoUILabel, &protocol conformance descriptor for TranscriptProtoUILabel);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseVisual.UILabel.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoUILabel);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E4E7C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FE40, type metadata accessor for TranscriptProtoResponseVisualOptions, &protocol conformance descriptor for TranscriptProtoResponseVisualOptions);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  sub_22C26F534();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoResponseVisualOptions);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoResponseVisualOptions);
}

uint64_t sub_22C1E5078(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FE78, type metadata accessor for TranscriptProtoUIConfirmationLabel, &protocol conformance descriptor for TranscriptProtoUIConfirmationLabel);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v13 = *v8;
  v14 = v8[1];
  v15 = v8[2];
  v16 = v8[3];

  MEMORY[0x2318A7D90](v13, v14, v15, v16);
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoUIConfirmationLabel);
}

uint64_t sub_22C1E52A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FE90, type metadata accessor for TranscriptProtoArchiveViewPayload, &protocol conformance descriptor for TranscriptProtoArchiveViewPayload);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = v10[1];
  v21 = v10[2];
  v17[0] = a3;
  v17[1] = v10[4];
  sub_22BE29D7C(v15, v16);

  sub_22C26F5E4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoArchiveViewPayload);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoArchiveViewPayload);
}

uint64_t sub_22C1E54EC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FEA8, type metadata accessor for TranscriptProtoLiveActivityPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityPayload);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C26F604();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoLiveActivityPayload);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoLiveActivityPayload);
}

uint64_t sub_22C1E56F8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FEC0, type metadata accessor for TranscriptProtoPluginSnippetPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetPayload);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v13 = *v8;
  v14 = v8[1];
  v15 = v8[3];
  v18 = v8[2];
  sub_22BE29D7C(v13, v14);

  MEMORY[0x2318A7D40](v13, v14, v18, v15);
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoPluginSnippetPayload);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoPluginSnippetPayload);
}

uint64_t sub_22C1E5928@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v6 = sub_22C2729D4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22BE5CE4C(&qword_27D911E40, &qword_22C2B5AD8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  v10 = sub_22C270524();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for TranscriptProtoControlPayload(0);
  MEMORY[0x28223BE20](v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v18 - v15;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FED8, type metadata accessor for TranscriptProtoControlPayload, &protocol conformance descriptor for TranscriptProtoControlPayload);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  sub_22BE29D7C(*v13, *(v13 + 1));
  sub_22C2729C4();
  sub_22C101768();
  sub_22BE33928(v9, &qword_27D911E40, &qword_22C2B5AD8);
  sub_22C26F594();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoControlPayload);
  return sub_22C1EE0BC(v16, type metadata accessor for TranscriptProtoControlPayload);
}

uint64_t sub_22C1E5C30(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoVisualOutput(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EAD8, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseOutput.VisualOutput.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoVisualOutput);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E5E14(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoAceCommandOutputPayload(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FCA0, type metadata accessor for TranscriptProtoAceCommandOutputPayload, &protocol conformance descriptor for TranscriptProtoAceCommandOutputPayload);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseOutput.VisualOutput.AceCommandOutputPayload.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoAceCommandOutputPayload);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E5FF8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoAceCommandOutputData(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FCB8, type metadata accessor for TranscriptProtoAceCommandOutputData, &protocol conformance descriptor for TranscriptProtoAceCommandOutputData);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoAceCommandOutputData);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E61DC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FC40, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C26F374();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
}

uint64_t sub_22C1E63E8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FC58, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C26F374();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
}

uint64_t sub_22C1E65F4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FC88, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v13 = *v8;
  v14 = v8[1];
  v17 = v8[2];
  sub_22BE29D7C(v13, v14);

  sub_22C26F3B4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
}

uint64_t sub_22C1E6824(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoDialogType(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FD60, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseOutput.DialogType.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoDialogType);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E6A08(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoASTFlatExpr(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9101C0, type metadata accessor for TranscriptProtoASTFlatExpr, &protocol conformance descriptor for TranscriptProtoASTFlatExpr);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AST.FlatExpr.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, v24, v25, v26, v27, v28, v29);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoASTFlatExpr);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E6BEC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  MEMORY[0x28223BE20](updated);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EE10, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateVariant);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AST.Update.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E6DD0(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoASTPickType(0);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9100F0, type metadata accessor for TranscriptProtoASTPickType, &protocol conformance descriptor for TranscriptProtoASTPickType);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v13 = v8[8];
  if (v13 == 255)
  {
    *&v19[0] = &type metadata for TranscriptProtoAstpickTypeEnum;
    sub_22BE5CE4C(&qword_27D9155B0, &unk_22C2CC7A0);
    v15 = sub_22C273074();
    v17 = v16;
    sub_22C108598();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    *(v18 + 16) = 0;
    swift_willThrow();
    sub_22BE29DD4(a1, a2);
    sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoASTPickType);
    return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoASTPickType);
  }

  else
  {
    v14 = *v8;
    sub_22BE29DD4(a1, a2);
    sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoASTPickType);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoASTPickType);
    if (v13)
    {
      return 0;
    }

    else
    {
      return v14;
    }
  }
}

uint64_t sub_22C1E7074(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AST.FlatValue.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoASTFlatValue);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E7258(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E660, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Action.ParameterValue.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoActionParameterValue);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E743C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FF38, type metadata accessor for TranscriptProtoContextRetrieved, &protocol conformance descriptor for TranscriptProtoContextRetrieved);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C0F67EC(v15, v16, v17, v18, v19, v20, v21, v22, v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39, v40, v41, v42, v43, v44);
  v24 = v23;

  sub_22C0F67EC(v25, v26, v27, v28, v29, v30, v31, v32, v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39, v40, v41, v42, v43, v44);
  v34 = v33;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoContextRetrieved);
  result = sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoContextRetrieved);
  *a3 = v24;
  a3[1] = v34;
  return result;
}

uint64_t sub_22C1E76AC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90ED10, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RetrievedContextStatement.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoRetrievedContextStatement);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E7890(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F128, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, &protocol conformance descriptor for TranscriptProtoDynamicEnumerationEntityStatement);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    DynamicEnumerationEntityStatement.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E7A74(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F058, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement, &protocol conformance descriptor for TranscriptProtoSpanMatchedEntityStatement);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    SpanMatchedEntityStatement.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E7C58@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  MEMORY[0x28223BE20](matched);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9105E0, type metadata accessor for TranscriptProtoEntitySpanMatchResult, &protocol conformance descriptor for TranscriptProtoEntitySpanMatchResult);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C0F751C();
  v16 = v15;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
  result = sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
  *a3 = v16;
  return result;
}

uint64_t sub_22C1E7E68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9105F8, type metadata accessor for TranscriptProtoToolRetrievalResponse, &protocol conformance descriptor for TranscriptProtoToolRetrievalResponse);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  ToolRetrievalResponse.init(transcript:)(v10, &v17);
  sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoToolRetrievalResponse);
  result = sub_22BE29DD4(a1, a2);
  v15 = v18;
  v16 = v19;
  *a3 = v17;
  *(a3 + 16) = v15;
  *(a3 + 32) = v16;
  *(a3 + 40) = v20;
  return result;
}

uint64_t sub_22C1E8080(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9105B8, type metadata accessor for TranscriptProtoToolParameterValue, &protocol conformance descriptor for TranscriptProtoToolParameterValue);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ToolParameterValue.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoToolParameterValue);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E8264(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_281072E88, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ExternalAgentOutcome.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoExternalAgentOutcome);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E8448@<X0>(void *a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = v8[1];
    v13 = v8[2];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    *a3 = v12;
    a3[1] = v11;
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_22C1E8620@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v6 = sub_22C26E1D4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  v10 = sub_22C270524();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for TranscriptProtoUndoContext(0);
  MEMORY[0x28223BE20](v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v18 - v15;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F988, type metadata accessor for TranscriptProtoUndoContext, &protocol conformance descriptor for TranscriptProtoUndoContext);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  sub_22C26E174();
  sub_22C101298();
  sub_22BE33928(v9, &qword_27D9082F0, &qword_22C27AB00);

  sub_22C26E944();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v16, type metadata accessor for TranscriptProtoUndoContext);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoUndoContext);
}

uint64_t sub_22C1E893C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F9A0, type metadata accessor for TranscriptProtoFollowUpAction, &protocol conformance descriptor for TranscriptProtoFollowUpAction);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionSuccess.FollowUpAction.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoFollowUpAction);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E8B20(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F9B8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableAction);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionSuccess.FollowUpAction.ExecutableAction.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E8D04@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v6 = sub_22BE5CE4C(&qword_27D9155A0, &unk_22C2CC790);
  MEMORY[0x28223BE20](v6);
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F9D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v18[3] = v6;
  sub_22C1EE064();
  v15 = v10[1];
  v18[1] = *v10;
  v18[2] = v15;
  v16 = v10[2];
  v17 = v10[3];

  sub_22BE29D7C(v16, v17);
  if (qword_27D906E30 != -1)
  {
    swift_once();
  }

  sub_22C1EDF60();
  sub_22C26DB54();
  sub_22BE29DD4(v16, v17);
  sub_22C26E884();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
}

uint64_t sub_22C1E9000(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FA18, type metadata accessor for TranscriptProtoValueDisambiguation, &protocol conformance descriptor for TranscriptProtoValueDisambiguation);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C0F2F3C(v13, v14, v15, v16, v17, v18, v19, v20);
  sub_22C26FD74();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoValueDisambiguation);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoValueDisambiguation);
}

uint64_t sub_22C1E9210(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoActionFailure(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F908, type metadata accessor for TranscriptProtoActionFailure, &protocol conformance descriptor for TranscriptProtoActionFailure);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionFailure.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoActionFailure);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E93F4@<X0>(_BYTE *a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  MEMORY[0x28223BE20](v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FFF0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionRequirementResolution);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v11 = *v8;
    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
    *a3 = v11;
  }

  return result;
}

uint64_t sub_22C1E95B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C270524();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  MEMORY[0x28223BE20](v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FFD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionActionCancellation);
  result = sub_22C270734();
  if (!v2)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
  }

  return result;
}

uint64_t sub_22C1E9720(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910700, type metadata accessor for TranscriptProtoTypeConversionRequest, &protocol conformance descriptor for TranscriptProtoTypeConversionRequest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    TypeConversionRequest.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoTypeConversionRequest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E9904(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910718, type metadata accessor for TranscriptProtoTypeConversionResult, &protocol conformance descriptor for TranscriptProtoTypeConversionResult);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    TypeConversionResult.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoTypeConversionResult);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E9AE8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  MEMORY[0x28223BE20](DecorationResult);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910730, type metadata accessor for TranscriptProtoQueryDecorationResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationResult);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    QueryDecorationResult.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoQueryDecorationResult);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E9CCC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResult);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910748, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResult);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    QueryDecorationPrePlannerResult.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E9EB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayload);
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9107F0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  QueryDecorationPrePlannerResultPayload.init(transcript:)();
  sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  result = sub_22BE29DD4(a1, a2);
  v13 = BYTE8(v14[0]);
  *a3 = *&v14[0];
  *(a3 + 8) = v13;
  return result;
}

uint64_t sub_22C1EA0B8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F938, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError, &protocol conformance descriptor for TranscriptProtoActionFailureDeveloperDefinedError);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v13 = *v8;
  v14 = v8[1];
  v15 = v8[2];
  v16 = v8[3];
  v19 = v8[4];

  MEMORY[0x2318A6EA0](v13, v14, v15, v16, v19);
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
}

uint64_t sub_22C1EA2EC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F950, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest, &protocol conformance descriptor for TranscriptProtoActionFailureUnableToHandleRequest);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C26E7F4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
}

uint64_t sub_22C1EA4F8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910868, type metadata accessor for TranscriptProtoRequestAmendment, &protocol conformance descriptor for TranscriptProtoRequestAmendment);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RequestAmendment.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoRequestAmendment);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1EA6DC@<X0>(void *a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910880, type metadata accessor for TranscriptProtoToolRetrievalRequest, &protocol conformance descriptor for TranscriptProtoToolRetrievalRequest);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = v8[1];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoToolRetrievalRequest);
    *a3 = v12;
    a3[1] = v11;
  }

  return result;
}

uint64_t sub_22C1EA8A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C270524();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  MEMORY[0x28223BE20](v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910898, type metadata accessor for TranscriptProtoContextRetrievalRequest, &protocol conformance descriptor for TranscriptProtoContextRetrievalRequest);
  result = sub_22C270734();
  if (!v2)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoContextRetrievalRequest);
  }

  return result;
}

uint64_t sub_22C1EAA10@<X0>(void *a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  MEMORY[0x28223BE20](matched);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9108B0, type metadata accessor for TranscriptProtoSpanMatchRequest, &protocol conformance descriptor for TranscriptProtoSpanMatchRequest);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = v8[1];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoSpanMatchRequest);
    *a3 = v12;
    a3[1] = v11;
  }

  return result;
}

uint64_t sub_22C1EABD8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9108C8, type metadata accessor for TranscriptProtoIntermediateSystemResponse, &protocol conformance descriptor for TranscriptProtoIntermediateSystemResponse);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    IntermediateSystemResponse.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoIntermediateSystemResponse);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1EADBC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9108E0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered, &protocol conformance descriptor for TranscriptProtoIntermediateSystemResponseRendered);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    IntermediateSystemResponseRendered.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1EAFA0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a3;
  v6 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C270524();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910958, type metadata accessor for TranscriptProtoAgentPrimitiveAction, &protocol conformance descriptor for TranscriptProtoAgentPrimitiveAction);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v21[1] = v9;
  sub_22C1EE064();
  v19 = *v13;
  v18 = v13[1];

  sub_22C103D4C();
  v21[0] = v19;
  AgentPrimitiveAction.PrimitiveAction.init(transcript:)();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoAgentPrimitiveAction);
  sub_22C1EE0BC(v16, type metadata accessor for TranscriptProtoAgentPrimitiveAction);
  v20 = v25;
  *v25 = v21[0];
  v20[1] = v18;
  type metadata accessor for AgentPrimitiveAction(0);
  return sub_22C1EDFC4();
}

uint64_t sub_22C1EB2E4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910970, type metadata accessor for TranscriptProtoPrimitiveAction, &protocol conformance descriptor for TranscriptProtoPrimitiveAction);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AgentPrimitiveAction.PrimitiveAction.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoPrimitiveAction);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1EB4C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a3;
  v6 = type metadata accessor for TranscriptProtoAgentRequest(0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for AgentRequest(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C270524();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for TranscriptProtoAgentHandoffRequest(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910910, type metadata accessor for TranscriptProtoAgentHandoffRequest, &protocol conformance descriptor for TranscriptProtoAgentHandoffRequest);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v21[1] = v9;
  sub_22C1EE064();
  v19 = *v13;
  v18 = v13[1];

  sub_22C103E3C();
  v21[0] = v19;
  AgentRequest.init(transcript:)();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoAgentHandoffRequest);
  sub_22C1EE0BC(v16, type metadata accessor for TranscriptProtoAgentHandoffRequest);
  v20 = v25;
  *v25 = v21[0];
  v20[1] = v18;
  type metadata accessor for AgentHandoffRequest(0);
  return sub_22C1EDFC4();
}

uint64_t sub_22C1EB80C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoAgentPassRequest(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910928, type metadata accessor for TranscriptProtoAgentPassRequest, &protocol conformance descriptor for TranscriptProtoAgentPassRequest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AgentPassRequest.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoAgentPassRequest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1EB9F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C270524();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for TranscriptProtoAgentYieldRequest(0);
  MEMORY[0x28223BE20](v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910940, type metadata accessor for TranscriptProtoAgentYieldRequest, &protocol conformance descriptor for TranscriptProtoAgentYieldRequest);
  result = sub_22C270734();
  if (!v2)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoAgentYieldRequest);
  }

  return result;
}

uint64_t sub_22C1EBB5C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoAgentRequest(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest, &protocol conformance descriptor for TranscriptProtoAgentRequest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AgentRequest.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoAgentRequest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t TranscriptBidirectionalConvertibleProtocol.init(protoBytes:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  v10 = sub_22C270524();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE17C68();
  v21 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22BE18928();
  MEMORY[0x28223BE20](v15);
  v17 = v20 - v16;
  swift_getAssociatedConformanceWitness();
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  v18 = v25;
  sub_22C270734();
  if (!v18)
  {
    (*(v21 + 16))(v5, v17, AssociatedTypeWitness);
    (*(v11 + 16))(v5, a3, v11);
    (*(v21 + 8))(v17, AssociatedTypeWitness);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t ConvertibleFromTranscriptTypeProtocol.init(transcript:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_22BE17C68();
  v31 = v4;
  MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v7;
  v35 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_22C273844();
  sub_22BE17C68();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  sub_22BE17C68();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22BE18928();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v29 - v21;
  (*(v12 + 16))(v15, a1, v10, v20);
  if (sub_22BE1AEA8(v15, 1, AssociatedTypeWitness) == 1)
  {
    v23 = *(v12 + 8);
    v23(a1, v10);
    v23(v15, v10);
    v24 = 1;
    v25 = v34;
    v26 = v35;
  }

  else
  {
    v30 = a1;
    (*(v17 + 32))(v22, v15, AssociatedTypeWitness);
    (*(v17 + 16))(v2, v22, AssociatedTypeWitness);
    v27 = v36;
    v26 = v35;
    (*(v32 + 16))(v2, v35);
    if (v27)
    {
      (*(v12 + 8))(v30, v10);
      return (*(v17 + 8))(v22, AssociatedTypeWitness);
    }

    (*(v12 + 8))(v30, v10);
    (*(v17 + 8))(v22, AssociatedTypeWitness);
    v25 = v34;
    (*(v31 + 32))(v34, v33, v26);
    v24 = 0;
  }

  return sub_22BE19DC4(v25, v24, 1, v26);
}

void sub_22C1EC374(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_22C1D05E4(a1, a2);
  if (!v3)
  {
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
  }
}

uint64_t sub_22C1EC524@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22C1D2A3C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22C1EC550@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22C1D2C3C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22C1EC57C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22C1D2E3C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22C1EC5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
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

void Set<>.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_22C1EC848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

uint64_t Dictionary<>.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_22C272EB4();

  return v5;
}

uint64_t sub_22C1ECA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v15 - v11;
  (*(v13 + 16))(v15 - v11, a1, v10);
  return (*(a6 + 16))(v12, a4, a6);
}

uint64_t sub_22C1ECBFC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for TranscriptConversion(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C1ECD74(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22C1ECD90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C1ECDD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22C1ECE14(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22C1ECE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22C1D35E8(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_22C1ECEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22C1D37B4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22C1EDB9C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22C1E6DD0(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

unint64_t sub_22C1EDF60()
{
  result = qword_27D9155A8;
  if (!qword_27D9155A8)
  {
    sub_22BE7431C(&qword_27D9155A0, &unk_22C2CC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9155A8);
  }

  return result;
}

uint64_t sub_22C1EDFC4()
{
  sub_22BE18378();
  v1(0);
  sub_22BE18000();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

uint64_t sub_22C1EE01C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C1EE064()
{
  sub_22BE18378();
  v1(0);
  sub_22BE18000();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

uint64_t sub_22C1EE0BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BE18000();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t TranscriptProtoTranscript.fsf_serialize()()
{
  sub_22C2720A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v0);
  sub_22BE179EC();
  type metadata accessor for TranscriptProtoTranscript(0);
  sub_22C1EE2D4();
  return sub_22C270744();
}

unint64_t sub_22C1EE2D4()
{
  result = qword_27D90F360;
  if (!qword_27D90F360)
  {
    type metadata accessor for TranscriptProtoTranscript(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F360);
  }

  return result;
}

uint64_t static TranscriptProtoTranscript.fsf_deserialize(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22C2720A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  sub_22BE179EC();
  v8 = type metadata accessor for TranscriptProtoTranscript(0);
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE2D4();
  sub_22C270754();
  return sub_22BE19DC4(a3, 0, 1, v8);
}

uint64_t sub_22C1EE5C8(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_22BE5CE4C(a2, a3);
    sub_22BE1ACEC();
    v5 = sub_22C273D24();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_22C1EE678(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoParameterSet(0);
  v41 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v40 = v5;
  v46 = MEMORY[0x277D84F90];
  v42 = v3;
  sub_22BE70C9C(0, v6, 0);
  v7 = v46;
  result = sub_22C259254();
  v9 = result;
  v10 = v42;
  v12 = v11;
  v14 = v13;
  v15 = 0;
  v44 = v42 + 56;
  v38 = v42 + 64;
  v39 = v6;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v9 < 1 << *(v10 + 32))
    {
      v16 = v9 >> 6;
      if ((*(v44 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v10 + 36) != v12)
      {
        goto LABEL_28;
      }

      v43 = v15;
      v17 = *(*(v10 + 48) + 8 * v9);
      swift_bridgeObjectRetain_n();
      v18 = v40;
      v19 = v45;
      TranscriptProtoParameterSet.init(handwritten:)(v17, v20, v21, v22, v23, v24, v25, v26, v38, v39);
      if (v19)
      {

        return v7;
      }

      v45 = 0;

      v46 = v7;
      v27 = *(v7 + 16);
      v28 = *(v7 + 24);
      if (v27 >= v28 >> 1)
      {
        sub_22BE70C9C(v28 > 1, v27 + 1, 1);
        v7 = v46;
      }

      *(v7 + 16) = v27 + 1;
      result = sub_22BE3B620(v18, v7 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v27);
      if (v14)
      {
        goto LABEL_32;
      }

      v10 = v42;
      v29 = 1 << *(v42 + 32);
      if (v9 >= v29)
      {
        goto LABEL_29;
      }

      v30 = *(v44 + 8 * v16);
      if ((v30 & (1 << v9)) == 0)
      {
        goto LABEL_30;
      }

      if (*(v42 + 36) != v12)
      {
        goto LABEL_31;
      }

      v31 = v30 & (-2 << (v9 & 0x3F));
      if (v31)
      {
        v29 = __clz(__rbit64(v31)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v32 = v39;
      }

      else
      {
        v33 = v16 << 6;
        v34 = v16 + 1;
        v32 = v39;
        v35 = (v38 + 8 * v16);
        while (v34 < (v29 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_22BE2FC64(v9, v12, 0);
            v10 = v42;
            v29 = __clz(__rbit64(v36)) + v33;
            goto LABEL_20;
          }
        }

        result = sub_22BE2FC64(v9, v12, 0);
        v10 = v42;
      }

LABEL_20:
      v15 = v43 + 1;
      if (v43 + 1 == v32)
      {
        return v7;
      }

      v14 = 0;
      v12 = *(v10 + 36);
      v9 = v29;
      if (v29 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22C1EE9C4(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  sub_22BE706FC(0, v5, 0);
  v6 = v19;
  if (v5)
  {
    v7 = (a1 + 64);
    do
    {
      v8 = *(v7 - 4);
      v9 = *(v7 - 3);
      v10 = *(v7 - 2);
      v11 = *(v7 - 1);
      v12 = *v7;

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v4 = v8;
      *(v4 + 1) = v9;
      *(v4 + 3) = v10;
      *(v4 + 4) = v11;
      v4[16] = v12;
      v19 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22BE706FC(v13 > 1, v14 + 1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v14 + 1;
      sub_22BE3B620(v4, v6 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14);
      v7 += 40;
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t sub_22C1EEB74(uint64_t a1)
{
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v4 = *(Results - 8);
  MEMORY[0x28223BE20](Results);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  v24 = MEMORY[0x277D84F90];
  sub_22BE70C24(0, v7, 0);
  v8 = v24;
  if (v7)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v10 = *i;
      swift_bridgeObjectRetain_n();
      sub_22C1C2144(v10, v11, v12, v13, v14, v15, v16, v17, v23, v24);
      if (v1)
      {
        break;
      }

      v19 = v18;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

      *v6 = v19;
      v24 = v8;
      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22BE70C24(v20 > 1, v21 + 1, 1);
        v8 = v24;
      }

      *(v8 + 16) = v21 + 1;
      sub_22BE3B620(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21);
      if (!--v7)
      {
        return v8;
      }
    }
  }

  return v8;
}

void StatementOutcome.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v26;
  a20 = v27;
  v29 = v28;
  v30 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v31 = sub_22BE19448(v30);
  MEMORY[0x28223BE20](v31);
  sub_22BE17A44();
  v219 = v32;
  v33 = sub_22BE183BC();
  v34 = type metadata accessor for TranscriptProtoActionFailure(v33);
  v35 = sub_22BE19448(v34);
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  v234 = v36;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E94();
  sub_22BE183BC();
  v38 = sub_22C272594();
  v39 = sub_22BE18910(v38, &a11);
  v212 = v40;
  MEMORY[0x28223BE20](v39);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v41);
  sub_22BE19E94();
  sub_22BE18950(v42);
  v43 = sub_22C272874();
  v44 = sub_22BE19448(v43);
  MEMORY[0x28223BE20](v44);
  sub_22BE17A44();
  v46 = sub_22BE18950(v45);
  v236 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(v46);
  sub_22BE18000();
  MEMORY[0x28223BE20](v47);
  sub_22BE17B98();
  v217 = v48;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v49);
  sub_22BE19E94();
  v218 = v50;
  v51 = sub_22BE183BC();
  v52 = type metadata accessor for TranscriptProtoParameterNotAllowed(v51);
  v53 = sub_22BE19448(v52);
  MEMORY[0x28223BE20](v53);
  sub_22BE28A70(v54, v207);
  MEMORY[0x28223BE20](v55);
  sub_22BE19E94();
  v57 = sub_22BE18950(v56);
  v58 = type metadata accessor for TranscriptProtoParameterDisambiguation(v57);
  v59 = sub_22BE19448(v58);
  MEMORY[0x28223BE20](v59);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v60);
  sub_22BE19E94();
  v62 = sub_22BE18950(v61);
  v63 = type metadata accessor for TranscriptProtoParameterConfirmation(v62);
  v64 = sub_22BE19448(v63);
  MEMORY[0x28223BE20](v64);
  sub_22BE29178(v65, v208);
  MEMORY[0x28223BE20](v66);
  sub_22BE19E94();
  v68 = sub_22BE18950(v67);
  v69 = type metadata accessor for TranscriptProtoParameterNeedsValue(v68);
  v70 = sub_22BE19448(v69);
  MEMORY[0x28223BE20](v70);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v71);
  sub_22C259838(v72, v73, v74, v75, v76, v77, v78, v79, v209);
  v225 = sub_22C272674();
  sub_22BE179D8();
  v226 = v80;
  MEMORY[0x28223BE20](v81);
  sub_22BE17B98();
  v223 = v82;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v83);
  sub_22BE19E94();
  sub_22C259DF0(v84);
  v221 = sub_22C272224();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v85);
  sub_22BE17A44();
  v222 = v86;
  v87 = sub_22BE183BC();
  v88 = type metadata accessor for TranscriptProtoToolDisambiguation(v87);
  v89 = sub_22BE19448(v88);
  MEMORY[0x28223BE20](v89);
  sub_22BE17A44();
  v220 = v90;
  v91 = sub_22BE183BC();
  v92 = type metadata accessor for TranscriptProtoActionRequirement(v91);
  v93 = sub_22BE19448(v92);
  MEMORY[0x28223BE20](v93);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v94);
  sub_22BE19E94();
  v229 = v95;
  v96 = sub_22BE183BC();
  v97 = type metadata accessor for TranscriptProtoActionConfirmation(v96);
  v98 = sub_22BE19448(v97);
  MEMORY[0x28223BE20](v98);
  sub_22BE17B98();
  v227 = v99;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v100);
  v101 = sub_22BE41E38();
  v102 = type metadata accessor for TranscriptProtoSnippetStream(v101);
  v103 = sub_22BE19448(v102);
  MEMORY[0x28223BE20](v103);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v104);
  v105 = sub_22C2595B4();
  v106 = type metadata accessor for TranscriptProtoActionSuccess(v105);
  v107 = sub_22BE19448(v106);
  MEMORY[0x28223BE20](v107);
  sub_22BE18928();
  MEMORY[0x28223BE20](v108);
  v109 = sub_22BE2558C();
  type metadata accessor for TranscriptProtoStatementOutcomeEnum(v109);
  sub_22BE18000();
  MEMORY[0x28223BE20](v110);
  sub_22BE19338();
  sub_22C104B5C();
  if (v20)
  {
    sub_22BE18768();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE291B0();
    v111 = v236;
    v112 = v230;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v160 = sub_22C1088E8();
        sub_22BE3B620(v160, v25);
        v161 = sub_22C259FB8();
        sub_22BE1AA68(v161, v227);
        sub_22C25A098();
        ActionConfirmation.init(transcript:)(v227, v162, v163, v164, v165, v166, v167, v168, v22, v23, v24, v29, v21, v210, v211, v212, v213, v214, v215, v216);
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE351F8();
        sub_22BE1AE58();
        goto LABEL_24;
      case 2u:
        v144 = sub_22C1088E8();
        sub_22BE3B620(v144, v230);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v145, v146);
        sub_22BE33BD0();
        ParameterNeedsValue.init(transcript:)();
        sub_22BE18768();
        sub_22C25A664();
        sub_22C2594E8();
        sub_22BE1AE58();
        goto LABEL_24;
      case 3u:
        sub_22C1088E8();
        sub_22BEE94A4();
        sub_22BE3B620(v147, v148);
        v149 = sub_22BE19EBC();
        sub_22BE1AA68(v149, v231);
        sub_22C25A098();
        ParameterConfirmation.init(transcript:)(v231, v150, v151, v152, v153, v154, v155, v156, v22, v23);
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE41688();
        sub_22BE1AE58();
        goto LABEL_24;
      case 4u:
        sub_22C1088E8();
        sub_22BE46048();
        sub_22BE3B620(v129, v130);
        sub_22C1088AC();
        sub_22C25ABA8();
        sub_22BE1AA68(v131, v132);
        v112 = *(v232 + 8);
        v111 = *(v232 + 24);

        sub_22C0F2F3C(v133, v134, v135, v136, v137, v138, v139, v140);
        sub_22C25A098();
        sub_22BE18944();
        sub_22C26FFB4();
        sub_22BE18768();
        sub_22C25A664();
        sub_22C25A23C();
        sub_22BE1AE58();
        sub_22BE39EAC();
        sub_22BE1AE58();
        goto LABEL_24;
      case 5u:
        sub_22C1088E8();
        sub_22BEE94A4();
        sub_22BE3B620(v169, v170);
        v171 = sub_22BE19EBC();
        sub_22BE1AA68(v171, v232);
        sub_22C25A098();
        ParameterNotAllowed.init(transcript:)();
        sub_22BE18768();
        sub_22C25A664();
        sub_22C2599C0();
        sub_22BE1AE58();
        goto LABEL_24;
      case 6u:
        v172 = sub_22C1088E8();
        sub_22BE3B620(v172, v218);
        v173 = sub_22BE44744();
        sub_22BE1AA68(v173, v217);
        v112 = *(v217 + 8);

        sub_22C101488();
        sub_22BE36288();
        v202 = sub_22BE261AC();
        v111 = v213;
        v203(v202);
        sub_22BE3C6E0();
        sub_22C272864();
        v205 = sub_22BE2684C();
        v206(v205);
        sub_22C25A098();
        sub_22BE36674();
        sub_22C270194();
        sub_22BE18768();
        sub_22BE1AE58();
        sub_22C25A17C();
        sub_22BE1AE58();
        sub_22BE33FCC();
        sub_22BE1AE58();
        goto LABEL_24;
      case 7u:
        v157 = sub_22C1088E8();
        v112 = v229;
        sub_22BE3B620(v157, v229);
        sub_22BE385E4();
        sub_22BE22944();
        sub_22BE1AA68(v158, v159);
        sub_22BE33BD0();
        ActionRequirement.init(transcript:)();
        sub_22BE18768();
        sub_22C25A664();
        sub_22C259470();
        sub_22BE1AE58();
        goto LABEL_24;
      case 8u:
        v183 = sub_22C1088E8();
        v112 = v220;
        sub_22BE3B620(v183, v220);
        v185 = v220[1];
        v184 = v220[2];
        v186 = *v220;
        v111 = *(*v220 + 16);
        if (v111)
        {
          v228 = v220[1];
          v238 = MEMORY[0x277D84F90];

          v187 = sub_22C25A000();
          sub_22BE711C4(v187, v111, 0);
          v188 = 0;
          sub_22BE25AD8();
          v233 = v186 + v190;
          v235 = (v189 + 8);
          v237 = v238;
          do
          {
            if (v188 >= *(v186 + 16))
            {
              __break(1u);
              return;
            }

            v191 = *(v189 + 16);
            v191(v224, v233 + *(v189 + 72) * v188, v225);
            v192 = sub_22BE41FB4();
            (v191)(v192);
            ToolDefinition.init(transcript:)(v223, v222);
            (*v235)(v224, v225);
            v194 = *(v238 + 16);
            v193 = *(v238 + 24);
            if (v194 >= v193 >> 1)
            {
              sub_22BE3D1E4(v193);
              sub_22BE447E4();
              sub_22BE711C4(v199, v200, v201);
            }

            ++v188;
            *(v238 + 16) = v194 + 1;
            sub_22BE25AD8();
            v197 = sub_22C25AB34(v196 + v195);
            (*(v198 + 32))(v197, v222, v221);
            v189 = v226;
          }

          while (v111 != v188);
          v112 = v220;
          v185 = v228;
        }

        else
        {

          v237 = MEMORY[0x277D84F90];
        }

        sub_22C25A098();
        MEMORY[0x2318A8290](v185, v184, v237);
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE26148();
        sub_22BE1AE58();
LABEL_24:
        sub_22C25A6B8();
        sub_22C26F894();
        sub_22BE1834C();
        (*(v204 + 104))(v111, v112);
        break;
      case 9u:
        sub_22C1088E8();
        sub_22C25AB7C();
        sub_22BE3B620(v141, v142);
        v143 = sub_22BE19EBC();
        sub_22BE1AA68(v143, v234);
        sub_22BE33BD0();
        ActionFailure.init(transcript:)();
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE26148();
        sub_22BE1AE58();
        goto LABEL_24;
      case 0xAu:
        v174 = sub_22C1088E8();
        v112 = v219;
        sub_22BE3B620(v174, v219);

        sub_22C0F2F3C(v175, v176, v177, v178, v179, v180, v181, v182);
        sub_22C25A098();
        sub_22C26FD74();
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE26148();
        sub_22BE1AE58();
        goto LABEL_24;
      case 0xBu:
        sub_22C1088E8();
        sub_22BEE94A4();
        sub_22BE3B620(v125, v126);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v127, v128);
        sub_22BE33BD0();
        SnippetStream.init(transcript:)();
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE26148();
        sub_22BE1AE58();
        goto LABEL_24;
      default:
        v113 = sub_22C1088E8();
        v112 = v114;
        sub_22BE3B620(v113, v114);
        sub_22BE19EBC();
        sub_22BE22944();
        sub_22BE1AA68(v115, v116);
        v117 = sub_22BE33BD0();
        ActionSuccess.init(transcript:)(v117, v118, v119, v120, v121, v122, v123, v124, v22, v23);
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE3BFF4();
        sub_22BE1AE58();
        goto LABEL_24;
    }
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void ConvertibleFromHandwrittenProtocol.init(handwritten:)()
{
  sub_22BE19130();
  v4 = v3;
  v41 = v5;
  sub_22BE17C68();
  v38 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BE3C444(v8, v36);
  v39 = v9;
  v42 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_22C273844();
  sub_22BE179D8();
  v14 = v13;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1B72C();
  sub_22BE17C68();
  MEMORY[0x28223BE20](v16);
  sub_22BE18928();
  MEMORY[0x28223BE20](v17);
  sub_22BE181E4();
  sub_22C116380();
  v18(v0, v4, v12);
  v19 = sub_22BE391E8();
  sub_22BE1AB5C(v19, v20, AssociatedTypeWitness);
  if (v21)
  {
    v22 = *(v14 + 8);
    v23 = sub_22BE261AC();
    v22(v23);
    v24 = sub_22BE41FB4();
    v22(v24);
    v25 = 1;
    v26 = v41;
    v31 = v42;
LABEL_7:
    sub_22BE19DC4(v26, v25, 1, v31);
    goto LABEL_8;
  }

  v37 = v4;
  sub_22C25A35C();
  v27 = sub_22BE200D4();
  v28(v27);
  sub_22C1CF23C();
  v29 = sub_22BE33560();
  v30(v29);
  v31 = v42;
  (*(v39 + 16))(v2, v42);
  if (!v1)
  {
    (*(v14 + 8))(v37, v12);
    v34 = sub_22BE22DF4();
    v35(v34);
    v26 = v41;
    (*(v38 + 32))(v41, v40, v42);
    v25 = 0;
    goto LABEL_7;
  }

  (*(v14 + 8))(v37, v12);
  v32 = sub_22BE22DF4();
  v33(v32);
LABEL_8:
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t sub_22C1EFFD8()
{
  v2 = sub_22C270B74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  ContextProtoRetrievedTool.Definition.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C560, type metadata accessor for ContextProtoRetrievedTool.Definition);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

char *sub_22C1F0190()
{
  v2 = v0;
  v3 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_22C270C84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContextProtoUIControlTool(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v12, v2, v9, v14);
  v35 = sub_22C270C34();
  v37 = v17;
  v34 = sub_22C270C44();
  v36 = v18;
  v33 = sub_22C270C74();
  v20 = v19;
  sub_22C270C54();
  sub_22C1058C4(v5, v21, v22, v23, v24, v25, v26, v27, v33, v34);
  if (v1)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v28 = *(v13 + 28);
    v29 = sub_22C272674();
    sub_22BE19DC4(v16 + v28, 1, 1, v29);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v10 + 8))(v12, v9);
    v30 = v37;
    *v16 = v35;
    v16[1] = v30;
    v31 = v36;
    v16[2] = v34;
    v16[3] = v31;
    v16[4] = v33;
    v16[5] = v20;
    sub_22BE2343C();
    sub_22C259290(&qword_27D90C578, type metadata accessor for ContextProtoUIControlTool);
    v8 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v8;
}

uint64_t sub_22C1F04D4()
{
  v2 = sub_22C270C24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContextProtoRetrievedTool(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  ContextProtoRetrievedTool.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C1B8, type metadata accessor for ContextProtoRetrievedTool);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F068C()
{
  v2 = type metadata accessor for ToolQuery.Output(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Output = type metadata accessor for ContextProtoToolQueryOutput(0);
  MEMORY[0x28223BE20](Output);
  sub_22BE1AA68(v0, v4);
  ContextProtoToolQueryOutput.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C5C8, type metadata accessor for ContextProtoToolQueryOutput);
    Output = sub_22C270744();
    sub_22BE1AE58();
  }

  return Output;
}

uint64_t sub_22C1F080C()
{
  v2 = sub_22C271A34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v7 = MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  (*(v3 + 16))(v5, v0, v2, v7);
  ContextProtoQueryDecorationToolRetrievalResponse.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
    DecorationToolRetrievalResponse = sub_22C270744();
    sub_22BE1AE58();
  }

  return DecorationToolRetrievalResponse;
}

uint64_t sub_22C1F09C4()
{
  v2 = sub_22C271904();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  ContextProtoDynamicEnumerationEntity.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C0F0, type metadata accessor for ContextProtoDynamicEnumerationEntity);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F0B7C()
{
  v2 = sub_22C271784();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  ContextProtoToolRetrievalType.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C1C0, type metadata accessor for ContextProtoToolRetrievalType);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F0D34()
{
  v1 = sub_22C270F64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContextProtoSampleInvocation(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1, v6);
  v9 = sub_22C270F44();
  v11 = v10;
  sub_22C270F54();
  v13 = v12;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v9;
  *(v8 + 1) = v11;
  *(v8 + 4) = v13;
  sub_22C259290(&qword_27D90C158, type metadata accessor for ContextProtoSampleInvocation);
  v14 = sub_22C270744();
  sub_22BE1AE58();
  return v14;
}

char *sub_22C1F0F28()
{
  v2 = v0;
  v3 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22C270FD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v10, v2, v7, v12);
  sub_22C270FB4();
  sub_22C105684(v5, v15, v16, v17, v18, v19, v20, v21, v35, v36);
  if (v1)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v22 = sub_22C270FC4();
    sub_22C1C4190(v22, v23, v24, v25, v26, v27, v28, v29, v35, v36);
    v32 = v31;
    v33 = *(v11 + 20);
    v34 = sub_22C272594();
    sub_22BE19DC4(v14 + v33, 1, 1, v34);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v8 + 8))(v10, v7);
    sub_22BE2343C();
    *v14 = v32;
    sub_22C259290(&qword_27D90C0E8, type metadata accessor for ContextProtoSpanMatchedEntity);
    v10 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v10;
}

uint64_t sub_22C1F1240()
{
  v2 = sub_22C270AF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContextProtoEntityMatch(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  ContextProtoEntityMatch.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C1D0, type metadata accessor for ContextProtoEntityMatch);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F13F8()
{
  v1 = v0;
  v2 = sub_22BE5CE4C(&qword_27D9073C0, &qword_22C275330);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_22C270E54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v10 = MEMORY[0x28223BE20](matched);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6, v10);
  v26 = sub_22C270E24();
  v14 = v13;
  v15 = sub_22C270E44();
  v17 = v16;
  sub_22C270E34();
  v28 = v5;
  v18 = v29;
  sub_22C107944();
  if (v18)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    LODWORD(v29) = v17 & 1;
    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

    v25 = v19;
    v20 = v14 & 1;
    if (v14)
    {
      v21 = 0;
    }

    else
    {
      v21 = v26;
    }

    v22 = *(matched + 24);
    v23 = type metadata accessor for ContextProtoAliasTypes(0);
    sub_22BE19DC4(&v12[v22], 1, 1, v23);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v7 + 8))(v9, v6);
    *v12 = v21;
    v12[8] = v20;
    *(v12 + 2) = v25;
    v12[24] = v29;
    sub_22BE2343C();
    sub_22C259290(&qword_27D90C618, type metadata accessor for ContextProtoMatchProperties);
    v15 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v15;
}

uint64_t sub_22C1F1730()
{
  v2 = sub_22C270944();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContextProtoAliasTypes(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  ContextProtoAliasTypes.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C630, type metadata accessor for ContextProtoAliasTypes);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F1A04()
{
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  MEMORY[0x28223BE20](DecorationOutput);
  v3 = v0;
  ContextProtoVersionedQueryDecorationOutput.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C4C8, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);
    DecorationOutput = sub_22C270744();
    sub_22BE1AE58();
  }

  return DecorationOutput;
}

uint64_t sub_22C1F1B20()
{
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  MEMORY[0x28223BE20](DecorationOutput);
  v3 = v0;
  ContextProtoQueryDecorationOutput.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C4F0, type metadata accessor for ContextProtoQueryDecorationOutput);
    DecorationOutput = sub_22C270744();
    sub_22BE1AE58();
  }

  return DecorationOutput;
}

uint64_t sub_22C1F1C3C()
{
  v2 = type metadata accessor for Session.Event(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoEvent(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoEvent.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&unk_28107AB68, type metadata accessor for TranscriptProtoEvent);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F1DBC()
{
  v2 = type metadata accessor for Session.Transcript(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoTranscript(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoTranscript.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F360, type metadata accessor for TranscriptProtoTranscript);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F1F3C()
{
  v1 = v0;
  v2 = sub_22C26E164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Timepoint(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TranscriptProtoTimepoint(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v1, v12);
  (*(v3 + 16))(v5, v12, v2);
  sub_22C270444();
  v16 = sub_22C270454();
  sub_22BE19DC4(v8, 0, 1, v16);
  v17 = *(v10 + 32);
  v25 = *&v12[*(v10 + 28)];
  v18 = *&v12[v17];
  v19 = sub_22C26E184();
  v21 = v20;
  sub_22BE19DC4(v15 + *(v13 + 28), 1, 1, v16);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v15 = v25;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v21;
  sub_22C259290(&qword_281078C68, type metadata accessor for TranscriptProtoTimepoint);
  v22 = sub_22C270744();
  sub_22BE1AE58();
  return v22;
}

uint64_t sub_22C1F2254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParticipantID(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = a1;
  v6[1] = a2;
  sub_22C259290(&unk_281076C00, type metadata accessor for TranscriptProtoParticipantID);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1F2374(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSpanID(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v4 = a1;
  sub_22C259290(&unk_28107A328, type metadata accessor for TranscriptProtoSpanID);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1F2600()
{
  v1 = type metadata accessor for SessionStart(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoSessionStart(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoSessionStart.init(handwritten:)();
  sub_22C259290(&qword_2810773C0, type metadata accessor for TranscriptProtoSessionStart);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1F2770()
{
  v1 = sub_22C26EA34();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BE5CE4C(&qword_27D90F0E8, &qword_22C2B5C90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - v5);
  v7 = sub_22C26EA84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v10, v0, v7, v12);
  v15 = sub_22C26EA54();
  v22 = v16;
  v23 = v15;
  sub_22C26EA64();
  v17 = sub_22C26EA24();
  v18 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v24 + 8))(v3, v25);
  *v6 = v17;
  sub_22BE19DC4(v6, 0, 1, v18);
  sub_22BE19DC4(v14 + *(v11 + 20), 1, 1, v18);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v8 + 8))(v10, v7);
  v19 = v22;
  *v14 = v23;
  v14[1] = v19;
  sub_22BE2343C();
  sub_22C259290(&qword_27D910698, type metadata accessor for TranscriptProtoDeviceDetails);
  v20 = sub_22C270744();
  sub_22BE1AE58();
  return v20;
}

uint64_t sub_22C1F2AA4()
{
  v1 = sub_22C26EA34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1, v6);
  v9 = sub_22C26EA24();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v9;
  sub_22C259290(&qword_27D910680, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C1F2C78()
{
  v38 = sub_22C26E244();
  v1 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_22C26ECA4();
  v36 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  v14 = MEMORY[0x28223BE20](v37);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v13, v0, v10, v14);
  sub_22C26EC64();
  v17 = sub_22C26E1F4();
  v34 = v18;
  v35 = v17;
  v19 = *(v1 + 8);
  v20 = v9;
  v21 = v38;
  v19(v20, v38);
  sub_22C26EC44();
  v22 = sub_22C26E1F4();
  v32 = v23;
  v33 = v22;
  v19(v6, v21);
  sub_22C26EC74();
  v24 = sub_22C26E1F4();
  v26 = v25;
  v19(v3, v21);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v11 + 8))(v13, v36);
  v27 = v34;
  *v16 = v35;
  v16[1] = v27;
  v28 = v32;
  v16[2] = v33;
  v16[3] = v28;
  v16[4] = v24;
  v16[5] = v26;
  sub_22C259290(&unk_281075FE0, type metadata accessor for TranscriptProtoLocaleSettings);
  v29 = sub_22C270744();
  sub_22BE1AE58();
  return v29;
}

uint64_t sub_22C1F2FAC()
{
  v1 = sub_22C26EC34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoGenderSettings(0);
  v6 = MEMORY[0x28223BE20](v5);
  (*(v2 + 16))(v4, v0, v1, v6);
  TranscriptProtoGenderSettings.init(handwritten:)();
  sub_22C259290(&qword_27D910668, type metadata accessor for TranscriptProtoGenderSettings);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1F3154()
{
  v21 = sub_22C26E164();
  v1 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for DateTimeContext(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v0, v9);
  v13 = *(v10 + 20);
  v14 = sub_22C270454();
  sub_22BE19DC4(v12 + v13, 1, 1, v14);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v1 + 16))(v3, v9, v21);
  sub_22C270444();
  sub_22BE19DC4(v6, 0, 1, v14);
  sub_22BE2343C();
  v15 = sub_22C26E264();
  v17 = v16;
  sub_22BE1AE58();
  *v12 = v15;
  v12[1] = v17;
  sub_22C259290(&qword_27D90F388, type metadata accessor for TranscriptProtoDateTimeContext);
  v18 = sub_22C270744();
  sub_22BE1AE58();
  return v18;
}

uint64_t sub_22C1F3450()
{
  v2 = type metadata accessor for UserTurnStarted(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoUserTurnStarted(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoUserTurnStarted.init(handwritten:)(v4, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D90F3A0, type metadata accessor for TranscriptProtoUserTurnStarted);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F35D0()
{
  v0 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v3 = type metadata accessor for TranscriptProtoUserTurn(0);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  v9 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  sub_22BE19DC4(v5, 1, 1, v9);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  swift_storeEnumTagMultiPayload();
  sub_22BE19DC4(v2, 0, 1, v9);
  sub_22BE2343C();
  sub_22BE3B620(v5, v8);
  sub_22C259290(&qword_27D90F3B8, type metadata accessor for TranscriptProtoUserTurn);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C1F37E4()
{
  v0 = type metadata accessor for TranscriptProtoUserTurnSpeech(0);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D90F3D0, type metadata accessor for TranscriptProtoUserTurnSpeech);
  v1 = sub_22C270744();
  sub_22BE1AE58();
  return v1;
}

uint64_t sub_22C1F38E4()
{
  v0 = type metadata accessor for TranscriptProtoUserTurnText(0);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D90F3E8, type metadata accessor for TranscriptProtoUserTurnText);
  v1 = sub_22C270744();
  sub_22BE1AE58();
  return v1;
}

uint64_t sub_22C1F39E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPartialResult(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_22C1C36F4();
  v8 = v7;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = a1;
  v6[1] = a2;
  v6[2] = v8;
  sub_22C259290(&qword_27D90F400, type metadata accessor for TranscriptProtoSpeechPartialResult);
  v9 = sub_22C270744();
  sub_22BE1AE58();
  return v9;
}

uint64_t sub_22C1F3B2C()
{
  v2 = type metadata accessor for Request(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoRequest(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoRequest.init(handwritten:)(v4, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F3CAC()
{
  v2 = type metadata accessor for RequestContent(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoRequestContent(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoRequestContent.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F3E2C()
{
  v0 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D90F450, type metadata accessor for TranscriptProtoRequestContentStopContent);
  v1 = sub_22C270744();
  sub_22BE1AE58();
  return v1;
}

uint64_t sub_22C1F3F2C()
{
  v1 = v0;
  v2 = sub_22C26E684();
  v23 = *(v2 - 8);
  v3 = v23;
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for RequestContent.TextContent(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  MEMORY[0x28223BE20](v26);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v1, v12);
  v15 = *v12;
  v24 = *(v12 + 1);
  v25 = v15;
  (*(v3 + 16))(v5, &v12[*(v10 + 28)], v2);

  LODWORD(v10) = sub_22C26E674();
  v16 = sub_22C26E654();
  v18 = v17;
  v19 = type metadata accessor for TranscriptProtoStatementID(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v23 + 8))(v5, v2);
  *v8 = v10;
  *(v8 + 1) = v16;
  *(v8 + 2) = v18;
  sub_22BE19DC4(v8, 0, 1, v19);
  sub_22BE19DC4(v14 + *(v26 + 20), 1, 1, v19);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  v20 = v24;
  *v14 = v25;
  v14[1] = v20;
  sub_22BE2343C();
  sub_22C259290(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent);
  v21 = sub_22C270744();
  sub_22BE1AE58();
  return v21;
}

uint64_t sub_22C1F4274()
{
  v2 = type metadata accessor for RequestContent.SpeechContent(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoRequestContentSpeechContent.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F43F4()
{
  v1 = sub_22C26EBC4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1, v6);
  v9 = sub_22C26EAE4();
  sub_22C1C3E60(v9, v10, v11, v12, v13, v14, v15, v16, v21[0], v21[1]);
  v18 = v17;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v18;
  sub_22C259290(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage);
  v19 = sub_22C270744();
  sub_22BE1AE58();
  return v19;
}

uint64_t sub_22C1F45D4()
{
  v1 = sub_22C26EB94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1, v6);
  v9 = sub_22C26EAE4();
  sub_22C1C3B30(v9, v10, v11, v12, v13, v14, v15, v16, v21[0], v21[1]);
  v18 = v17;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v18;
  sub_22C259290(&qword_27D90E5C8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
  v19 = sub_22C270744();
  sub_22BE1AE58();
  return v19;
}

uint64_t sub_22C1F47B4()
{
  v1 = sub_22C26EAF4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1, v6);
  sub_22C26EAE4();
  sub_22C1C36F4();
  v10 = v9;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v10;
  sub_22C259290(&qword_27D90E5D8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
  v11 = sub_22C270744();
  sub_22BE1AE58();
  return v11;
}

uint64_t sub_22C1F4994()
{
  v1 = v0;
  v2 = sub_22C26EB64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2, v7);
  v10 = sub_22C26EB34();
  v12 = v11;
  v13 = sub_22C26EB04();
  sub_22C26EB54();
  v15 = v14;
  sub_22C26EB14();
  v17 = v16;
  sub_22C26EB44();
  v19 = v18;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v3 + 8))(v5, v2);
  *v9 = v10;
  v9[1] = v12;
  v9[2] = v13;
  v9[3] = v15;
  v9[4] = v17;
  v9[5] = v19;
  sub_22C259290(&qword_27D90E518, type metadata accessor for TranscriptProtoSpeechPackage.Token);
  v20 = sub_22C270744();
  sub_22BE1AE58();
  return v20;
}

uint64_t sub_22C1F4BB0()
{
  v2 = type metadata accessor for ExternalAgentRequest(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoExternalAgentRequest.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_281072DC0, type metadata accessor for TranscriptProtoExternalAgentRequest);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F4D30()
{
  v2 = type metadata accessor for RequestPrescribedPlan(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoRequestPrescribedPlan.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F4F0, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F4EB0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v8 = a1;
  *(v8 + 1) = a2;
  v8[16] = a3 & 1;
  v8[17] = HIBYTE(a3) & 1;
  sub_22C259290(&qword_27D90F508, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);

  v9 = sub_22C270744();
  sub_22BE1AE58();
  return v9;
}

uint64_t sub_22C1F4FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = a1;
  v6[1] = a2;
  sub_22C259290(&qword_27D90F520, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1F5108()
{
  v1 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *v0;
  v5 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = v4;
  sub_22C2591A4(&v11, v9);
  sub_22BE22814();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v6 = v10;
  *v3 = v11;
  v3[16] = v5;
  *(v3 + 24) = v6;
  sub_22C259290(&qword_27D90F538, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1F5260()
{
  v1 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *v0;
  v5 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = v4;
  v10 = *(v0 + 40);
  sub_22C2591A4(&v12, v9);
  sub_22BE22814();
  sub_22BE22814();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v6 = v11;
  *v3 = v12;
  v3[16] = v5;
  *(v3 + 24) = v6;
  *(v3 + 40) = v10;
  sub_22C259290(&qword_27D90F550, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1F53EC()
{
  v1 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *v0;
  v5 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = v4;
  sub_22C2591A4(&v11, v9);
  sub_22BE22814();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v6 = v10;
  *v3 = v11;
  v3[16] = v5;
  *(v3 + 24) = v6;
  sub_22C259290(&qword_27D90F568, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1F5544()
{
  v1 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *v0;
  v5 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = v4;
  sub_22C2591A4(&v11, v9);
  sub_22BE22814();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v6 = v10;
  *v3 = v11;
  v3[16] = v5;
  *(v3 + 24) = v6;
  sub_22C259290(&qword_27D90F580, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1F569C()
{
  v1 = v0;
  v2 = sub_22C26E684();
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for RequestPrescribedPlan.OpenTool(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  MEMORY[0x28223BE20](v28);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1AA68(v1, v12);
  (*(v3 + 16))(v5, v12, v2);
  LODWORD(v1) = sub_22C26E674();
  v15 = sub_22C26E654();
  v17 = v16;
  v18 = type metadata accessor for TranscriptProtoStatementID(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v27 + 8))(v5, v26);
  *v8 = v1;
  *(v8 + 1) = v15;
  *(v8 + 2) = v17;
  sub_22BE19DC4(v8, 0, 1, v18);
  v19 = &v12[*(v10 + 28)];
  v20 = v19[8];
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = *v19;
  }

  sub_22BE19DC4(v14, 1, 1, v18);
  v22 = &v14[*(v28 + 20)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v22 = v21;
  v22[8] = v20;
  sub_22C259290(&qword_27D90F598, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  v23 = sub_22C270744();
  sub_22BE1AE58();
  return v23;
}

uint64_t sub_22C1F59E4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 & 1;
  if (v7)
  {
    a1 = 0;
  }

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = a1;
  v6[8] = v7;
  sub_22C259290(&qword_27D90F5B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  v8 = sub_22C270744();
  sub_22BE1AE58();
  return v8;
}

uint64_t sub_22C1F5B08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = a1;
  v6[1] = a2;
  sub_22C259290(&qword_27D90F438, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1F5DA8()
{
  v2 = type metadata accessor for ActionCancellation(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoActionCancellation(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoActionCancellation.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F5E8, type metadata accessor for TranscriptProtoActionCancellation);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F60A8()
{
  v2 = type metadata accessor for ClientAction.ShimParameter(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoShimParameter(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoShimParameter.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90E790, type metadata accessor for TranscriptProtoShimParameter);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F6228()
{
  v2 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3];
  v5 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *v0;
  v8 = *(v0 + 16);
  sub_22BE22814();
  sub_22C107718(v8, v4);
  if (v1)
  {
    sub_22BE233E8(&v16, &qword_27D9072A0, &qword_22C288100);
  }

  else
  {
    v9 = *(v0 + 17);
    v15 = *(v0 + 24);
    v10 = *(v5 + 24);
    v11 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
    sub_22BE19DC4(&v7[v10], 1, 1, v11);
    v12 = *(v5 + 28);
    sub_22BE22814();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *(v7 + 8) = v16;
    sub_22BE2343C();
    *v7 = v9;
    *&v7[v12] = v15;
    sub_22C259290(&qword_27D90F760, type metadata accessor for TranscriptProtoPersonQuery);
    v0 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v0;
}

uint64_t sub_22C1F6464(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_22C220C88(v8);
  if (v2)
  {
  }

  else
  {
    v10 = v9;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v7[1] = a1;
    v7[2] = a2;
    *v7 = v10;
    sub_22C259290(&qword_27D90F7A0, type metadata accessor for TranscriptProtoPhotosCandidates);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F65B4(char a1)
{
  v2 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = 3;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v4 = a1;
  sub_22C259290(&qword_27D90F778, type metadata accessor for TranscriptProtoPersonQuery.Handle);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1F66C8()
{
  Step = type metadata accessor for QueryStep(0);
  MEMORY[0x28223BE20](Step - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoQueryStep(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoQueryStep.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FB40, type metadata accessor for TranscriptProtoQueryStep);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F6848(uint64_t a1)
{
  v2 = v1;
  v64 = sub_22C272594();
  v4 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v65 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v45 - v7;
  v8 = sub_22C272874();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v57 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v46 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  MEMORY[0x28223BE20](v46);
  v47 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE5CE4C(&qword_27D9155F0, &qword_22C2CC8C8);
  result = sub_22C273D04();
  v16 = result;
  v17 = 0;
  v55 = v9;
  v56 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v48 = (v21 + 63) >> 6;
  v49 = v19;
  v52 = v9 + 16;
  v53 = (v9 + 8);
  v62 = v4 + 32;
  v50 = result + 64;
  v51 = v4;
  v54 = result;
  while (1)
  {
    v24 = v57;
    if (!v23)
    {
      v27 = v17;
      while (1)
      {
        v17 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v17 >= v48)
        {
          v42 = v47;
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          *v42 = v16;
          sub_22C259290(&qword_27D90FB70, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
          v43 = sub_22C270744();
          sub_22BE1AE58();
          return v43;
        }

        v28 = *(v49 + 8 * v17);
        ++v27;
        if (v28)
        {
          v25 = v2;
          v26 = __clz(__rbit64(v28));
          v59 = (v28 - 1) & v28;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v25 = v2;
    v26 = __clz(__rbit64(v23));
    v59 = (v23 - 1) & v23;
LABEL_11:
    v29 = v26 | (v17 << 6);
    v30 = *(v56 + 56);
    v31 = (*(v56 + 48) + 16 * v29);
    v32 = v31[1];
    v60 = *v31;
    v33 = *(v55 + 16);
    v33(v13, v30 + *(v55 + 72) * v29, v8);
    v33(v24, v13, v8);
    v61 = v32;

    sub_22C272854();
    if (v25)
    {
      break;
    }

    v58 = 0;
    v34 = *v53;
    (*v53)(v24, v8);
    v35 = v51;
    v36 = *(v51 + 32);
    v36(v63, v65, v64);
    v34(v13, v8);
    *(v50 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v16 = v54;
    v37 = (*(v54 + 48) + 16 * v29);
    v38 = v61;
    *v37 = v60;
    v37[1] = v38;
    result = (v36)(*(v16 + 56) + *(v35 + 72) * v29, v63, v64);
    v39 = *(v16 + 16);
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_18;
    }

    *(v16 + 16) = v41;
    v2 = v58;
    v23 = v59;
  }

  v43 = v53;
  v44 = *v53;
  (*v53)(v24, v8);

  v44(v13, v8);
  return v43;
}

uint64_t sub_22C1F6D28()
{
  v1 = v0;
  v2 = sub_22C272984();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for QueryPayload.StringQuery(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v1, v12);
  (*(v3 + 16))(v5, v12, v2);
  sub_22C272964();
  (*(v3 + 8))(v5, v2);
  v16 = sub_22C2725C4();
  sub_22BE19DC4(v8, 0, 1, v16);
  v17 = &v12[*(v10 + 28)];
  v19 = *v17;
  v18 = *(v17 + 1);
  sub_22BE19DC4(v15 + *(v13 + 20), 1, 1, v16);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v15 = v19;
  v15[1] = v18;
  sub_22C259290(&qword_27D90FB88, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
  v20 = sub_22C270744();
  sub_22BE1AE58();
  return v20;
}

uint64_t sub_22C1F703C()
{
  v1 = sub_22C272984();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for QueryPayload.IdentifierQuery(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v0, v11);
  (*(v2 + 16))(v4, v11, v1);
  sub_22C272964();
  (*(v2 + 8))(v4, v1);
  v15 = sub_22C2725C4();
  sub_22BE19DC4(v7, 0, 1, v15);
  v16 = *&v11[*(v9 + 28)];
  sub_22BE19DC4(v14 + *(v12 + 20), 1, 1, v15);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v14 = v16;
  sub_22C259290(&qword_27D90FBA0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v17 = sub_22C270744();
  sub_22BE1AE58();
  return v17;
}

uint64_t sub_22C1F734C(uint64_t a1)
{
  v2 = v1;
  v64 = sub_22C272594();
  v4 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v65 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v45 - v7;
  v8 = sub_22C272874();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v57 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v46 = type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(0);
  MEMORY[0x28223BE20](v46);
  v47 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE5CE4C(&qword_27D9155F0, &qword_22C2CC8C8);
  result = sub_22C273D04();
  v16 = result;
  v17 = 0;
  v55 = v9;
  v56 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v48 = (v21 + 63) >> 6;
  v49 = v19;
  v52 = v9 + 16;
  v53 = (v9 + 8);
  v62 = v4 + 32;
  v50 = result + 64;
  v51 = v4;
  v54 = result;
  while (1)
  {
    v24 = v57;
    if (!v23)
    {
      v27 = v17;
      while (1)
      {
        v17 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v17 >= v48)
        {
          v42 = v47;
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          *v42 = v16;
          sub_22C259290(&qword_27D90FBB8, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
          v43 = sub_22C270744();
          sub_22BE1AE58();
          return v43;
        }

        v28 = *(v49 + 8 * v17);
        ++v27;
        if (v28)
        {
          v25 = v2;
          v26 = __clz(__rbit64(v28));
          v59 = (v28 - 1) & v28;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v25 = v2;
    v26 = __clz(__rbit64(v23));
    v59 = (v23 - 1) & v23;
LABEL_11:
    v29 = v26 | (v17 << 6);
    v30 = *(v56 + 56);
    v31 = (*(v56 + 48) + 16 * v29);
    v32 = v31[1];
    v60 = *v31;
    v33 = *(v55 + 16);
    v33(v13, v30 + *(v55 + 72) * v29, v8);
    v33(v24, v13, v8);
    v61 = v32;

    sub_22C272854();
    if (v25)
    {
      break;
    }

    v58 = 0;
    v34 = *v53;
    (*v53)(v24, v8);
    v35 = v51;
    v36 = *(v51 + 32);
    v36(v63, v65, v64);
    v34(v13, v8);
    *(v50 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v16 = v54;
    v37 = (*(v54 + 48) + 16 * v29);
    v38 = v61;
    *v37 = v60;
    v37[1] = v38;
    result = (v36)(*(v16 + 56) + *(v35 + 72) * v29, v63, v64);
    v39 = *(v16 + 16);
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_18;
    }

    *(v16 + 16) = v41;
    v2 = v58;
    v23 = v59;
  }

  v43 = v53;
  v44 = *v53;
  (*v53)(v24, v8);

  v44(v13, v8);
  return v43;
}

char *sub_22C1F782C()
{
  v2 = v0;
  v3 = sub_22C26E684();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for VariableStep(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoVariableStep(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v2, v11);

  sub_22C1C241C(v15, v16, v17, v18, v19, v20, v21, v22, v32, v33);
  if (!v1)
  {
    v24 = v36;
    v25 = *(v36 + 16);
    v35 = v23;
    v25(v5, v11, v3);
    v34 = sub_22C26E674();
    v26 = sub_22C26E654();
    v32 = v27;
    v33 = v26;
    v28 = v3;
    v29 = type metadata accessor for TranscriptProtoStatementID(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v24 + 8))(v5, v28);
    *v8 = v34;
    v30 = v32;
    *(v8 + 1) = v33;
    *(v8 + 2) = v30;
    sub_22BE19DC4(v8, 0, 1, v29);
    sub_22BE19DC4(v14 + *(v12 + 20), 1, 1, v29);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    *v14 = v35;
    sub_22BE2343C();
    sub_22C259290(&qword_27D910018, type metadata accessor for TranscriptProtoVariableStep);
    v5 = sub_22C270744();
  }

  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1F7BA4()
{
  v1 = v0;
  v2 = sub_22C26E5D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2, v7);
  v10 = sub_22C26E5A4();
  v11 = [v10 domain];

  v12 = sub_22C273024();
  v14 = v13;

  v15 = sub_22C26E5A4();
  v16 = [v15 code];

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v3 + 8))(v5, v2);
  *v9 = v12;
  v9[1] = v14;
  v9[2] = v16;
  sub_22C259290(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v17 = sub_22C270744();
  sub_22BE1AE58();
  return v17;
}

uint64_t sub_22C1F7DD0()
{
  v2 = type metadata accessor for RequestContent.SystemPromptResolution(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoSystemPromptResolution.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FEF0, type metadata accessor for TranscriptProtoSystemPromptResolution);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F7F50()
{
  v2 = type metadata accessor for StatementResult(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoStatementResult(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoStatementResult.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

char *sub_22C1F80D0()
{
  v2 = v0;
  v3 = sub_22C26E684();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  StepResults = type metadata accessor for QueryStepResults(0);
  MEMORY[0x28223BE20](StepResults);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TranscriptProtoQueryStepResults(0);
  MEMORY[0x28223BE20](v30);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v2, v12);

  v16 = sub_22C1EEB74(v15);
  if (v1)
  {
    sub_22BE1AE58();
  }

  else
  {
    v29 = v16;

    (*(v4 + 16))(v6, &v12[*(StepResults + 20)], v3);
    v28 = sub_22C26E674();
    v17 = sub_22C26E654();
    v26 = v18;
    v27 = v17;
    v19 = v3;
    v20 = type metadata accessor for TranscriptProtoStatementID(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v4 + 8))(v6, v19);
    *v9 = v28;
    v21 = v26;
    *(v9 + 1) = v27;
    *(v9 + 2) = v21;
    sub_22BE19DC4(v9, 0, 1, v20);
    v22 = sub_22C26E184();
    v24 = v23;
    sub_22BE19DC4(v14 + *(v30 + 24), 1, 1, v20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    *v14 = v29;
    sub_22BE2343C();
    v14[1] = v22;
    v14[2] = v24;
    sub_22C259290(&qword_27D90FBD0, type metadata accessor for TranscriptProtoQueryStepResults);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

char *sub_22C1F8478()
{
  v2 = v0;
  v3 = sub_22BE5CE4C(&qword_27D911F40, &qword_22C2B5CA8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22C26F754();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8, v2, v5, v10);
  sub_22C26F724();
  sub_22C106164();
  if (v1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v30 = sub_22C26F704();
    v14 = v13;
    v15 = sub_22C26F734();
    sub_22C1C7468(v15, v16, v17, v18, v19, v20, v21, v22, v28, v29);
    v24 = *(v9 + 20);
    v28 = v24;
    v29 = v25;
    v26 = type metadata accessor for TranscriptProtoResponseOutput(0);
    sub_22BE19DC4(v12 + v24, 1, 1, v26);
    v27 = (v12 + *(v9 + 24));
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v6 + 8))(v8, v5);
    sub_22BE2343C();
    *v27 = v30;
    v27[1] = v14;
    *v12 = v29;
    sub_22C259290(&qword_27D910610, type metadata accessor for TranscriptProtoSystemResponse);
    v8 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v8;
}

uint64_t sub_22C1F87BC()
{
  v2 = sub_22C2700F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoInterpretedStatementResult.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F070, type metadata accessor for TranscriptProtoInterpretedStatementResult);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F8974()
{
  v2 = type metadata accessor for ActionResolverRequest(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoActionResolverRequest.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FF20, type metadata accessor for TranscriptProtoActionResolverRequest);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F8AF4()
{
  v1 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  MEMORY[0x28223BE20](v1);
  v3 = (v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_22C1C5FF8(v4, v5, v6, v7, v8, v9, v10, v11, v15[0], v15[1]);
  if (!v0)
  {
    v13 = v12;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v3 = v13;
    sub_22C259290(&qword_27D90F6D0, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    v1 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v1;
}

uint64_t sub_22C1F8C1C()
{
  v0 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D90FF70, type metadata accessor for TranscriptProtoSafetyModeRelease);
  v1 = sub_22C270744();
  sub_22BE1AE58();
  return v1;
}

uint64_t sub_22C1F8D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = a1;
  v6[1] = a2;
  sub_22C259290(&qword_27D90FF88, type metadata accessor for TranscriptProtoSafetyModeException);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1F8E3C()
{
  v1 = v0;
  v2 = sub_22C272594();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C272874();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  MEMORY[0x28223BE20](v9 - 8);
  v26 = &v25 - v10;
  v11 = type metadata accessor for VariableSetter(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TranscriptProtoVariableSetter(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1AA68(v1, v14);
  (*(v6 + 16))(v8, &v14[*(v12 + 28)], v5);
  v18 = v29;
  sub_22C272854();
  if (v18)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v29 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = v26;
    v20 = v28;
    (*(v27 + 32))(v26, v4, v28);
    sub_22BE19DC4(v19, 0, 1, v20);

    Dictionary<>.init(handwritten:)();
    v23 = v22;
    v24 = v29;
    sub_22BE19DC4(v29 + *(v15 + 20), 1, 1, v20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    sub_22BE2343C();
    *v24 = v23;
    sub_22C259290(&qword_27D90ED88, type metadata accessor for TranscriptProtoVariableSetter);
    v12 = sub_22C270744();
  }

  sub_22BE1AE58();
  return v12;
}

uint64_t sub_22C1F925C()
{
  v2 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoSystemPromptResolutionUserAction.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FFC0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F93DC()
{
  v2 = type metadata accessor for StatementResultPayload(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoStatementResultPayload.init(handwritten:)(v4);
  if (!v1)
  {
    sub_22C259290(&qword_27D90F6A8, type metadata accessor for TranscriptProtoStatementResultPayload);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F955C()
{
  v2 = sub_22C26F524();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoResponseOutput.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F9714()
{
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  MEMORY[0x28223BE20](Results);
  v3 = (v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_22C1C2144(v4, v5, v6, v7, v8, v9, v10, v11, v15[0], v15[1]);
  if (!v0)
  {
    v13 = v12;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v3 = v13;
    sub_22C259290(&qword_27D90EAC0, type metadata accessor for TranscriptProtoQueryResults);
    Results = sub_22C270744();
    sub_22BE1AE58();
  }

  return Results;
}

uint64_t sub_22C1F983C()
{
  v1 = type metadata accessor for ActionParameterContext(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoActionParameterContext.init(handwritten:)();
  sub_22C259290(&qword_27D90F7B8, type metadata accessor for TranscriptProtoActionParameterContext);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1F99AC()
{
  v1 = v0;
  v151 = type metadata accessor for TranscriptProtoPromptSelection(0);
  MEMORY[0x28223BE20](v151);
  v120 = &v101[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = sub_22C26F7C4();
  v3 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v119 = &v101[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v131 = &v101[-v6];
  MEMORY[0x28223BE20](v7);
  v130 = &v101[-v8];
  v9 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  MEMORY[0x28223BE20](v9 - 8);
  v129 = &v101[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v145 = &v101[-v12];
  v13 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  MEMORY[0x28223BE20](v13 - 8);
  v128 = &v101[-v14];
  v15 = sub_22C272594();
  v148 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v139 = &v101[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v140 = sub_22C272874();
  v147 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v142 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  MEMORY[0x28223BE20](v18 - 8);
  v127 = &v101[-v19];
  v138 = type metadata accessor for TranscriptProtoParameterValue(0);
  v126 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v21 = &v101[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v125 = &v101[-v23];
  v144 = sub_22C26F2A4();
  v24 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v150 = &v101[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v28 = &v101[-v27];
  v29 = sub_22BE5CE4C(&qword_27D911EE8, &unk_22C2B5C00);
  MEMORY[0x28223BE20](v29 - 8);
  v103 = &v101[-v30];
  v31 = sub_22BE5CE4C(&qword_27D90E6C8, &unk_22C2AE530);
  MEMORY[0x28223BE20](v31 - 8);
  v106 = &v101[-v32];
  v33 = sub_22C26FB84();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v101[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v37 = MEMORY[0x28223BE20](v104);
  v105 = &v101[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = v34;
  v39 = *(v34 + 16);
  v111 = v33;
  v40 = v39(v36, v1, v33, v37);
  v109 = v36;
  v41 = MEMORY[0x2318A8270](v40);
  sub_22BE5CE4C(&qword_27D915638, &unk_22C2CC9A8);
  v42 = sub_22C273D04();
  v43 = v42;
  v44 = 0;
  v45 = *(v41 + 64);
  v113 = v41 + 64;
  v143 = v41;
  v46 = 1 << *(v41 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v45;
  v112 = (v46 + 63) >> 6;
  v132 = v24 + 16;
  v134 = (v147 + 8);
  v124 = (v148 + 32);
  v117 = (v3 + 32);
  v116 = (v3 + 16);
  v115 = (v3 + 88);
  v123 = *MEMORY[0x277D1CAF0];
  v108 = (v3 + 96);
  v107 = *MEMORY[0x277D1CB00];
  v102 = *MEMORY[0x277D1CAF8];
  v49 = (v3 + 8);
  v50 = v144;
  v114 = v49;
  v136 = v24;
  v133 = (v24 + 8);
  v122 = v42 + 64;
  v141 = v15;
  v118 = v21;
  v137 = v28;
  v135 = v42;
  while (1)
  {
    v51 = v142;
    if (!v48)
    {
      v56 = v44;
      while (1)
      {
        v44 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        if (v44 >= v112)
        {

          v94 = v109;
          sub_22C26FB54();
          sub_22C106F58();
          v95 = *(v104 + 20);
          v96 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
          v97 = v105;
          sub_22BE19DC4(v105 + v95, 1, 1, v96);
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          (*(v110 + 8))(v94, v111);
          *v97 = v43;
          sub_22BE2343C();
          sub_22C259290(&qword_27D90F618, type metadata accessor for TranscriptProtoActionConfirmation);
          v98 = sub_22C270744();
          sub_22BE1AE58();
          return v98;
        }

        v57 = *(v113 + 8 * v44);
        ++v56;
        if (v57)
        {
          v52 = v28;
          v53 = v21;
          v54 = v50;
          v55 = __clz(__rbit64(v57));
          v146 = (v57 - 1) & v57;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_22C274004();
      __break(1u);
      return result;
    }

    v52 = v28;
    v53 = v21;
    v54 = v50;
    v55 = __clz(__rbit64(v48));
    v146 = (v48 - 1) & v48;
LABEL_11:
    v58 = v55 | (v44 << 6);
    v59 = *(v143 + 56);
    v60 = (*(v143 + 48) + 16 * v58);
    v61 = v60[1];
    v147 = *v60;
    v148 = v58;
    v62 = *(v136 + 16);
    v63 = v52;
    v62(v52, v59 + *(v136 + 72) * v58, v54);
    v64 = v150;
    v62(v150, v63, v54);
    v65 = v141;
    sub_22BE19DC4(v53, 1, 1, v141);
    sub_22BE19DC4(v53 + *(v138 + 20), 1, 1, v151);

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v66 = v51;
    sub_22C26E984();
    v67 = v139;
    v68 = v152;
    sub_22C272854();
    if (v68)
    {
      break;
    }

    v152 = 0;
    (*v134)(v51, v140);
    v69 = v127;
    (*v124)(v127, v67, v65);
    sub_22BE19DC4(v69, 0, 1, v65);
    sub_22BE2343C();
    v70 = v145;
    sub_22C26F274();
    v71 = v129;
    sub_22BE22814();
    if (sub_22BE1AEA8(v71, 1, v149) == 1)
    {
      v21 = v53;
      sub_22BE233E8(v70, &qword_27D909088, &unk_22C27FCA0);
      sub_22BE233E8(v71, &qword_27D909088, &unk_22C27FCA0);
      v72 = 1;
      v73 = v151;
      v74 = v128;
    }

    else
    {
      v75 = v71;
      v76 = v130;
      v77 = v149;
      (*v117)(v130, v75, v149);
      v78 = *v116;
      v79 = v131;
      (*v116)(v131, v76, v77);
      v80 = v119;
      v78(v119, v79, v77);
      v81 = (*v115)(v80, v77);
      v82 = v81;
      if (v81 == v123)
      {
        v83 = v149;
        (*v108)(v80, v149);
        v121 = *v80;
        v73 = v151;
      }

      else
      {
        v73 = v151;
        if (v81 == v107)
        {
          v121 = 0;
        }

        else
        {
          if (v81 != v102)
          {
            goto LABEL_29;
          }

          v121 = 1;
        }

        v83 = v149;
      }

      v84 = v82 != v123;
      v85 = v120;
      *v120 = 0;
      *(v85 + 8) = 256;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v86 = *v114;
      (*v114)(v131, v83);
      *v85 = v121;
      *(v85 + 8) = v84;
      *(v85 + 9) = 0;
      v74 = v128;
      sub_22BE3B620(v85, v128);
      sub_22BE233E8(v145, &qword_27D909088, &unk_22C27FCA0);
      v86(v130, v83);
      v72 = 0;
      v21 = v118;
    }

    v50 = v144;
    sub_22BE19DC4(v74, v72, 1, v73);
    v87 = *v133;
    (*v133)(v150, v50);
    sub_22BE2343C();
    v88 = v125;
    sub_22BE3B620(v21, v125);
    v28 = v137;
    v87(v137, v50);
    v89 = v148;
    *(v122 + ((v148 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v148;
    v43 = v135;
    v90 = (*(v135 + 48) + 16 * v89);
    *v90 = v147;
    v90[1] = v61;
    sub_22BE3B620(v88, *(v43 + 56) + *(v126 + 72) * v89);
    v91 = *(v43 + 16);
    v92 = __OFADD__(v91, 1);
    v93 = v91 + 1;
    if (v92)
    {
      goto LABEL_28;
    }

    *(v43 + 16) = v93;
    v48 = v146;
  }

  v100 = *v133;
  v98 = v144;
  (*v133)(v64, v144);
  (*v134)(v66, v140);
  sub_22BE1AE58();

  v100(v137, v98);

  (*(v110 + 8))(v109, v111);
  return v98;
}

uint64_t sub_22C1FA8C4()
{
  v1 = sub_22C26FB44();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v6 = MEMORY[0x28223BE20](v5);
  (*(v2 + 16))(v4, v0, v1, v6);
  TranscriptProtoActionConfirmationSystemStyle.init(handwritten:)();
  sub_22C259290(&qword_27D90F630, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FAA6C(__n128 a1)
{
  v2 = v1;
  v3 = sub_22C26FB14();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22BE5CE4C(&qword_27D90E6F8, &qword_22C2B5BE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_22C26FB34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v2, v7, v12);
  v15 = sub_22C26EF64();
  v21 = v16;
  v22 = v15;
  sub_22C26FB24();
  TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.init(handwritten:)();
  v17 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_22BE19DC4(v6, 0, 1, v17);
  LOBYTE(v2) = sub_22C26EF44();
  sub_22BE19DC4(&v14[*(v11 + 24)], 1, 1, v17);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v8 + 8))(v10, v7);
  v18 = v21;
  *v14 = v22;
  *(v14 + 1) = v18;
  sub_22BE2343C();
  v14[16] = v2 & 1;
  sub_22C259290(&qword_27D90F648, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  v19 = sub_22C270744();
  sub_22BE1AE58();
  return v19;
}

uint64_t sub_22C1FAD58(__n128 a1)
{
  v2 = v1;
  v3 = sub_22C26FB14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 16);
  v14(v9, v2, v3, v11);
  *v13 = 4;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (v14)(v6, v9, v3);
  v15 = (*(v4 + 88))(v6, v3);
  if (v15 == *MEMORY[0x277D1CD48])
  {
    v16 = 0;
LABEL_9:
    (*(v4 + 8))(v9, v3);
    *v13 = v16;
    sub_22C259290(&qword_27D90F660, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
    v17 = sub_22C270744();
    sub_22BE1AE58();
    return v17;
  }

  if (v15 == *MEMORY[0x277D1CD40])
  {
    v16 = 1;
    goto LABEL_9;
  }

  if (v15 == *MEMORY[0x277D1CD38])
  {
    v16 = 2;
    goto LABEL_9;
  }

  if (v15 == *MEMORY[0x277D1CD30])
  {
    v16 = 3;
    goto LABEL_9;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1FB004(__n128 a1)
{
  v3 = sub_22C26F2A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoParameterValue(0);
  v8 = MEMORY[0x28223BE20](v7);
  (*(v4 + 16))(v6, v1, v3, v8);
  TranscriptProtoParameterValue.init(handwritten:)();
  if (!v2)
  {
    sub_22C259290(&qword_27D90E6B8, type metadata accessor for TranscriptProtoParameterValue);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C1FB1BC()
{
  v1 = v0;
  v2 = sub_22C26F7C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 16);
  v13(v8, v1, v2, v10);
  (v13)(v5, v8, v2);
  v14 = (*(v3 + 88))(v5, v2);
  v15 = v14;
  v16 = *MEMORY[0x277D1CAF0];
  if (v14 == *MEMORY[0x277D1CAF0])
  {
    (*(v3 + 96))(v5, v2);
    v17 = *v5;
    goto LABEL_7;
  }

  if (v14 == *MEMORY[0x277D1CB00])
  {
    v17 = 0;
LABEL_7:
    *v12 = 0;
    *(v12 + 4) = 256;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v3 + 8))(v8, v2);
    *v12 = v17;
    v12[8] = v15 != v16;
    v12[9] = 0;
    sub_22C259290(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection);
    v18 = sub_22C270744();
    sub_22BE1AE58();
    return v18;
  }

  if (v14 == *MEMORY[0x277D1CAF8])
  {
    v17 = 1;
    goto LABEL_7;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1FB480()
{
  v2 = sub_22C26FC54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoParameterNeedsValue.init(handwritten:)(v5, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D90FA38, type metadata accessor for TranscriptProtoParameterNeedsValue);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1FB638()
{
  v2 = sub_22C26FC34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoParameterNeedsValueContext.init(handwritten:)(v5, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D90FA50, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1FB7F0()
{
  v1 = sub_22C26FC24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1, v6);
  v9 = sub_22C26ED64();
  v11 = v10;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v9;
  v8[1] = v11;
  sub_22C259290(&qword_27D90FA68, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  v12 = sub_22C270744();
  sub_22BE1AE58();
  return v12;
}

uint64_t sub_22C1FB9C8()
{
  v2 = sub_22C26FE94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoParameterConfirmation.init(handwritten:)(v5, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D90F9E8, type metadata accessor for TranscriptProtoParameterConfirmation);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1FBB80()
{
  v2 = v0;
  v3 = sub_22C26FFF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v7 = MEMORY[0x28223BE20](v22);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v6, v2, v3, v7);
  v21 = sub_22C26FFC4();
  v11 = v10;
  v12 = MEMORY[0x2318A86D0]();
  v14 = v13;
  v15 = sub_22C26FFE4();
  sub_22C220C88(v15);
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v17 = v16;
    v20 = v14 & 1;
    if (v14)
    {
      v12 = 0;
    }

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v4 + 8))(v6, v3);
    *v9 = v21;
    *(v9 + 1) = v11;
    v9[32] = v20;
    *(v9 + 2) = v17;
    *(v9 + 3) = v12;
    sub_22C259290(&qword_27D90FA00, type metadata accessor for TranscriptProtoParameterDisambiguation);
    v3 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v3;
}

uint64_t sub_22C1FBDD0()
{
  v2 = sub_22C26FCD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoParameterNotAllowed.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FA80, type metadata accessor for TranscriptProtoParameterNotAllowed);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1FBF88()
{
  v2 = type metadata accessor for Candidate(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoCandidate(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoCandidate.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90EA50, type metadata accessor for TranscriptProtoCandidate);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1FC108(_BOOL8 a1, char a2)
{
  v4 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  *v6 = 0;
  *(v6 + 4) = 256;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v10 = a1;
  if ((a2 & 1) == 0)
  {
    v10 = a1;
  }

  *v6 = v10;
  v6[8] = a2 & 1;
  v6[9] = 0;
  sub_22BE3B620(v6, v9);
  sub_22C259290(&qword_27D90F6F8, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  v11 = sub_22C270744();
  sub_22BE1AE58();
  return v11;
}

uint64_t sub_22C1FC284()
{
  v2 = v0;
  v3 = type metadata accessor for TranscriptProtoPlan(0);
  MEMORY[0x28223BE20](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  v22 = *(v2 + 16);
  v23 = v6;
  sub_22C174314(v2, v20);
  sub_22C2591A4(&v23, v20);
  sub_22C2591A4(&v22, v20);

  sub_22C1BFAF0(v7, v8, v9, v10, v11, v12, v13, v14, v20[0], v20[1]);
  if (v1)
  {
    sub_22C259200(&v23);
    sub_22C259200(&v22);
    sub_22C10D970(v2);
  }

  else
  {
    v16 = v15;
    v17 = *(v2 + 56) + 1;
    v21 = *(v2 + 40);
    v5[56] = 6;
    sub_22BE22814();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C10D970(v2);
    v18 = v22;
    *v5 = v23;
    *(v5 + 1) = v18;
    *(v5 + 4) = v16;
    *(v5 + 40) = v21;
    v5[56] = v17;
    sub_22C259290(&qword_27D90FAD0, type metadata accessor for TranscriptProtoPlan);
    v3 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v3;
}

uint64_t sub_22C1FC45C()
{
  v2 = type metadata accessor for Session.RecoverableError(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoRecoverableError(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoRecoverableError.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FAE8, type metadata accessor for TranscriptProtoRecoverableError);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1FC5DC()
{
  v2 = type metadata accessor for Session.PlanGenerationError(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoPlanGenerationError.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FB00, type metadata accessor for TranscriptProtoPlanGenerationError);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1FC75C()
{
  v1 = v0;
  v25 = sub_22C26E5D4();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Session.PlanGenerationModelOutputError(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v1, v11);
  v15 = *v11;
  v16 = *(v11 + 1);
  v17 = *(v11 + 3);
  v23 = *(v11 + 2);
  v24 = v15;
  (*(v2 + 16))(v4, &v11[*(v9 + 32)], v25);

  TranscriptProtoIntelligenceFlowError.init(handwritten:)();
  v18 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE19DC4(v7, 0, 1, v18);
  sub_22BE19DC4(v14 + *(v12 + 24), 1, 1, v18);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  v19 = v23;
  *v14 = v24;
  v14[1] = v16;
  v14[2] = v19;
  v14[3] = v17;
  sub_22BE2343C();
  sub_22C259290(&qword_27D90FB18, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  v20 = sub_22C270744();
  sub_22BE1AE58();
  return v20;
}

uint64_t sub_22C1FCBF0()
{
  v2 = type metadata accessor for AnswerSynthesisExpression(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoAnswerSynthesisExpression.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D910590, type metadata accessor for TranscriptProtoAnswerSynthesisExpression);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1FCD70(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for TranscriptProtoValueExpression(0);
  MEMORY[0x28223BE20](v6);
  sub_22BECD104(a1, a2, a3);
  TranscriptProtoValueExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910278, type metadata accessor for TranscriptProtoValueExpression);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FCEA4()
{
  v1 = v0;
  v2 = sub_22C26E684();
  v22 = *(v2 - 8);
  v3 = v22;
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for PrefixExpression(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  MEMORY[0x28223BE20](v24);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1AA68(v1, v12);
  v23 = *v12;
  (*(v3 + 16))(v5, &v12[*(v10 + 28)], v2);
  LODWORD(v1) = sub_22C26E674();
  v15 = sub_22C26E654();
  v17 = v16;
  v18 = type metadata accessor for TranscriptProtoStatementID(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v22 + 8))(v5, v2);
  *v8 = v1;
  *(v8 + 1) = v15;
  *(v8 + 2) = v17;
  sub_22BE19DC4(v8, 0, 1, v18);
  sub_22BE19DC4(&v14[*(v24 + 20)], 1, 1, v18);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  *v14 = v23;
  sub_22BE2343C();
  sub_22C259290(&qword_27D9102A8, type metadata accessor for TranscriptProtoPrefixExpression);
  v19 = sub_22C270744();
  sub_22BE1AE58();
  return v19;
}

uint64_t sub_22C1FD1E4()
{
  v1 = type metadata accessor for InfixExpression(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoInfixExpression(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoInfixExpression.init(handwritten:)();
  sub_22C259290(&qword_27D9102C0, type metadata accessor for TranscriptProtoInfixExpression);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1FD354()
{
  v1 = type metadata accessor for IndexExpression(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoIndexExpression(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoIndexExpression.init(handwritten:)();
  sub_22C259290(&qword_27D9102F0, type metadata accessor for TranscriptProtoIndexExpression);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1FD4C4()
{
  updated = type metadata accessor for UpdateParametersExpression(0);
  MEMORY[0x28223BE20](updated - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoUpdateParametersExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910308, type metadata accessor for TranscriptProtoUpdateParametersExpression);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1FD634()
{
  updated = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
  MEMORY[0x28223BE20](updated - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoUpdateParameterExpression_UpdateParameter.init(handwritten:)();
  sub_22C259290(&qword_27D90EF18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1FD7A4()
{
  v1 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *v0;
  v10 = v0[1];
  v11 = v4;
  v5 = *(v0 + 32);
  sub_22C2591A4(&v11, v9);
  sub_22BE22814();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v6 = v10;
  *v3 = v11;
  *(v3 + 24) = v6;
  v3[16] = v5;
  sub_22C259290(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FD8F8()
{
  v1 = type metadata accessor for TranscriptProtoCallExpression(0);
  MEMORY[0x28223BE20](v1);
  v2 = v0[1];
  v6 = *v0;
  v7 = v2;
  v8 = v0[2];
  sub_22C259148(v0, v5);
  TranscriptProtoCallExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910340, type metadata accessor for TranscriptProtoCallExpression);
  v3 = sub_22C270744();
  sub_22BE1AE58();
  return v3;
}

uint64_t sub_22C1FDA1C()
{
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(0);
  MEMORY[0x28223BE20](ContextExpression);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D910358, type metadata accessor for TranscriptProtoRetrieveContextExpression);
  v1 = sub_22C270744();
  sub_22BE1AE58();
  return v1;
}

uint64_t sub_22C1FDB1C()
{
  SpansExpression = type metadata accessor for RetrieveSpansExpression(0);
  MEMORY[0x28223BE20](SpansExpression - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoRetrieveSpansExpression.init(handwritten:)(v3);
  sub_22C259290(&qword_27D910370, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1FDC8C()
{
  ToolsExpression = type metadata accessor for RetrieveToolsExpression(0);
  MEMORY[0x28223BE20](ToolsExpression - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoRetrieveToolsExpression.init(handwritten:)(v3);
  sub_22C259290(&qword_27D910388, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1FDDFC(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSayExpression(0);
  MEMORY[0x28223BE20](v2);
  v5 = a1;

  TranscriptProtoSayExpression.init(handwritten:)(&v5);
  sub_22C259290(&qword_27D9103A0, type metadata accessor for TranscriptProtoSayExpression);
  v3 = sub_22C270744();
  sub_22BE1AE58();
  return v3;
}

uint64_t sub_22C1FDF14()
{
  v1 = v0;
  v2 = sub_22C26E684();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for PickExpression(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TranscriptProtoPickExpression(0);
  MEMORY[0x28223BE20](v25);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v1, v12);
  (*(v3 + 16))(v5, v12, v2);
  LODWORD(v1) = sub_22C26E674();
  v15 = sub_22C26E654();
  v17 = v16;
  v18 = type metadata accessor for TranscriptProtoStatementID(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v24 + 8))(v5, v23);
  *v8 = v1;
  *(v8 + 1) = v15;
  *(v8 + 2) = v17;
  sub_22BE19DC4(v8, 0, 1, v18);
  v19 = *&v12[*(v10 + 28)];
  sub_22BE19DC4(v14 + *(v25 + 20), 1, 1, v18);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v14 = v19;
  sub_22C259290(&qword_27D9103B8, type metadata accessor for TranscriptProtoPickExpression);
  v20 = sub_22C270744();
  sub_22BE1AE58();
  return v20;
}

uint64_t sub_22C1FE248()
{
  v1 = type metadata accessor for ConfirmExpression(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoConfirmExpression.init(handwritten:)(v3);
  sub_22C259290(&qword_27D9103D0, type metadata accessor for TranscriptProtoConfirmExpression);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1FE3B8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for TranscriptProtoSearchExpression(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v8 = a1;
  *(v8 + 1) = a2;
  v8[16] = a3 & 1;
  v8[17] = BYTE1(a3) & 1;
  v8[18] = BYTE2(a3) & 1;
  sub_22C259290(&qword_27D9103E8, type metadata accessor for TranscriptProtoSearchExpression);

  v9 = sub_22C270744();
  sub_22BE1AE58();
  return v9;
}

uint64_t sub_22C1FE4F8()
{
  v1 = type metadata accessor for TranscriptProtoStatementID(0);
  v87 = *(v1 - 8);
  v88 = v1;
  MEMORY[0x28223BE20](v1);
  v86 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22C26E684();
  v3 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v82 = &v67 - v6;
  v7 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v67 - v8;
  v9 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v67 - v10;
  v76 = type metadata accessor for StructuredSearchExpression(0);
  MEMORY[0x28223BE20](v76);
  v12 = (&v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  MEMORY[0x28223BE20](v68);
  v69 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v0, v12);
  v71 = v12;
  v14 = *v12;
  sub_22BE5CE4C(&qword_27D915600, &unk_22C2CC8E0);
  result = sub_22C273D04();
  v16 = result;
  v17 = 0;
  v18 = *(v14 + 64);
  v75 = v14 + 64;
  v19 = 1 << *(v14 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v74 = (v19 + 63) >> 6;
  v79 = v3 + 16;
  v80 = v14;
  v84 = v3;
  v77 = result + 64;
  v78 = v3 + 8;
  v81 = result;
  if (v21)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v21));
      v89 = (v21 - 1) & v21;
LABEL_10:
      v26 = v22 | (v17 << 6);
      v27 = *(v80 + 56);
      v28 = (*(v80 + 48) + 16 * v26);
      v29 = v28[1];
      v92 = *v28;
      v91 = v29;
      v31 = v84;
      v30 = v85;
      v32 = *(v84 + 16);
      v33 = v82;
      v32(v82, v27 + *(v84 + 72) * v26, v85);
      v34 = v83;
      v32(v83, v33, v30);

      v90 = sub_22C26E674();
      v35 = sub_22C26E654();
      v37 = v36;
      v38 = v86;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v39 = *(v31 + 8);
      v39(v34, v30);
      *v38 = v90;
      *(v38 + 8) = v35;
      *(v38 + 16) = v37;
      v39(v33, v30);
      *(v77 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v16 = v81;
      v40 = (*(v81 + 48) + 16 * v26);
      v41 = v91;
      *v40 = v92;
      v40[1] = v41;
      result = sub_22BE3B620(v38, *(v16 + 56) + *(v87 + 72) * v26);
      v42 = *(v16 + 16);
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        break;
      }

      *(v16 + 16) = v44;
      v21 = v89;
      if (!v89)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_5:
    v23 = v17;
    v24 = v76;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v17 >= v74)
      {
        break;
      }

      v25 = *(v75 + 8 * v17);
      ++v23;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v89 = (v25 - 1) & v25;
        goto LABEL_10;
      }
    }

    v45 = v70;
    sub_22BE22814();
    v46 = v73;
    sub_22C105B04(v45, v47, v48, v49, v50, v51, v52, v53, v67, v68);
    if (v46)
    {
      sub_22BE1AE58();
    }

    else
    {

      sub_22C1C0A8C(v54, v55, v56, v57, v58, v59, v60, v61, v67, v68);
      v63 = v62;
      v64 = *(v68 + 24);
      v65 = sub_22C2725A4();
      v66 = v69;
      sub_22BE19DC4(v69 + v64, 1, 1, v65);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AE58();
      *v66 = v16;
      sub_22BE2343C();
      v66[1] = v63;
      sub_22C259290(&qword_27D910400, type metadata accessor for TranscriptProtoStructuredSearchExpression);
      v24 = sub_22C270744();
      sub_22BE1AE58();
    }

    return v24;
  }

  return result;
}

uint64_t sub_22C1FEB78()
{
  v1 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v0, v5);
  v10 = *v5;
  v9 = v5[1];
  v11 = v5[3];
  v17 = v5[2];
  sub_22BE22814();

  sub_22BE46914();
  v12 = *(v6 + 24);
  v13 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE19DC4(v8 + v12, 1, 1, v13);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  *v8 = v10;
  v8[1] = v9;
  v8[2] = v17;
  v8[3] = v11;
  sub_22BE2343C();
  sub_22C259290(&qword_27D90EF88, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
  v14 = sub_22C270744();
  sub_22BE1AE58();
  return v14;
}

uint64_t sub_22C1FEE4C()
{
  v1 = type metadata accessor for PickOneExpression(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoPickOneExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910428, type metadata accessor for TranscriptProtoPickOneExpression);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1FEFBC(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_22C1EE9C4(a1);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v4 = v5;
  sub_22C259290(&qword_27D910440, type metadata accessor for TranscriptProtoResolveToolExpression);
  v6 = sub_22C270744();
  sub_22BE1AE58();
  return v6;
}

uint64_t sub_22C1FF0E4()
{
  v1 = v0;
  v2 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for UndoExpression(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoUndoExpression(0);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1AA68(v1, v6);
  sub_22BE22814();
  sub_22BE46914();
  v10 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE19DC4(v9, 1, 1, v10);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  sub_22C259290(&qword_27D910458, type metadata accessor for TranscriptProtoUndoExpression);
  v11 = sub_22C270744();
  sub_22BE1AE58();
  return v11;
}

uint64_t sub_22C1FF384()
{
  v1 = type metadata accessor for RejectExpression(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoRejectExpression(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoRejectExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910470, type metadata accessor for TranscriptProtoRejectExpression);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1FF4F4()
{
  v1 = type metadata accessor for CancelExpression(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoCancelExpression(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoCancelExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910488, type metadata accessor for TranscriptProtoCancelExpression);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1FF664()
{
  v1 = type metadata accessor for OpenExpression(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoOpenExpression(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoOpenExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910500, type metadata accessor for TranscriptProtoOpenExpression);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1FF7D4(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  MEMORY[0x28223BE20](v2);
  v5 = a1;

  TranscriptProtoPayloadExpression.init(handwritten:)(&v5);
  sub_22C259290(&qword_27D910530, type metadata accessor for TranscriptProtoPayloadExpression);
  v3 = sub_22C270744();
  sub_22BE1AE58();
  return v3;
}

uint64_t sub_22C1FF8EC()
{
  v0 = type metadata accessor for TranscriptProtoFormatExpression(0);
  MEMORY[0x28223BE20](v0);
  v2 = (v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_22C1C1424(v3, v4, v5, v6, v7, v8, v9, v10, v15[0], v15[1]);
  v12 = v11;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = v12;
  sub_22C259290(&qword_27D910548, type metadata accessor for TranscriptProtoFormatExpression);
  v13 = sub_22C270744();
  sub_22BE1AE58();
  return v13;
}

uint64_t sub_22C1FFA18()
{
  v1 = v0;
  v2 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for SiriXFallbackExpression(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1AA68(v1, v6);
  sub_22BE22814();
  sub_22BE46914();
  v10 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE19DC4(v9, 1, 1, v10);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  sub_22C259290(&qword_27D910260, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
  v11 = sub_22C270744();
  sub_22BE1AE58();
  return v11;
}

uint64_t sub_22C1FFCB8()
{
  v1 = type metadata accessor for UserConfirmExpression(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoUserConfirmExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910560, type metadata accessor for TranscriptProtoUserConfirmExpression);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1FFE28()
{
  v1 = type metadata accessor for UserDisambiguateExpression(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoUserDisambiguateExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910578, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C1FFF98()
{
  v2 = type metadata accessor for ProgramStatement(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoProgramStatement(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoProgramStatement.init(handwritten:)(v4);
  if (!v1)
  {
    sub_22C259290(&qword_27D90E9F8, type metadata accessor for TranscriptProtoProgramStatement);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C200118()
{
  v1 = sub_22C26E684();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1, v6);
  v9 = sub_22C26E674();
  v10 = sub_22C26E654();
  v12 = v11;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v9;
  *(v8 + 1) = v10;
  *(v8 + 2) = v12;
  sub_22C259290(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  v13 = sub_22C270744();
  sub_22BE1AE58();
  return v13;
}

uint64_t sub_22C200304()
{
  v2 = sub_22C26F8A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoActionRequirement(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoActionRequirement.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F848, type metadata accessor for TranscriptProtoActionRequirement);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C200674()
{
  v2 = sub_22C26E9D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoActionSuccess.init(handwritten:)(v5, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1]);
  if (!v1)
  {
    sub_22C259290(&unk_281076F30, type metadata accessor for TranscriptProtoActionSuccess);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C20082C()
{
  v2 = sub_22C26EAC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoSnippetStream(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoSnippetStream.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F970, type metadata accessor for TranscriptProtoSnippetStream);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C2009E4()
{
  v2 = sub_22C26F874();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoResponseManifest.init(handwritten:)(v5, v8, v9, v10, v11, v12, v13, v14, v16, v17, v18, v19, v20);
  if (!v1)
  {
    sub_22C259290(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C200B9C()
{
  v1 = v0;
  v2 = sub_22C26FA04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoResponseParameter(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2, v7);
  v10 = sub_22C26F9B4();
  v28 = v11;
  v29 = v10;
  v12 = sub_22C26F9D4();
  v30 = v13;
  v31 = v12;
  v14 = sub_22C26F9C4();
  v26 = v15;
  v27 = v14;
  v16 = sub_22C26F9F4();
  v17 = sub_22C26F9E4();
  v19 = v18;
  v20 = sub_22C26F994();
  *(v9 + 1) = xmmword_22C28E6A0;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v3 + 8))(v5, v2);
  v21 = v28;
  *v9 = v29;
  *(v9 + 1) = v21;
  sub_22BF158B4(*(v9 + 2), *(v9 + 3));
  v22 = v30;
  *(v9 + 2) = v31;
  *(v9 + 3) = v22;
  v23 = v26;
  *(v9 + 4) = v27;
  *(v9 + 5) = v23;
  v9[48] = v16;
  *(v9 + 7) = v17;
  *(v9 + 8) = v19;
  v9[72] = v20;
  sub_22C259290(&qword_27D90EC00, type metadata accessor for TranscriptProtoResponseParameter);
  v24 = sub_22C270744();
  sub_22BE1AE58();
  return v24;
}

uint64_t sub_22C200DDC()
{
  v1 = v0;
  v2 = sub_22C26F304();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoResponseDialog(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2, v7);
  v10 = sub_22C26F2E4();
  v26 = v11;
  v27 = v10;
  v12 = sub_22C26F2F4();
  v24 = v13;
  v25 = v12;
  v14 = sub_22C26F2B4();
  v16 = v15;
  v17 = sub_22C26F2C4();
  v19 = v18;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v3 + 8))(v5, v2);
  v20 = v26;
  *v9 = v27;
  v9[1] = v20;
  v21 = v24;
  v9[2] = v25;
  v9[3] = v21;
  v9[4] = v14;
  v9[5] = v16;
  v9[6] = v17;
  v9[7] = v19;
  sub_22C259290(&qword_27D90FBE8, type metadata accessor for TranscriptProtoResponseDialog);
  v22 = sub_22C270744();
  sub_22BE1AE58();
  return v22;
}

uint64_t sub_22C2011A8()
{
  v2 = sub_22C26F674();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoUIType(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoUIType.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90EC48, type metadata accessor for TranscriptProtoUIType);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C201360()
{
  v2 = sub_22C26F6D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoUILabel(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoUILabel.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90EC50, type metadata accessor for TranscriptProtoUILabel);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C201518()
{
  v1 = sub_22C26F554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1, v6);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v9 = sub_22C26F544();
  (*(v2 + 8))(v4, v1);
  *v8 = v9 & 1;
  sub_22C259290(&qword_27D90FE40, type metadata accessor for TranscriptProtoResponseVisualOptions);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C2016F0()
{
  v1 = sub_22C26F6C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1, v6);
  v9 = sub_22C26F6A4();
  v11 = v10;
  v12 = sub_22C26F654();
  v14 = v13;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v9;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v14;
  sub_22C259290(&qword_27D90FE78, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  v15 = sub_22C270744();
  sub_22BE1AE58();
  return v15;
}

uint64_t sub_22C2018E0()
{
  v1 = v0;
  v2 = sub_22C26F5F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2, v7);
  v10 = sub_22C26F5D4();
  v21 = v11;
  v22 = v10;
  v12 = sub_22C26F5C4();
  v14 = v13;
  v15 = sub_22C26F5B4();
  v17 = v16;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v3 + 8))(v5, v2);
  v18 = v21;
  *v9 = v22;
  v9[1] = v18;
  v9[2] = v12;
  v9[3] = v14;
  v9[4] = v15;
  v9[5] = v17;
  sub_22C259290(&qword_27D90FE90, type metadata accessor for TranscriptProtoArchiveViewPayload);
  v19 = sub_22C270744();
  sub_22BE1AE58();
  return v19;
}

uint64_t sub_22C201AE4()
{
  v1 = sub_22C26F624();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1, v6);
  v9 = sub_22C26F614();
  v11 = v10;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v9;
  v8[1] = v11;
  sub_22C259290(&qword_27D90FEA8, type metadata accessor for TranscriptProtoLiveActivityPayload);
  v12 = sub_22C270744();
  sub_22BE1AE58();
  return v12;
}

uint64_t sub_22C201CBC()
{
  v1 = sub_22C26F664();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1, v6);
  v9 = sub_22C26F634();
  v11 = v10;
  v12 = sub_22C26F654();
  v14 = v13;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v9;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v14;
  sub_22C259290(&qword_27D90FEC0, type metadata accessor for TranscriptProtoPluginSnippetPayload);
  v15 = sub_22C270744();
  sub_22BE1AE58();
  return v15;
}

uint64_t sub_22C201EAC()
{
  v1 = sub_22C2729D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C26F5A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptProtoControlPayload(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v6 + 16);
  v23 = v5;
  v13(v8, v0, v5, v10);
  sub_22C26F584();
  v14 = sub_22C2729B4();
  v16 = v15;
  (*(v2 + 8))(v4, v1);
  if (v16 >> 60 == 15)
  {
    v24 = MEMORY[0x277CC9318];
    sub_22BE5CE4C(&qword_27D915680, &qword_22C2CCA40);
    v17 = sub_22C273074();
    v19 = v18;
    sub_22C108598();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0;
    swift_willThrow();
    (*(v6 + 8))(v8, v23);
  }

  else
  {
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v6 + 8))(v8, v23);
    *v12 = v14;
    v12[1] = v16;
    sub_22C259290(&qword_27D90FED8, type metadata accessor for TranscriptProtoControlPayload);
    v17 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v17;
}

uint64_t sub_22C2021C0()
{
  v2 = sub_22C26F444();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoVisualOutput.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90EAD8, type metadata accessor for TranscriptProtoVisualOutput);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C202378()
{
  v1 = sub_22C26F364();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoAceCommandOutputPayload(0);
  v6 = MEMORY[0x28223BE20](v5);
  (*(v2 + 16))(v4, v0, v1, v6);
  TranscriptProtoAceCommandOutputPayload.init(handwritten:)();
  sub_22C259290(&qword_27D90FCA0, type metadata accessor for TranscriptProtoAceCommandOutputPayload);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C202520()
{
  v1 = sub_22C26F354();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoAceCommandOutputData(0);
  v6 = MEMORY[0x28223BE20](v5);
  (*(v2 + 16))(v4, v0, v1, v6);
  TranscriptProtoAceCommandOutputData.init(handwritten:)();
  sub_22C259290(&qword_27D90FCB8, type metadata accessor for TranscriptProtoAceCommandOutputData);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C2026C8()
{
  v1 = sub_22C26F394();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1, v6);
  v9 = sub_22C26F384();
  v11 = v10;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v9;
  v8[1] = v11;
  sub_22C259290(&qword_27D90FC40, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
  v12 = sub_22C270744();
  sub_22BE1AE58();
  return v12;
}

uint64_t sub_22C2028A0()
{
  v1 = sub_22C26F424();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1, v6);
  v9 = sub_22C26F384();
  v11 = v10;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v9;
  v8[1] = v11;
  sub_22C259290(&qword_27D90FC58, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
  v12 = sub_22C270744();
  sub_22BE1AE58();
  return v12;
}

uint64_t sub_22C202A78()
{
  v1 = sub_22C26F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1, v6);
  v9 = sub_22C26F3A4();
  v11 = v10;
  v12 = sub_22C26F3C4();
  v14 = v13;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v9;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v14;
  sub_22C259290(&qword_27D90FC88, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
  v15 = sub_22C270744();
  sub_22BE1AE58();
  return v15;
}

uint64_t sub_22C202C68()
{
  v2 = sub_22C26F4B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoDialogType(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  TranscriptProtoDialogType.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FD60, type metadata accessor for TranscriptProtoDialogType);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C202E20()
{
  v1 = type metadata accessor for AST.FlatExpr(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoASTFlatExpr(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoASTFlatExpr.init(handwritten:)();
  sub_22C259290(&qword_27D9101C0, type metadata accessor for TranscriptProtoASTFlatExpr);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C202F90()
{
  v1 = type metadata accessor for AST.Update(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  MEMORY[0x28223BE20](updated);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoASTFlatExprUpdateVariant.init(handwritten:)();
  sub_22C259290(&qword_27D90EE10, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C203100(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TranscriptProtoASTPickType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 & 1;
  if (v7)
  {
    a1 = 1;
  }

  *v6 = 0;
  v6[8] = -1;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = a1;
  v6[8] = v7;
  sub_22C259290(&qword_27D9100F0, type metadata accessor for TranscriptProtoASTPickType);
  v8 = sub_22C270744();
  sub_22BE1AE58();
  return v8;
}

uint64_t sub_22C203230()
{
  v1 = type metadata accessor for AST.FlatValue(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v4);
  sub_22BE1AA68(v0, v3);
  TranscriptProtoASTFlatValue.init(handwritten:)();
  sub_22C259290(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  v5 = sub_22C270744();
  sub_22BE1AE58();
  return v5;
}

uint64_t sub_22C2033A0()
{
  v2 = type metadata accessor for Action.ParameterValue(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoActionParameterValue.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90E660, type metadata accessor for TranscriptProtoActionParameterValue);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C203520()
{
  v1 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v7 = MEMORY[0x277D84F90];
  *v3 = MEMORY[0x277D84F90];
  v3[1] = v7;

  sub_22C1C4730(v8, v9, v10, v11, v12, v13, v14, v15, v27, v28);
  if (v0)
  {
    sub_22BE1AE58();
  }

  else
  {
    *v3 = v16;

    sub_22C1C4730(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28);
    v3[1] = v25;
    sub_22BE3B620(v3, v6);
    sub_22C259290(&qword_27D90FF38, type metadata accessor for TranscriptProtoContextRetrieved);
    v1 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v1;
}

uint64_t sub_22C2036DC()
{
  v2 = type metadata accessor for RetrievedContextStatement(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoRetrievedContextStatement.init(handwritten:)(v4);
  if (!v1)
  {
    sub_22C259290(&qword_27D90ED10, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C20385C()
{
  v2 = type metadata accessor for DynamicEnumerationEntityStatement(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoDynamicEnumerationEntityStatement.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F128, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C2039DC()
{
  v2 = type metadata accessor for SpanMatchedEntityStatement(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoSpanMatchedEntityStatement.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F058, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}