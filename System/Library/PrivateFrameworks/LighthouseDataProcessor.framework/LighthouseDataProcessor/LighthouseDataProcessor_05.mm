uint64_t sub_20E0D1D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684E0, &qword_20E33B518);
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
  sub_20E0486F4(a1, v12, &qword_27C863BA0, &unk_20E325F20);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863BA0, &unk_20E325F20);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_20E04875C(v24, &qword_27C8684E0, &qword_20E33B518);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoToolDisambiguation);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoToolDisambiguation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8665F8, type metadata accessor for TranscriptProtoToolDisambiguation, &protocol conformance descriptor for TranscriptProtoToolDisambiguation);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8684E0, &qword_20E33B518);
  }

  sub_20E0486F4(v24, v32, &qword_27C8684E0, &qword_20E33B518);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8684E0, &qword_20E33B518);
    return sub_20E04875C(v32, &qword_27C8684E0, &qword_20E33B518);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoToolDisambiguation);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8684E0, &qword_20E33B518);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoToolDisambiguation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0D234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionFailure(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684E8, &qword_20E33B520);
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
  sub_20E0486F4(a1, v12, &qword_27C863BA0, &unk_20E325F20);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863BA0, &unk_20E325F20);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E04875C(v24, &qword_27C8684E8, &qword_20E33B520);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoActionFailure);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoActionFailure);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866858, type metadata accessor for TranscriptProtoActionFailure, &protocol conformance descriptor for TranscriptProtoActionFailure);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8684E8, &qword_20E33B520);
  }

  sub_20E0486F4(v24, v32, &qword_27C8684E8, &qword_20E33B520);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8684E8, &qword_20E33B520);
    return sub_20E04875C(v32, &qword_27C8684E8, &qword_20E33B520);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoActionFailure);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8684E8, &qword_20E33B520);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoActionFailure);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0D2908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684F0, &qword_20E33B528);
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
  sub_20E0486F4(a1, v12, &qword_27C863BA0, &unk_20E325F20);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863BA0, &unk_20E325F20);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_20E04875C(v24, &qword_27C8684F0, &qword_20E33B528);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoValueDisambiguation);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoValueDisambiguation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866968, type metadata accessor for TranscriptProtoValueDisambiguation, &protocol conformance descriptor for TranscriptProtoValueDisambiguation);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8684F0, &qword_20E33B528);
  }

  sub_20E0486F4(v24, v32, &qword_27C8684F0, &qword_20E33B528);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8684F0, &qword_20E33B528);
    return sub_20E04875C(v32, &qword_27C8684F0, &qword_20E33B528);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoValueDisambiguation);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8684F0, &qword_20E33B528);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoValueDisambiguation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0D2EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSnippetStream(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684F8, &qword_20E33B530);
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
  sub_20E0486F4(a1, v12, &qword_27C863BA0, &unk_20E325F20);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863BA0, &unk_20E325F20);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_20E04875C(v24, &qword_27C8684F8, &qword_20E33B530);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSnippetStream);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSnippetStream);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8668C0, type metadata accessor for TranscriptProtoSnippetStream, &protocol conformance descriptor for TranscriptProtoSnippetStream);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8684F8, &qword_20E33B530);
  }

  sub_20E0486F4(v24, v32, &qword_27C8684F8, &qword_20E33B530);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8684F8, &qword_20E33B530);
    return sub_20E04875C(v32, &qword_27C8684F8, &qword_20E33B530);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSnippetStream);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8684F8, &qword_20E33B530);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSnippetStream);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoStatementOutcome.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C863BA0, &unk_20E325F20);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        sub_20E0D4BC4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_31;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        sub_20E0D4DFC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_20E0D5034(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_20E0D451C(v3, a1, a2, a3);
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 7)
      {
        sub_20E0D4754(v3, a1, a2, a3);
        goto LABEL_28;
      }

      sub_20E0D498C(v3, a1, a2, a3);
      if (!v4)
      {
LABEL_31:
        sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
LABEL_2:
        type metadata accessor for TranscriptProtoStatementOutcome(0);
        return sub_20E3221A0();
      }
    }

    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E0D3E74(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E0D40AC(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0D42E4(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E0D3A04(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0D3C3C(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_20E0D37D0(v3, a1, a2, a3);
  }

LABEL_28:
  result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  if (!v4)
  {
    goto LABEL_2;
  }

  return result;
}

uint64_t sub_20E0D37D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionSuccess(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BA0, &unk_20E325F20);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoActionSuccess);
    sub_20E195B0C(qword_280E0CBB8, type metadata accessor for TranscriptProtoActionSuccess, &protocol conformance descriptor for TranscriptProtoActionSuccess);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionSuccess);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D3A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BA0, &unk_20E325F20);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoActionConfirmation);
    sub_20E195B0C(&qword_27C866588, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionConfirmation);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D3C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BA0, &unk_20E325F20);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoParameterNeedsValue);
    sub_20E195B0C(&qword_27C866988, type metadata accessor for TranscriptProtoParameterNeedsValue, &protocol conformance descriptor for TranscriptProtoParameterNeedsValue);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoParameterNeedsValue);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D3E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BA0, &unk_20E325F20);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoParameterConfirmation);
    sub_20E195B0C(&qword_27C866938, type metadata accessor for TranscriptProtoParameterConfirmation, &protocol conformance descriptor for TranscriptProtoParameterConfirmation);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoParameterConfirmation);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D40AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BA0, &unk_20E325F20);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoParameterDisambiguation);
    sub_20E195B0C(&qword_27C866950, type metadata accessor for TranscriptProtoParameterDisambiguation, &protocol conformance descriptor for TranscriptProtoParameterDisambiguation);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoParameterDisambiguation);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D42E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BA0, &unk_20E325F20);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoParameterNotAllowed);
    sub_20E195B0C(&qword_27C8669D0, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoParameterNotAllowed);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BA0, &unk_20E325F20);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    sub_20E195B0C(&qword_27C8669F8, type metadata accessor for TranscriptProtoParameterCandidatesNotFound, &protocol conformance descriptor for TranscriptProtoParameterCandidatesNotFound);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D4754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionRequirement(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BA0, &unk_20E325F20);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoActionRequirement);
    sub_20E195B0C(&qword_27C866798, type metadata accessor for TranscriptProtoActionRequirement, &protocol conformance descriptor for TranscriptProtoActionRequirement);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionRequirement);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D498C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BA0, &unk_20E325F20);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoToolDisambiguation);
    sub_20E195B0C(&qword_27C8665F8, type metadata accessor for TranscriptProtoToolDisambiguation, &protocol conformance descriptor for TranscriptProtoToolDisambiguation);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoToolDisambiguation);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D4BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionFailure(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BA0, &unk_20E325F20);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoActionFailure);
    sub_20E195B0C(&qword_27C866858, type metadata accessor for TranscriptProtoActionFailure, &protocol conformance descriptor for TranscriptProtoActionFailure);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionFailure);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D4DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BA0, &unk_20E325F20);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoValueDisambiguation);
    sub_20E195B0C(&qword_27C866968, type metadata accessor for TranscriptProtoValueDisambiguation, &protocol conformance descriptor for TranscriptProtoValueDisambiguation);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoValueDisambiguation);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D5034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSnippetStream(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BA0, &unk_20E325F20);
  v11 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSnippetStream);
    sub_20E195B0C(&qword_27C8668C0, type metadata accessor for TranscriptProtoSnippetStream, &protocol conformance descriptor for TranscriptProtoSnippetStream);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSnippetStream);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D531C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BE0, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D53BC(uint64_t a1)
{
  sub_20E195B0C(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);

  return sub_20E322470();
}

uint64_t sub_20E0D5428(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);

  return sub_20E322480();
}

uint64_t sub_20E0D54C4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864A80);
  __swift_project_value_buffer(v0, qword_27C864A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "context";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoParameterNeedsValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_20E0D5864(a1, v5, a2, a3);
        break;
      case 3:
        sub_20E0D57B0(a1, v5, a2, a3);
        break;
      case 1:
        sub_20E3223E0();
        break;
    }
  }

  return result;
}

uint64_t sub_20E0D57B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E195B0C(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t sub_20E0D5864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
  sub_20E195B0C(&qword_27C8669A0, type metadata accessor for TranscriptProtoParameterNeedsValueContext, &protocol conformance descriptor for TranscriptProtoParameterNeedsValueContext);
  return sub_20E322430();
}

uint64_t TranscriptProtoParameterNeedsValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E0D59DC(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E0D5BF8(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoParameterNeedsValue(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0D59DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863C48, &qword_20E323F30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E195B54(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E195B0C(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E0D5BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868488, &unk_20E33C310);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C868488, &unk_20E33C310);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868488, &unk_20E33C310);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
  sub_20E195B0C(&qword_27C8669A0, type metadata accessor for TranscriptProtoParameterNeedsValueContext, &protocol conformance descriptor for TranscriptProtoParameterNeedsValueContext);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
}

uint64_t sub_20E0D5ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BD8, type metadata accessor for TranscriptProtoParameterNeedsValue, &protocol conformance descriptor for TranscriptProtoParameterNeedsValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D5F78(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866988, type metadata accessor for TranscriptProtoParameterNeedsValue, &protocol conformance descriptor for TranscriptProtoParameterNeedsValue);

  return sub_20E322470();
}

uint64_t sub_20E0D5FE4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866988, type metadata accessor for TranscriptProtoParameterNeedsValue, &protocol conformance descriptor for TranscriptProtoParameterNeedsValue);

  return sub_20E322480();
}

uint64_t sub_20E0D60EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868470, &qword_20E33B4B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868480, &qword_20E33B4C0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_20E0486F4(v45, v11, &qword_27C868470, &qword_20E33B4B0);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_20E04875C(v11, &qword_27C868470, &qword_20E33B4B0);
    v26 = v40;
  }

  else
  {
    sub_20E195B54(v11, v18, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
    sub_20E195B54(v18, v16, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
    sub_20E04875C(v23, &qword_27C868480, &qword_20E33B4C0);
    v27 = v38;
    sub_20E195B54(v16, v38, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
    sub_20E195B54(v27, v23, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_20E195B0C(&qword_27C8669B8, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch, &protocol conformance descriptor for TranscriptProtoParameterNeedsValuePhotosSearch);
  v28 = v41;
  sub_20E322430();
  v29 = v39;
  if (v28)
  {
    return sub_20E04875C(v23, &qword_27C868480, &qword_20E33B4C0);
  }

  sub_20E0486F4(v23, v39, &qword_27C868480, &qword_20E33B4C0);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_20E04875C(v23, &qword_27C868480, &qword_20E33B4C0);
    return sub_20E04875C(v29, &qword_27C868480, &qword_20E33B4C0);
  }

  else
  {
    v31 = v36;
    sub_20E195B54(v29, v36, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
    if (v25 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v23, &qword_27C868480, &qword_20E33B4C0);
    v32 = v45;
    sub_20E04875C(v45, &qword_27C868470, &qword_20E33B4B0);
    sub_20E195B54(v31, v32, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_20E0D6678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868470, &qword_20E33B4B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C868470, &qword_20E33B4B0);
  v11 = type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868470, &qword_20E33B4B0);
  }

  sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  sub_20E195B0C(&qword_27C8669B8, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch, &protocol conformance descriptor for TranscriptProtoParameterNeedsValuePhotosSearch);
  sub_20E322580();
  return sub_20E195C24(v10, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
}

uint64_t sub_20E0D6928(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BD0, type metadata accessor for TranscriptProtoParameterNeedsValueContext, &protocol conformance descriptor for TranscriptProtoParameterNeedsValueContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D69C8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8669A0, type metadata accessor for TranscriptProtoParameterNeedsValueContext, &protocol conformance descriptor for TranscriptProtoParameterNeedsValueContext);

  return sub_20E322470();
}

uint64_t sub_20E0D6A34(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8669A0, type metadata accessor for TranscriptProtoParameterNeedsValueContext, &protocol conformance descriptor for TranscriptProtoParameterNeedsValueContext);

  return sub_20E322480();
}

uint64_t sub_20E0D6BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BC8, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch, &protocol conformance descriptor for TranscriptProtoParameterNeedsValuePhotosSearch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D6C70(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8669B8, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch, &protocol conformance descriptor for TranscriptProtoParameterNeedsValuePhotosSearch);

  return sub_20E322470();
}

uint64_t sub_20E0D6CDC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8669B8, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch, &protocol conformance descriptor for TranscriptProtoParameterNeedsValuePhotosSearch);

  return sub_20E322480();
}

uint64_t sub_20E0D6D74()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864AC8);
  __swift_project_value_buffer(v0, qword_27C864AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "reason";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoParameterNotAllowed.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E18478C();
          sub_20E322310();
          break;
        case 2:
          sub_20E0D708C(a1, v5, a2, a3);
          break;
        case 1:
          sub_20E3223E0();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0D708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t TranscriptProtoParameterNotAllowed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E0D7234(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16))
      {
        sub_20E18478C();
        sub_20E3224D0();
      }

      type metadata accessor for TranscriptProtoParameterNotAllowed(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0D7234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E0D74B4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3 + v4, 1, 1, v5);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_20E0D758C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BC0, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D762C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8669D0, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);

  return sub_20E322470();
}

uint64_t sub_20E0D7698(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8669D0, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);

  return sub_20E322480();
}

uint64_t sub_20E0D7718()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864AE0);
  __swift_project_value_buffer(v0, qword_27C864AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "missingRequiredPhoneNumber";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "missingRequiredEmailAddress";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0D7990()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864AF8);
  __swift_project_value_buffer(v0, qword_27C864AF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0D7BA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_20E3222B0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0D7C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E0D7D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v12 = v5[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (result = sub_20E322540(), !v6))
  {
    result = a4(v5, a1, a2, a3);
    if (!v6)
    {
      a5(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0D7E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E0D80CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BB8, type metadata accessor for TranscriptProtoParameterCandidatesNotFound, &protocol conformance descriptor for TranscriptProtoParameterCandidatesNotFound);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D816C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8669F8, type metadata accessor for TranscriptProtoParameterCandidatesNotFound, &protocol conformance descriptor for TranscriptProtoParameterCandidatesNotFound);

  return sub_20E322470();
}

uint64_t sub_20E0D81D8(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8669F8, type metadata accessor for TranscriptProtoParameterCandidatesNotFound, &protocol conformance descriptor for TranscriptProtoParameterCandidatesNotFound);

  return sub_20E322480();
}

uint64_t sub_20E0D8374(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BB0, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D8414(uint64_t a1)
{
  sub_20E195B0C(qword_280E0C940, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);

  return sub_20E322470();
}

uint64_t sub_20E0D8480(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(qword_280E0C940, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);

  return sub_20E322480();
}

uint64_t TranscriptProtoSpanID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_20E322560(), !v4))
  {
    type metadata accessor for TranscriptProtoSpanID(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t static TranscriptProtoSpanID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoSpanID(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0D86FC@<X0>(void *a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E0D8778(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BA8, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D8818(uint64_t a1)
{
  sub_20E195B0C(qword_280E0FDC8, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);

  return sub_20E322470();
}

uint64_t sub_20E0D8884(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(qword_280E0FDC8, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);

  return sub_20E322480();
}

uint64_t sub_20E0D8900(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0D89C8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864B40);
  __swift_project_value_buffer(v0, qword_27C864B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v6 = "prompt";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 11;
  *v15 = "planSource";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 8)
      {
        if (result == 3 || result == 4)
        {
          sub_20E3223E0();
        }
      }

      else
      {
        switch(result)
        {
          case 9:
            type metadata accessor for TranscriptProtoProgramStatement(0);
            sub_20E195B0C(&qword_27C865C80, type metadata accessor for TranscriptProtoProgramStatement, &protocol conformance descriptor for TranscriptProtoProgramStatement);
            sub_20E322420();
            break;
          case 10:
            sub_20E3223D0();
            break;
          case 11:
            sub_20E1959FC();
            sub_20E322300();
            break;
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t TranscriptProtoPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    result = v3[2];
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_20E322540(), !v4))
    {
      if (*(v3[4] + 16))
      {
        type metadata accessor for TranscriptProtoProgramStatement(0);
        sub_20E195B0C(&qword_27C865C80, type metadata accessor for TranscriptProtoProgramStatement, &protocol conformance descriptor for TranscriptProtoProgramStatement);
        result = sub_20E322570();
        if (v4)
        {
          return result;
        }

        if (!v3[6])
        {
          goto LABEL_13;
        }
      }

      else if (!v3[6])
      {
LABEL_13:
        if (!v4)
        {
          sub_20E0D8F90(v3, a1, a2, a3);
          type metadata accessor for TranscriptProtoPlan(0);
          return sub_20E3221A0();
        }

        return result;
      }

      result = sub_20E322540();
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_20E0D8F90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 56) != 6)
  {
    sub_20E1959FC();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E0D9054@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 6;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E0D90F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BA0, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D9198(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866A20, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);

  return sub_20E322470();
}

uint64_t sub_20E0D9204(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866A20, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);

  return sub_20E322480();
}

uint64_t sub_20E0D930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868450, &unk_20E33C320);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868460, &qword_20E33B4A8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_20E0486F4(v45, v11, &qword_27C868450, &unk_20E33C320);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_20E04875C(v11, &qword_27C868450, &unk_20E33C320);
    v26 = v40;
  }

  else
  {
    sub_20E195B54(v11, v18, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
    sub_20E195B54(v18, v16, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
    sub_20E04875C(v23, &qword_27C868460, &qword_20E33B4A8);
    v27 = v38;
    sub_20E195B54(v16, v38, type metadata accessor for TranscriptProtoPlanGenerationError);
    sub_20E195B54(v27, v23, type metadata accessor for TranscriptProtoPlanGenerationError);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_20E195B0C(&qword_27C866A50, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);
  v28 = v41;
  sub_20E322430();
  v29 = v39;
  if (v28)
  {
    return sub_20E04875C(v23, &qword_27C868460, &qword_20E33B4A8);
  }

  sub_20E0486F4(v23, v39, &qword_27C868460, &qword_20E33B4A8);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_20E04875C(v23, &qword_27C868460, &qword_20E33B4A8);
    return sub_20E04875C(v29, &qword_27C868460, &qword_20E33B4A8);
  }

  else
  {
    v31 = v36;
    sub_20E195B54(v29, v36, type metadata accessor for TranscriptProtoPlanGenerationError);
    if (v25 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v23, &qword_27C868460, &qword_20E33B4A8);
    v32 = v45;
    sub_20E04875C(v45, &qword_27C868450, &unk_20E33C320);
    sub_20E195B54(v31, v32, type metadata accessor for TranscriptProtoPlanGenerationError);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_20E0D9898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868450, &unk_20E33C320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C868450, &unk_20E33C320);
  v11 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868450, &unk_20E33C320);
  }

  sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_20E195B0C(&qword_27C866A50, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);
  sub_20E322580();
  return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPlanGenerationError);
}

uint64_t sub_20E0D9B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B98, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D9BE8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866A38, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);

  return sub_20E322470();
}

uint64_t sub_20E0D9C54(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866A38, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);

  return sub_20E322480();
}

uint64_t sub_20E0D9D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868430, &unk_20E33C330);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868440, &qword_20E33B490);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_20E0486F4(v45, v11, &qword_27C868430, &unk_20E33C330);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_20E04875C(v11, &qword_27C868430, &unk_20E33C330);
    v26 = v40;
  }

  else
  {
    sub_20E195B54(v11, v18, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
    sub_20E195B54(v18, v16, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
    sub_20E04875C(v23, &qword_27C868440, &qword_20E33B490);
    v27 = v38;
    sub_20E195B54(v16, v38, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    sub_20E195B54(v27, v23, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_20E195B0C(&qword_27C866A68, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);
  v28 = v41;
  sub_20E322430();
  v29 = v39;
  if (v28)
  {
    return sub_20E04875C(v23, &qword_27C868440, &qword_20E33B490);
  }

  sub_20E0486F4(v23, v39, &qword_27C868440, &qword_20E33B490);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_20E04875C(v23, &qword_27C868440, &qword_20E33B490);
    return sub_20E04875C(v29, &qword_27C868440, &qword_20E33B490);
  }

  else
  {
    v31 = v36;
    sub_20E195B54(v29, v36, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    if (v25 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v23, &qword_27C868440, &qword_20E33B490);
    v32 = v45;
    sub_20E04875C(v45, &qword_27C868430, &unk_20E33C330);
    sub_20E195B54(v31, v32, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_20E0DA2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868430, &unk_20E33C330);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C868430, &unk_20E33C330);
  v11 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868430, &unk_20E33C330);
  }

  sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_20E195B0C(&qword_27C866A68, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);
  sub_20E322580();
  return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
}

uint64_t sub_20E0DA598(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B90, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DA638(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866A50, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);

  return sub_20E322470();
}

uint64_t sub_20E0DA6A4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866A50, type metadata accessor for TranscriptProtoPlanGenerationError, &protocol conformance descriptor for TranscriptProtoPlanGenerationError);

  return sub_20E322480();
}

uint64_t sub_20E0DA740()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864B88);
  __swift_project_value_buffer(v0, qword_27C864B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rawModelOutput";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prompt";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "error";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 4)
    {
      sub_20E0DAA18(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t sub_20E0DAA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  return sub_20E322430();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_20E322540(), !v4))
    {
      result = sub_20E0DABA8(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E0DABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C868418, &unk_20E33C340);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoIntelligenceFlowError);
}

uint64_t sub_20E0DAE10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0DAEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B88, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DAF84(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866A68, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);

  return sub_20E322470();
}

uint64_t sub_20E0DAFF0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866A68, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError, &protocol conformance descriptor for TranscriptProtoPlanGenerationModelOutputError);

  return sub_20E322480();
}

uint64_t TranscriptProtoQueryResults.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for TranscriptProtoCandidate(0);
        sub_20E195B0C(&qword_27C865CA8, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t TranscriptProtoQueryResults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoCandidate(0), sub_20E195B0C(&qword_27C865CA8, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate), result = sub_20E322570(), !v4))
  {
    type metadata accessor for TranscriptProtoQueryResults(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t static TranscriptProtoQueryResults.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_20E1534D8(*a1, *a2, type metadata accessor for TranscriptProtoCandidate, type metadata accessor for TranscriptProtoCandidate, _s23LighthouseDataProcessor24TranscriptProtoCandidateV2eeoiySbAC_ACtFZ_0, type metadata accessor for TranscriptProtoCandidate) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoQueryResults(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0DB420(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B80, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DB4C0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865CE0, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults);

  return sub_20E322470();
}

uint64_t sub_20E0DB52C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865CE0, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults);

  return sub_20E322480();
}

uint64_t sub_20E0DB5FC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *, char *), uint64_t (*a8)(void))
{
  if ((sub_20E1534D8(*a1, *a2, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0DB6D0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864BB8);
  __swift_project_value_buffer(v0, qword_27C864BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoQueryStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result == 5)
      {
        sub_20E0DBB8C(a1, v5, a2, a3);
      }

      else if (result == 6)
      {
        sub_20E3222F0();
      }
    }

    else if (result == 2)
    {
      sub_20E0DBA24(a1, v5, a2, a3);
    }

    else if (result == 4)
    {
      sub_20E0DBAD8(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0DBA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryStep(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0DBAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryStep(0);
  type metadata accessor for TranscriptProtoActionParameterContext(0);
  sub_20E195B0C(&qword_27C866728, type metadata accessor for TranscriptProtoActionParameterContext, &protocol conformance descriptor for TranscriptProtoActionParameterContext);
  return sub_20E322430();
}

uint64_t sub_20E0DBB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryStep(0);
  type metadata accessor for TranscriptProtoQueryPayload(0);
  sub_20E195B0C(&qword_27C866AA8, type metadata accessor for TranscriptProtoQueryPayload, &protocol conformance descriptor for TranscriptProtoQueryPayload);
  return sub_20E322430();
}

uint64_t TranscriptProtoQueryStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0DBD14(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E0DBF30(v3, a1, a2, a3);
    sub_20E0DC14C(v3, a1, a2, a3);
    if (*v3 == 1)
    {
      sub_20E3224C0();
    }

    type metadata accessor for TranscriptProtoQueryStep(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0DBD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  sub_20E0486F4(a1 + *(Step + 20), v7, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0DBF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BC0, &unk_20E323E90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  sub_20E0486F4(a1 + *(Step + 24), v7, &qword_27C863BC0, &unk_20E323E90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BC0, &unk_20E323E90);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoActionParameterContext);
  sub_20E195B0C(&qword_27C866728, type metadata accessor for TranscriptProtoActionParameterContext, &protocol conformance descriptor for TranscriptProtoActionParameterContext);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionParameterContext);
}

uint64_t sub_20E0DC14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB0, &unk_20E33C350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  v9 = *(Payload - 8);
  MEMORY[0x28223BE20](Payload);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  sub_20E0486F4(a1 + *(Step + 28), v7, &qword_27C863BB0, &unk_20E33C350);
  if ((*(v9 + 48))(v7, 1, Payload) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BB0, &unk_20E33C350);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoQueryPayload);
  sub_20E195B0C(&qword_27C866AA8, type metadata accessor for TranscriptProtoQueryPayload, &protocol conformance descriptor for TranscriptProtoQueryPayload);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoQueryPayload);
}

uint64_t sub_20E0DC3F4@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, _BYTE *a5@<X8>)
{
  v9 = a1[5];
  v10 = a2(0);
  (*(*(v10 - 8) + 56))(&a5[v9], 1, 1, v10);
  v11 = a1[6];
  v12 = a3(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = a1[7];
  v14 = a4(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = 0;
  return result;
}

uint64_t sub_20E0DC564(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B78, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DC604(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866A90, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);

  return sub_20E322470();
}

uint64_t sub_20E0DC670(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866A90, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);

  return sub_20E322480();
}

uint64_t sub_20E0DC70C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864BD0);
  __swift_project_value_buffer(v0, qword_27C864BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "searchTool";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t sub_20E0DC9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v14 = *(PayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](PayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683E8, &qword_20E33B448);
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
  sub_20E0486F4(a1, v12, &qword_27C863BB8, &qword_20E323E88);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, PayloadEnum);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863BB8, &qword_20E323E88);
    v29 = v44;
    v30 = PayloadEnum;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v30 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C8683E8, &qword_20E33B448);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866AC0, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8683E8, &qword_20E33B448);
  }

  sub_20E0486F4(v24, v32, &qword_27C8683E8, &qword_20E33B448);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8683E8, &qword_20E33B448);
    return sub_20E04875C(v32, &qword_27C8683E8, &qword_20E33B448);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8683E8, &qword_20E33B448);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BB8, &qword_20E323E88);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0DCF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v14 = *(PayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](PayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683F0, &qword_20E33B450);
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
  sub_20E0486F4(a1, v12, &qword_27C863BB8, &qword_20E323E88);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, PayloadEnum);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863BB8, &qword_20E323E88);
    v29 = v44;
    v30 = PayloadEnum;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v30 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C8683F0, &qword_20E33B450);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoPersonQuery);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoPersonQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8666D0, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8683F0, &qword_20E33B450);
  }

  sub_20E0486F4(v24, v32, &qword_27C8683F0, &qword_20E33B450);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8683F0, &qword_20E33B450);
    return sub_20E04875C(v32, &qword_27C8683F0, &qword_20E33B450);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoPersonQuery);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8683F0, &qword_20E33B450);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BB8, &qword_20E323E88);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPersonQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0DD548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v14 = *(PayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](PayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683F8, &qword_20E33B458);
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
  sub_20E0486F4(a1, v12, &qword_27C863BB8, &qword_20E323E88);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, PayloadEnum);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863BB8, &qword_20E323E88);
    v29 = v44;
    v30 = PayloadEnum;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v30 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C8683F8, &qword_20E33B458);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866AD8, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8683F8, &qword_20E33B458);
  }

  sub_20E0486F4(v24, v32, &qword_27C8683F8, &qword_20E33B458);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8683F8, &qword_20E33B458);
    return sub_20E04875C(v32, &qword_27C8683F8, &qword_20E33B458);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8683F8, &qword_20E33B458);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BB8, &qword_20E323E88);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0DDB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v14 = *(PayloadEnum - 8);
  v15 = MEMORY[0x28223BE20](PayloadEnum);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868400, &qword_20E33B460);
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
  sub_20E0486F4(a1, v12, &qword_27C863BB8, &qword_20E323E88);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, PayloadEnum);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863BB8, &qword_20E323E88);
    v29 = v44;
    v30 = PayloadEnum;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v30 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C868400, &qword_20E33B460);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866AF0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868400, &qword_20E33B460);
  }

  sub_20E0486F4(v24, v32, &qword_27C868400, &qword_20E33B460);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868400, &qword_20E33B460);
    return sub_20E04875C(v32, &qword_27C868400, &qword_20E33B460);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868400, &qword_20E33B460);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BB8, &qword_20E323E88);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoQueryPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C863BB8, &qword_20E323E88);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v10, 1, PayloadEnum) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E0DE700(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0DE938(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E0DE4C8(v3, a1, a2, a3);
  }

  else
  {
    sub_20E0DE294(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoQueryPayload(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0DE294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BB8, &qword_20E323E88);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v7, 1, PayloadEnum) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BB8, &qword_20E323E88);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    sub_20E195B0C(&qword_27C866AC0, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0DE4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BB8, &qword_20E323E88);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v7, 1, PayloadEnum) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BB8, &qword_20E323E88);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoPersonQuery);
    sub_20E195B0C(&qword_27C8666D0, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPersonQuery);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0DE700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BB8, &qword_20E323E88);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v7, 1, PayloadEnum) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BB8, &qword_20E323E88);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    sub_20E195B0C(&qword_27C866AD8, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0DE938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863BB8, &qword_20E323E88);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v7, 1, PayloadEnum) == 1)
  {
    sub_20E04875C(v7, &qword_27C863BB8, &qword_20E323E88);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    sub_20E195B0C(&qword_27C866AF0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0DEC20(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B70, type metadata accessor for TranscriptProtoQueryPayload, &protocol conformance descriptor for TranscriptProtoQueryPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DECC0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866AA8, type metadata accessor for TranscriptProtoQueryPayload, &protocol conformance descriptor for TranscriptProtoQueryPayload);

  return sub_20E322470();
}

uint64_t sub_20E0DED2C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866AA8, type metadata accessor for TranscriptProtoQueryPayload, &protocol conformance descriptor for TranscriptProtoQueryPayload);

  return sub_20E322480();
}

uint64_t sub_20E0DEDAC()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E35DBD0);
  qword_27C864BE8 = 0xD000000000000017;
  unk_27C864BF0 = 0x800000020E35B970;
  return result;
}

uint64_t TranscriptProtoQueryPayload.SearchToolQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_20E0DEEFC(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0DEEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20E322170();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_20E195B0C(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322290();
}

uint64_t TranscriptProtoQueryPayload.SearchToolQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_20E322170(), type metadata accessor for ToolKitProtoTypedValue(0), sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), sub_20E195B0C(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_20E322490(), !v5))
  {
    type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0DF214(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B68, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DF2B4(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866AC0, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);

  return sub_20E322470();
}

uint64_t sub_20E0DF320(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866AC0, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);

  return sub_20E322480();
}

uint64_t sub_20E0DF3B4()
{
  result = MEMORY[0x20F32BF40](0x51676E697274532ELL, 0xEC00000079726575);
  qword_27C864C10 = 0xD000000000000017;
  *algn_27C864C18 = 0x800000020E35B970;
  return result;
}

uint64_t sub_20E0DF450()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864C20);
  __swift_project_value_buffer(v0, qword_27C864C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typeId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0DF668(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_20E3222B0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t sub_20E0DF708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E195B0C(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E0DF7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = v5[1];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_20E322540();
    }

    a5(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0DF8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B60, &qword_20E323F50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E195B54(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E195B0C(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E0DFB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B60, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DFC38(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866AD8, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);

  return sub_20E322470();
}

uint64_t sub_20E0DFCA4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866AD8, type metadata accessor for TranscriptProtoQueryPayload.StringQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.StringQuery);

  return sub_20E322480();
}

uint64_t sub_20E0DFD24()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E35DBB0);
  qword_27C864C38 = 0xD000000000000017;
  unk_27C864C40 = 0x800000020E35B970;
  return result;
}

uint64_t sub_20E0DFDC0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864C48);
  __swift_project_value_buffer(v0, qword_27C864C48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typeId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ids";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0DFFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E195B0C(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t TranscriptProtoQueryPayload.IdentifierQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0E0140(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_20E322520();
    }

    type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0E0140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B60, &qword_20E323F50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E195B54(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E195B0C(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E0E0420(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B58, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E04C0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866AF0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);

  return sub_20E322470();
}

uint64_t sub_20E0E052C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866AF0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.IdentifierQuery);

  return sub_20E322480();
}

uint64_t sub_20E0E05C8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864C60);
  __swift_project_value_buffer(v0, qword_27C864C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "queryResults";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "originStatementId";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "rawQueryEventId";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoQueryStepResults.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E3223E0();
          break;
        case 2:
          sub_20E0E0920(a1, v5, a2, a3);
          break;
        case 1:
          type metadata accessor for TranscriptProtoQueryResults(0);
          sub_20E195B0C(&qword_27C865CE0, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults);
          sub_20E322420();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0E0920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryStepResults(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoQueryStepResults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoQueryResults(0), sub_20E195B0C(&qword_27C865CE0, type metadata accessor for TranscriptProtoQueryResults, &protocol conformance descriptor for TranscriptProtoQueryResults), result = sub_20E322570(), !v4))
  {
    result = sub_20E0E0B00(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3[2];
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v3[1] & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_20E322540();
      }

      type metadata accessor for TranscriptProtoQueryStepResults(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0E0B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  sub_20E0486F4(a1 + *(StepResults + 24), v7, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0E0D68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = 0;
  *(a2 + 2) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0E0E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B50, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E0EE4(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866B08, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);

  return sub_20E322470();
}

uint64_t sub_20E0E0F50(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866B08, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);

  return sub_20E322480();
}

uint64_t sub_20E0E0FEC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864C78);
  __swift_project_value_buffer(v0, qword_27C864C78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "fullPrint";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoResponseDialog.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_20E3223D0();
      }
    }

    else if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t TranscriptProtoResponseDialog.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v6 = v3[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_20E322540(), !v4))
  {
    if (v3[3])
    {
      result = sub_20E322540();
    }

    if (!v4)
    {
      if (v3[5])
      {
        sub_20E322540();
      }

      if (v3[7])
      {
        sub_20E322540();
      }

      type metadata accessor for TranscriptProtoResponseDialog(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0E1460@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 16) = 0u;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0E14EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B48, type metadata accessor for TranscriptProtoResponseDialog, &protocol conformance descriptor for TranscriptProtoResponseDialog);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E158C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866B20, type metadata accessor for TranscriptProtoResponseDialog, &protocol conformance descriptor for TranscriptProtoResponseDialog);

  return sub_20E322470();
}

uint64_t sub_20E0E15F8(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866B20, type metadata accessor for TranscriptProtoResponseDialog, &protocol conformance descriptor for TranscriptProtoResponseDialog);

  return sub_20E322480();
}

uint64_t sub_20E0E1694()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864C90);
  __swift_project_value_buffer(v0, qword_27C864C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "visualOutput";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "printedDialogOutput";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "spokenDialogOutput";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "responseType";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "resultStatementIds";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "options";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "attribution";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dialogIdentifier";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoResponseOutput.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            sub_20E0E1DBC(a1, v5, a2, a3);
            goto LABEL_5;
          }

          v11 = v4;
          type metadata accessor for TranscriptProtoStatementID(0);
          sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
          goto LABEL_22;
        }

        if (result == 7)
        {
          sub_20E0E1E70(a1, v5, a2, a3);
        }

        else if (result == 8)
        {
          type metadata accessor for TranscriptProtoResponseOutput(0);
          sub_20E3223D0();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_20E0E1D08(a1, v5, a2, a3);
        }

        else
        {
          sub_20E1847E0();
          sub_20E322310();
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = v4;
          type metadata accessor for TranscriptProtoVisualOutput(0);
          sub_20E195B0C(&qword_27C865CF8, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);
LABEL_22:
          v4 = v11;
          sub_20E322420();
          goto LABEL_5;
        }

        if (result == 2)
        {
          sub_20E0E1C54(a1, v5, a2, a3);
        }
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0E1C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseOutput(0);
  type metadata accessor for TranscriptProtoDialogType(0);
  sub_20E195B0C(&qword_27C866BD8, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);
  return sub_20E322430();
}

uint64_t sub_20E0E1D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseOutput(0);
  type metadata accessor for TranscriptProtoDialogType(0);
  sub_20E195B0C(&qword_27C866BD8, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);
  return sub_20E322430();
}

uint64_t sub_20E0E1DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseOutput(0);
  type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  sub_20E195B0C(&qword_27C866B50, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);
  return sub_20E322430();
}

uint64_t sub_20E0E1E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseOutput(0);
  type metadata accessor for TranscriptProtoVisualOutput(0);
  sub_20E195B0C(&qword_27C865CF8, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);
  return sub_20E322430();
}

uint64_t TranscriptProtoResponseOutput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoVisualOutput(0), sub_20E195B0C(&qword_27C865CF8, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput), result = sub_20E322570(), !v4))
  {
    result = sub_20E0E213C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E0E2358(v3, a1, a2, a3);
      if (*(v3 + 8))
      {
        sub_20E1847E0();
        sub_20E3224D0();
      }

      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
        sub_20E322570();
      }

      sub_20E0E2574(v3, a1, a2, a3);
      sub_20E0E2790(v3, a1, a2, a3);
      sub_20E0E29AC(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoResponseOutput(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0E213C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683B8, &qword_20E33B420);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoDialogType(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C8683B8, &qword_20E33B420);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8683B8, &qword_20E33B420);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoDialogType);
  sub_20E195B0C(&qword_27C866BD8, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoDialogType);
}

uint64_t sub_20E0E2358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683B8, &qword_20E33B420);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoDialogType(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_20E0486F4(a1 + *(v12 + 32), v7, &qword_27C8683B8, &qword_20E33B420);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8683B8, &qword_20E33B420);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoDialogType);
  sub_20E195B0C(&qword_27C866BD8, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoDialogType);
}

uint64_t sub_20E0E2574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683A8, &unk_20E33C360);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_20E0486F4(a1 + *(v12 + 36), v7, &qword_27C8683A8, &unk_20E33C360);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8683A8, &unk_20E33C360);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_20E195B0C(&qword_27C866B50, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoVisualOutputOptions);
}

uint64_t sub_20E0E2790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868398, &qword_20E33B408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_20E0486F4(a1 + *(v12 + 40), v7, &qword_27C868398, &qword_20E33B408);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868398, &qword_20E33B408);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoVisualOutput);
  sub_20E195B0C(&qword_27C865CF8, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoVisualOutput);
}

uint64_t sub_20E0E29AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoResponseOutput(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E0E2A70@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v5 = type metadata accessor for TranscriptProtoDialogType(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[8], 1, 1, v5);
  v7 = a1[9];
  v8 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[10];
  v10 = type metadata accessor for TranscriptProtoVisualOutput(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = (a2 + a1[11]);
  *v11 = 0;
  v11[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v13 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  return result;
}

uint64_t sub_20E0E2C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B40, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E2CA8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866B38, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);

  return sub_20E322470();
}

uint64_t sub_20E0E2D14(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866B38, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);

  return sub_20E322480();
}

uint64_t sub_20E0E2EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B38, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E2F50(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866B50, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);

  return sub_20E322470();
}

uint64_t sub_20E0E2FBC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866B50, type metadata accessor for TranscriptProtoVisualOutputOptions, &protocol conformance descriptor for TranscriptProtoVisualOutputOptions);

  return sub_20E322480();
}

uint64_t sub_20E0E3054()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864CC0);
  __swift_project_value_buffer(v0, qword_27C864CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "liveActivity";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoVisualOutput.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_20E0E3F10(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        sub_20E0E44CC(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_20E0E33A4(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E0E3954(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0E33A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868378, &qword_20E33B3E8);
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
  sub_20E0486F4(a1, v12, &qword_27C865D18, &unk_20E33C370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865D18, &unk_20E33C370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoVisualOutputType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoVisualOutputType);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C868378, &qword_20E33B3E8);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866B78, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868378, &qword_20E33B3E8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868378, &qword_20E33B3E8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868378, &qword_20E33B3E8);
    return sub_20E04875C(v32, &qword_27C868378, &qword_20E33B3E8);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868378, &qword_20E33B3E8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865D18, &unk_20E33C370);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0E3954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868380, &qword_20E33B3F0);
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
  sub_20E0486F4(a1, v12, &qword_27C865D18, &unk_20E33C370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865D18, &unk_20E33C370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoVisualOutputType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C868380, &qword_20E33B3F0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoVisualOutputType);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866B90, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868380, &qword_20E33B3F0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868380, &qword_20E33B3F0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868380, &qword_20E33B3F0);
    return sub_20E04875C(v32, &qword_27C868380, &qword_20E33B3F0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868380, &qword_20E33B3F0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865D18, &unk_20E33C370);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0E3F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868388, &qword_20E33B3F8);
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
  sub_20E0486F4(a1, v12, &qword_27C865D18, &unk_20E33C370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865D18, &unk_20E33C370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoVisualOutputType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C868388, &qword_20E33B3F8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoVisualOutputType);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866BA8, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868388, &qword_20E33B3F8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868388, &qword_20E33B3F8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868388, &qword_20E33B3F8);
    return sub_20E04875C(v32, &qword_27C868388, &qword_20E33B3F8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868388, &qword_20E33B3F8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865D18, &unk_20E33C370);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0E44CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868390, &qword_20E33B400);
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
  sub_20E0486F4(a1, v12, &qword_27C865D18, &unk_20E33C370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865D18, &unk_20E33C370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoVisualOutputType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C868390, &qword_20E33B400);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoVisualOutputType);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866BC0, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868390, &qword_20E33B400);
  }

  sub_20E0486F4(v24, v32, &qword_27C868390, &qword_20E33B400);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868390, &qword_20E33B400);
    return sub_20E04875C(v32, &qword_27C868390, &qword_20E33B400);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868390, &qword_20E33B400);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865D18, &unk_20E33C370);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoVisualOutput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C865D18, &unk_20E33C370);
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E0E50C8(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0E5300(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E0E4E90(v3, a1, a2, a3);
  }

  else
  {
    sub_20E0E4C5C(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoVisualOutputType);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoVisualOutput(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0E4C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865D18, &unk_20E33C370);
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865D18, &unk_20E33C370);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    sub_20E195B0C(&qword_27C866B78, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_20E0E4E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865D18, &unk_20E33C370);
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865D18, &unk_20E33C370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    sub_20E195B0C(&qword_27C866B90, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_20E0E50C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865D18, &unk_20E33C370);
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865D18, &unk_20E33C370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    sub_20E195B0C(&qword_27C866BA8, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_20E0E5300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865D18, &unk_20E33C370);
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865D18, &unk_20E33C370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    sub_20E195B0C(&qword_27C866BC0, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_20E0E55E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B30, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E5688(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865CF8, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);

  return sub_20E322470();
}

uint64_t sub_20E0E56F4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865CF8, type metadata accessor for TranscriptProtoVisualOutput, &protocol conformance descriptor for TranscriptProtoVisualOutput);

  return sub_20E322480();
}

uint64_t sub_20E0E5890(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B28, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E5930(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866B78, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);

  return sub_20E322470();
}

uint64_t sub_20E0E599C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866B78, type metadata accessor for TranscriptProtoLiveActivityOutputPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityOutputPayload);

  return sub_20E322480();
}

uint64_t sub_20E0E5B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B20, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E5BD4(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866B90, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);

  return sub_20E322470();
}

uint64_t sub_20E0E5C40(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866B90, type metadata accessor for TranscriptProtoInAppResponseOutputPayload, &protocol conformance descriptor for TranscriptProtoInAppResponseOutputPayload);

  return sub_20E322480();
}

uint64_t sub_20E0E5DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B18, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E5E78(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866BA8, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);

  return sub_20E322470();
}

uint64_t sub_20E0E5EE4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866BA8, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoSystemSnippetOutputPayload);

  return sub_20E322480();
}

uint64_t sub_20E0E5F7C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864D20);
  __swift_project_value_buffer(v0, qword_27C864D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pluginModelData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0E6228(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B10, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E62C8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866BC0, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);

  return sub_20E322470();
}

uint64_t sub_20E0E6334(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866BC0, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetOutputPayload);

  return sub_20E322480();
}

uint64_t sub_20E0E63CC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864D38);
  __swift_project_value_buffer(v0, qword_27C864D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "staticText";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoDialogType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_20E0E7910(v5, a1, a2, a3);
          break;
        case 5:
          sub_20E0E7ECC(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E0E8488(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E0E67E8(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E0E6D98(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E0E7354(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E0E67E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoStaticText(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868340, &qword_20E33B3B0);
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
  sub_20E0486F4(a1, v12, &qword_27C865D48, &qword_20E3263B0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865D48, &qword_20E3263B0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoDialogFormat);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoDialogFormat);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoDialogFormat);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C868340, &qword_20E33B3B0);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoStaticText);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoStaticText);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866BF0, type metadata accessor for TranscriptProtoStaticText, &protocol conformance descriptor for TranscriptProtoStaticText);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868340, &qword_20E33B3B0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868340, &qword_20E33B3B0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868340, &qword_20E33B3B0);
    return sub_20E04875C(v32, &qword_27C868340, &qword_20E33B3B0);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoStaticText);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868340, &qword_20E33B3B0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865D48, &qword_20E3263B0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoStaticText);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0E6D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSonicText(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868348, &qword_20E33B3B8);
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
  sub_20E0486F4(a1, v12, &qword_27C865D48, &qword_20E3263B0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865D48, &qword_20E3263B0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoDialogFormat);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoDialogFormat);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C868348, &qword_20E33B3B8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSonicText);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSonicText);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoDialogFormat);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866C20, type metadata accessor for TranscriptProtoSonicText, &protocol conformance descriptor for TranscriptProtoSonicText);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868348, &qword_20E33B3B8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868348, &qword_20E33B3B8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868348, &qword_20E33B3B8);
    return sub_20E04875C(v32, &qword_27C868348, &qword_20E33B3B8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSonicText);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868348, &qword_20E33B3B8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865D48, &qword_20E3263B0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSonicText);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0E7354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoGeneratedText(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868350, &qword_20E33B3C0);
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
  sub_20E0486F4(a1, v12, &qword_27C865D48, &qword_20E3263B0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865D48, &qword_20E3263B0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoDialogFormat);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoDialogFormat);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C868350, &qword_20E33B3C0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoGeneratedText);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoGeneratedText);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoDialogFormat);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866C38, type metadata accessor for TranscriptProtoGeneratedText, &protocol conformance descriptor for TranscriptProtoGeneratedText);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868350, &qword_20E33B3C0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868350, &qword_20E33B3C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868350, &qword_20E33B3C0);
    return sub_20E04875C(v32, &qword_27C868350, &qword_20E33B3C0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoGeneratedText);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868350, &qword_20E33B3C0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865D48, &qword_20E3263B0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoGeneratedText);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0E7910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoUnableToGenerate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868358, &qword_20E33B3C8);
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
  sub_20E0486F4(a1, v12, &qword_27C865D48, &qword_20E3263B0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865D48, &qword_20E3263B0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoDialogFormat);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoDialogFormat);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C868358, &qword_20E33B3C8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoUnableToGenerate);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoUnableToGenerate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoDialogFormat);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866C50, type metadata accessor for TranscriptProtoUnableToGenerate, &protocol conformance descriptor for TranscriptProtoUnableToGenerate);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868358, &qword_20E33B3C8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868358, &qword_20E33B3C8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868358, &qword_20E33B3C8);
    return sub_20E04875C(v32, &qword_27C868358, &qword_20E33B3C8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoUnableToGenerate);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868358, &qword_20E33B3C8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865D48, &qword_20E3263B0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoUnableToGenerate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0E7ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSuppressed(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868360, &qword_20E33B3D0);
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
  sub_20E0486F4(a1, v12, &qword_27C865D48, &qword_20E3263B0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865D48, &qword_20E3263B0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoDialogFormat);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoDialogFormat);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C868360, &qword_20E33B3D0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSuppressed);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSuppressed);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoDialogFormat);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866C68, type metadata accessor for TranscriptProtoSuppressed, &protocol conformance descriptor for TranscriptProtoSuppressed);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868360, &qword_20E33B3D0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868360, &qword_20E33B3D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868360, &qword_20E33B3D0);
    return sub_20E04875C(v32, &qword_27C868360, &qword_20E33B3D0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSuppressed);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868360, &qword_20E33B3D0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865D48, &qword_20E3263B0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSuppressed);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0E8488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoCATDialog(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868368, &qword_20E33B3D8);
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
  sub_20E0486F4(a1, v12, &qword_27C865D48, &qword_20E3263B0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865D48, &qword_20E3263B0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoDialogFormat);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoDialogFormat);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v24, &qword_27C868368, &qword_20E33B3D8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoCATDialog);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoCATDialog);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoDialogFormat);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866C08, type metadata accessor for TranscriptProtoCATDialog, &protocol conformance descriptor for TranscriptProtoCATDialog);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868368, &qword_20E33B3D8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868368, &qword_20E33B3D8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868368, &qword_20E33B3D8);
    return sub_20E04875C(v32, &qword_27C868368, &qword_20E33B3D8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoCATDialog);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868368, &qword_20E33B3D8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865D48, &qword_20E3263B0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoCATDialog);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoDialogType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C865D48, &qword_20E3263B0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E0E9304(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E0E953C(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0E9774(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E0E8E94(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0E90CC(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_20E0E8C60(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoDialogFormat);
  if (!v4)
  {
LABEL_14:
    type metadata accessor for TranscriptProtoDialogType(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0E8C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoStaticText(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865D48, &qword_20E3263B0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865D48, &qword_20E3263B0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoStaticText);
    sub_20E195B0C(&qword_27C866BF0, type metadata accessor for TranscriptProtoStaticText, &protocol conformance descriptor for TranscriptProtoStaticText);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoStaticText);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_20E0E8E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSonicText(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865D48, &qword_20E3263B0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865D48, &qword_20E3263B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSonicText);
    sub_20E195B0C(&qword_27C866C20, type metadata accessor for TranscriptProtoSonicText, &protocol conformance descriptor for TranscriptProtoSonicText);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSonicText);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_20E0E90CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoGeneratedText(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865D48, &qword_20E3263B0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865D48, &qword_20E3263B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoGeneratedText);
    sub_20E195B0C(&qword_27C866C38, type metadata accessor for TranscriptProtoGeneratedText, &protocol conformance descriptor for TranscriptProtoGeneratedText);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoGeneratedText);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_20E0E9304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoUnableToGenerate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865D48, &qword_20E3263B0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865D48, &qword_20E3263B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoUnableToGenerate);
    sub_20E195B0C(&qword_27C866C50, type metadata accessor for TranscriptProtoUnableToGenerate, &protocol conformance descriptor for TranscriptProtoUnableToGenerate);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoUnableToGenerate);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_20E0E953C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSuppressed(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865D48, &qword_20E3263B0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865D48, &qword_20E3263B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSuppressed);
    sub_20E195B0C(&qword_27C866C68, type metadata accessor for TranscriptProtoSuppressed, &protocol conformance descriptor for TranscriptProtoSuppressed);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSuppressed);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_20E0E9774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoCATDialog(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865D48, &qword_20E3263B0);
  v11 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865D48, &qword_20E3263B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoCATDialog);
    sub_20E195B0C(&qword_27C866C08, type metadata accessor for TranscriptProtoCATDialog, &protocol conformance descriptor for TranscriptProtoCATDialog);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoCATDialog);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_20E0E9A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B08, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E9AFC(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866BD8, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);

  return sub_20E322470();
}

uint64_t sub_20E0E9B68(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866BD8, type metadata accessor for TranscriptProtoDialogType, &protocol conformance descriptor for TranscriptProtoDialogType);

  return sub_20E322480();
}

uint64_t sub_20E0E9D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B00, type metadata accessor for TranscriptProtoStaticText, &protocol conformance descriptor for TranscriptProtoStaticText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E9DA4(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866BF0, type metadata accessor for TranscriptProtoStaticText, &protocol conformance descriptor for TranscriptProtoStaticText);

  return sub_20E322470();
}

uint64_t sub_20E0E9E10(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866BF0, type metadata accessor for TranscriptProtoStaticText, &protocol conformance descriptor for TranscriptProtoStaticText);

  return sub_20E322480();
}

uint64_t sub_20E0E9FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AF8, type metadata accessor for TranscriptProtoCATDialog, &protocol conformance descriptor for TranscriptProtoCATDialog);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EA074(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866C08, type metadata accessor for TranscriptProtoCATDialog, &protocol conformance descriptor for TranscriptProtoCATDialog);

  return sub_20E322470();
}

uint64_t sub_20E0EA0E0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866C08, type metadata accessor for TranscriptProtoCATDialog, &protocol conformance descriptor for TranscriptProtoCATDialog);

  return sub_20E322480();
}

uint64_t sub_20E0EA278(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AF0, type metadata accessor for TranscriptProtoSonicText, &protocol conformance descriptor for TranscriptProtoSonicText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EA318(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866C20, type metadata accessor for TranscriptProtoSonicText, &protocol conformance descriptor for TranscriptProtoSonicText);

  return sub_20E322470();
}

uint64_t sub_20E0EA384(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866C20, type metadata accessor for TranscriptProtoSonicText, &protocol conformance descriptor for TranscriptProtoSonicText);

  return sub_20E322480();
}

uint64_t sub_20E0EA51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AE8, type metadata accessor for TranscriptProtoGeneratedText, &protocol conformance descriptor for TranscriptProtoGeneratedText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EA5BC(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866C38, type metadata accessor for TranscriptProtoGeneratedText, &protocol conformance descriptor for TranscriptProtoGeneratedText);

  return sub_20E322470();
}

uint64_t sub_20E0EA628(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866C38, type metadata accessor for TranscriptProtoGeneratedText, &protocol conformance descriptor for TranscriptProtoGeneratedText);

  return sub_20E322480();
}

uint64_t _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0EA7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AE0, type metadata accessor for TranscriptProtoUnableToGenerate, &protocol conformance descriptor for TranscriptProtoUnableToGenerate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EA87C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866C50, type metadata accessor for TranscriptProtoUnableToGenerate, &protocol conformance descriptor for TranscriptProtoUnableToGenerate);

  return sub_20E322470();
}

uint64_t sub_20E0EA8E8(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866C50, type metadata accessor for TranscriptProtoUnableToGenerate, &protocol conformance descriptor for TranscriptProtoUnableToGenerate);

  return sub_20E322480();
}

uint64_t sub_20E0EAA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AD8, type metadata accessor for TranscriptProtoSuppressed, &protocol conformance descriptor for TranscriptProtoSuppressed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EAAB4(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866C68, type metadata accessor for TranscriptProtoSuppressed, &protocol conformance descriptor for TranscriptProtoSuppressed);

  return sub_20E322470();
}

uint64_t sub_20E0EAB20(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866C68, type metadata accessor for TranscriptProtoSuppressed, &protocol conformance descriptor for TranscriptProtoSuppressed);

  return sub_20E322480();
}

uint64_t sub_20E0EABB8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864DE0);
  __swift_project_value_buffer(v0, qword_27C864DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "parameters";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "dialog";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "visual";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "templateId";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "templateLocation";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "useTemplateAsFallback";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dialogPresentationHint";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "attribution";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoResponseManifest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            type metadata accessor for TranscriptProtoResponseManifest(0);
            sub_20E3222E0();
            goto LABEL_5;
          }

LABEL_20:
          type metadata accessor for TranscriptProtoResponseManifest(0);
          sub_20E3223D0();
          goto LABEL_5;
        }

        if (result == 7)
        {
          sub_20E0EB290(a1, v5, a2, a3);
        }

        else if (result == 8)
        {
          sub_20E0EB304(a1, v5, a2, a3);
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          goto LABEL_20;
        }

        sub_20E0EB1DC(a1, v5, a2, a3);
      }

      else if (result == 1)
      {
        type metadata accessor for TranscriptProtoResponseParameter(0);
        sub_20E195B0C(&qword_27C865D88, type metadata accessor for TranscriptProtoResponseParameter, &protocol conformance descriptor for TranscriptProtoResponseParameter);
        sub_20E322420();
      }

      else if (result == 2)
      {
        sub_20E0EB128(a1, v5, a2, a3);
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0EB128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseManifest(0);
  type metadata accessor for TranscriptProtoResponseDialog(0);
  sub_20E195B0C(&qword_27C866B20, type metadata accessor for TranscriptProtoResponseDialog, &protocol conformance descriptor for TranscriptProtoResponseDialog);
  return sub_20E322430();
}

uint64_t sub_20E0EB1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseManifest(0);
  type metadata accessor for TranscriptProtoResponseVisual(0);
  sub_20E195B0C(&qword_27C866CA8, type metadata accessor for TranscriptProtoResponseVisual, &protocol conformance descriptor for TranscriptProtoResponseVisual);
  return sub_20E322430();
}

uint64_t sub_20E0EB290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_20E1959A8();
  return sub_20E322300();
}

uint64_t sub_20E0EB304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseManifest(0);
  type metadata accessor for TranscriptProtoUIType(0);
  sub_20E195B0C(&qword_27C865DA0, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType);
  return sub_20E322430();
}

uint64_t TranscriptProtoResponseManifest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoResponseParameter(0), sub_20E195B0C(&qword_27C865D88, type metadata accessor for TranscriptProtoResponseParameter, &protocol conformance descriptor for TranscriptProtoResponseParameter), result = sub_20E322570(), !v4))
  {
    result = sub_20E0EB574(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E0EB790(v3, a1, a2, a3);
      sub_20E1333E8(v3, a1, a2, a3, type metadata accessor for TranscriptProtoResponseManifest, 4);
      sub_20E13346C(v3, a1, a2, a3, type metadata accessor for TranscriptProtoResponseManifest, 5);
      sub_20E0EB9AC(v3, a1, a2, a3);
      sub_20E0EBA24(v3, a1, a2, a3);
      sub_20E0EBAB4(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoResponseManifest(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0EB574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868320, &unk_20E33C380);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseDialog(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C868320, &unk_20E33C380);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868320, &unk_20E33C380);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoResponseDialog);
  sub_20E195B0C(&qword_27C866B20, type metadata accessor for TranscriptProtoResponseDialog, &protocol conformance descriptor for TranscriptProtoResponseDialog);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoResponseDialog);
}

uint64_t sub_20E0EB790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868310, &qword_20E33B390);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C868310, &qword_20E33B390);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868310, &qword_20E33B390);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoResponseVisual);
  sub_20E195B0C(&qword_27C866CA8, type metadata accessor for TranscriptProtoResponseVisual, &protocol conformance descriptor for TranscriptProtoResponseVisual);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoResponseVisual);
}

uint64_t sub_20E0EB9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_20E3224C0();
  }

  return result;
}

uint64_t sub_20E0EBA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    sub_20E1959A8();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E0EBAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868300, &unk_20E33C390);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoUIType(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_20E0486F4(a1 + *(v12 + 44), v7, &qword_27C868300, &unk_20E33C390);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868300, &unk_20E33C390);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoUIType);
  sub_20E195B0C(&qword_27C865DA0, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoUIType);
}

uint64_t sub_20E0EBD1C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoResponseDialog(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoResponseVisual(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = &a2[a1[7]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[v8];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = a1[10];
  a2[a1[9]] = 2;
  a2[v11] = 2;
  v12 = a1[11];
  v13 = type metadata accessor for TranscriptProtoUIType(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E0EBE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E0EBEE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E0EBF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AD0, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EC024(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866C80, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);

  return sub_20E322470();
}

uint64_t sub_20E0EC090(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866C80, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);

  return sub_20E322480();
}

uint64_t sub_20E0EC12C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864DF8);
  __swift_project_value_buffer(v0, qword_27C864DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20E3262C0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "key";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "value";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "required";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "format";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "profanityFilter";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoResponseParameter.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          goto LABEL_13;
        case 5:
          goto LABEL_15;
        case 6:
LABEL_13:
          sub_20E3222E0();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E3223E0();
          break;
        case 2:
          sub_20E322320();
          break;
        case 3:
LABEL_15:
          sub_20E3223D0();
          break;
      }
    }
  }
}

uint64_t TranscriptProtoResponseParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E0EC648(v3);
    if (!v4)
    {
      if (*(v3 + 40))
      {
        sub_20E322540();
      }

      if (*(v3 + 48) != 2)
      {
        sub_20E3224C0();
      }

      if (*(v3 + 64))
      {
        sub_20E322540();
      }

      if (*(v3 + 72) != 2)
      {
        sub_20E3224C0();
      }

      type metadata accessor for TranscriptProtoResponseParameter(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0EC648(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 16);
    sub_20E05E834(v2, v1);
    sub_20E3224E0();
    return sub_20E047D10(v2, v1);
  }

  return result;
}

uint64_t sub_20E0EC720@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 16) = xmmword_20E323EA0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 2;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 2;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0EC7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AC8, type metadata accessor for TranscriptProtoResponseParameter, &protocol conformance descriptor for TranscriptProtoResponseParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EC860(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865D88, type metadata accessor for TranscriptProtoResponseParameter, &protocol conformance descriptor for TranscriptProtoResponseParameter);

  return sub_20E322470();
}

uint64_t sub_20E0EC8CC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865D88, type metadata accessor for TranscriptProtoResponseParameter, &protocol conformance descriptor for TranscriptProtoResponseParameter);

  return sub_20E322480();
}

uint64_t sub_20E0EC968()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864E10);
  __swift_project_value_buffer(v0, qword_27C864E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "views";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "labels";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 6;
  *v11 = "options";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoResponseVisual.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      switch(result)
      {
        case 6:
          sub_20E0ECCF8(a1, v5, a2, a3);
          goto LABEL_5;
        case 5:
          v11 = v4;
          type metadata accessor for TranscriptProtoUILabel(0);
          sub_20E195B0C(&qword_27C865DA8, type metadata accessor for TranscriptProtoUILabel, &protocol conformance descriptor for TranscriptProtoUILabel);
          break;
        case 4:
          v11 = v4;
          type metadata accessor for TranscriptProtoUIType(0);
          sub_20E195B0C(&qword_27C865DA0, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType);
          break;
        default:
          goto LABEL_5;
      }

      v4 = v11;
      sub_20E322420();
LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0ECCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoResponseVisual(0);
  type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  sub_20E195B0C(&qword_27C866CC0, type metadata accessor for TranscriptProtoResponseVisualOptions, &protocol conformance descriptor for TranscriptProtoResponseVisualOptions);
  return sub_20E322430();
}

uint64_t TranscriptProtoResponseVisual.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoUIType(0), sub_20E195B0C(&qword_27C865DA0, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType), result = sub_20E322570(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for TranscriptProtoUILabel(0), sub_20E195B0C(&qword_27C865DA8, type metadata accessor for TranscriptProtoUILabel, &protocol conformance descriptor for TranscriptProtoUILabel), result = sub_20E322570(), !v4))
    {
      result = sub_20E0ECF20(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for TranscriptProtoResponseVisual(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E0ECF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682E8, &qword_20E33B378);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoResponseVisual(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C8682E8, &qword_20E33B378);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8682E8, &qword_20E33B378);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoResponseVisualOptions);
  sub_20E195B0C(&qword_27C866CC0, type metadata accessor for TranscriptProtoResponseVisualOptions, &protocol conformance descriptor for TranscriptProtoResponseVisualOptions);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoResponseVisualOptions);
}

uint64_t sub_20E0ED188@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v6 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v6;
  return result;
}

uint64_t sub_20E0ED25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AC0, type metadata accessor for TranscriptProtoResponseVisual, &protocol conformance descriptor for TranscriptProtoResponseVisual);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0ED2FC(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866CA8, type metadata accessor for TranscriptProtoResponseVisual, &protocol conformance descriptor for TranscriptProtoResponseVisual);

  return sub_20E322470();
}

uint64_t sub_20E0ED368(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866CA8, type metadata accessor for TranscriptProtoResponseVisual, &protocol conformance descriptor for TranscriptProtoResponseVisual);

  return sub_20E322480();
}

uint64_t sub_20E0ED488(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t (*a3)(void))
{
  if (*a1 != *a2)
  {
    return 0;
  }

  a3(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0ED5B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AB8, type metadata accessor for TranscriptProtoResponseVisualOptions, &protocol conformance descriptor for TranscriptProtoResponseVisualOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0ED654(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866CC0, type metadata accessor for TranscriptProtoResponseVisualOptions, &protocol conformance descriptor for TranscriptProtoResponseVisualOptions);

  return sub_20E322470();
}

uint64_t sub_20E0ED6C0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866CC0, type metadata accessor for TranscriptProtoResponseVisualOptions, &protocol conformance descriptor for TranscriptProtoResponseVisualOptions);

  return sub_20E322480();
}

uint64_t sub_20E0ED73C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0ED7FC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864E40);
  __swift_project_value_buffer(v0, qword_27C864E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "archiveView";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoUIType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        sub_20E0EE6B8(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        sub_20E0EEC74(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_20E0EDB4C(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E0EE0FC(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0EDB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682C8, &qword_20E33B358);
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
  sub_20E0486F4(a1, v12, &qword_27C865DC0, &unk_20E33C3A0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865DC0, &unk_20E33C3A0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoUitype);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoUitype);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoUitype);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C8682C8, &qword_20E33B358);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoArchiveViewPayload);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoArchiveViewPayload);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866D10, type metadata accessor for TranscriptProtoArchiveViewPayload, &protocol conformance descriptor for TranscriptProtoArchiveViewPayload);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8682C8, &qword_20E33B358);
  }

  sub_20E0486F4(v24, v32, &qword_27C8682C8, &qword_20E33B358);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8682C8, &qword_20E33B358);
    return sub_20E04875C(v32, &qword_27C8682C8, &qword_20E33B358);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoArchiveViewPayload);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8682C8, &qword_20E33B358);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865DC0, &unk_20E33C3A0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoArchiveViewPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0EE0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682D0, &qword_20E33B360);
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
  sub_20E0486F4(a1, v12, &qword_27C865DC0, &unk_20E33C3A0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865DC0, &unk_20E33C3A0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoUitype);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoUitype);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C8682D0, &qword_20E33B360);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoLiveActivityPayload);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoLiveActivityPayload);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoUitype);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866D28, type metadata accessor for TranscriptProtoLiveActivityPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityPayload);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8682D0, &qword_20E33B360);
  }

  sub_20E0486F4(v24, v32, &qword_27C8682D0, &qword_20E33B360);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8682D0, &qword_20E33B360);
    return sub_20E04875C(v32, &qword_27C8682D0, &qword_20E33B360);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoLiveActivityPayload);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8682D0, &qword_20E33B360);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865DC0, &unk_20E33C3A0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoLiveActivityPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0EE6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682D8, &qword_20E33B368);
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
  sub_20E0486F4(a1, v12, &qword_27C865DC0, &unk_20E33C3A0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865DC0, &unk_20E33C3A0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoUitype);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoUitype);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C8682D8, &qword_20E33B368);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoUitype);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866D40, type metadata accessor for TranscriptProtoPluginSnippetPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetPayload);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8682D8, &qword_20E33B368);
  }

  sub_20E0486F4(v24, v32, &qword_27C8682D8, &qword_20E33B368);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8682D8, &qword_20E33B368);
    return sub_20E04875C(v32, &qword_27C8682D8, &qword_20E33B368);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoPluginSnippetPayload);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8682D8, &qword_20E33B368);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865DC0, &unk_20E33C3A0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPluginSnippetPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0EEC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoControlPayload(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682E0, &qword_20E33B370);
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
  sub_20E0486F4(a1, v12, &qword_27C865DC0, &unk_20E33C3A0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865DC0, &unk_20E33C3A0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoUitype);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoUitype);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C8682E0, &qword_20E33B370);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoControlPayload);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoControlPayload);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoUitype);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866D58, type metadata accessor for TranscriptProtoControlPayload, &protocol conformance descriptor for TranscriptProtoControlPayload);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8682E0, &qword_20E33B370);
  }

  sub_20E0486F4(v24, v32, &qword_27C8682E0, &qword_20E33B370);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8682E0, &qword_20E33B370);
    return sub_20E04875C(v32, &qword_27C8682E0, &qword_20E33B370);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoControlPayload);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8682E0, &qword_20E33B370);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865DC0, &unk_20E33C3A0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoControlPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoUIType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C865DC0, &unk_20E33C3A0);
  v11 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E0EF870(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0EFAA8(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E0EF638(v3, a1, a2, a3);
  }

  else
  {
    sub_20E0EF404(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoUitype);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoUIType(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0EF404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865DC0, &unk_20E33C3A0);
  v11 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865DC0, &unk_20E33C3A0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoArchiveViewPayload);
    sub_20E195B0C(&qword_27C866D10, type metadata accessor for TranscriptProtoArchiveViewPayload, &protocol conformance descriptor for TranscriptProtoArchiveViewPayload);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoArchiveViewPayload);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoUitype);
  __break(1u);
  return result;
}

uint64_t sub_20E0EF638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865DC0, &unk_20E33C3A0);
  v11 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865DC0, &unk_20E33C3A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoLiveActivityPayload);
    sub_20E195B0C(&qword_27C866D28, type metadata accessor for TranscriptProtoLiveActivityPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityPayload);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoLiveActivityPayload);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoUitype);
  __break(1u);
  return result;
}

uint64_t sub_20E0EF870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865DC0, &unk_20E33C3A0);
  v11 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865DC0, &unk_20E33C3A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoPluginSnippetPayload);
    sub_20E195B0C(&qword_27C866D40, type metadata accessor for TranscriptProtoPluginSnippetPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetPayload);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPluginSnippetPayload);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoUitype);
  __break(1u);
  return result;
}

uint64_t sub_20E0EFAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoControlPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865DC0, &unk_20E33C3A0);
  v11 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865DC0, &unk_20E33C3A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoControlPayload);
    sub_20E195B0C(&qword_27C866D58, type metadata accessor for TranscriptProtoControlPayload, &protocol conformance descriptor for TranscriptProtoControlPayload);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoControlPayload);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoUitype);
  __break(1u);
  return result;
}

uint64_t sub_20E0EFD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AB0, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EFE30(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865DA0, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType);

  return sub_20E322470();
}

uint64_t sub_20E0EFE9C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865DA0, type metadata accessor for TranscriptProtoUIType, &protocol conformance descriptor for TranscriptProtoUIType);

  return sub_20E322480();
}

uint64_t sub_20E0EFFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682A8, &qword_20E33B338);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TranscriptProtoLabel(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682B8, &qword_20E33B348);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_20E0486F4(v45, v11, &qword_27C8682A8, &qword_20E33B338);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_20E04875C(v11, &qword_27C8682A8, &qword_20E33B338);
    v26 = v40;
  }

  else
  {
    sub_20E195B54(v11, v18, type metadata accessor for TranscriptProtoLabel);
    sub_20E195B54(v18, v16, type metadata accessor for TranscriptProtoLabel);
    sub_20E04875C(v23, &qword_27C8682B8, &qword_20E33B348);
    v27 = v38;
    sub_20E195B54(v16, v38, type metadata accessor for TranscriptProtoUIConfirmationLabel);
    sub_20E195B54(v27, v23, type metadata accessor for TranscriptProtoUIConfirmationLabel);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_20E195B0C(&qword_27C866CF8, type metadata accessor for TranscriptProtoUIConfirmationLabel, &protocol conformance descriptor for TranscriptProtoUIConfirmationLabel);
  v28 = v41;
  sub_20E322430();
  v29 = v39;
  if (v28)
  {
    return sub_20E04875C(v23, &qword_27C8682B8, &qword_20E33B348);
  }

  sub_20E0486F4(v23, v39, &qword_27C8682B8, &qword_20E33B348);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_20E04875C(v23, &qword_27C8682B8, &qword_20E33B348);
    return sub_20E04875C(v29, &qword_27C8682B8, &qword_20E33B348);
  }

  else
  {
    v31 = v36;
    sub_20E195B54(v29, v36, type metadata accessor for TranscriptProtoUIConfirmationLabel);
    if (v25 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v23, &qword_27C8682B8, &qword_20E33B348);
    v32 = v45;
    sub_20E04875C(v45, &qword_27C8682A8, &qword_20E33B338);
    sub_20E195B54(v31, v32, type metadata accessor for TranscriptProtoUIConfirmationLabel);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_20E0F0530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682A8, &qword_20E33B338);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8682A8, &qword_20E33B338);
  v11 = type metadata accessor for TranscriptProtoLabel(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8682A8, &qword_20E33B338);
  }

  sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_20E195B0C(&qword_27C866CF8, type metadata accessor for TranscriptProtoUIConfirmationLabel, &protocol conformance descriptor for TranscriptProtoUIConfirmationLabel);
  sub_20E322580();
  return sub_20E195C24(v10, type metadata accessor for TranscriptProtoUIConfirmationLabel);
}

uint64_t sub_20E0F07E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AA8, type metadata accessor for TranscriptProtoUILabel, &protocol conformance descriptor for TranscriptProtoUILabel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F0880(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865DA8, type metadata accessor for TranscriptProtoUILabel, &protocol conformance descriptor for TranscriptProtoUILabel);

  return sub_20E322470();
}

uint64_t sub_20E0F08EC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865DA8, type metadata accessor for TranscriptProtoUILabel, &protocol conformance descriptor for TranscriptProtoUILabel);

  return sub_20E322480();
}

uint64_t sub_20E0F0988()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864E70);
  __swift_project_value_buffer(v0, qword_27C864E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "affirmative";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "negative";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoUIConfirmationLabel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_20E322540(), !v4))
    {
      type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0F0CC4@<X0>(void *a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0F0D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AA0, type metadata accessor for TranscriptProtoUIConfirmationLabel, &protocol conformance descriptor for TranscriptProtoUIConfirmationLabel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F0DE8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866CF8, type metadata accessor for TranscriptProtoUIConfirmationLabel, &protocol conformance descriptor for TranscriptProtoUIConfirmationLabel);

  return sub_20E322470();
}

uint64_t sub_20E0F0E54(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866CF8, type metadata accessor for TranscriptProtoUIConfirmationLabel, &protocol conformance descriptor for TranscriptProtoUIConfirmationLabel);

  return sub_20E322480();
}

uint64_t sub_20E0F0EF0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864E88);
  __swift_project_value_buffer(v0, qword_27C864E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "viewData";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "containerBundleId";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "targetBundleId";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoArchiveViewPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(result + 16);
    v9 = *(result + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_20E3224E0();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = result;
    v9 = result >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v3[3])
  {
    result = sub_20E322540();
  }

  if (!v4)
  {
    if (v3[5])
    {
      sub_20E322540();
    }

    type metadata accessor for TranscriptProtoArchiveViewPayload(0);
    return sub_20E3221A0();
  }

  return result;
}

double sub_20E0F12B8@<D0>(_OWORD *a2@<X8>)
{
  a2[1] = 0u;
  a2[2] = 0u;
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  return result;
}

uint64_t sub_20E0F1344(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A98, type metadata accessor for TranscriptProtoArchiveViewPayload, &protocol conformance descriptor for TranscriptProtoArchiveViewPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F13E4(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866D10, type metadata accessor for TranscriptProtoArchiveViewPayload, &protocol conformance descriptor for TranscriptProtoArchiveViewPayload);

  return sub_20E322470();
}

uint64_t sub_20E0F1450(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866D10, type metadata accessor for TranscriptProtoArchiveViewPayload, &protocol conformance descriptor for TranscriptProtoArchiveViewPayload);

  return sub_20E322480();
}

uint64_t sub_20E0F15EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A90, type metadata accessor for TranscriptProtoLiveActivityPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F168C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866D28, type metadata accessor for TranscriptProtoLiveActivityPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityPayload);

  return sub_20E322470();
}

uint64_t sub_20E0F16F8(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866D28, type metadata accessor for TranscriptProtoLiveActivityPayload, &protocol conformance descriptor for TranscriptProtoLiveActivityPayload);

  return sub_20E322480();
}

uint64_t sub_20E0F1790()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864EB8);
  __swift_project_value_buffer(v0, qword_27C864EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pluginModelData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0F19E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
  }

  else
  {
    if (!v9)
    {
      if ((v8 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_20E3224E0();
      if (v5)
      {
        return result;
      }

      goto LABEL_10;
    }

    v10 = v7;
    v11 = v7 >> 32;
  }

  if (v10 != v11)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = v4[3];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v4[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = sub_20E322540(), !v5))
  {
    a4(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0F1AFC(_BOOL8 *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  if (!sub_20E15F7B0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

double sub_20E0F1C1C@<D0>(uint64_t a2@<X8>)
{
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0F1C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A88, type metadata accessor for TranscriptProtoPluginSnippetPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F1D30(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866D40, type metadata accessor for TranscriptProtoPluginSnippetPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetPayload);

  return sub_20E322470();
}

uint64_t sub_20E0F1D9C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866D40, type metadata accessor for TranscriptProtoPluginSnippetPayload, &protocol conformance descriptor for TranscriptProtoPluginSnippetPayload);

  return sub_20E322480();
}

uint64_t sub_20E0F1E18(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_20E15F7B0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0F1F98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    if (v6 == v6 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v9 = a4;
  result = sub_20E3224E0();
  if (v5)
  {
    return result;
  }

  a4 = v9;
LABEL_11:
  a4(0);
  return sub_20E3221A0();
}

uint64_t sub_20E0F2090(_BOOL8 *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  if (!sub_20E15F7B0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  a3(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0F21C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A80, type metadata accessor for TranscriptProtoControlPayload, &protocol conformance descriptor for TranscriptProtoControlPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F2264(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866D58, type metadata accessor for TranscriptProtoControlPayload, &protocol conformance descriptor for TranscriptProtoControlPayload);

  return sub_20E322470();
}

uint64_t sub_20E0F22D0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866D58, type metadata accessor for TranscriptProtoControlPayload, &protocol conformance descriptor for TranscriptProtoControlPayload);

  return sub_20E322480();
}

uint64_t sub_20E0F234C(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_20E15F7B0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0F2414()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864EE8);
  __swift_project_value_buffer(v0, qword_27C864EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionEventId";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "input";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSystemPromptResolution.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_20E3223D0();
      }

      else if (result == 2)
      {
        sub_20E0F27CC(a1, v5, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_20E3223E0();
          break;
        case 4:
          sub_20E0F2880(a1, v5, a2, a3);
          break;
        case 6:
          sub_20E0F2934(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E0F27CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  sub_20E195B0C(&qword_27C866E40, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionUserAction);
  return sub_20E322430();
}

uint64_t sub_20E0F2880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0F2934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  sub_20E195B0C(&qword_27C866D88, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionInput);
  return sub_20E322430();
}

uint64_t TranscriptProtoSystemPromptResolution.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[3])
  {
    result = sub_20E322540();
  }

  if (!v4)
  {
    sub_20E0F2AEC(v3, v7, a2, a3);
    v8 = v3[1];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_20E322540();
    }

    sub_20E0F2D08(v3, v7, a2, a3);
    sub_20E0F2F24(v3, v7, a2, a3);
    type metadata accessor for TranscriptProtoSystemPromptResolution(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0F2AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F10, &unk_20E33C3B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863F10, &unk_20E33C3B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863F10, &unk_20E33C3B0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_20E195B0C(&qword_27C866E40, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
}

uint64_t sub_20E0F2D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0F2F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B80, &qword_20E323E70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  sub_20E0486F4(a1 + *(v12 + 32), v7, &qword_27C863B80, &qword_20E323E70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B80, &qword_20E323E70);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  sub_20E195B0C(&qword_27C866D88, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionInput);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
}

uint64_t sub_20E0F318C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0F32E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A78, type metadata accessor for TranscriptProtoSystemPromptResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F3388(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866D70, type metadata accessor for TranscriptProtoSystemPromptResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolution);

  return sub_20E322470();
}

uint64_t sub_20E0F33F4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866D70, type metadata accessor for TranscriptProtoSystemPromptResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolution);

  return sub_20E322480();
}

uint64_t sub_20E0F3490()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864F00);
  __swift_project_value_buffer(v0, qword_27C864F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "touch";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSystemPromptResolutionInput.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          sub_20E0F3844(v5, a1, a2, a3);
        }

        else if (result == 4)
        {
          sub_20E0F3DF4(v5, a1, a2, a3);
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 2;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
        }

        sub_20E07FF88(v11, v12, v13, v14, &qword_27C865E08, &unk_20E33C3C0, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum, v15);
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0F3844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865E08, &unk_20E33C3C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868288, &qword_20E33B318);
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
  sub_20E0486F4(a1, v12, &qword_27C865E08, &unk_20E33C3C0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865E08, &unk_20E33C3C0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C868288, &qword_20E33B318);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoRequestContentTextContent);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRequestContentTextContent);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(qword_280E10CB8, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868288, &qword_20E33B318);
  }

  sub_20E0486F4(v24, v32, &qword_27C868288, &qword_20E33B318);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868288, &qword_20E33B318);
    return sub_20E04875C(v32, &qword_27C868288, &qword_20E33B318);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoRequestContentTextContent);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868288, &qword_20E33B318);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865E08, &unk_20E33C3C0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestContentTextContent);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0F3DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865E08, &unk_20E33C3C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868290, &qword_20E33B320);
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
  sub_20E0486F4(a1, v12, &qword_27C865E08, &unk_20E33C3C0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865E08, &unk_20E33C3C0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C868290, &qword_20E33B320);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8663D8, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868290, &qword_20E33B320);
  }

  sub_20E0486F4(v24, v32, &qword_27C868290, &qword_20E33B320);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868290, &qword_20E33B320);
    return sub_20E04875C(v32, &qword_27C868290, &qword_20E33B320);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868290, &qword_20E33B320);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865E08, &unk_20E33C3C0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoSystemPromptResolutionInput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865E08, &unk_20E33C3C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C865E08, &unk_20E33C3C0);
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      result = sub_20E0F45C4(v3, a1, a2, a3, &qword_27C865E08, &unk_20E33C3C0, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_20E0F47F8(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    sub_20E0F4C78(v3, a1, a2, a3);
  }

  else
  {
    sub_20E0F4A44(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  if (!v4)
  {
LABEL_12:
    type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0F45C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v23[2] = a3;
  v23[5] = a4;
  v23[1] = a2;
  v13 = sub_20E322110();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v23 - v18;
  sub_20E0486F4(a1, v23 - v18, a5, a6);
  v20 = a7(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    result = sub_20E04875C(v19, a5, a6);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v19, a8);
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v14 + 8))(v16, v13);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0F47F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865E08, &unk_20E33C3C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865E08, &unk_20E33C3C0);
  v12 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865E08, &unk_20E33C3C0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0F4A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865E08, &unk_20E33C3C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865E08, &unk_20E33C3C0);
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865E08, &unk_20E33C3C0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestContentTextContent);
    sub_20E195B0C(qword_280E10CB8, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestContentTextContent);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0F4C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865E08, &unk_20E33C3C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865E08, &unk_20E33C3C0);
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865E08, &unk_20E33C3C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    sub_20E195B0C(&qword_27C8663D8, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0F4F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A70, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F5000(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866D88, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionInput);

  return sub_20E322470();
}

uint64_t sub_20E0F506C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866D88, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionInput);

  return sub_20E322480();
}

uint64_t sub_20E0F5108()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864F18);
  __swift_project_value_buffer(v0, qword_27C864F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20E3262C0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 3;
  *v4 = "resolvedParameters";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 4;
  *v8 = "unresolvedParameterSets";
  *(v8 + 8) = 23;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 6;
  *v10 = "isConfirmed";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 7;
  *v12 = "statementId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 8;
  *v14 = "isAuthenticated";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 9;
  *v16 = "tool";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionResolverRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 6)
      {
        break;
      }

      switch(result)
      {
        case 7:
          sub_20E0F5628(a1, v5, a2, a3);
          break;
        case 8:
          goto LABEL_18;
        case 9:
          sub_20E0F56DC(a1, v5, a2, a3);
          break;
      }

LABEL_5:
      result = sub_20E3222B0();
    }

    if (result == 3)
    {
      sub_20E0F5574(a1, v5, a2, a3);
      goto LABEL_5;
    }

    if (result == 4)
    {
      type metadata accessor for TranscriptProtoParameterSet(0);
      sub_20E195B0C(&qword_27C865E18, type metadata accessor for TranscriptProtoParameterSet, &protocol conformance descriptor for TranscriptProtoParameterSet);
      sub_20E322420();
      goto LABEL_5;
    }

    if (result != 6)
    {
      goto LABEL_5;
    }

LABEL_18:
    sub_20E3222F0();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_20E0F5574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionResolverRequest(0);
  type metadata accessor for TranscriptProtoParameterSet(0);
  sub_20E195B0C(&qword_27C865E18, type metadata accessor for TranscriptProtoParameterSet, &protocol conformance descriptor for TranscriptProtoParameterSet);
  return sub_20E322430();
}

uint64_t sub_20E0F5628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionResolverRequest(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0F56DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionResolverRequest(0);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  return sub_20E322430();
}

uint64_t TranscriptProtoActionResolverRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0F5910(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for TranscriptProtoParameterSet(0);
      sub_20E195B0C(&qword_27C865E18, type metadata accessor for TranscriptProtoParameterSet, &protocol conformance descriptor for TranscriptProtoParameterSet);
      sub_20E322570();
    }

    if (v3[8] == 1)
    {
      sub_20E3224C0();
    }

    sub_20E0F5B2C(v3, a1, a2, a3);
    if (v3[9] == 1)
    {
      sub_20E3224C0();
    }

    sub_20E0F5D48(v3, a1, a2, a3);
    type metadata accessor for TranscriptProtoActionResolverRequest(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0F5910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B30, &qword_20E323E58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterSet(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C863B30, &qword_20E323E58);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B30, &qword_20E323E58);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoParameterSet);
  sub_20E195B0C(&qword_27C865E18, type metadata accessor for TranscriptProtoParameterSet, &protocol conformance descriptor for TranscriptProtoParameterSet);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoParameterSet);
}

uint64_t sub_20E0F5B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  sub_20E0486F4(a1 + *(v12 + 32), v7, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0F5D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  sub_20E0486F4(a1 + *(v12 + 36), v7, &qword_27C8639C8, &unk_20E323870);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639C8, &unk_20E323870);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
}

uint64_t sub_20E0F5FB0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v5 = type metadata accessor for TranscriptProtoParameterSet(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[9];
  v9 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_20E0F6110(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A68, type metadata accessor for TranscriptProtoActionResolverRequest, &protocol conformance descriptor for TranscriptProtoActionResolverRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F61B0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866DA0, type metadata accessor for TranscriptProtoActionResolverRequest, &protocol conformance descriptor for TranscriptProtoActionResolverRequest);

  return sub_20E322470();
}

uint64_t sub_20E0F621C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866DA0, type metadata accessor for TranscriptProtoActionResolverRequest, &protocol conformance descriptor for TranscriptProtoActionResolverRequest);

  return sub_20E322480();
}

uint64_t sub_20E0F62B8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864F30);
  __swift_project_value_buffer(v0, qword_27C864F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "requiredContext";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "utteranceContext";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoContextRetrieved.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 4)
      {
        type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
        sub_20E195B0C(&qword_27C865E28, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t TranscriptProtoContextRetrieved.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoRetrievedContextStatement(0), sub_20E195B0C(&qword_27C865E28, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement), result = sub_20E322570(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for TranscriptProtoRetrievedContextStatement(0), sub_20E195B0C(&qword_27C865E28, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement), result = sub_20E322570(), !v4))
    {
      type metadata accessor for TranscriptProtoContextRetrieved(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t static TranscriptProtoContextRetrieved.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_20E14E2F8(*a1, *a2) & 1) == 0 || (sub_20E14E2F8(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoContextRetrieved(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0F6838@<X0>(void *a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  return result;
}

uint64_t sub_20E0F68BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A60, type metadata accessor for TranscriptProtoContextRetrieved, &protocol conformance descriptor for TranscriptProtoContextRetrieved);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F695C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866DB8, type metadata accessor for TranscriptProtoContextRetrieved, &protocol conformance descriptor for TranscriptProtoContextRetrieved);

  return sub_20E322470();
}

uint64_t sub_20E0F69C8(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866DB8, type metadata accessor for TranscriptProtoContextRetrieved, &protocol conformance descriptor for TranscriptProtoContextRetrieved);

  return sub_20E322480();
}

uint64_t sub_20E0F6A44(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_20E14E2F8(*a1, *a2) & 1) == 0 || (sub_20E14E2F8(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0F6B18()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864F48);
  __swift_project_value_buffer(v0, qword_27C864F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "retrievedContext";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoRetrievedContextStatement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E0F6E04(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0F6E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  type metadata accessor for ContextProtoRetrievedContext(0);
  sub_20E195B0C(&qword_27C8661D0, type metadata accessor for ContextProtoRetrievedContext, &protocol conformance descriptor for ContextProtoRetrievedContext);
  return sub_20E322430();
}

uint64_t sub_20E0F6F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868260, &unk_20E33C3D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoRetrievedContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C868260, &unk_20E33C3D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868260, &unk_20E33C3D0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for ContextProtoRetrievedContext);
  sub_20E195B0C(&qword_27C8661D0, type metadata accessor for ContextProtoRetrievedContext, &protocol conformance descriptor for ContextProtoRetrievedContext);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for ContextProtoRetrievedContext);
}

uint64_t sub_20E0F71EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A58, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F728C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865E28, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement);

  return sub_20E322470();
}

uint64_t sub_20E0F72F8(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865E28, type metadata accessor for TranscriptProtoRetrievedContextStatement, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement);

  return sub_20E322480();
}

uint64_t sub_20E0F7394()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864F60);
  __swift_project_value_buffer(v0, qword_27C864F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dynamicEnumerationEntity";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoDynamicEnumerationEntityStatement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E0F7680(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0F7680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  sub_20E195B0C(&qword_27C868258, type metadata accessor for ContextProtoDynamicEnumerationEntity, &protocol conformance descriptor for ContextProtoDynamicEnumerationEntity);
  return sub_20E322430();
}

uint64_t sub_20E0F7788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FA8, &qword_20E33B078);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C867FA8, &qword_20E33B078);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C867FA8, &qword_20E33B078);
  }

  sub_20E195B54(v7, v11, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  sub_20E195B0C(&qword_27C868258, type metadata accessor for ContextProtoDynamicEnumerationEntity, &protocol conformance descriptor for ContextProtoDynamicEnumerationEntity);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for ContextProtoDynamicEnumerationEntity);
}

uint64_t sub_20E0F7A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A50, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, &protocol conformance descriptor for TranscriptProtoDynamicEnumerationEntityStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F7B08(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8661A8, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, &protocol conformance descriptor for TranscriptProtoDynamicEnumerationEntityStatement);

  return sub_20E322470();
}

uint64_t sub_20E0F7B74(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8661A8, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, &protocol conformance descriptor for TranscriptProtoDynamicEnumerationEntityStatement);

  return sub_20E322480();
}

uint64_t sub_20E0F7CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A48, type metadata accessor for TranscriptProtoSafetyModeRelease, &protocol conformance descriptor for TranscriptProtoSafetyModeRelease);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F7D44(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866DF0, type metadata accessor for TranscriptProtoSafetyModeRelease, &protocol conformance descriptor for TranscriptProtoSafetyModeRelease);

  return sub_20E322470();
}

uint64_t sub_20E0F7DB0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866DF0, type metadata accessor for TranscriptProtoSafetyModeRelease, &protocol conformance descriptor for TranscriptProtoSafetyModeRelease);

  return sub_20E322480();
}

uint64_t sub_20E0F7F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A40, type metadata accessor for TranscriptProtoSafetyModeException, &protocol conformance descriptor for TranscriptProtoSafetyModeException);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F802C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866E08, type metadata accessor for TranscriptProtoSafetyModeException, &protocol conformance descriptor for TranscriptProtoSafetyModeException);

  return sub_20E322470();
}

uint64_t sub_20E0F8098(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866E08, type metadata accessor for TranscriptProtoSafetyModeException, &protocol conformance descriptor for TranscriptProtoSafetyModeException);

  return sub_20E322480();
}

uint64_t sub_20E0F81FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      a4(0);
      sub_20E195B0C(a5, a6, a7);
      sub_20E322420();
    }
  }

  return result;
}

uint64_t TranscriptProtoParameterSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoParameter(0), sub_20E195B0C(&qword_27C865E58, type metadata accessor for TranscriptProtoParameter, &protocol conformance descriptor for TranscriptProtoParameter), result = sub_20E322570(), !v4))
  {
    type metadata accessor for TranscriptProtoParameterSet(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0F847C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A38, type metadata accessor for TranscriptProtoParameterSet, &protocol conformance descriptor for TranscriptProtoParameterSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F851C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865E18, type metadata accessor for TranscriptProtoParameterSet, &protocol conformance descriptor for TranscriptProtoParameterSet);

  return sub_20E322470();
}

uint64_t sub_20E0F8588(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865E18, type metadata accessor for TranscriptProtoParameterSet, &protocol conformance descriptor for TranscriptProtoParameterSet);

  return sub_20E322480();
}

uint64_t sub_20E0F8638()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864FC0);
  __swift_project_value_buffer(v0, qword_27C864FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collectionIndex";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "candidate";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoParameter.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_20E0F8920(a1, v5, a2, a3);
        break;
      case 2:
        sub_20E322380();
        break;
      case 1:
        sub_20E3223E0();
        break;
    }
  }

  return result;
}

uint64_t sub_20E0F8920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameter(0);
  type metadata accessor for TranscriptProtoCandidate(0);
  sub_20E195B0C(&qword_27C865CA8, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);
  return sub_20E322430();
}

uint64_t TranscriptProtoParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_20E322540(), !v4))
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      result = sub_20E322510();
    }

    if (!v4)
    {
      sub_20E0F8AA4(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoParameter(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0F8AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B28, &unk_20E33C3E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoCandidate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoParameter(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863B28, &unk_20E33C3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B28, &unk_20E33C3E0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoCandidate);
  sub_20E195B0C(&qword_27C865CA8, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoCandidate);
}

uint64_t sub_20E0F8D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v3 = *(a1 + 24);
  v4 = type metadata accessor for TranscriptProtoCandidate(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0F8DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A30, type metadata accessor for TranscriptProtoParameter, &protocol conformance descriptor for TranscriptProtoParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F8E88(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865E58, type metadata accessor for TranscriptProtoParameter, &protocol conformance descriptor for TranscriptProtoParameter);

  return sub_20E322470();
}

uint64_t sub_20E0F8EF4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865E58, type metadata accessor for TranscriptProtoParameter, &protocol conformance descriptor for TranscriptProtoParameter);

  return sub_20E322480();
}

uint64_t sub_20E0F8F90()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864FD8);
  __swift_project_value_buffer(v0, qword_27C864FD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionConfirmed";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSystemPromptResolutionUserAction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        switch(result)
        {
          case 6:
            sub_20E10CA94(a1, v5, a2, a3, &qword_27C863F08, &qword_20E325D20, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum, 3u);
            break;
          case 7:
            sub_20E0F9BC4(v5, a1, a2, a3);
            break;
          case 8:
            sub_20E0FA180(v5, a1, a2, a3);
            break;
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 0;
LABEL_17:
          sub_20E0F99E4(v11, v12, v13, v14, &qword_27C863F08, &qword_20E325D20, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum, v15);
          goto LABEL_5;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 2;
          goto LABEL_17;
        }

        sub_20E0F9428(v5, a1, a2, a3);
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0F9428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F08, &qword_20E325D20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
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
  sub_20E0486F4(a1, v12, &qword_27C863F08, &qword_20E325D20);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863F08, &qword_20E325D20);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E195B54(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863F08, &qword_20E325D20);
    sub_20E195B54(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}